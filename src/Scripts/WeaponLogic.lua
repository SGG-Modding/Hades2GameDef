---@meta game-Scripts-WeaponLogic
local game = {}

function game.AllowAxeSpin() end
---@alias game-Scripts-WeaponLogic.AllowAxeSpin ...

function game.AllowLobLock() end
---@alias game-Scripts-WeaponLogic.AllowLobLock ...

function game.ApplyDeferredThrowReversions(a) end
---@alias game-Scripts-WeaponLogic.ApplyDeferredThrowReversions ...

function game.ApplyWeaponChanges(a, b, c) end
---@alias game-Scripts-WeaponLogic.ApplyWeaponChanges ...

function game.AxeBlockChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.AxeBlockChargeStage ...

function game.AxeBlockStartCharge() end
---@alias game-Scripts-WeaponLogic.AxeBlockStartCharge ...

function game.AxeChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.AxeChargeStage ...

function game.BlockDashDisable(a, b) end
---@alias game-Scripts-WeaponLogic.BlockDashDisable ...

function game.CancelTorchPassiveCharge(a) end
---@alias game-Scripts-WeaponLogic.CancelTorchPassiveCharge ...

function game.CastArmedFunction(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.CastArmedFunction ...

function game.CastChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.CastChargeStage ...

function game.CheckAxeBlockThread() end
---@alias game-Scripts-WeaponLogic.CheckAxeBlockThread ...

function game.CheckCastControl(a, b, c) end
---@alias game-Scripts-WeaponLogic.CheckCastControl ...

function game.CheckDashManeuverEnd() end
---@alias game-Scripts-WeaponLogic.CheckDashManeuverEnd ...

function game.CheckSprintBoons(a) end
---@alias game-Scripts-WeaponLogic.CheckSprintBoons ...

function game.CheckWeaponRoomStartEvents() end
---@alias game-Scripts-WeaponLogic.CheckWeaponRoomStartEvents ...

function game.DaggerChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.DaggerChargeStage ...

function game.DashManeuver(a) end
---@alias game-Scripts-WeaponLogic.DashManeuver ...

function game.DoDaggerStagedCharge(a, b, c) end
---@alias game-Scripts-WeaponLogic.DoDaggerStagedCharge ...

function game.DoThrowEx(a) end
---@alias game-Scripts-WeaponLogic.DoThrowEx ...

function game.DoWeaponCharge(a, b, c) end
---@alias game-Scripts-WeaponLogic.DoWeaponCharge ...

function game.EmptyAxeBlockCharge(a, b, c) end
---@alias game-Scripts-WeaponLogic.EmptyAxeBlockCharge ...

function game.EmptyAxeCharge(a, b, c) end
---@alias game-Scripts-WeaponLogic.EmptyAxeCharge ...

function game.EmptyCastCharge(a, b) end
---@alias game-Scripts-WeaponLogic.EmptyCastCharge ...

function game.EmptyDaggerCharge(a) end
---@alias game-Scripts-WeaponLogic.EmptyDaggerCharge ...

function game.EmptyIndirectCastCharge(a, b) end
---@alias game-Scripts-WeaponLogic.EmptyIndirectCastCharge ...

function game.EmptyLobCharge(a, b) end
---@alias game-Scripts-WeaponLogic.EmptyLobCharge ...

function game.EmptyStaffCharge(a, b) end
---@alias game-Scripts-WeaponLogic.EmptyStaffCharge ...

function game.EmptyThrowCharge(a, b) end
---@alias game-Scripts-WeaponLogic.EmptyThrowCharge ...

function game.EmptyTorchCharge(a, b) end
---@alias game-Scripts-WeaponLogic.EmptyTorchCharge ...

function game.EmptyTorchSpecialCharge(a, b) end
---@alias game-Scripts-WeaponLogic.EmptyTorchSpecialCharge ...

function game.EmptyWeaponCharge(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.EmptyWeaponCharge ...

function game.FireAmmoCollectionPulse(a, b) end
---@alias game-Scripts-WeaponLogic.FireAmmoCollectionPulse ...

function game.FireAnywhereCastAtLocation(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.FireAnywhereCastAtLocation ...

function game.FireCastAtLocation(a) end
---@alias game-Scripts-WeaponLogic.FireCastAtLocation ...

function game.GetLuaWeaponSpeedMultiplier(a) end
---@alias game-Scripts-WeaponLogic.GetLuaWeaponSpeedMultiplier ...

function game.GetWeaponChargeStages(a) end
---@alias game-Scripts-WeaponLogic.GetWeaponChargeStages ...

function game.IndirectCastChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.IndirectCastChargeStage ...

function game.IsExWeapon(a, b, c) end
---@alias game-Scripts-WeaponLogic.IsExWeapon ...

function game.LobChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.LobChargeStage ...

function game.MarkDaggerTarget(a, b, c) end
---@alias game-Scripts-WeaponLogic.MarkDaggerTarget ...

function game.MarkTorchTarget(a, b, c) end
---@alias game-Scripts-WeaponLogic.MarkTorchTarget ...

function game.NotifyOnAxeBlock() end
---@alias game-Scripts-WeaponLogic.NotifyOnAxeBlock ...

function game.ProjectileClearUnitHit(a, b) end
---@alias game-Scripts-WeaponLogic.ProjectileClearUnitHit ...

function game.ProjectileHasUnitHit(a, b) end
---@alias game-Scripts-WeaponLogic.ProjectileHasUnitHit ...

function game.ProjectileRecordUnitHit(a, b) end
---@alias game-Scripts-WeaponLogic.ProjectileRecordUnitHit ...

function game.PulseAmmo(a, b) end
---@alias game-Scripts-WeaponLogic.PulseAmmo ...

function game.RecordWeaponCharge(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.RecordWeaponCharge ...

function game.RemoveTorchTarget(a) end
---@alias game-Scripts-WeaponLogic.RemoveTorchTarget ...

function game.ResetFireSequence(a, b) end
---@alias game-Scripts-WeaponLogic.ResetFireSequence ...

function game.RevertWeaponChanges(a, b) end
---@alias game-Scripts-WeaponLogic.RevertWeaponChanges ...

function game.SetThrowTeleportBuffer() end
---@alias game-Scripts-WeaponLogic.SetThrowTeleportBuffer ...

function game.ShieldBlock(a, b) end
---@alias game-Scripts-WeaponLogic.ShieldBlock ...

function game.SpendQueuedMana() end
---@alias game-Scripts-WeaponLogic.SpendQueuedMana ...

function game.SprintChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.SprintChargeStage ...

function game.StaffBall2FiredFunction(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.StaffBall2FiredFunction ...

function game.StaffChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.StaffChargeStage ...

function game.ThrowChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.ThrowChargeStage ...

function game.TorchChargedFiredFunction(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.TorchChargedFiredFunction ...

function game.TorchChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.TorchChargeStage ...

function game.TorchFiredFunction(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.TorchFiredFunction ...

function game.TorchHasMana(a) end
---@alias game-Scripts-WeaponLogic.TorchHasMana ...

function game.TorchOutOfMana(a) end
---@alias game-Scripts-WeaponLogic.TorchOutOfMana ...

function game.TorchPassiveCharge(a, b) end
---@alias game-Scripts-WeaponLogic.TorchPassiveCharge ...

function game.TorchRepeatedFire(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.TorchRepeatedFire ...

function game.TorchRingReturn(a, b, c, d) end
---@alias game-Scripts-WeaponLogic.TorchRingReturn ...

function game.TorchSpecialChargeStage(a, b) end
---@alias game-Scripts-WeaponLogic.TorchSpecialChargeStage ...

function game.TriggerLockForSpecial() end
---@alias game-Scripts-WeaponLogic.TriggerLockForSpecial ...

function game.UpdateLobWeaponProjectileNum(a, b) end
---@alias game-Scripts-WeaponLogic.UpdateLobWeaponProjectileNum ...

function game.WeaponBlinkFunction(a, b, c) end
---@alias game-Scripts-WeaponLogic.WeaponBlinkFunction ...

function game.WeaponLobAmmoDrop(a, b) end
---@alias game-Scripts-WeaponLogic.WeaponLobAmmoDrop ...

function game.WeaponSprintOutOfMana() end
---@alias game-Scripts-WeaponLogic.WeaponSprintOutOfMana ...

return game