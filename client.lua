----------------------------------------------------------------------------------------------
                  -- !ATTENTION! !ATTENTION! !ATTENTION! !ATTENTION! !ATTENTION! --
        -- NE TOUCHEZ PAS À CE FICHIER SOUS PEINE DE TOUT CASSER ! MODIFIEZ LE FICHIER CONFIG.LUA --
-- NE SOYEZ PAS STUPIDE ET NE VENEZ PAS ME PLEURNICHER SI VOUS AVEZ TOUCHÉ AUX LIGNES CI-DESSOUS. --
----------------------------------------------------------------------------------------------

SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_HILLBILLY"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_BALLAS"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_MEXICAN"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_FAMILY"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_MARABUNTE"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_SALVA"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("GANG_1"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("GANG_2"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("GANG_9"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("GANG_10"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("FIREMAN"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("MEDIC"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("COP"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_LOST"), GetHashKey("PLAYER"))
SetRelationshipBetweenGroups(1, GetHashKey("AMBIENT_GANG_PRISONER"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("GANG_PRISONER"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("u_m_y_prisoner_01"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("s_m_y_prismuscl_01"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("s_m_y_prisoner_01"), GetHashKey('PLAYER'))
SetRelationshipBetweenGroups(1, GetHashKey("ig_rashcosvki"), GetHashKey('PLAYER'))

Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(Config.VehDensity)
	    SetPedDensityMultiplierThisFrame(Config.PedDensity)
	    SetRandomVehicleDensityMultiplierThisFrame(Config.RanVehDensity)
	    SetParkedVehicleDensityMultiplierThisFrame(Config.ParkCarDensity)
	    SetScenarioPedDensityMultiplierThisFrame(Config.ScenePedDensity, Config.ScenePedDensity)
	end
end)

	Citizen.CreateThread(function()
		if Config.DispatchDead then 
		while true do
			Wait(0)
			for i = 1, 12 do
				EnableDispatchService(i, false)
			end
			SetPlayerWantedLevel(PlayerId(), 0, false)
			SetPlayerWantedLevelNow(PlayerId(), false)
			SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)
		end
	else
	end
end)