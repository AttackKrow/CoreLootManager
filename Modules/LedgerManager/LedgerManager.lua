local _, CLM = ...

local MODULES = CLM.MODULES
local LOG = CLM.LOG
local Comms = MODULES.Comms
local CONSTANTS = CLM.CONSTANTS
local ACL = MODULES.ACL
local UTILS = CLM.UTILS

local LedgerLib = LibStub("EventSourcing/LedgerFactory")

local LedgerManager = {}

local function authorize(entry, sender)
    return LedgerManager:Authorize(entry:class(), sender)
end

function LedgerManager:Initialize()
    local prefixSync = "SLedger"
    local prefixData = "DLedger"
    self.ledger = LedgerLib.createLedger(
        MODULES.Database:Ledger(),
        (function(data, distribution, target, callbackFn, callbackArg)
            return Comms:Send(prefixSync, data, distribution, target, "BULK")
        end), -- send
        (function(callback)
            Comms:Register(prefixSync, callback, CONSTANTS.ACL.LEVEL.UNAUTHORISED)
            Comms:Register(prefixData, callback, CONSTANTS.ACL.LEVEL.MANAGER)
        end), -- registerReceiveHandler
        authorize, -- authorizationHandler
        (function(data, distribution, target, progressCallback)
            return Comms:Send(prefixData, data, distribution, target, "BULK")
        end), -- sendLargeMessage
        750, 1000
    )

    self.entryExtensions = {}
    self.authorizationLevel = {}
end

function LedgerManager:Enable()
    self.ledger.enableSending()
end

function LedgerManager:Authorize(class, sender)
    if self.authorizationLevel[class] == nil then
        LOG:Warning("Unknown class")
        return false
    end
    return ACL:CheckLevel(self.authorizationLevel[class], sender)
end

function LedgerManager:RegisterEntryType(class, mutatorFn, authorizationLevel)
    if self.entryExtensions[class] then
        LOG:Fatal("Class " .. tostring(class) .. " already exists in Ledger Entries.")
        return nil
    end
    self.entryExtensions[class] = true

    self.ledger.registerMutator(class, mutatorFn)
    self.authorizationLevel[class._cls] = authorizationLevel
end

function LedgerManager:RegisterOnRestart(callback)
    self.ledger.addStateRestartListener(callback)
end

function LedgerManager:RegisterOnUpdate(callback)
    self.ledger.addStateChangedListener(callback)
end

function LedgerManager:Submit(entry)
    self.ledger.submitEntry(entry)
end

MODULES.LedgerManager = LedgerManager