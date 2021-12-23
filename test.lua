-- client script btw



AddEventHandler("playerSpawned", function()
    
  exports.spawnmanager:setAutoSpawn(false)
  GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_APPISTOL"), 999999, false, true)

  SetPlayerTargetingMode(2)
  SetEntityMaxHealth(GetPlayerPed(-1), 200) 
  SetEntityHealth(GetPlayerPed(-1), 200)
  AddArmourToPed(GetPlayerPed(-1), 200)
    
  SetPlayerWantedLevel(PlayerId(), 0, false)
  SetPlayerWantedLevelNow(PlayerId(), false)
  SetCanAttackFriendly(PlayerPedId(), true, false)
    
  SetAudioFlag("LoadMPData", true)
  SetAudioFlag("DisableFlightMusic", true)
  SetAudioFlag('WantedMusicDisabled', true)
  SetAudioFlag('PoliceScannerDisabled', true)
  SetAudioFlag('OnlyAllowScriptTriggerPoliceScanner', true)
  SetAudioFlag('AllowPoliceScannerWhenPlayerHasNoControl', false)
  SetGarbageTrucks(false)
  SetRandomBoats(false)
  SetCreateRandomCops(false)
  SetCreateRandomCopsNotOnScenarios(false)
  SetCreateRandomCopsOnScenarios(false)
  ClearPlayerWantedLevel(player)
  SetMaxWantedLevel(0)
  SetWind(0.0)
    
  StatSetInt('MP0_STAMINA', 100, true)
  StatSetInt('MP0_STRENGTH', 100, true)
  StatSetInt('MP0_LUNG_CAPACITY', 100, true)
  StatSetInt('MP0_WHEELIE_ABILITY', 100, true)
  StatSetInt('MP0_FLYING_ABILITY', 100, true)
  StatSetInt('MP0_STEALTH_ABILITY', 100, true)
    
  Citizen.Wait(2000)
    
  NetworkSetFriendlyFireOption(true)
end)
