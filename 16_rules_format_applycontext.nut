local jess_cliffe_rules = 
[
	{
		name = "C3M1CallFerryCliffe",
		criteria = 
		[
			[ConceptC3M1CallFerry],
			[PanicEventCliffe],
			[IsNotSaidC3M1CallFerry2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M1CallFerryGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1CallFerry2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M2OpenDoorCliffe",
		criteria = 
		[
			[ConceptC3M2OpenDoor],
			[PanicEventCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2OpenDoorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2OpenDoor", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.492 },
			c3 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c4 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c5m4floatstartCliffe",
		criteria = 
		[
			[Conceptc5m4floatstart],
			[PanicEventCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c5m4floatstartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4floatstart", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TractorStarted", value = 1, duration = 0.0 },
			c3 = { context = "_auto_InMiniFinale", value = 1, duration = 0.0 },
			c4 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c5 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M1InSmokeCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsSaidC1M1InSmoke],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1InSmokeGambler,
			},
		],
	},
	{
		name = "C1M3AlarmOffCliffe",
		criteria = 
		[
			[ConceptC1M3AlarmOff2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3AlarmOffGambler,
			},
		],
	},
	{
		name = "C1M3AlarmActiveCliffe",
		criteria = 
		[
			[ConceptC1M3AlarmActive],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3AlarmActiveGambler,
			},
		],
	},
	{
		name = "C4M3SaferoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[isc4m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M3SaferoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "L4D1PlayerNiceShotFrancisC6M3Cliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsC6M3_Port],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotFrancisC6M3Gambler,
			},
		],
	},
	{
		name = "PlayerNiceShotFrancisCliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			[SubjectIsBiker],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotFrancisGambler,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisC6M3Cliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsC6M3_Port],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotLouisC6M3Gambler,
			},
		],
	},
	{
		name = "PlayerNiceShotLouisCliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			[SubjectIsManager],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotLouisGambler,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisEllisC6M3Cliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerNotSoClose],
			[IsMechanicAlive],
			[IsMechanicNear800],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsC6M3_Port],
			[SubjectIsManager],
			[ChanceToFire20Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotLouisEllisC6M3Gambler,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyC6M3Cliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotZoeyC6M3Gambler,
			},
		],
	},
	{
		name = "PlayerNiceShotZoeyCliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			[SubjectIsTeenGirl],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotZoeyGambler,
			},
		],
	},
	{
		name = "PlayerNiceShotCliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotGambler,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotCliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotMechanic],
			[SubjectIsNotProducer],
			[SubjectIsNotCoach],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotGambler,
			},
		],
	},
	{
		name = "PlayerNiceShotCoachCliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			[SubjectIsCoach],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotCoachGambler,
			},
		],
	},
	{
		name = "PlayerNiceShotMechanicCliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			[SubjectIsMechanic],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotMechanicGambler,
			},
		],
	},
	{
		name = "PlayerNiceShotProducerCliffe",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			[SubjectIsProducer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotProducerGambler,
			},
		],
	},
	{
		name = "SurvivorMournCoachCliffe",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCliffe],
			[IsDeadCoach],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournCoachGambler,
			},
		],
	},
	{
		name = "SurvivorMournCoachC1Cliffe",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCliffe],
			[IsDeadCoach],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournCoachC1Gambler,
			},
		],
	},
	{
		name = "SurvivorMournMechanicCliffe",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCliffe],
			[IsDeadMechanic],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournMechanicGambler,
			},
		],
	},
	{
		name = "SurvivorMournMechanicC1Cliffe",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCliffe],
			[IsDeadMechanic],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournMechanicC1Gambler,
			},
		],
	},
	{
		name = "SurvivorMournProducerCliffe",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCliffe],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournProducerGambler,
			},
		],
	},
	{
		name = "SurvivorMournProducerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCliffe],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournProducerC1Gambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloStartAllAliveCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHelloStartAllAliveGambler,
			},
		],
	},
	{
		name = "C1M1_ElevatorHelloStart2AliveCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithTwo],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1_ElevatorHelloStart2AliveGambler,
			},
		],
	},
	{
		name = "C1M1_ElevatorHelloStart3AliveCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithOnlyThree],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1_ElevatorHelloStart3AliveGambler,
			},
		],
	},
	{
		name = "Playerc1m1_enter_elevatorCliffe",
		criteria = 
		[
			[Conceptc1m1_enter_elevator],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidc1m1_enter_elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Playerc1m1_enter_elevatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_enter_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Playerc1m1_elevator_pushbuttonCliffe",
		criteria = 
		[
			[Conceptc1m1_elevator_pushbutton],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidc1m1_elevator_pushbutton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Playerc1m1_elevator_pushbuttonGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_elevator_pushbutton", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M2PreAlarmDoorCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2PreStoreAlarm],
			[IsNotSaidWorldC1M2PreStoreAlarm],
			[IsNotSaidC1M2AlarmSetoff],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M2PreAlarmDoorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2PreStoreAlarm", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M2AlarmDoor2Cliffe",
		criteria = 
		[
			[ConceptC1M2AlarmDoor2],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2AlarmDoor2Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkC1M2PostAlarmDoorCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2StoreAlarm],
			[IsSaidC1M2AlarmSetoff],
			[IsSubjectNear300],
			[HasWhitakerCola],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_SaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M2PostAlarmDoorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "C1M2AlarmSetOff", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC1M2GrabbingColaCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_NotSaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2GrabbingColaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2GrabbingCola2", value = 1, duration = 5.0 },
			c2 = { context = "_auto_SaidC1M2GrabbedCola", value = 1, duration = 0.0 },
			c3 = { context = "Talk", value = 1, duration = 1.699 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC1M2GrabbingCola2Cliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_SaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2GrabbingCola2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2GrabbingCola2", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 1.699 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC1M2FirstOutsideResponseCliffe",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse],
			[IsCliffe],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2FirstOutsideResponseGambler,
			},
		],
	},
	{
		name = "PlayerC1M2FirstOutsideResponse3aCliffe",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse3a],
			[IsCliffe],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2FirstOutsideResponse3aGambler,
			},
		],
	},
	{
		name = "PlayerC1M2FirstOutsideResponse8aCliffe",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse8a],
			[IsCliffe],
			[FromSet1],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2FirstOutsideResponse8aGambler,
			},
		],
	},
	{
		name = "PlayerC1M2InsideGunShop2Cliffe",
		criteria = 
		[
			[ConceptC1M2InsideGunShop2],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidC1M2InsideGunShop],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2InsideGunShop2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
			c2 = { context = "SaidC1M2InsideGunShop", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC3M1CallFerry2Cliffe",
		criteria = 
		[
			[ConceptC3M1CallFerry2],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsCliffeActor],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M1CallFerry2Gambler,
			},
		],
	},
	{
		name = "PlayerC3M1FerryLandedIdleCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[C3M1Ferry],
			[IsNotIncapacitated],
			[IsNotAlone],
			[NotInCombat],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M1FerryLandedIdleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC3M1FerryLaunched2aCliffe",
		criteria = 
		[
			[ConceptC3M1FerryLaunched2],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M1FerryLaunched2aGambler,
			},
		],
	},
	{
		name = "PlayerC3M2ComingHomeCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsSaidC3M2Village1],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M2ComingHomeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC3M2OpenDoor2Cliffe",
		criteria = 
		[
			[ConceptC3M2OpenDoor2],
			[IsCliffe],
			[IsTalkCliffe],
			[IsCliffeActor],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M2OpenDoor2Gambler,
			},
		],
	},
	{
		name = "Playerc5m4floatendCliffe",
		criteria = 
		[
			[Conceptc5m4floatend2],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Playerc5m4floatendGambler,
			},
		],
	},
	{
		name = "Playerc5m4floatstart2Cliffe",
		criteria = 
		[
			[Conceptc5m4floatstart2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Playerc5m4floatstart2Gambler,
			},
		],
	},
	{
		name = "PlayerintroC1M1Cliffe",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsCliffe],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerintroC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WhitakerC1M2DeliverColaCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2DeliverCola],
			[IsC1M2WhitakerErrand],
			[IsSubjectNear300],
			[HasWhitakerCola],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_SaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WhitakerC1M2DeliverColaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "C1M2AlarmSetOff", value = 3, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerPlayerUsingColaBottlesCliffe",
		criteria = 
		[
			[ConceptPlayerUsingColaBottles],
			[IsCliffe],
			[IsNotSaidPlayerUsingColaBottles],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerUsingColaBottles", value = 1, duration = 20.0 },
			c2 = { context = "WhoPutCola", value = "Cliffe", duration = 35 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRelaxedSighCliffe",
		criteria = 
		[
			[ConceptRelaxedSigh],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRelaxedSighGambler,
			},
		],
	},
	{
		name = "PlayerStayTogetherInsideReponseCliffe",
		criteria = 
		[
			[ConceptStayTogetherInsideReponse],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidStayTogetherInsideReponse],
			[IsNotHealthySlow],
			[IsNotInSafeSpot],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerStayTogetherInsideReponseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidStayTogetherInsideReponse", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerUseAdrenalineCliffe",
		criteria = 
		[
			[ConceptUseAdrenaline],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerUseAdrenalineGambler,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingC01Cliffe",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingC01],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingC01Gambler,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingC03Cliffe",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingC03],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingC03Gambler,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingD03Cliffe",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingD03],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingD03Gambler,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingE03Cliffe",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingE03],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingE03Gambler,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG02Cliffe",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingG02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingG02Gambler,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG04Cliffe",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingG04],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingG04Gambler,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingI01Cliffe",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingI01],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingI01Gambler,
			},
		],
	},
	{
		name = "ThanksGotItemCliffe",
		criteria = 
		[
			[IsAwardConcept],
			[IsSharingSubject],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
	},
	{
		name = "RescuedSurvivorCliffe",
		criteria = 
		[
			[IsAwardConcept],
			[IsRescuer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RescuedSurvivorGambler,
			},
		],
	},
	{
		name = "PlayerGivenItemCliffe",
		criteria = 
		[
			[ConceptPlayerGivenItem],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGivenItemGambler,
			},
		],
	},
	{
		name = "ItemDonorCoachCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorCoach],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorCoachGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorMechanicCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorMechanic],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorMechanicGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorProducerCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorProducerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorBikerCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorBiker],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorBikerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorTeenGirlCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorTeenGirl],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorTeenGirlGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorManagerCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorManager],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorManagerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorNamVetCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorNamVet],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorNamVetGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedMinorCliffe",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsCliffe],
			[IsIncappedStarted],
			[IsIncappedStarted2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveMeInterruptedMinorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedMajorCliffe",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsCliffe],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveMeInterruptedMajorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedCriticalCliffe",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsCliffe],
			[IsIncappedLethargic],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveMeInterruptedCriticalGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveThanksCliffe",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksCoachCliffe",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksCoachGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksMechanicCliffe",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsMechanic],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksMechanicGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksProducerCliffe",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksProducerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksProducerC1KnownCliffe",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
			[ismap_c1m1_hotel],
			[YesKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksProducerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksBikerCliffe",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsBiker],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksBikerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksTeenGirlCliffe",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsTeenGirl],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksTeenGirlGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksManagerCliffe",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsManager],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksManagerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "AutoYouAreWelcomeCliffe",
		criteria = 
		[
			[ConceptYouWelcome],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.AutoYouAreWelcomeGambler,
			},
		],
	},
	{
		name = "AutoYouAreWelcomeC1Cliffe",
		criteria = 
		[
			[ConceptYouWelcome],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.AutoYouAreWelcomeC1Gambler,
			},
		],
	},
	{
		name = "BotPlayer_YourWelcomeCliffe",
		criteria = 
		[
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotPlayer_YourWelcomeGambler,
			},
		],
	},
	{
		name = "BotPlayer_YourWelcomeC1Cliffe",
		criteria = 
		[
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotPlayer_YourWelcomeC1Gambler,
			},
		],
	},
	{
		name = "BotReassureComingCliffe",
		criteria = 
		[
			[ConceptSurvivorBotReassureComing],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotReassureComingGambler,
			},
		],
	},
	{
		name = "BotReassureNearbyCliffe",
		criteria = 
		[
			[ConceptSurvivorBotReassureNearby],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotReassureNearbyGambler,
			},
		],
	},
	{
		name = "BotYesReadyCliffe",
		criteria = 
		[
			[ConceptSurvivorBotYesReady],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotYesReadyGambler,
			},
		],
	},
	{
		name = "C1M2LeavingSafeRoomCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCliffe],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m2_streets],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2LeavingSafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.989 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M2SafeRoomb1Cliffe",
		criteria = 
		[
			[ConceptC1M2SafeRoomb1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomb1Gambler,
			},
		],
	},
	{
		name = "C1M2SafeRoomb2Cliffe",
		criteria = 
		[
			[ConceptC1M2SafeRoomb2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomb2Gambler,
			},
		],
	},
	{
		name = "C1M2SafeRoomb3Cliffe",
		criteria = 
		[
			[ConceptC1M2SafeRoomb3],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomb3Gambler,
			},
		],
	},
	{
		name = "C1M2SafeRoomc2Cliffe",
		criteria = 
		[
			[ConceptC1M2SafeRoomc2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomc2Gambler,
			},
		],
	},
	{
		name = "C1M2SafeRoomd1Cliffe",
		criteria = 
		[
			[ConceptC1M2SafeRoomd1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomd1Gambler,
			},
		],
	},
	{
		name = "C1M2TankerAttackCliffe",
		criteria = 
		[
			[ConceptC1M2TankerAttack2],
			[IsCliffe],
			[WhoPutColaCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2TankerAttackGambler,
			},
		],
	},
	{
		name = "c1m4escapeCliffe",
		criteria = 
		[
			[Conceptc1m4escape],
			[IsCliffe],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4escapeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.0 },
			c2 = { context = "SaidOutro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c1m4escapeEllisCliffe",
		criteria = 
		[
			[Conceptc1m4escape],
			[IsCliffe],
			[IsMechanicAlive],
			[ChanceToFire50Percent],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4escapeEllisGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.0 },
			c2 = { context = "SaidOutro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c1m4escapeEllisSuccessCliffe",
		criteria = 
		[
			[Conceptc1m4escapeEllisCheckSuccess],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4escapeEllisSuccessGambler,
			},
		],
	},
	{
		name = "c1m4escapeEllisFailCliffe",
		criteria = 
		[
			[Conceptc1m4escapeEllisCheckFail],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4escapeGambler,
			},
		],
	},
	{
		name = "C1M4GasPourCliffe",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4GasPourGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "C1M4PlayerGetToRescueVehicleCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[ismap_c1m4_atrium],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4PlayerGetToRescueVehicleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c1m4startelevatorCliffe",
		criteria = 
		[
			[Conceptc1m4startelevator],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4startelevatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.0 },
			c2 = { context = "ElevatorTimer", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3GasPourCliffe",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[isC6M3_Port],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3GasPourGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "FinaleStartC1M4Cliffe",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsCliffe],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m4_atrium],
			[IsNotScavenge],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.FinaleStartC1M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
			c2 = { context = "_auto_Finale", value = 1, duration = 0.0 },
			c3 = { context = "_auto_NoLostCall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPourDoneC1M4Cliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[ScoreDoneSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourDoneC1M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_Riders01Cliffe",
		criteria = 
		[
			[Concept_C2M2_Riders01],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Riders01Gambler,
			},
		],
	},
	{
		name = "C2M2CarouselIdleCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[ismap_c2m2],
			[IsNotSaidSafeSpotAhead],
			[IsNotInSafeSpot],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M2CarouselIdleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 13.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3RubbleNagIdleCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTeamNearCoaster],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[_auto_IsCoasterExpo],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3RubbleNagIdleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.026 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c3 = { context = "_auto_TimerLockCliffe", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m3_DownHoleCliffe",
		criteria = 
		[
			[Conceptc2m3downhole],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m3_DownHoleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DownHole", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m3CoasterEndCliffe",
		criteria = 
		[
			[Conceptc2m3CoasterEnd],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m3CoasterEndGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3CoasterRunGoCliffe",
		criteria = 
		[
			[ConceptC2M3CoasterRunGo],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3CoasterRunGoGambler,
			},
		],
	},
	{
		name = "C2M3CoasterStartCliffe",
		criteria = 
		[
			[Conceptc2m3CoasterStart],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3CoasterStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnMegaMob", value = 1, duration = 30.0 },
			c2 = { context = "_auto_Alarm", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m3SpotIncendiaryCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsIncendiary],
			[IsCliffe],
			[IsTalk],
			[NotInCombat],
			[Ismap_c2m3],
			[_auto_NotOutOfTunnel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m3SpotIncendiaryGambler,
			},
		],
	},
	{
		name = "c2m3SeeChopperCliffe",
		criteria = 
		[
			[Conceptc2m3SeeChopper],
			[IsCliffe],
			[IsTalk],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m3SeeChopperGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_OutOfTunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4ButtonPressedCliffe",
		criteria = 
		[
			[ConceptC2M4ButtonPressed],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M4ButtonPressedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ButtonPressed", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4Gate000Cliffe",
		criteria = 
		[
			[ConceptC2M4Gate000],
			[IsCliffe],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGate],
			[_auto_NotNearGateNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M4Gate000Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.707 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockCliffe", value = 1, duration = 23.0 },
			c4 = { context = "_auto_NearGateNag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4GateIdleCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGateNag],
			[_auto_IsNearGate],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M4GateIdleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.886 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockCliffe", value = 1, duration = 23.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4GateOpenCalloutCliffe",
		criteria = 
		[
			[ConceptC2M4GateOpenCallout],
			[IsCliffe],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M4GateOpenCalloutGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.887 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m4SeeChopperCliffe",
		criteria = 
		[
			[Conceptc2m4SeeChopper],
			[IsCliffe],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m4SeeChopperGambler,
			},
		],
	},
	{
		name = "c2m5_intro003Cliffe",
		criteria = 
		[
			[Conceptc2m5_intro003],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro003Gambler,
			},
		],
	},
	{
		name = "c2m5_intro004Cliffe",
		criteria = 
		[
			[Conceptc2m5_intro004],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro003Gambler,
			},
		],
	},
	{
		name = "c2m5_intro008Cliffe",
		criteria = 
		[
			[Conceptc2m5_intro008],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro003Gambler,
			},
		],
	},
	{
		name = "c2m5_intro011Cliffe",
		criteria = 
		[
			[Conceptc2m5_intro011],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro011Gambler,
			},
		],
	},
	{
		name = "c2m5_intro015Cliffe",
		criteria = 
		[
			[Conceptc2m5_intro015],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro011Gambler,
			},
		],
	},
	{
		name = "c2m5_intro020Cliffe",
		criteria = 
		[
			[Conceptc2m5_intro020],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro020Gambler,
			},
		],
	},
	{
		name = "C2M5Button1Cliffe",
		criteria = 
		[
			[ConceptC2M5Button1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5Button1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Button1", value = 1, duration = 0.0 },
			c2 = { context = "_auto_NoLostCall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorReloadingC2M5Cliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[IsRocking],
			[Ismap_c2m5],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorReloadingC2M5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorReloadingC2M5RockedOutCliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[IsRocking],
			[Ismap_c2m5],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
	},
	{
		name = "SurvivorVocalizeLookOutC2M5Cliffe",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsRocking],
			[IsWorldTalkCliffe],
			[ismap_c2m5],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeLookOutC2M5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorVocalizeLookOutC2M5RockedOutCliffe",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsRocking],
			[IsWorldTalkCliffe],
			[ismap_c2m5],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
	},
	{
		name = "C2M5ReloadingTankCliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCliffe],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5ReloadingTankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidReloadingTank", value = 1, duration = 10.0 },
			c2 = { context = "SaidTankWarn2", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillTankConfirmationC2M5Cliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankConfirmationC2M5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5_Button2YellCliffe",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsCliffe],
			[NotCoachMadAtRiders],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_Button2YellGambler,
			},
		],
	},
	{
		name = "C2M5_Button2YellCoachMadCliffe",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsCliffe],
			[CoachMadAtRiders],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_Button2YellGambler,
			},
		],
	},
	{
		name = "C2M5_ChoppercomingCliffe",
		criteria = 
		[
			[ConceptC2M5_Choppercoming],
			[IsCliffe],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_ChoppercomingGambler,
			},
		],
	},
	{
		name = "C2M5_PlanWorkedCliffe",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsCliffe],
			[NotCoachMadAtRiders],
			[IsNotIncapacitated],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_PlanWorkedGambler,
			},
		],
	},
	{
		name = "C2M5_PlanWorkedCoachMadCliffe",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsCliffe],
			[CoachMadAtRiders],
			[IsNotIncapacitated],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_PlanWorkedGambler,
			},
		],
	},
	{
		name = "C2M5ChopperNagCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[Ismap_c2m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5ChopperNagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5InChopperNagCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[Ismap_c2m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5InChopperNagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5InArenaNagCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[Ismap_c2m5],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[_auto_IsC2M5InArena],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5InArenaNagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 34.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5ChopperOCDCliffe",
		criteria = 
		[
			[ConceptC2M5ChopperOCD],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsNotInRescueVehicle],
			[CliffeOCD],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5ChopperOCDGambler,
			},
		],
	},
	{
		name = "C2M3SaferoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SaferoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3SafeIntro007Cliffe",
		criteria = 
		[
			[ConceptC2M3SafeIntro007],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro007Gambler,
			},
		],
	},
	{
		name = "C2M3SafeIntro009Cliffe",
		criteria = 
		[
			[ConceptC2M3SafeIntro009],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro009Gambler,
			},
		],
	},
	{
		name = "C2M3SafeIntro010Cliffe",
		criteria = 
		[
			[ConceptC2M3SafeIntro010],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro010Gambler,
			},
		],
	},
	{
		name = "C2M3SafeIntro012Cliffe",
		criteria = 
		[
			[ConceptC2M3SafeIntro012],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro012Gambler,
			},
		],
	},
	{
		name = "C2M3SafeIntro013Cliffe",
		criteria = 
		[
			[ConceptC2M3SafeIntro013],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro013Gambler,
			},
		],
	},
	{
		name = "C3GoingToDieCliffe",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsInSwamp],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3GoingToDieGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "C3M1FerryEnd2Cliffe",
		criteria = 
		[
			[ConceptC3M1FerryEnd2],
			[IsCliffe],
			[IsNotSaidC3M1FerryEnd],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M1FerryEnd2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryEnd", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC3M1FerryCrossingM3Cliffe",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingM3],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC3M1FerryCrossingM3Gambler,
			},
		],
	},
	{
		name = "C3M2DisgustCliffe",
		criteria = 
		[
			[Conceptc3m2disgust],
			[IsCliffe],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2DisgustGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.028 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M2SafeRoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[ismapc3m2_swamp],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2SafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M2SafeRoom3dCliffe",
		criteria = 
		[
			[ConceptC3M2SafeRoom3d],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2SafeRoom3dGambler,
			},
		],
	},
	{
		name = "C3M2SafeRoomb2Cliffe",
		criteria = 
		[
			[ConceptC3M2SafeRoomb2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2SafeRoomb2Gambler,
			},
		],
	},
	{
		name = "C3M3SafeRoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[Ismapc3m3_shantytown],
			[IsInStartArea],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M3SafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "InfoRemC3M3LowerGateaCliffe",
		criteria = 
		[
			[ConceptInfoRemC3M3LowerGatea],
			[IsCliffe],
			[IsNotSaidC3M3BridgeButton],
			[IntensityUnder25],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.InfoRemC3M3LowerGateaGambler,
			},
		],
	},
	{
		name = "InfoRemC3M3Unsanitarya2Cliffe",
		criteria = 
		[
			[ConceptInfoRemC3M3Unsanitarya2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.InfoRemC3M3Unsanitarya2Gambler,
			},
		],
	},
	{
		name = "C3M4BoatNagsCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[ismapc3m4_plantation],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsRunning],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4BoatNagsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4InBoatNagsCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[ismapc3m4_plantation],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4InBoatNagsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4Button1ACliffe",
		criteria = 
		[
			[ConceptC3M4Button1A],
			[IsCliffe],
			[FromIsAnOrator],
			[_auto_IsTalkingCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4Button1AGambler,
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer4Cliffe",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsCliffe],
			[FromIsAnOrator],
			[IsEveryoneAlive],
			[_auto_IsTalkingCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4ButtonHowManyAnswer4Gambler,
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer3Cliffe",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsCliffe],
			[FromIsAnOrator],
			[IsWithOnlyThree],
			[_auto_IsTalkingCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4ButtonHowManyAnswer3Gambler,
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer2Cliffe",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsCliffe],
			[FromIsAnOrator],
			[IsWithTwo],
			[_auto_IsTalkingCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4ButtonHowManyAnswer2Gambler,
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer1Cliffe",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsCliffe],
			[FromIsAnOrator],
			[IsAlone],
			[_auto_IsTalkingCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4ButtonHowManyAnswer1Gambler,
			},
		],
	},
	{
		name = "C3M4Button201Cliffe",
		criteria = 
		[
			[ConceptC3M4Button201],
			[IsCliffe],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4Button201Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.424 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4Button203Cliffe",
		criteria = 
		[
			[ConceptC3M4Button203],
			[IsCliffe],
			[_auto_IsTalkingCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4Button203Gambler,
			},
		],
	},
	{
		name = "C3M4Button202Cliffe",
		criteria = 
		[
			[ConceptC3M4Button202],
			[IsCliffe],
			[FromIsAnOrator],
			[_auto_IsTalkingCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4Button202Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.424 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4GateBlow01Cliffe",
		criteria = 
		[
			[ConceptC3M4GateBlow01],
			[IsCliffe],
			[FromIsAnOrator],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4GateBlow01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4GoingToDieCliffe",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsCampaign4],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4GoingToDieGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "C4StormBlindIdleCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[_auto_NotTimerLockA],
			[_auto_IsTimerA],
			[_auto_NotC4CliffeInCover],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4StormBlindIdleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerA", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m1Intro20Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro20],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro20Gambler,
			},
		],
	},
	{
		name = "_c4m1Intro23Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro23],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro23Gambler,
			},
		],
	},
	{
		name = "C4M2IdleWitchville03Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[NotInCombat],
			[IsWorldTalkCliffe],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsCliffeInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M2IdleWitchville03Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
			c2 = { context = "WarnHeardWitch", value = 1, duration = 300.0 },
			c3 = { context = "SaidLotsOfWitches", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M2PushedButtonCliffe",
		criteria = 
		[
			[Conceptc4m2_elevator_top_button],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M2PushedButtonGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidActivatedC4M2Elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M5BoatNagsCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[Isc4m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M5BoatNagsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M5InBoatNagsCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[Isc4m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M5InBoatNagsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5GoingToDieCliffe",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsCampaign5],
		],
		// 	forceweight 200
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5GoingToDieGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "C5M5GoingToDieCliffe",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCliffe],
			[IsOnThirdStrike],
			[IsNotSaidGoingToDieC5M5],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsMapc5m5_bridge],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 200
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5GoingToDieGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 8.0 },
			c3 = { context = "SaidGoingToDieC5M5", value = 1, duration = 0.0 },
		},
	},
	{
		name = "C5M1_intro002Cliffe",
		criteria = 
		[
			[ConceptC5M1_intro002],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1_intro002Gambler,
			},
		],
	},
	{
		name = "C5M1_intro004Cliffe",
		criteria = 
		[
			[ConceptC5M1_intro004],
			[IsCliffe],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1_intro004Gambler,
			},
		],
	},
	{
		name = "C5M1_intro006Cliffe",
		criteria = 
		[
			[ConceptC5M1_intro006],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1_intro006Gambler,
			},
		],
	},
	{
		name = "C5M1_intro007Cliffe",
		criteria = 
		[
			[ConceptC5M1_intro007],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1_intro007Gambler,
			},
		],
	},
	{
		name = "C5M1Flyby01Cliffe",
		criteria = 
		[
			[ConceptC5M1Flyby01],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1Flyby01Gambler,
			},
		],
	},
	{
		name = "C5M1Flyby02Cliffe",
		criteria = 
		[
			[ConceptC5M1Flyby02],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1Flyby02Gambler,
			},
		],
	},
	{
		name = "C5M2AlarmNagCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsMapc5m2_park],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M2AlarmNagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M2Freeway01Cliffe",
		criteria = 
		[
			[ConceptC5M2Freeway01],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M2Freeway01Gambler,
			},
		],
	},
	{
		name = "C5M2Horse001Cliffe",
		criteria = 
		[
			[ConceptC5M2Horse001],
			[IsCliffe],
			[IsSubjectNear300],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsNotScavenge],
			[TimeSinceGroupInCombat02],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M2Horse001Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkc5m2busstationCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m2busstation],
			[IsNotSaidc5m2busstation],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsDoorOpen],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m2busstationGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2busstation", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.25 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m2freewayCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m2freeway],
			[IsNotSaidc5m2freeway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m2freewayGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2freeway", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.216 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m2parkCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m2park],
			[IsNotSaidc5m2park],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m2parkGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2park", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.354 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502Horse2Cliffe",
		criteria = 
		[
			[ConceptWorldC502Horse2],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[TimeSinceGroupInCombat02],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502Horse2Gambler,
			},
		],
	},
	{
		name = "C5M3AlarmFieldNagsCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[NotInCombat],
			[IsNotCoughing],
			[IsTalk],
			[_auto_IsInAlarmField],
			[_auto_NotTimerLockA],
			[_auto_NotAlarmFieldOn],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 200
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3AlarmFieldNagsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.073 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3AlarmFieldNags01Cliffe",
		criteria = 
		[
			[ConceptC5M3AlarmFieldNags01],
			[IsCliffe],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3AlarmFieldNags01Gambler,
			},
		],
	},
	{
		name = "C5M3AlarmFieldNags02Cliffe",
		criteria = 
		[
			[ConceptC5M3AlarmFieldNags02],
			[IsCliffe],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3AlarmFieldNags02Gambler,
			},
		],
	},
	{
		name = "C5M3Bodies02Cliffe",
		criteria = 
		[
			[ConceptC5M3Bodies02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Bodies02Gambler,
			},
		],
	},
	{
		name = "C5M3Bodies04Cliffe",
		criteria = 
		[
			[ConceptC5M3Bodies04],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Bodies04Gambler,
			},
		],
	},
	{
		name = "C5M3FirstInAlarmCliffe",
		criteria = 
		[
			[ConceptC5M3FirstInAlarmField],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3FirstInAlarmGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.44 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3Freeway01Cliffe",
		criteria = 
		[
			[ConceptC5M3Freeway01],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Freeway01Gambler,
			},
		],
	},
	{
		name = "C5M3GraveNagsCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[NotInCombat],
			[IsNotCoughing],
			[IsTalk],
			[ChanceToFire10Percent],
			[IsNotAlone],
			[TimeSinceGroupInCombat02],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsOffHighway],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3GraveNagsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.278 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3GraveNags01Cliffe",
		criteria = 
		[
			[ConceptC5M3GraveNags01],
			[IsCliffe],
			[NotInCombat],
			[IsNotCoughing],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3GraveNags01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.51 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3GraveNags02Cliffe",
		criteria = 
		[
			[ConceptC5M3GraveNags02],
			[IsCliffe],
			[NotInCombat],
			[IsNotCoughing],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3GraveNags02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.81 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3Jets2Cliffe",
		criteria = 
		[
			[Conceptc5m3Jets2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Jets2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.369 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3StopZombiesCliffe",
		criteria = 
		[
			[ConceptC5M3StopZombies],
			[IsCliffe],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3StopZombiesGambler,
			},
		],
	},
	{
		name = "C5M3manhole01Cliffe",
		criteria = 
		[
			[ConceptC5M3manhole01],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3manhole01Gambler,
			},
		],
	},
	{
		name = "C5M3OnBridgeCliffe",
		criteria = 
		[
			[Conceptc5m3OnBridge],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3OnBridgeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.077 },
			c2 = { context = "_auto_AlarmFieldOn", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3SeeGraveyard01Cliffe",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard01],
			[IsCliffe],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3SeeGraveyard01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.608 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3SeeGraveyard05Cliffe",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard05],
			[IsCliffe],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3SeeGraveyard05Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.141 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3SewerIn01Cliffe",
		criteria = 
		[
			[ConceptC5M3SewerIn01],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3SewerIn01Gambler,
			},
		],
	},
	{
		name = "C5M3ShootCarCliffe",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsCliffe],
			[IsCarAlarm],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3ShootCarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_AlarmFieldOn", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 2.0 },
			c3 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3ShootCar2Cliffe",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotCliffe],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[_auto_ShotSecondCar],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_NotTimerLockA],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3ShootCar2Gambler,
			},
		],
		applycontext =
		{
			//⚠️WARNING: _auto_ShotCar:++1:None:None requires criteria function!
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3ShootCar3Cliffe",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotCliffe],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[IsNotSpeaking],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_ShotThirdCar],
			[_auto_NotTimerLockA],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3ShootCar3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.879 },
			//⚠️WARNING: _auto_ShotCar:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3Sniper01Cliffe",
		criteria = 
		[
			[ConceptC5M3Sniper01],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsSubjectDistNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Sniper01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.733 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3bodiesCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3bodies],
			[NotInCombat],
			[IsSubjectNear100],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3bodiesGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m2peopleCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m2peopleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2people", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 5.916 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc5m2peopleCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2people", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3busCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3bus],
			[IsNotSaidc5m3bus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3busGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3bus", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.881 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3crashedheliCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3crashedheli],
			[IsNotSaidc5m3crashedheli],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3crashedheliGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3crashedheli", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3freewayCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3freeway],
			[IsNotSaidc5m3freeway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3freewayGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3freeway", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3insewerCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3insewer],
			[IsNotSaidc5m3insewer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3insewerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3insewer", value = 1, duration = 0.0 },
			c2 = { context = "_auto_InSewer", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3manholeCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3manhole],
			[IsNotSaidc5m3manhole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotInSewer],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3manholeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3manhole", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.881 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3offhighwayCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3offhighway],
			[IsNotSaidc5m3offhighway],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3offhighwayGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3offhighway", value = 1, duration = 0.0 },
			c2 = { context = "_auto_OffHighway", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3safezoneCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3safezone],
			[NotInCombat],
			[IsSubjectNear150],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3safezoneGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3seegraveyardCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3seegraveyard],
			[IsNotSaidc5m3seegraveyard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotAlone],
			[_auto_IsBridgeBomb],
			[_auto_NotTimerLockA],
			[_auto_NotOffHighway],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3seegraveyardGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3seegraveyard", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.342 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3sewercommentCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3sewercomment],
			[IsNotSaidc5m3sewercomment],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsCliffeAlive],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sewercommentGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sewercomment", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.353 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc5m3sewercommentCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3sewercomment],
			[IsNotSaidc5m3sewercomment],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsCliffeAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sewercomment", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3sniperCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3sniper],
			[IsNotSaidc5m3sniper],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sniperGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sniper", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.833 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3sniperCoachCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3sniper],
			[IsNotSaidc5m3sniper],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsCoachAlive],
			[IsCoachNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sniperCoachGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sniper", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.833 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3sniperRochelleCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3sniper],
			[IsNotSaidc5m3sniper],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsProducerAlive],
			[IsProducerNear400],
			[ChanceToFire25Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 3
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sniperRochelleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sniper", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.833 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3sniperEllisCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3sniper],
			[IsNotSaidc5m3sniper],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[ChanceToFire10Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 4
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sniperEllisGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sniper", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.833 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3upladderCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3upladder],
			[IsNotSaidc5m3upladder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upladderGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upladder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3upstepsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3upsteps],
			[IsNotSaidc5m3upsteps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upstepsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upsteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3warzoneCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m3warzone],
			[IsNotSaidc5m3warzone],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3warzoneGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3warzone", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombExtCliffe",
		criteria = 
		[
			[ConceptC5M4BombExt],
			[IsCliffe],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombExtGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.92 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt01Cliffe",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NoAirstrikes],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombInt01Gambler,
			},
		],
		applycontext =
		{
			//⚠️WARNING: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt01ACliffe",
		criteria = 
		[
			[ConceptC5M4BombIntA],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombInt01AGambler,
			},
		],
	},
	{
		name = "C5M4BombInt02Cliffe",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsCliffe],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_FirstAirstrike],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombInt02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.002 },
			//⚠️WARNING: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt03Cliffe",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsCliffe],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_SecondAirstrike],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombInt03Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.654 },
			//⚠️WARNING: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombIntManyCliffe",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsCliffe],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_ManyAirstrikes],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombInt03Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.654 },
			//⚠️WARNING: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4JetPlanesCliffe",
		criteria = 
		[
			[ConceptC5M4JetPlanes],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4JetPlanesGambler,
			},
		],
	},
	{
		name = "PlayerRemarkc5m4alleyCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m4alley],
			[IsNotSaidc5m4alley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4alleyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4alley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m4inminifinaleCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m4inminifinale],
			[IsNotSaidc5m4inminifinale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4inminifinaleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4inminifinale", value = 1, duration = 0.0 },
			c2 = { context = "_auto_InMiniFinale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m4pooltableCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m4pooltable],
			[IsNotSaidc5m4pooltable],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4pooltableGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4pooltable", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc5m4pooltableCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m4pooltable],
			[IsNotSaidc5m4pooltable],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4pooltable", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m4seebridgeCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m4seebridge],
			[IsNotSaidc5m4seebridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4seebridgeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4seebridge", value = 1, duration = 0.0 },
			c2 = { context = "_auto_SawBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m4tractornagCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m4tractornag],
			[IsNotSaidc5m4tractornag],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTractorStarted],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4tractornagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4tractornag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m4tractornagEllisCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc5m4tractornag],
			[IsNotSaidc5m4tractornag],
			[IsNotCoughing],
			[NotInCombat],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTractorStarted],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4tractornagEllisGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4tractornag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCliffe],
			[IsNotSaidLeavingSafeArea],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.434 },
			c2 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c3 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c4 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptGenericCliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptGenericGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC1M2Cliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[ismap_c1m2_streets],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC1M3Cliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[ismap_c1m3_mall],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC1M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC2M5Cliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[ismap_c2m5],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC2M5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC3M2Cliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[ismapc3m2_swamp],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptGenericGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC4M3Cliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[isc4m3],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC4M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC4M4Cliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[isc4m4],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC4M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC5M2Cliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[IsMapc5m2_park],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC5M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC5M5Cliffe",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsCliffe],
			[IsMapc5m5_bridge],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC5M5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5_Button2Cliffe",
		criteria = 
		[
			[ConceptC5M5_Button2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_Button2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BridgeNag", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5_GateDownCliffe",
		criteria = 
		[
			[ConceptC5M5_GateDown],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_GateDownGambler,
			},
		],
	},
	{
		name = "C5M5_saferoom001Cliffe",
		criteria = 
		[
			[ConceptC5M5_saferoom001],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_saferoom001Gambler,
			},
		],
	},
	{
		name = "C5M5_saferoom003Cliffe",
		criteria = 
		[
			[ConceptC5M5_saferoom003],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_saferoom003Gambler,
			},
		],
	},
	{
		name = "C5M5_saferoom004Cliffe",
		criteria = 
		[
			[ConceptC5M5_saferoom004],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_saferoom003Gambler,
			},
		],
	},
	{
		name = "C5M5_SurvivorConv01Cliffe",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv01],
			[IsCliffe],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCliffe],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv01Gambler,
			},
		],
	},
	{
		name = "C5M5_SurvivorConv02Cliffe",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv02],
			[IsCliffe],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCliffe],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv02Gambler,
			},
		],
	},
	{
		name = "C5M5_SurvivorConv03Cliffe",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv03],
			[IsCliffe],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCliffe],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv03Gambler,
			},
		],
	},
	{
		name = "C5M5_SurvivorConv04Cliffe",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv04],
			[IsCliffe],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCliffe],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv04Gambler,
			},
		],
	},
	{
		name = "C5M5_SurvivorConv05Cliffe",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv05],
			[IsCliffe],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCliffe],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv05Gambler,
			},
		],
	},
	{
		name = "C5M5_LowerTheBridgeCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[_auto_IsBridgeNag],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_LowerTheBridgeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5Button1BuzzardRunCliffe",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsCliffe],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCliffe],
			[_auto_NotButton2],
			[_auto_IsBuzzardRunMentioned],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5Button1BuzzardRunGambler,
			},
		],
	},
	{
		name = "C5M5Button1Cliffe",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsCliffe],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCliffe],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5Button1Gambler,
			},
		],
	},
	{
		name = "C5M5HearSoldiersCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsMapc5m5_bridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsTalk],
			[_auto_IsSoldierChatter],
			[_auto_NotRadioNag],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5HearSoldiersGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RadioNag", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c3 = { context = "_auto_TimerLockCliffe", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5HearSoldiersNagCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[_auto_IsRadioNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5HearSoldiersNagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5LeaveSafeCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCliffe],
			[IsMapc5m5_bridge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5LeaveSafeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
			c2 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c3 = { context = "_auto_TimerLockA", value = 1, duration = 5.0 },
			c4 = { context = "_auto_SoldierChatter", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5RescueStartCliffe",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsCliffe],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5RescueStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 2, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5RunToHeliCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[IsMapc5m5_bridge],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5RunToHeliGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5InsideHeliCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[IsMapc5m5_bridge],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5InsideHeliGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5BridgeDestroyed2Cliffe",
		criteria = 
		[
			[ConceptC5M5BridgeDestroyed2],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsEveryoneAlive],
			[CanSpeakC5M5SurvivorOutro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5BridgeDestroyed2Gambler,
			},
		],
	},
	{
		name = "C5M5SurvivorVocalizeLookOutCliffe",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5SurvivorVocalizeLookOutGambler,
			},
		],
	},
	{
		name = "C5M5SpottedTankCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5SpottedTankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidTankWarn2", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5ReloadingTankCliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[_auto_IsFinaleStarted],
			[IsWorldTalkCliffe],
			[IsMapc5m5_bridge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5ReloadingTankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidReloadingTank", value = 1, duration = 10.0 },
			c2 = { context = "SaidTankWarn2", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC5M5TruckCliffe",
		criteria = 
		[
			[ConceptC5M5Truck],
			[IsCliffe],
			[IsNotSaidC5M5Truck],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
			[_auto_IsFinaleStarted],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC5M5TruckGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC5M5Truck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillTankConfirmationC5M5Cliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsTank],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[IsMapc5m5_bridge],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankConfirmationC5M5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "C5M5SafeRoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[IsMapc5m5_bridge],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5SafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1_IntotheparkNoHealthCliffe",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1_IntotheparkNoHealthGambler,
			},
		],
	},
	{
		name = "C6M1Intro_01Biker05Cliffe",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsCliffe],
			[IsFrancisIntroActor],
			[IsNotSaidCXM1Intro],
			[IsProducerAlive],
			[IsNotVersus],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_01Biker05Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.0 },
			c3 = { context = "RemarkWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1Intro_07bCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_07b],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_07bGambler,
			},
		],
	},
	{
		name = "C6M1Intro_09aCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_09a],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09aGambler,
			},
		],
	},
	{
		name = "C6M1Intro_09bCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_09b],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09bGambler,
			},
		],
	},
	{
		name = "C6M1Intro_09dCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_09d],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09dGambler,
			},
		],
	},
	{
		name = "C6M1Intro_10eCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_10e],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_10eGambler,
			},
		],
	},
	{
		name = "C6M1Intro_11dCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_11d],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_11dGambler,
			},
		],
	},
	{
		name = "C6M1Intro_14aCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_14a],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_14aGambler,
			},
		],
	},
	{
		name = "C6M1Intro_14cCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_14c],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_14cGambler,
			},
		],
	},
	{
		name = "C6M1Intro_15aCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_15a],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_15aGambler,
			},
		],
	},
	{
		name = "C6M1Intro_15eCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_15e],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_15eGambler,
			},
		],
	},
	{
		name = "C6M1Intro_16aCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_16a],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_16aGambler,
			},
		],
	},
	{
		name = "C6M1Intro_ConfirmObjectiveCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_ConfirmObjective],
			[IsCliffe],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_ConfirmObjectiveGambler,
			},
		],
	},
	{
		name = "LeavingC6M1StartCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsCliffe],
			[IsNotAlone],
			[YesHasFirstAidKit],
			[Isc6m1_riverbank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.LeavingC6M1StartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "LeavingC6M1StartNoFirstAidCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsCliffe],
			[IsNotAlone],
			[NoHasFirstAidKit],
			[Isc6m1_riverbank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.LeavingC6M1StartNoFirstAidGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemWorldC6M1_WeddingWarn02Cliffe",
		criteria = 
		[
			[ConceptRemWorldC6M1_WeddingWarn02],
			[IsCliffe],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RemWorldC6M1_WeddingWarn02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CoachCake", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M1_HistoricTourCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_HistoricTour],
			[IsNotSaidWorldC6M1_HistoricTour],
			[CanRemarkWorldC6M1_HistoricTour],
			[IsSubjectNear800],
			[IsTalk],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_HistoricTourGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M1_PostWedding02aCliffe",
		criteria = 
		[
			[ConceptWorldC6M1_PostWedding02a],
			[IsCliffe],
			[IsSubjectDistNear800],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_PostWedding02aGambler,
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn05aCliffe",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn05a],
			[IsCliffe],
			[IsSubjectDistNear800],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_WeddingWarn05aGambler,
			},
		],
	},
	{
		name = "C6M2_OpenGate1Cliffe",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
			c2 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c3 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2_OpenGate1aCliffe",
		criteria = 
		[
			[ConceptC6M2_OpenGate1a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate1aGambler,
			},
		],
	},
	{
		name = "C6M2_OpenGate2Cliffe",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoFrancisStartCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsFrancisIntroActor],
			[ChanceToFire50Percent],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvoFrancisStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo01bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo01b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo01bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo02bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo02b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo02bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo06aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo06a],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo06aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo07aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo07a],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo07aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoStartCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvoStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo08a],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo08c],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08cGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08eCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo08e],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08eGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo09bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo09b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo09bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoZoeyStartCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsZoeyIntroActor],
			[IsMechanicAlive],
			[ChanceToFire50Percent],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvoZoeyStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
			c2 = { context = "MentionedZoeyC6M2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo10bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo10b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo10dCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo10d],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10dGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo11bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo11b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo11bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12a],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo12aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12c],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo12cGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13a],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13c],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13cGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13cFrancisIntroCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13c],
			[IsCliffe],
			[IsFrancisIntroActor],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13cFrancisIntroGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14fCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14f],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo14fGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo15c],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo15cGambler,
			},
		],
	},
	{
		name = "WorldC6M2_AfterGate201aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_AfterGate201a],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_AfterGate201aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_FinalWater01aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_FinalWater01a],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_FinalWater01aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer101cCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101c],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer101cGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer102bCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer102b],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer102bGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer201aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer201a],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer201aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer202aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer202a],
			[IsCliffe],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer202aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewerLadder101aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewerLadder101a],
			[IssuerClose],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewerLadder101aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk101aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk101a],
			[IsCliffe],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_OnTourWalk101aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk102aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk102a],
			[IsCliffe],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_OnTourWalk102aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo01bCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo01b],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_Tattoo01bGambler,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo03aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo03a],
			[IsCliffe],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_Tattoo03aGambler,
			},
		],
	},
	{
		name = "C6M3_BridgeDownCliffe",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_BridgeDownGambler,
			},
		],
	},
	{
		name = "C6M3_BridgeGettoCarCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[Isc6m3_port],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_BridgeGettoCarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorCancelCliffe",
		criteria = 
		[
			[ConceptC6M3_ElevatorCancel],
			[IsCliffe],
			[IsC6M3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
	},
	{
		name = "C6M3_elevatorCliffe",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsCliffe],
			[IsC6M3_port],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_elevatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3Elevator", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorFrancisCliffe",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsCliffe],
			[IsC6M3_port],
			[IsFrancisIntroActor],
			[IsNotVersus],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_elevatorFrancisGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3Elevator", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_GivenItemBikerCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorBiker],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_GivenItemBikerGambler,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirlCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorTeenGirl],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_GivenItemTeenGirlGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoFrancisStartCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[isC6m3_port],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsFrancisIntroActor],
			[IsProducerAlive],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvoFrancisStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02dCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02d],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02dGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo03bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03dCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03d],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo03dGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04c],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo04cGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoZoeyStartCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[isC6m3_port],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsZoeyIntroActor],
			[IsEveryoneAlive],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvoZoeyStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo05b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05dCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo05d],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05dGambler,
			},
		],
	},
	{
		name = "IncapBounceCliffe",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsCliffe],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.IncapBounceGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidInCapBounce", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCallForRescueCliffe",
		criteria = 
		[
			[ConceptCallForRescue],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[HasNotCalledForRescue],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCallForRescueGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForRescue", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c6m3_outroCliffe",
		criteria = 
		[
			[Conceptc6m3_outro3],
			[IsCliffe],
			[isC6m3_port],
			[IsNotVersus],
			[IsNotIncapacitated],
			[ChanceToFire100Percent],
			[FromIsBiker],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c6m3_outroGambler,
			},
		],
	},
	{
		name = "c6m3_outroEllisCliffe",
		criteria = 
		[
			[Conceptc6m3_outro3],
			[IsCliffe],
			[IsMechanicAlive],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[isC6m3_port],
			[IsNotVersus],
			[FromIsBiker],
		],
		// 	forceweight 5
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c6m3_outroEllisGambler,
			},
		],
	},
	{
		name = "c6m3_outroZoeyOutroCliffe",
		criteria = 
		[
			[Conceptc6m3_outroL4D1011a],
			[IsCliffe],
			[IsNotIncapacitated],
			[FromIsMechanic],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c6m3_outroZoeyOutroGambler,
			},
		],
	},
	{
		name = "SurvivorSpotFirstWeaponsCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotPickedUpFirstAidKit],
			[ismap_c1m1_hotel],
			[IsNotSaidWorldC1M1First],
			[IsNotSaidFirstWeapon],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpotFirstWeaponsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFirstWeapon", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAdrenalineCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsAdrenaline],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedAdrenalineGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotAdrenaline", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAdrenalineAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			[IsAdrenaline],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedAdrenalineGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotAdrenaline", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAmmoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedAmmoGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotAmmo", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAmmoAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAmmo],
			[IsNotSaidSpot],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedAmmoGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotAmmo", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAmmo2Cliffe",
		criteria = 
		[
			[ConceptPlayerSpotAmmo],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedAmmo2Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachCloseCliffe",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachCloseGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachClose2Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachCloseGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachClose2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachClose2C1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachCloseC1Cliffe",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachClose2C1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachFarCliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachFar400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachFarGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachFarC1Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachFar400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachFarC1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedDefibrillatorCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsDefibrillator],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedDefibrillatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotDefibrillator", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedDefibrillatorAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			[IsDefibrillator],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedDefibrillatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotDefibrillator", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGrenadeCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsPipeBomb],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGrenadeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotGrenade", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGrenadeAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			[IsPipeBomb],
			[IsWorldTalkCliffe],
			[YesHasGrenade],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGrenadeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotGrenade", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGrenadeLauncherCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[Isgrenade_launcher],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGrenadeLauncherGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotgrenade_launcher", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGrenadeLauncherAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			[Isgrenade_launcher],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGrenadeLauncherGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotgrenade_launcher", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHealthCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsFirstAidKit],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHealthGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotHealth", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHealthAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			[IsFirstAidKit],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHealthGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotHealth", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMechanicCloseCliffe",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicCloseGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicClose2Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicClose2Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicClose2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicClose2C1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicCloseC1Cliffe",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicClose2C1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicFarCliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicFar400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicFarGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicFarC1Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicFar400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicFarC1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedMolotovCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsMolotov],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMolotovGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotMolotov", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMolotovAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			[IsMolotov],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMolotovGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotMolotov", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedPillsCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsPainPills],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedPillsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotPills", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedPillsAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedPillsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotPills", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedPillsAutoHasPillsCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[YesHasPainPills],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
			[ChanceToFire40Percent],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedPillsAutoHasPillsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotPills", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedProducerCloseCliffe",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerCloseGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerClose2Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerCloseGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerClose2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerClose2C1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerCloseC1Cliffe",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerClose2C1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerFarCliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerFarGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerFarC1Cliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerFarC1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedUpPack_ExplosiveCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Explosive],
			[_auto_NotSpottedVehicle],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedUpPack_ExplosiveGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotUpgradePack_Explosive", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedUpPack_ExplosiveAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			[IsUpgradePack_Explosive],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedUpPack_ExplosiveGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotUpgradePack_Explosive", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedUpPack_IncendiaryCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Incendiary],
			[_auto_NotSpottedVehicle],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedUpPack_IncendiaryGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotUpgradePack_Incendiary", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedUpPack_IncendiAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedUpPack_IncendiaryGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotUpgradePack_Incendiary", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedVomitJarCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[_auto_NotSpottedVehicle],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedVomitJarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotVomitJar", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedVomitJarAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedVomitJarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotVomitJar", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedVomitJarAutoC1Cliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedVomitJarAutoC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotVomitJar", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedVomitJarC1Cliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedVomitJarAutoC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotVomitJar", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedWorldCloseCliffe",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWorldCloseGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedArmoredC5M1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c5m1_waterfront],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedArmoredC5M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedArmoredCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedArmoredGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomerCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomerAlsoCliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomer2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedBoomerC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomerAlsoC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomer2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedBoomerC1M1CoachCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsCoachAlive],
			[IsCoachNear400],
			[IsNotCliffeInsultedCoachC1],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1CoachGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "CliffeInsultedCoach", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomerC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "KnowBoomer", value = 1, duration = 0.0 },
			c4 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomerAlsoC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedCedaCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCedaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedCedaC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCedaC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChargerCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChargerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChargerAlsoCliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChargerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedCharger2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedChargerC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChargerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChargerAlsoC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChargerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedCharger2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedChargerC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowCharger],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChargerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "KnowCharger", value = 1, duration = 0.0 },
			c4 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChargerAlsoC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChargerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedClownC2M2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[Ismap_c2m2],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedClownC2M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidClownWarn", value = 1, duration = 0.0 },
			//⚠️WARNING: SawClowns:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedClownCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedClownGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidClownWarn", value = 1, duration = 20.0 },
			//⚠️WARNING: SawClowns:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedFallenCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedFallenGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHunterCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHunterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHunterAlsoCliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHunterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHunter2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedHunterC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHunterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHunterAlsoC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHunterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHunter2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedHunterC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowHunter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHunterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "KnowHunter", value = 1, duration = 0.0 },
			c4 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHunterAlsoC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHunterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedInfectedCliffe",
		criteria = 
		[
			[ConceptPlayerIncoming],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedInfectedGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedJimmyCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJimmy],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidJimmyWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJimmyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJimmyWarn", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockeyCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJockeyWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockeyAlsoCliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJockeyWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockey2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedJockeyC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJockeyWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockeyAlsoC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJockeyWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockey2C1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedJockeyC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowJockey],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJockeyWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "KnowJockey", value = 1, duration = 0.0 },
			c4 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockeyAlsoC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJockeyWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMudmenCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMudmenGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidMudmenWarn", value = 1, duration = 20.0 },
			//⚠️WARNING: SawMudMen:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMudmenC3M2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[ismapc3m2_swamp],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMudmenGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidMudmenWarn", value = 1, duration = 0.0 },
			//⚠️WARNING: SawMudMen:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMudmen2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[SawManyMudMen],
			[IntensityUnder50],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMudmen2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidMudmenWarn", value = 1, duration = 20.0 },
			//⚠️WARNING: SawMudMen:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSmokerCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmokerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSmokerAlsoCliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmokerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSmoker2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedSmokerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmokerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSmokerAlsoC1Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmokerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSmoker2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerC1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpitterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSpitterAlsoCliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpitterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSpitter2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpitterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSpitterAlsoC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpitterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSpitter2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowSpitter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpitterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "KnowSpitter", value = 1, duration = 0.0 },
			c4 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSpitterAlsoC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpitterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedTankCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedTankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidTankWarn2", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedTank2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedTankGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedTankC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[IsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedTankC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidTankWarn2", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedTank2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedTankC1Gambler,
			},
		],
	},
	{
		name = "SurvivorSpottedWitchCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWitchGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedWitch2Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWitchGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedWitchC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsNotAlone],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWitchC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedWitch2C1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWitch2C1Gambler,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemCliffe",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[NotInIntenseCombat],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemGambler,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemC1Cliffe",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[NotInIntenseCombat],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemC1Gambler,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemCombatCliffe",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[InIntenseCombat],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemCombatGambler,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemTankCliffe",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemCombatGambler,
			},
		],
	},
	{
		name = "PlayerFaultFriendlyFireCliffe",
		criteria = 
		[
			[IsFaultConcept],
			[IsFaultFriendlyFire],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFaultFriendlyFire", value = 1, duration = 0.1 },
			c2 = { context = "SaidFaultFriendlyFireCliffe", value = 1, duration = 0.1 },
			c3 = { context = "ShotTeammateCliffe", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerFriendlyFireCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFire2Cliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			[IsOnThirdStrike],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFire2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireC1Cliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
			[NoKnowNames],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromCoachCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromCoachGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromCoachNBCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromCoachNBGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromMechanicCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsMechanic],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromMechanicGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromMechanicC1Cliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
			[NoKnowNames],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromMechanicC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromMechanicNBC1Cliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
			[NoKnowNames],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromMechanicNBC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromMechanicNBCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromMechanicGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromProducerCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromProducerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromProducerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
			[NoKnowNames],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromProducerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromProducerNBCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromProducerNBGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireNoBulletCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireNoBulletGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireNoBulletC1Cliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireNoBulletC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankCliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireTankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankC1Cliffe",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCliffe],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireTankC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerToTheRescueCliffe",
		criteria = 
		[
			[ConceptSurvivorBotMovingToReviveFriend],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[NotInCombat],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerToTheRescueGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRescueComing", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerToTheRescueRosCliffe",
		criteria = 
		[
			[ConceptPlayerToTheRescue],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerToTheRescueRosGambler,
			},
		],
	},
	{
		name = "SurvivorTauntResponseCliffe",
		criteria = 
		[
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorTauntResponseGambler,
			},
		],
	},
	{
		name = "C4M1IdleComment01Cliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire40Percent],
			[IsSurvivor],
			[ismap_c4m1_milltown_a],
			[IsSaidc4m1_nogas],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[NotInCombat],
			[IsWorldTalkCliffe],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotNoGasGate],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M1IdleComment01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.788 },
			c2 = { context = "_auto_NoGasGate", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M2IdleCommentCane01Cliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire60Percent],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsCliffeInCane],
			[_auto_NotCaneYellGated],
			[_auto_NotLastSurvivorTalkedCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M2IdleCommentCane01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_CaneYellGated", value = 1, duration = 10.0 },
			c2 = { context = "_auto_LastSurvivorTalkedCliffe", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerChokeResponseCliffe",
		criteria = 
		[
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerChokeResponseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerChokeResponseC1Cliffe",
		criteria = 
		[
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerChokeResponseC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReloadingC502RunCliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsMapc5m2_park],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			[_auto_IsAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReloadingC502RunGambler,
			},
		],
	},
	{
		name = "PlayerReloadingTankCliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReloadingTankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidReloadingTank", value = 1, duration = 10.0 },
			c2 = { context = "SaidTankWarn2", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerReloadingTankC1Cliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReloadingTankC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidReloadingTank", value = 1, duration = 10.0 },
			c2 = { context = "SaidTankWarn2", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWitchChasingCliffe",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsCliffe],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkCliffe],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchChasingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 5.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerWitchChasingC6M1Cliffe",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsCliffe],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkCliffe],
			[isc6m1_riverbank],
			[IsWitchAggro],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchChasingC6M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerWitchStartAttackCliffe",
		criteria = 
		[
			[IsFaultConcept],
			[IsCliffe],
			[IsFaultWitchHarassment],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchStartAttackGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},
	{
		name = "PlayerWitchStartAttackC6M1Cliffe",
		criteria = 
		[
			[IsFaultConcept],
			[IsCliffe],
			[IsFaultWitchHarassment],
			[isc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchStartAttackC6M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},
	{
		name = "WitchAggroCliffe",
		criteria = 
		[
			[ConceptWitchStartAttack],
			[IsCliffe],
			[Iswitch_aggro_onCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			//⚠️WARNING: WitchAggro:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorCriticalHurtCliffe",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotJockey],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCriticalHurtGambler,
			},
		],
	},
	{
		name = "SurvivorIncapacitatedHurtCliffe",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsNotSpeaking],
			[IsIncapacitatedPain],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorIncapacitatedHurtGambler,
			},
		],
	},
	{
		name = "SurvivorJockeyHurtMajorCliffe",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			[IsBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorJockeyHurtMajorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCliffe", value = 1, duration = 6.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMinorCliffe",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			[IsBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorJockeyHurtMajorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCliffe", value = 1, duration = 6.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMajorC1Cliffe",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorJockeyHurtMajorC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCliffe", value = 1, duration = 6.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMinorC1Cliffe",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorJockeyHurtMajorC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCliffe", value = 1, duration = 6.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorMajorHurtCliffe",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotJockey],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMajorHurtGambler,
			},
		],
	},
	{
		name = "SurvivorMinorHurtCliffe",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotJockey],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMinorHurtGambler,
			},
		],
	},
	{
		name = "SurvivorReloadingCliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[NotInIntenseCombat],
			[_auto_NotCliffeInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorReloadingGambler,
			},
		],
	},
	{
		name = "SurvivorReloadingIntenseCliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[InIntenseCombat],
			[_auto_NotCliffeInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorReloadingIntenseGambler,
			},
		],
	},
	{
		name = "SurvivorReloadingC4M2Cliffe",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			[ChanceToFire50Percent],
			[IsWitchPresent],
			[IsWarnHeardWitch],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[_auto_IsCliffeInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorReloadingC4M2Gambler,
			},
		],
	},
	{
		name = "PlayerHelpIncappedCliffe",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHelpIncappedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 7.5 },
		},
	},
	{
		name = "PlayerHelpIncappedBleedingCliffe",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHelpIncappedBleedingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 15.0 },
		},
	},
	{
		name = "PlayerHelpIncappedLethargicCliffe",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsIncappedLethargic],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHelpIncappedLethargicGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 30.0 },
		},
	},
	{
		name = "HelpResponseGamblerCliffe",
		criteria = 
		[
			[ConceptFriendNeedsHelp],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsCliffe],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.HelpResponseGamblerGambler,
			},
		],
	},
	{
		name = "C2M1DoneFallingCliffe",
		criteria = 
		[
			[ConceptC2M1DoneFalling],
			[IsCliffe],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDoneFalling],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1DoneFallingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.987 },
			c2 = { context = "_auto_DoneFalling", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1FallingCliffe",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1FallingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.27 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M2CarouselOffCliffe",
		criteria = 
		[
			[Conceptc2m2CarouselEnd],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M2CarouselOffGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.079 },
			c2 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M2CarouselOnCliffe",
		criteria = 
		[
			[Conceptc2m2CarouselStart],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M2CarouselOnGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 6.0 },
			c3 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c4 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_CaroStart01Cliffe",
		criteria = 
		[
			[Concept_C2M2_CaroStart01],
			[IsCliffe],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_CaroStart01Gambler,
			},
		],
	},
	{
		name = "C3M3BridgeButtonCliffe",
		criteria = 
		[
			[ConceptC3M3BridgeButton],
			[IsNotSaidC3M3BridgeButton],
			[IsCliffe],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M3BridgeButtonGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3BridgeButton", value = 1, duration = 0.0 },
			c2 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c3 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EndOfWavWindow5Cliffe",
		criteria = 
		[
			[ConceptEndOfWavWindow5],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EndOfWavWindow5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_CliffeWavWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerChainSawUsedCliffe",
		criteria = 
		[
			[ConceptChainsawUsed],
			[IsNotSaidChainSawUsed],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IntensityOver25],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerChainSawUsedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChainSawUsed", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M1AroundFireCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M1AroundFire],
			[IsNotSaidC1M1AroundFire],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M1AroundFireGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1AroundFire", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M1OverTableCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M1OverTable],
			[IsNotSaidC1M1OverTable],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M1OverTableGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OverTable", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M1SearchRoomsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M1SearchRooms],
			[IsNotSaidC1M1SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M1SearchRoomsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1SearchRooms", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M1ThroughThisDoorCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M1ThroughThisDoor],
			[IsNotSaidC1M1ThroughThisDoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M1ThroughThisDoorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1ThroughThisDoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3AlarmDoorsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3AlarmDoors],
			[IsNotSaidC1M3AlarmDoors],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3AlarmDoorsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3AlarmDoors", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3CarefulWindowsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3CarefulWindows],
			[IsNotSaidC1M3CarefulWindows],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3CarefulWindowsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CarefulWindows", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3CEDAGoneCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3CEDAGone],
			[IsNotSaidC1M3CEDAGone],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3CEDAGoneGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CEDAGone", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DiscoPantsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3DiscoPants],
			[IsNotSaidC1M3DiscoPants],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DiscoPantsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DiscoPants", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3DownHere],
			[IsNotSaidC1M3DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownHere2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3DownHere2],
			[IsNotSaidC1M3DownHere2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownTheEscalatorCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3DownTheEscalator],
			[IsNotSaidC1M3DownTheEscalator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownTheEscalatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownTheEscalator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3OverHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3OverHere],
			[IsNotSaidC1M3OverHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3OverHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3OverHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3SearchRoomsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3SearchRooms],
			[IsNotSaidC1M3SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3SearchRoomsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3SearchRooms", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3ThisWayCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3ThisWay],
			[IsNotSaidC1M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3ThisWayGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3ThroughHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3ThroughHere],
			[IsNotSaidC1M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3ThroughHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3TurnOffAlarm1],
			[IsNotSaidC1M3TurnOffAlarm1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3TurnOffAlarm1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3TurnOffAlarm2],
			[IsNotSaidC1M3TurnOffAlarm2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3TurnOffAlarm2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm3Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3TurnOffAlarm3],
			[IsNotSaidC1M3TurnOffAlarm3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3TurnOffAlarm3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3UpEscalator1],
			[IsNotSaidC1M3UpEscalator1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3UpEscalator1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3UpEscalator2],
			[IsNotSaidC1M3UpEscalator2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3UpEscalator1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator3Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC1M3UpEscalator3],
			[IsNotSaidC1M3UpEscalator3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3UpEscalator1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_carwreckageCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_carwreckage],
			[IsNotSaidc2m1_carwreckage],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_carwreckageGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_carwreckage", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.543 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_offrampCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_offramp],
			[IsNotSaidc2m1_offramp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_offrampGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_offramp", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.289 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_checkroomsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_checkrooms],
			[IsNotSaidc2m1_checkrooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_checkroomsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_checkrooms", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.43 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_cliffCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_cliff],
			[IsNotSaidc2m1_cliff],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_cliffGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_cliff", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.763 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_downstairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_downstairs],
			[IsNotSaidc2m1_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_downstairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_downstairs", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.797 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_bridgeoutCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_bridgeout],
			[IsNotSaidc2m1_bridgeout],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_bridgeoutGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_bridgeout", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.746 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_followriverCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_followriver],
			[IsNotSaidc2m1_followriver],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_followriverGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_followriver", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.822 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_motelsignCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectFar100],
			[ChanceToFire20Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_motelsignGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_motelsign", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.428 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m1_motelsignCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectFar100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_motelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_parkCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_park],
			[IsNotSaidc2m1_park],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_parkGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_park", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.05 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_poolCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_pool],
			[IsNotSaidc2m1_pool],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_poolGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_pool", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.037 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_searchlightsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectFar100],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_searchlightsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_searchlights", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.216 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m1_searchlights01Cliffe",
		criteria = 
		[
			[Concept_c2m1_searchlights01],
			[IsCliffe],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m1_searchlights01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.903 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m1_searchlights02Cliffe",
		criteria = 
		[
			[Concept_c2m1_searchlights02],
			[IsCliffe],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m1_searchlights02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.111 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_throughhereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_throughhere],
			[IsNotSaidc2m1_throughhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_throughhereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughhere", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.691 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_throughmotelCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_throughmotel],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_throughmotelGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughmotel", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.201 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_throughwindowCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_throughwindow],
			[IsNotSaidc2m1_throughwindow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_throughwindowGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughwindow", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.021 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_uphillCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_uphill],
			[IsNotSaidc2m1_uphill],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_uphillGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_uphill", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.859 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_upstairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m1_upstairs],
			[IsNotSaidc2m1_upstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_upstairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_upstairs", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.22 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_carouselCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_carousel],
			[IsNotSaidc2m2_carousel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_carouselGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_carousel", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.85 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m2_carouselCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_carousel],
			[IsNotSaidc2m2_carousel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_carousel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_carouselbuttonCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_carouselbutton],
			[IsNotSaidc2m2_carouselbutton],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_carouselbuttonGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_carouselbutton", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.416 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_entrancesignCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_entrancesign],
			[IsNotSaidc2m2_entrancesign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_entrancesignGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_entrancesign", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.821 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_lilpeanutCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_lilpeanut],
			[IsNotSaidc2m2_lilpeanut],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_lilpeanutGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_lilpeanut", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_ladderCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_ladder],
			[IsNotSaidc2m2_ladder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_ladderGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_ladder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_backalleyCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_backalley],
			[IsNotSaidc2m2_backalley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_backalleyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_backalley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_LikeTatersCliffe",
		criteria = 
		[
			[Concept_C2M2_LikeTaters],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[NotInCombat],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
			[ChanceToFire40Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_LikeTatersGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.427 },
		},
	},
	{
		name = "PlayerRemarkc2m2_thistall2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_thistall],
			[IsNotSaidc2m2_thistall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_thistall2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_thistall", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.942 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_ThisTall02Cliffe",
		criteria = 
		[
			[Concept_C2M2_ThisTall02],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_ThisTall02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.5 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_topofslideCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m2_topofslide],
			[IsNotSaidc2m2_topofslide],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_topofslideGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_topofslide", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_aroundblockCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_aroundblock],
			[IsNotSaidc2m3_aroundblock],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_aroundblockGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_aroundblock", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_cementriverCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_cementriver],
			[IsNotSaidc2m3_cementriver],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsSubjectNear200],
			[ChanceToFire80Percent],
			[IsMechanicAlive],
			[IsMechanicNear300],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_cementriverGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_cementriver", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_cementriverCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_cementriver],
			[IsNotSaidc2m3_cementriver],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsSubjectNear200],
			[IsMechanicAlive],
			[IsMechanicNear300],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_cementriver", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_coasteroffCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_coasteroff],
			[IsNotSaidc2m3_coasteroff],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_coasteroffGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_coasteroff", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_coollight02Cliffe",
		criteria = 
		[
			[Concept_c2m3_coollight02],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_coollight02Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkc2m3_screamingoakCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_screamingoak],
			[IsNotSaidc2m3_screamingoak],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_screamingoakGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_screamingoak", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_freshairCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_freshair],
			[IsNotSaidc2m3_freshair],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[TimeSinceGroupInCombat02],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_freshairGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_freshair", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_freshairCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_freshair],
			[IsNotSaidc2m3_freshair],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_freshair", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_holeCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_hole],
			[IsNotSaidc2m3_hole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_holeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_hole", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_longesttunnelCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_longesttunnel],
			[IsNotSaidc2m3_longesttunnel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat04],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_longesttunnelGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_longesttunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_longesttunnelCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_longesttunnel],
			[IsNotSaidc2m3_longesttunnel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_longesttunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_overfenceCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_overfence],
			[IsNotSaidc2m3_overfence],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_overfenceGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_overfence", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_rubbleCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_rubble],
			[IsNotSaidc2m3_rubble],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTeamNearCoaster],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_rubbleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_rubble", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.307 },
			c3 = { context = "_auto_TimerLockA", value = 1, duration = 12.0 },
			c4 = { context = "_auto_CoasterExpo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_swanroomCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_swanroom],
			[IsNotSaidc2m3_swanroom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_swanroomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_swanroom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks01Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_tracks01],
			[IsNotSaidc2m3_tracks01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_tracks01", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks02Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_tracks02],
			[IsNotSaidc2m3_tracks02],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_tracks02", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks03Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_tracks03],
			[IsNotSaidc2m3_tracks03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_tracks03", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks04Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_tracks04],
			[IsNotSaidc2m3_tracks04],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_tracks04", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks05Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_tracks05],
			[IsNotSaidc2m3_tracks05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_tracks05", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks06Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_tracks06],
			[IsNotSaidc2m3_tracks06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_tracks06", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks07Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_tracks07],
			[IsNotSaidc2m3_tracks07],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_tracks07", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks08Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_tracks08],
			[IsNotSaidc2m3_tracks08],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_tracks08", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_ventCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_vent],
			[IsNotSaidc2m3_vent],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_ventGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_vent", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_wayblockedCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m3_wayblocked],
			[IsNotSaidc2m3_wayblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_wayblockedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_wayblocked", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_barnentryCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_barnentry],
			[IsNotSaidc2m4_barnentry],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_barnentryGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_barnentry", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_bumpercarsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_bumpercars],
			[IsNotSaidc2m4_bumpercars],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_bumpercarsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_bumpercars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_onroofCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_onroof],
			[IsNotSaidc2m4_onroof],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_onroofGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_onroof", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_pendoorCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_pendoor],
			[IsNotSaidc2m4_pendoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_pendoorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_pendoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_moustachioCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_moustachio],
			[IsNotSaidc2m4_moustachio],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_moustachioGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_moustachio", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_pensCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_pens],
			[IsNotSaidc2m4_pens],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_pensGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_pens", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M4_RibsCliffe",
		criteria = 
		[
			[Concept_C2M4_Ribs],
			[IsCliffe],
			[IsTalk],
			[NotInCombat],
			[IssuerClose],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M4_RibsGambler,
			},
		],
	},
	{
		name = "PlayerRemarkc2m4_stadiumCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_stadium],
			[IsNotSaidc2m4_stadium],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_stadiumGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_stadium", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_upbarnCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_upbarn],
			[IsNotSaidc2m4_upbarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_upbarnGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_upbarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_evacCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m4_evac],
			[IsNotSaidc2m4_evac],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_evacGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_evac", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m5_button2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m5_button2],
			[IsNotSaidc2m5_button2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear75],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsButton1],
			[_auto_NotButton2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m5_button2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m5_button2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m5_button2CoachCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc2m5_button2],
			[IsNotSaidc2m5_button2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear75],
			[IsCoachAlive],
			[IsCoachNear400],
			[ChanceToFire10Percent],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsButton1],
			[_auto_NotButton2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m5_button2CoachGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m5_button2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2PlaneCrashCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M2PlaneCrash],
			[IsNotSaidC3M2PlaneCrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear600],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkCliffe],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2PlaneCrashGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneCrash", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.538 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2PlaneDoorNagCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M2PlaneDoorNag],
			[IsNotSaidC3M2PlaneDoorNag],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear500],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2PlaneDoorNagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneDoorNag", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
			c3 = { context = "Talk", value = 1, duration = 3.34 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2PlaneDoorNagaCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsSaidC3M2PlaneDoorNag],
			[ismapc3m2_swamp],
			[IsNotSaidC3M2OpenDoor],
			[IsNotZombiePresentTank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2PlaneDoorNagaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 40.0 },
			c3 = { context = "Talk", value = 1, duration = 1.377 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2RoadCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M2Road],
			[IsNotSaidC3M2Road],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2RoadGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2Road", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.106 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2SickOfSwampCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M2SickOfSwamp],
			[IsNotSaidC3M2SickOfSwamp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2SickOfSwampGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2SickOfSwamp", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.246 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2Village1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M2Village1],
			[IsNotSaidC3M2Village1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear800],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2Village1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2Village1", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.116 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3BodiesCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3Bodies],
			[IsNotSaidC3M3Bodies],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3BodiesGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3Bodies", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3LowerGateCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3LowerGate],
			[IsNotSaidC3M3BridgeButton],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3LowerGateGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3LowerGate", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3MoreShacksCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3MoreShacks],
			[IsNotSaidC3M3MoreShacks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[ChanceToFire100Percent],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3MoreShacksGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3MoreShacks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3MoreShacksCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3MoreShacks],
			[IsNotSaidC3M3MoreShacks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3MoreShacks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThisWayCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3ThisWayGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3ThisWayCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThroughHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3ThroughHere],
			[IsNotSaidC3M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3ThroughHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThroughThisHouseCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3ThroughThisHouse],
			[IsNotSaidC3M3ThroughThisHouse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3ThroughThisHouseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughThisHouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3UnsanitaryCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3Unsanitary],
			[IsNotSaidC3M3Unsanitary],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3UnsanitaryGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3Unsanitary", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3UpHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3UpHere],
			[IsNotSaidC3M3UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3UpHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4downroadCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc3m4downroad],
			[IsNotSaidc3m4downroad],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc3m4downroadGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4downroad", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4scaffoldCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc3m4scaffold],
			[IsNotSaidc3m4scaffold],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc3m4scaffoldGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_boatCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_boat],
			[IsNotSaidc4m1_boat],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_boatGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_boat", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_carcrashCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear500],
			[IsWorldTalkCliffe],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_carcrashGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_carcrash", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc4m1_carcrashCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_carcrash", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_garagesaleCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_garagesale],
			[IsNotSaidc4m1_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear400],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_garagesaleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_nogasCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_nogasGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_nogas", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.493 },
			c3 = { context = "_auto_NoGasGate", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_nogasMilkRunCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[Isc4m1MilkRun],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_nogasMilkRunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_nogas", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.493 },
			c3 = { context = "_auto_NoGasGate", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_nogasGunBagCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[Isc4m1GunBag],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_nogasGunBagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_nogas", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.493 },
			c3 = { context = "_auto_NoGasGate", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_nogasToldCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[Isc4m1IToldYouSo],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_nogasToldGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_nogas", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.531 },
			c3 = { context = "_auto_NoGasGate", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_playgroundfarCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear1000],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_playgroundfarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_playgroundnearCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_playgroundnearGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_throughhereACliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_throughhereA],
			[IsNotSaidc4m1_throughhereA],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear400],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_throughhereAGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_throughhereA", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_gasinsidesignCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_gasinsidesign],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear350],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_gasinsidesignGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_gasinsidesign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_millentranceCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_millentrance],
			[IsNotSaidc4m2_millentrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_millentranceGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_millentrance", value = 1, duration = 0.0 },
			c2 = { context = "c4m2_PastStart", value = 1, duration = 0.0 },
			c3 = { context = "_auto_InsideMill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_millentranceexitCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_millentranceexit],
			[IsNotSaidc4m2_millentranceexit],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_millentranceexitGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_millentranceexit", value = 1, duration = 0.0 },
			c2 = { context = "c4m2_PastStart", value = 1, duration = 0.0 },
			c3 = { context = "_auto_InsideMill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_seegasstationCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_seegasstation],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_seegasstationGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
			c2 = { context = "Saidc4m2_seegasstation", value = 1, duration = 0.0 },
			c3 = { context = "_auto_InsideMill", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_streetblockedCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_streetblocked],
			[IsNotSaidc4m2_streetblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_streetblockedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_streetblocked", value = 1, duration = 0.0 },
			c2 = { context = "c4m2_PastStart", value = 1, duration = 0.0 },
			c3 = { context = "_auto_InsideMill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_uprampCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_upramp],
			[IsNotSaidc4m2_upramp],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_uprampGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upramp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_upthestairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_upthestairs],
			[IsNotSaidc4m2_upthestairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_upthestairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upthestairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_useelevatorCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_useelevator],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsSaidc4m2_seegasstation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_useelevatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_useelevator", value = 1, duration = 0.0 },
			c2 = { context = "_auto_InsideMill", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_waterpoolCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_waterpool],
			[IsNotSaidc4m2_waterpool],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_waterpoolGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_waterpool", value = 1, duration = 0.0 },
			c2 = { context = "c4m2_PastPuddle", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_weatherCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m2_weather],
			[IsNotSaidc4m2_weather],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_weatherGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_weather", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_caneCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_cane],
			[IsNotSaidc4m3_cane],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_caneGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_cane", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_crosshereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_crosshere],
			[IsNotSaidc4m3_crosshere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_crosshereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_crosshere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_downhereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_downhere],
			[IsNotSaidc4m3_downhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_downhereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downhere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_downstairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_downstairs],
			[IsNotSaidc4m3_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_downstairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downstairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_ducatelsignCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_ducatelsign],
			[IsNotSaidc4m3_ducatelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_ducatelsignGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_ducatelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_elevatorCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_elevator],
			[IsNotSaidc4m3_elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_elevatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_floodedCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_flooded],
			[IsNotSaidc4m3_flooded],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_floodedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_flooded", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_overtankCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_overtank],
			[IsNotSaidc4m3_overtank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_overtankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_overtank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_rainCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_rain],
			[IsNotSaidc4m3_rain],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_rainGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_rain", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_thiswayCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_thisway],
			[IsNotSaidc4m3_thisway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_millentranceexitGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_thisway", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_uppipesCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m3_uppipes],
			[IsNotSaidc4m3_uppipes],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_uppipesGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_uppipes", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_floodedCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m4_flooded],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_floodedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_garagesaleCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m4_garagesale],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_garagesaleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_garagesale2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m4_garagesale2],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_garagesaleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_playgroundCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m4_playground],
			[IsNotSaidc4m4_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_playgroundGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_porchlightCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m4_porchlight],
			[IsNotSaidc4m4_porchlight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_porchlightGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_porchlight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_truckwreckCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m4_truckwreck],
			[IsNotSaidc4m4_truckwreck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_truckwreckGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_truckwreck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_useroofsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m4_useroofs],
			[IsNotSaidc4m4_useroofs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_useroofsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_useroofs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkpathc2m1_abandonedcarsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Ispathc2m1_abandonedcars],
			[IsNotSaidpathc2m1_abandonedcars],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[ChanceToFire60Percent],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkpathc2m1_abandonedcarsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidpathc2m1_abandonedcars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkpathc2m1_abandonedcarsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Ispathc2m1_abandonedcars],
			[IsNotSaidpathc2m1_abandonedcars],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidpathc2m1_abandonedcars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkpathc2m1_billboardCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Ispathc2m1_billboard],
			[IsNotSaidpathc2m1_billboard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkCliffe],
			[IsSubjectNear1000],
			[IsWorldTalkCliffe],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkpathc2m1_billboardGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidpathc2m1_billboard", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkremark_caralarmCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isremark_caralarm],
			[IsNotSaidremark_caralarm],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear700],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkremark_caralarmGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkremark_MidnightRidersBusCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkremark_MidnightRidersBusGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1CedaMapsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M1CedaMaps],
			[IsNotSaidWorldC1M1CedaMaps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1CedaMapsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1CedaMaps", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.334 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1KnowBoomerCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M1KnowBoomer],
			[IsNotSaidWorldC1M1KnowBoomer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1KnowBoomerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1KnowBoomer", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1DownHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M1DownHere],
			[IsNotSaidWorldC1M1DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1DownHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1ElevatorBrokenCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M1ElevatorBroken],
			[IsNotSaidWorldC1M1ElevatorBroken],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1ElevatorBrokenGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1ElevatorBroken", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M1CrumbsCliffe",
		criteria = 
		[
			[ConceptC1M1Crumbs],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1CrumbsGambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC1M1FireRoomCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M1FireRoom],
			[IsNotSaidWorldC1M1FireRoom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1FireRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1FireRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1FireSpreadingCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M1FireSpreading],
			[IsNotSaidWorldC1M1FireSpreading],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1FireSpreadingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1FireSpreading", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1FirstCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M1First],
			[IsNotSaidWorldC1M1First],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1FirstGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1First", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1LedgeCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M1Ledge],
			[IsNotSaidWorldC1M1Ledge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1LedgeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1Ledge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2CloseCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2Close],
			[IsNotSaidWorldC1M2Close],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2CloseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Close", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2DownStairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2DownStairs],
			[IsNotSaidWorldC1M2DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[TimeSinceGroupInCombat05],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2DownStairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2AbandonedCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2Abandoned],
			[IsNotSaidWorldC1M2Abandoned],
			[IsNotCoughing],
			[NotInCombat],
			[IntensityZero],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2AbandonedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Abandoned", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M2AbandonedCliffe",
		criteria = 
		[
			[Concept_C1M2Abandoned],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M2AbandonedGambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC1M2DumpsterCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2Dumpster],
			[IsNotSaidWorldC1M2Dumpster],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2DumpsterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Dumpster", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2InHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2InHere],
			[IsNotSaidWorldC1M2InHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2InHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2InHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2JumpTruckCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2JumpTruck],
			[IsNotSaidWorldC1M2JumpTruck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2JumpTruckGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2JumpTruck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2MadeItCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2MadeIt],
			[IsNotSaidWorldC1M2MadeIt],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear900],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2MadeItGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2MadeIt", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2UpStairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC1M2UpStairs],
			[IsNotSaidWorldC1M2UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2UpStairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1FeedGatorCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC3M1FeedGator],
			[IsNotSaidWorldC3M1FeedGator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear400],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC3M1FeedGatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FeedGator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1FerryNagCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC3M1FerryNag],
			[IsNotSaidWorldC3M1FerryNag],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear600],
			[IsNotSaidC3M1CallFerry2],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC3M1FerryNagGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryNag", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502AlarmButtonCliffe",
		criteria = 
		[
			[ConceptWorldC502AlarmButton],
			[IsCliffe],
			[IsNotCoughing],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502AlarmButtonGambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502AlarmStoppedCliffe",
		criteria = 
		[
			[ConceptWorldC502AlarmStopped],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502AlarmStoppedGambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502AlleyCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC502Alley],
			[IsNotSaidWorldC502Alley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502AlleyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC52Alley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502BusStory2Cliffe",
		criteria = 
		[
			[ConceptWorldC502BusStory2],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502BusStory2Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502NotZombies3Cliffe",
		criteria = 
		[
			[ConceptWorldC502NotZombies3],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502NotZombies3Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502SmellCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC502Smell],
			[IsNotSaidWorldC502Smell],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502SmellGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502Smell", value = 1, duration = 0.0 },
			c2 = { context = "SaidSmell", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldC502SmellCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC502Smell],
			[IsNotSaidWorldC502Smell],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502Smell", value = 1, duration = 0.0 },
			c2 = { context = "SaidSmell", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502SmellBathCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC502SmellBath],
			[IsNotSaidWorldC502SmellBath],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502SmellBathGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502SmellBath", value = 1, duration = 0.0 },
			c2 = { context = "SaidSmell", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldC502SmellBathCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC502SmellBath],
			[IsNotSaidWorldC502SmellBath],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502SmellBath", value = 1, duration = 0.0 },
			c2 = { context = "SaidSmell", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502SmellBath3Cliffe",
		criteria = 
		[
			[ConceptWorldC502SmellBath3],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502SmellBath3Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AcrossHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AlleyBelowGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AlleyIntoBuildingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_InAptsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_InAptsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_IntoTheStoreGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_IntoTheStore", value = 1, duration = 0.0 },
			c2 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleyCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_SafeRoomAlleyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_ThroughBarCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_ThroughBarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpTheStairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpTheStairs2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.596 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsWitchPresent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
			c2 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnAngelCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsWitchPresent],
			[IsZoeyIntroActor],
			[IsEllisInLoveC6M1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnAngelGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
			c2 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AcrossPlankCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AcrossPlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AfterGate1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AfterGate2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_DownHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_DownIntoBuildingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalLadderCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalLadderGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterGoGoGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InJazzClubCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InJazzClubGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewer1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_InSewer2],
			[IsNotSaidWorldC6M2_InSewer2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsSaidWorldC6M2_InSewer1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewer2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewerLadder1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewerLadder1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_IntoConstructionGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_IntoPoolHallGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JukeBoxCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_JukeBoxGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JumpDownCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_JumpDownGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2FallingCliffe",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsCliffe],
			[isC6m2_bedlam],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2FallingGambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OnTourWalk1],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OnTourWalk3],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2EllisCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsSaidOpenedGate1BlameEllis],
			[IsNotSaidOpenedGate2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate2EllisGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2DownGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IntensityOver75],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2DownIntenseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_PostGate1xCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_PostGate1xGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_SuitcaseCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Suitcase],
			[IsNotSaidWorldC6M2_Suitcase],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_SuitcaseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Suitcase", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TattooCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TattooZoeyCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotMentionedZoeyC6M2],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsZoeyIntroActor],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooZoeyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TourEntranceCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TourEntranceGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpCatWalkGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpStairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpStairs2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_BridgeRunCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_BridgeRunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_BridgeRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_ByBridgeCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_C6M3BridgeDown],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_ByBridgeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_ByBridgeLossCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_C6M3BridgeDown],
			[IsNotSpeakingWeight0],
			[IsEveryoneAlive],
			[_auto_SaidC6M3Bill],
			[_auto_CliffeSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_ByBridgeLossGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_BillCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M3_Bill],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
			[_auto_NotC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_BillGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_CliffeC6M3Bill", value = 1, duration = 0.0 },
			c2 = { context = "_auto_C6M3Bill", value = 1, duration = 0.0 },
			c3 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M3LossZoeyCliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsTeenGirl],
			[IsTeenGirlNear400],
			[IsWorldTalkCliffe],
			[_auto_SawC6M3Bill],
			[_auto_CliffeSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M3LossGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C6M3Bill", value = 2, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M3LossFrancisCliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsBiker],
			[IsBikerNear400],
			[IsWorldTalkCliffe],
			[_auto_SawC6M3Bill],
			[_auto_CliffeSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M3LossGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C6M3Bill", value = 2, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M3Loss2Cliffe",
		criteria = 
		[
			[Conceptc6m3_loss],
			[IsNotCoughing],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M3Loss2Gambler,
			},
		],
	},
	{
		name = "WorldC6M3Loss3Cliffe",
		criteria = 
		[
			[Conceptc6M3_loss2],
			[IsNotCoughing],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M3Loss3Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldFootLockerCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldFootLockerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldSignHurricane2Cliffe",
		criteria = 
		[
			[ConceptWorldSignHurricane2],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IssuerClose],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldSignHurricane2Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignRestricted2Cliffe",
		criteria = 
		[
			[ConceptWorldSignRestrictedArea2],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IssuerClose],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldSignRestricted2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.993 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldSignC5AlarmWillSoundCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldSignC5AlarmWillSound],
			[IsNotSaidWorldSignC5AlarmWillSound],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear200],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldSignC5AlarmWillSoundGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignC5AlarmWillSound", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldSignC5AlarmWillSound3bCliffe",
		criteria = 
		[
			[ConceptWorldSignC5AlarmWillSound3b],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldSignC5AlarmWillSound3bGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldSignC5AlarmWillSound3cCliffe",
		criteria = 
		[
			[ConceptWorldSignC5AlarmWillSound3c],
			[IsCliffe],
			[IsNotCoughing],
			[NotInCombat],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldSignC5AlarmWillSound3cGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RespondAffirmativeCliffe",
		criteria = 
		[
			[ConceptRespondAffirmative],
			[IssuerMediumClose],
			[IsNotCoughing],
			[NotInCombat],
			[isCliffe],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RespondAffirmativeGambler,
			},
		],
	},
	{
		name = "PlayerFollowMeCliffe",
		criteria = 
		[
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFollowMeGambler,
			},
		],
	},
	{
		name = "PlayerHelpCliffe",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsCliffe],
			[IsNotCoughing],
			[IsTalk],
			[IsNotIncapacitated],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHelpGambler,
			},
		],
	},
	{
		name = "PlayerHurryUpCliffe",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHurryUpGambler,
			},
		],
	},
	{
		name = "PlayerHurryUpC4M2Cliffe",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsCliffe],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[IsWorldTalkCliffe],
			[_auto_IsCliffeInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHurryUpC4M2Gambler,
			},
		],
	},
	{
		name = "PlayerKillThatLightCliffe",
		criteria = 
		[
			[ConceptPlayerKillThatLight],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillThatLightGambler,
			},
		],
	},
	{
		name = "PlayerLeadOnCliffe",
		criteria = 
		[
			[ConceptPlayerLeadOn],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLeadOnGambler,
			},
		],
	},
	{
		name = "PlayerMoveOnCliffe",
		criteria = 
		[
			[ConceptPlayerMoveOn],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerMoveOnGambler,
			},
		],
	},
	{
		name = "PlayerStayTogetherCliffe",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerStayTogetherGambler,
			},
		],
	},
	{
		name = "PlayerWatchOutBehindCliffe",
		criteria = 
		[
			[ConceptPlayerWatchOutBehind],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWatchOutBehindGambler,
			},
		],
	},
	{
		name = "PlayerAskReadyCliffe",
		criteria = 
		[
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAskReadyGambler,
			},
		],
	},
	{
		name = "PlayerAskReadyC1Cliffe",
		criteria = 
		[
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAskReadyC1Gambler,
			},
		],
	},
	{
		name = "PlayerImWithYouCliffe",
		criteria = 
		[
			[ConceptPlayerImWithYou],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerImWithYouGambler,
			},
		],
	},
	{
		name = "PlayerLaughCliffe",
		criteria = 
		[
			[ConceptPlayerLaugh],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLaughGambler,
			},
		],
	},
	{
		name = "PlayerLostCallCliffe",
		criteria = 
		[
			[ConceptPlayerLostCall],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLostCallGambler,
			},
		],
	},
	{
		name = "PlayerNiceJobResponseCliffe",
		criteria = 
		[
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceJobResponseGambler,
			},
		],
	},
	{
		name = "PlayerNoCliffe",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNoGambler,
			},
		],
	},
	{
		name = "PlayerNoFemaleCliffe",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsProducer],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNoFemaleGambler,
			},
		],
	},
	{
		name = "PlayerNoZoeyCliffe",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsTeenGirl],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNoFemaleGambler,
			},
		],
	},
	{
		name = "PlayerNoEllisCliffe",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsMechanic],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNoEllisGambler,
			},
		],
	},
	{
		name = "PlayerAnswerLostCallCliffe",
		criteria = 
		[
			[ConceptPlayerAnswerLostCall],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAnswerLostCallGambler,
			},
		],
	},
	{
		name = "KillStealCalledOutCliffe",
		criteria = 
		[
			[ConceptKillStealCalledOut],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.KillStealCalledOutGambler,
			},
		],
	},
	{
		name = "PlayerSorryCliffe",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsNotShotTeammateCliffe],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSorryGambler,
			},
		],
	},
	{
		name = "PlayerSorryFFCliffe",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsShotTeammateCliffe],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSorryFFGambler,
			},
		],
	},
	{
		name = "PlayerThanksCliffe",
		criteria = 
		[
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerThanksGambler,
			},
		],
	},
	{
		name = "PlayerYellRunCliffe",
		criteria = 
		[
			[ConceptPlayerYellRun],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYellRunGambler,
			},
		],
	},
	{
		name = "PlayerYesCliffe",
		criteria = 
		[
			[ConceptPlayerYes],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYesGambler,
			},
		],
	},
	{
		name = "PlayerYouAreWelcomeCliffe",
		criteria = 
		[
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYouAreWelcomeGambler,
			},
		],
	},
	{
		name = "YouAreWelcomeCliffe",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYouAreWelcomeGambler,
			},
		],
	},
	{
		name = "PlayerYouAreWelcomeC1Cliffe",
		criteria = 
		[
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYouAreWelcomeC1Gambler,
			},
		],
	},
	{
		name = "YouAreWelcomeC1Cliffe",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[ChanceToFire50Percent],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYouAreWelcomeC1Gambler,
			},
		],
	},
	{
		name = "YouAreWelcomeCoachCliffe",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[FromIsCoach],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.YouAreWelcomeCoachGambler,
			},
		],
	},
	{
		name = "YouAreWelcomeMechanicCliffe",
		criteria = 
		[
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[FromIsMechanic],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.YouAreWelcomeMechanicGambler,
			},
		],
	},
	{
		name = "YouAreWelcomeProducerCliffe",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[FromIsProducer],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.YouAreWelcomeProducerGambler,
			},
		],
	},
	{
		name = "BotAttentionBattleCliffe",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsInBattlefield],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotAttentionBattleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "BotNoteHumanAttentionCliffe",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsInStartArea],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotNoteHumanAttentionGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerNegativeCliffe",
		criteria = 
		[
			[ConceptPlayerNegative],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNegativeGambler,
			},
		],
	},
	{
		name = "PlayerShootCarNotCliffe",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCliffe],
			[IsNotCoughing],
			[SubjectIsNotCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotc5m3_cemetery],
			[IsCarAlarm],
			[ChanceToFire60Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerShootCarNotGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerShootCarCliffe",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCliffe],
			[IsNotCoughing],
			[SubjectIsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotc5m3_cemetery],
			[IsCarAlarm],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerShootCarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerHeardBoomerCliffe",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerGambler,
			},
		],
	},
	{
		name = "PlayerHeardHunterCliffe",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardHunterGambler,
			},
		],
	},
	{
		name = "PlayerHeardSmokerCliffe",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardSmokerGambler,
			},
		],
	},
	{
		name = "PlayerHeardChargerCliffe",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardChargerGambler,
			},
		],
	},
	{
		name = "PlayerHeardSpitterCliffe",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardSpitterGambler,
			},
		],
	},
	{
		name = "PlayerHeardJockeyCliffe",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardJockeyGambler,
			},
		],
	},
	{
		name = "PlayerHeardBoomerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowBoomer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Gambler,
			},
		],
	},
	{
		name = "PlayerHeardHunterC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowHunter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Gambler,
			},
		],
	},
	{
		name = "PlayerHeardSmokerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSmoker],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Gambler,
			},
		],
	},
	{
		name = "PlayerHeardChargerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowCharger],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Gambler,
			},
		],
	},
	{
		name = "PlayerHeardSpitterC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSpitter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Gambler,
			},
		],
	},
	{
		name = "PlayerHeardJockeyC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardJockeyC1Gambler,
			},
		],
	},
	{
		name = "PlayerHeardTankCliffe",
		criteria = 
		[
			[ConceptPlayerHeardTank],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardTankGambler,
			},
		],
	},
	{
		name = "PlayerHeardWitchCliffe",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardWitchGambler,
			},
		],
	},
	{
		name = "PlayerHurrahCliffe",
		criteria = 
		[
			[ConceptPlayerHurrah],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHurrahGambler,
			},
		],
	},
	{
		name = "PlayerWarnCarefulCliffe",
		criteria = 
		[
			[ConceptPlayerWarnCareful],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnCarefulGambler,
			},
		],
	},
	{
		name = "SurvivorSpottedWorldFarCliffe",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWorldFarGambler,
			},
		],
	},
	{
		name = "C6M3_PourFinishedCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsL4D1Alive],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_PourFinishedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour20MoreSCCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Score20MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour20MoreSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
			c2 = { context = "_auto_NoGasPourLine", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour1MoreWaitCliffe",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsCliffe],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour20MoreWaitGambler,
			},
		],
	},
	{
		name = "GasPour10MoreSCCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Score10MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour10MoreSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour10MoreWaitCliffe",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsCliffe],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour10MoreWaitGambler,
			},
		],
	},
	{
		name = "GasPour1MoreSCCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Score1MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour1MoreSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
			c2 = { context = "_auto_NoGasPourLine", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour1MoreWaitCliffe",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsCliffe],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour1MoreWaitGambler,
			},
		],
	},
	{
		name = "GasPour2MoreSCCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Score2MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour2MoreSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour2MoreWaitCliffe",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsCliffe],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour2MoreWaitGambler,
			},
		],
	},
	{
		name = "GasPour3MoreSCCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Score3MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour3MoreSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour3MoreWaitCliffe",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsCliffe],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour3MoreWaitGambler,
			},
		],
	},
	{
		name = "GasPour5MoreSCCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Score5MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour5MoreSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour5MoreWaitCliffe",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsCliffe],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour5MoreWaitGambler,
			},
		],
	},
	{
		name = "GasPourDoneSCCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsScavenge],
			[ScoreDoneSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourDoneSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPourSCCliffe",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotAlone],
			[IsWorldTalkCliffe],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GasPourSCSoloCliffe",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsAlone],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourSCSoloGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GasPourAloneCliffe",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsAlone],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourSCSoloGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCoach", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GrabbingGasSCCliffe",
		criteria = 
		[
			[ConceptPlayerEquippedScavengeItem],
			[IsCliffe],
			[IsTalk],
			[IsNotAlone],
			[IsClosestSurvivorNear500],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[NotSaidGrabbingCan],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GrabbingGasSCGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGrabbingCan", value = 1, duration = 8.0 },
		},
	},
	{
		name = "PlayerShotGasCanCliffe",
		criteria = 
		[
			[ConceptPlayerShotGasCan],
			[IsCliffe],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerShotGasCanGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerShotGasCan", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ScavengeStartCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ScavengeStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ScavengeStartC1M4Cliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m4_atrium],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.FinaleStartC1M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCommentJockeyCliffe",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsCliffe],
			[IssuerCloseEnough],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			[IsNotIncapacitated],
			[IntensityUnder50],
			[IsNotSaidBeenJockeyedCliffe],
			[IsNotBeingJockeyed],
			[IsNotSaidCommentJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCommentJockeyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCommentJockey2Cliffe",
		criteria = 
		[
			[ConceptCommentJockey2],
			[IsCliffe],
			[IssuerCloseEnough],
			[IsNotSaidBeenJockeyedCliffe],
			[IsNotBeingJockeyed],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCommentJockey2Gambler,
			},
		],
	},
	{
		name = "C4M2LockTheDoorCheckPointCliffe",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c4m2_sugarmill_a],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M2LockTheDoorCheckPointGambler,
			},
		],
	},
	{
		name = "GoingToDieCoachCoachCliffe",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[IsCoachAlive],
			[IsCoachNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GoingToDieCoachCoachGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "PlayerAlertGiveItemStopCliffe",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemStopGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerAlertGiveItemStopAnFirstAidCliffe",
		criteria = 
		[
			[ConceptAlertGiveItemStopFirstAidA],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[NoHasFirstAidKit],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemStopAnFirstAidGambler,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemStopQnFirstAidCliffe",
		criteria = 
		[
			[ConceptBashWithItem],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsItemFirstAidKit],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemStopQnFirstAidGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStopFirstAid", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerCoachPouncedCliffe",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsCoach],
			[IsNotSaidCoachPounced],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoachPouncedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CoachPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCoachPouncedC1Cliffe",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsCoach],
			[IsNotSaidCoachPounced],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoachPouncedC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CoachPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerEatPillsCliffe",
		criteria = 
		[
			[ConceptEatPills],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerEatPillsGambler,
			},
		],
	},
	{
		name = "PlayerGetInsideCheckPointCliffe",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGetInsideCheckPointGambler,
			},
		],
	},
	{
		name = "PlayerStayTogetherSaferoomCliffe",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsCliffe],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerStayTogetherSaferoomGambler,
			},
		],
	},
	{
		name = "PlayerGetInsideCheckPointC2M2Cliffe",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[ismap_c2m2],
			[IsNotCoughing],
			[IsCliffe],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGetInsideCheckPointC2M2Gambler,
			},
		],
	},
	{
		name = "PlayerGetInsideCheckPointC4M3Cliffe",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[isc4m3],
			[IsNotCoughing],
			[IsCliffe],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGetInsideCheckPointC4M3Gambler,
			},
		],
	},
	{
		name = "PlayerGrabbedByJockeyCliffe",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrabbedByJockeyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCliffe", value = 1, duration = 6.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGrabbedByJockeyC1Cliffe",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrabbedByJockeyC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCliffe", value = 1, duration = 6.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGrenadeMolotovCliffe",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsGrenadeMolotov],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrenadeMolotovGambler,
			},
		],
	},
	{
		name = "PlayerGrenadePipeBombCliffe",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsGrenadePipeBomb],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrenadePipeBombGambler,
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJarCliffe",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsGrenadeVomitJar],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrenadeVomitJarGambler,
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJarC1Cliffe",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsGrenadeVomitJar],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrenadeVomitJarC1Gambler,
			},
		],
	},
	{
		name = "PlayerIncapacitatedInitialCliffe",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerIncapacitatedInitialGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerIncapacitatedInitialC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsCliffe],
			[ismap_c1m2_streets],
			[IsC1M2WhitakerErrand],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerIncapacitatedInitialC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerKillConfirmationCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectFar300],
			[ChanceToFire40Percent],
			[isNotmap_c1m1_hotel],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillConfirmationGambler,
			},
		],
	},
	{
		name = "PlayerKillConfirmationC1M1Cliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsNotTank],
			[IsTalkCliffe],
			[IsUsingFirearm],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillConfirmationC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
			c2 = { context = "FirstKill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillConfirmationC1M1MeleeCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalkCliffe],
			[EquippedMeleeWeapon],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillConfirmationC1M1MeleeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
			c2 = { context = "FirstKill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RightfulKillerCliffe",
		criteria = 
		[
			[ConceptRightfulKiller],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RightfulKillerGambler,
			},
		],
	},
	{
		name = "PlayerKillTankConfirmationCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsRocking],
			[IsWorldTalkCliffe],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankConfirmationGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillConfirmationEllisCloseCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsSubjectFar300],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsEllisAlsoWarn],
			[ChanceToFire5Percent],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsRocking],
			[IsWorldTalkCliffe],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillConfirmationEllisCloseGambler,
			},
		],
	},
	{
		name = "PlayerKillTankNotHealthyCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsNotHealthy],
			[IsWorldTalkCliffe],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankNotHealthyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillTankConfirmationC1M2Cliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[ismap_c1m2_streets],
			[IsEveryoneAlive],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankConfirmationC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCr0wnedWitchCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsCliffe],
			[SubjectIsAWitch],
			[IsNotWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
	},
	{
		name = "PlayerKilledStartledWitchCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsCliffe],
			[SubjectIsAWitch],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			//⚠️WARNING: WitchAggro:--1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerLockTheDoorCheckPointCliffe",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsInSafeSpot],
			[IsNotAlone],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLockTheDoorCheckPointGambler,
			},
		],
	},
	{
		name = "PlayerLockTheDoorCheckPointC1Cliffe",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsInSafeSpot],
			[ismap_c1m1_hotel],
			[IsNotAlone],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLockTheDoorCheckPointC1Gambler,
			},
		],
	},
	{
		name = "PlayerMechanicPouncedCliffe",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsMechanic],
			[IsNotSaidMechanicPounced],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerMechanicPouncedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "MechanicPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerMechanicPouncedC1Cliffe",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsMechanic],
			[IsNotSaidMechanicPounced],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoachPouncedC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "MechanicPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerProducerPouncedCliffe",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerProducerPouncedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "ProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerProducerPouncedC1Cliffe",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerProducerPouncedC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "ProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRevivedByDefibrillatorCliffe",
		criteria = 
		[
			[ConceptRevivedByDefibrillator],
			[IsNotCoughing],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRevivedByDefibrillatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRevivedByDefibrillator2Cliffe",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRevivedByDefibrillator2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestMeHealthCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[YesHasFirstAidKit],
			[IsNotSuggestedHealth],
			[IsCliffe],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestMeHealthGambler,
			},
		],
	},
	{
		name = "PlayerSuggestHealthGenericCliffe",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCliffe],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthGenericGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthC1Cliffe",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCliffe],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthCoachCliffe",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCliffe],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthCoachGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthMechanicCliffe",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCliffe],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthMechanicGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthProducerCliffe",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCliffe],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthProducerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionCliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionCloseCliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionCloseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionSoloCliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionSoloGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m2_streets],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionCloseC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m2_streets],
			[IsNotAlone],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionCloseC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC1M3Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m3_mall],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC1M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC2M1Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c2m1],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC2M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC2M4Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c2m4],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC2M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC4M2Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c4m2_sugarmill_a],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC4M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC4M3Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc4m3],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC4M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC5M4Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsMapc5m4_quarter],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC5M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionCloseC6M1Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Isc6m1_riverbank],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionCloseC6M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionCloseC6M2Cliffe",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Isc6m2_bedlam],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionCloseC6M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerUsingDefibrillatorCliffe",
		criteria = 
		[
			[ConceptPlayerUsingDefibrillator],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerUsingDefibrillatorGambler,
			},
		],
	},
	{
		name = "PlayerWarnHeardBoomerCliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardBoomer", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardJockeyC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardJockeyC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardJockey", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardBoomerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardBoomer", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardChargerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardCharger", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardHunterC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardHunter", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardSmokerC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardSmoker", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardSpitterC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardSpitter", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardChargerCliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardChargerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardCharger", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardHunterCliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardHunterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardHunter", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardJockeyCliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardJockeyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardJockey", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardSmokerCliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardSmokerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardSmoker", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardSpitterCliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardSpitterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardSpitter", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardWitchCliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsCliffe],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[_auto_NotAlarmV2],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardWitchGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardWitch", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnHeardWitchC1Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardWitchC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardWitch", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerHeardWitchC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardWitchC1Gambler,
			},
		],
	},
	{
		name = "PlayerWarnHeardWitchC4M3Cliffe",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc4m3],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardWitchC4M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardWitch", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnMegaMobCliffe",
		criteria = 
		[
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnMegaMobGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWarnWitchAngryCliffe",
		criteria = 
		[
			[ConceptWitchGettingAngry],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotWarnAngryWitch],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnWitchAngryGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnAngryWitch", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldInfectedDet2Cliffe",
		criteria = 
		[
			[ConceptWorldSignsInfectedDetected2],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IssuerClose],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldInfectedDet2Gambler,
			},
		],
	},
	{
		name = "PlayerWorldIntroC31BlankCliffe",
		criteria = 
		[
			[ConceptintroC3M1],
			[IsCliffe],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldIntroC31BlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldIntroC51Cliffe",
		criteria = 
		[
			[ConceptintroC5M1],
			[IsCliffe],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldIntroC51Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorCaughtVomitCliffe",
		criteria = 
		[
			[ConceptPlayerVomitInFace],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCaughtVomitGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 10.0 },
		},
	},
	{
		name = "SurvivorchargerpoundCliffe",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidchargerpound],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorchargerpoundGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorchargerpoundC1Cliffe",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidchargerpound],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorchargerpoundC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorchargerpoundC6M3Cliffe",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[isc6m3_port],
			[ChanceToFire5Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorchargerpoundC6M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorCoughingCliffe",
		criteria = 
		[
			[ConceptSurvivorCoughing],
			[IsCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCoughingGambler,
			},
		],
	},
	{
		name = "SurvivorCoughingDeathCliffe",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCoughingGambler,
			},
		],
	},
	{
		name = "SurvivorDeathCliffe",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorDeathGambler,
			},
		],
	},
	{
		name = "SurvivorGooedBySpitterCliffe",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkCliffe],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorGooedBySpitterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorGooedBySpitterC1Cliffe",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorGooedBySpitterC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorGrabbedByTongueCliffe",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorGrabbedByTongueGambler,
			},
		],
	},
	{
		name = "SurvivorGrabbedByTongueC1Cliffe",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorGrabbedByTongueC1Gambler,
			},
		],
	},
	{
		name = "SurvivorNearCheckpointCliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC1M1Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismap_c1m1_hotel],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC1M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC1M3Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismap_c1m3_mall],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC1M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M1Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismap_c2m1],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC2M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M2Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismap_c2m2],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC2M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M4Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismap_c2m4],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC2M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC3M2Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismapc3m2_swamp],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC3M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3SafeHouseAheadCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC3M3SafeHouseAhead],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M1Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismap_c4m1_milltown_a],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC4M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M2Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[ismap_c4m2_sugarmill_a],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC4M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M3Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[isc4m3],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC4M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M4Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[isc4m4],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC4M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC5M2Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[IsMapc5m2_park],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC5M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC5M4Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[IsMapc5m4_quarter],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC5M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC6M1Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[Isc6m1_riverbank],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC6M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC6M2Cliffe",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[Isc6m2_bedlam],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC6M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleCliffe",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC1M4Cliffe",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[ismap_c1m4_atrium],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC2M5Cliffe",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[ismap_c2m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleC2M5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC3M4Cliffe",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[ismapc3m4_plantation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleC3M4Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC4M5Cliffe",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[isc4m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleC4M5Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC5M5Cliffe",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[IsMapc5m5_bridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC6M3Cliffe",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[Isc6m3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPouncedByHunterCliffe",
		criteria = 
		[
			[ConceptScreamWhilePounced],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPouncedByHunterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorTankPoundCliffe",
		criteria = 
		[
			[ConceptPlayerGroundPoundedByTank],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorTankPoundGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorTankPoundC1Cliffe",
		criteria = 
		[
			[ConceptPlayerGroundPoundedByTank],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorTankPoundC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorVocalizeBackUpCliffe",
		criteria = 
		[
			[ConceptPlayerBackUp],
			[IsCliffe],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeBackUpGambler,
			},
		],
	},
	{
		name = "SurvivorVocalizeEmphaticGoCliffe",
		criteria = 
		[
			[ConceptPlayerEmphaticGo],
			[IsCliffe],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeEmphaticGoGambler,
			},
		],
	},
	{
		name = "SurvivorVocalizeGoingToDieCliffe",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeGoingToDieGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "SurvivorVocalizeGoingToDie3Cliffe",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCliffe],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeGoingToDie3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "SurvivorVocalizeLookOutCliffe",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeLookOutGambler,
			},
		],
	},
	{
		name = "SurvivorVocalizeThisWayCliffe",
		criteria = 
		[
			[ConceptPlayerThisWay],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeThisWayGambler,
			},
		],
	},
	{
		name = "SurvivorVocalizeWaitHereCliffe",
		criteria = 
		[
			[ConceptPlayerWaitHere],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeWaitHereGambler,
			},
		],
	},
	{
		name = "SurvivorWarnSpitterIncomingCliffe",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorWarnSpitterIncomingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},
	{
		name = "SurvivorWarnSpitterIncomingC1Cliffe",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorWarnSpitterIncomingC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerLedgeHangEndCliffe",
		criteria = 
		[
			[ConceptPlayerLedgeHangEnd],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeHangEndGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeHangMiddleCliffe",
		criteria = 
		[
			[ConceptPlayerLedgeHangMiddle],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeHangMiddleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeHangStartCliffe",
		criteria = 
		[
			[ConceptPlayerLedgeHangStart],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeHangStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorFirstDeathCliffe",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCliffe],
			[IsNotSaidSomeoneDied],
			[IsEveryoneAlive],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorFirstDeathGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DeathOneCliffe",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCliffe],
			[IsWithTwo],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DeathOneGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DoubleDeath2Cliffe",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCliffe],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsClosestSurvivorNear400],
			[IsWithOnlyThree],
			[IsNotIncapacitated],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DoubleDeath2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DoubleDeath2MechanicCliffe",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCliffe],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsWithOnlyThree],
			[IsNotIncapacitated],
			[IsNotDeadMechanic],
			[ChanceToFire50Percent],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DoubleDeath2MechanicGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillCliffe",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsCliffe],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.TeamKillGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromMechanicCliffe",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsCliffe],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireCliffe],
			[IsSaidFaultFriendlyFireMechanic],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.TeamKillFromMechanicGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromProducerCliffe",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsCliffe],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireCliffe],
			[IsSaidFaultFriendlyFireProducer],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.TeamKillFromProducerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromTeenGirlCliffe",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsCliffe],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireCliffe],
			[IsSaidFaultFriendlyFireTeenGirl],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.TeamKillFromProducerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSMG],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsFrancisIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGunSilencedCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsFrancisIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakePumpShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpPumpShotgun],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsFrancisIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeChromeShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpShotgun_Chrome],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsFrancisIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeCSSMP5Cliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSmg_mp5],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsFrancisIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGunZoeyIntroCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSMG],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsZoeyIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGunSilencedZoeyIntroCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsZoeyIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakePumpShotgunZoeyIntroCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpPumpShotgun],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsZoeyIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeChromeShotgunZoeyIntroCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpShotgun_Chrome],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsZoeyIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeCSSMP5ZoeyIntroCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSmg_mp5],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[IsZoeyIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorDeployUpExplosivesCliffe",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSaidDeployUpgradePack_Explosive],
			[HasUpgradePack_Explosive],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorDeployUpExplosivesGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Explosive", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorDeployUpIncendiaryCliffe",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSaidDeployUpgradePack_Incendiary],
			[HasUpgradePack_Incendiary],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorDeployUpIncendiaryGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Incendiary", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAdrenalineCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpAdrenaline],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupAdrenalineGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAutoShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpAutoShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupAutoShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSpasShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpShotgun_spas],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupAutoShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupbaseball_batCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpbaseball_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupbaseball_batGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupbaseShovelCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpShovel],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupbaseShovelGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupchainsawCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpchainsaw],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupchainsawGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupcricket_batCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpcricket_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupcricket_batGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupCricketBatCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpcricket_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupCricketBatGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupKnifeCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpKnife],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupKnifeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupCrowBarCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpCrowBar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupCrowBarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupDefibrillatorCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpDefibrillator],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupDefibrillatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupelectric_guitarCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpelectric_guitar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupelectric_guitarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupFireAxeCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpFireAxe],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFireAxeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupFirstAidKitCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpFirstAidKit],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstAidKitGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupFirstSMGCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstSMG],
			[IsEveryoneAlive],
			[IsSaidC1M1OpenDoor],
			[ExtraWeight10],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstSMGGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstSMG", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupFirstSMG2AliveCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstSMG],
			[IsWithTwo],
			[IsSaidC1M1OpenDoor],
			[ExtraWeight10],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstSMG2AliveGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstSMG", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupFirstPumpShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpPumpShotgun],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstShotgun],
			[ismap_c1m1_hotel],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstShotgun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupFirstPumpShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpShotgun_Chrome],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstShotgun],
			[ismap_c1m1_hotel],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstShotgun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupFirstPistolCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsPickedUpSecondPistol],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstPistol],
			[IsNotInStartArea],
			[ismap_c1m1_hotel],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstPistolGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstPistol", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupFryingPanCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpFryingPan],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFryingPanGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupGolfCLubCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupGolfCLubGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupGrenadeLauncherCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpGrenadeLauncher],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupGrenadeLauncherGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupGunC1M2Cliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSpeaking],
			[IsTalk],
			[IsSaidC1M2InsideGunShop],
			[IsNotPickedUpFirstAidKit],
			[IsNotPickedUpAmmo],
			[IsNotPickedUpVomitJar],
			[IsNotPickedUpPainPills],
			[IsNotPickedUpAdrenaline],
			[IsNotPickedUpLaserSights],
			[IsNotPickedUpMolotov],
			[IsNotPickedUpPipeBomb],
			[IsWorldTalkCliffe],
			[IsNotSaidC1M2InsideGunShopPickUp],
			[ChanceToFire50Percent],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupGunC1M2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2InsideGunShopPickUp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupHuntingRifleCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpHuntingRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupHuntingRifleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMilitarySniperCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpSniper_Military],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupHuntingRifleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupScoutSniperCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpSniper_scout],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupHuntingRifleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAWPSniperCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpSniper_awp],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupHuntingRifleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupIncendiaryAmmoCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpIncendiaryAmmo],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupIncendiaryAmmoGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupKatanaCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpKatana],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupKatanaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPitchforkCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpPitchfork],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupPitchforkGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupLaserSightsAlwaysCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotNotAvailable],
			[ChanceToFire50Percent],
			[NotPickedUpItem],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupLaserSightsAlwaysGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupM60Cliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupM60Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMacheteCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpMachete],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupMacheteGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMagnumCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpMagnum],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupMagnumGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMolotovCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpMolotov],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupMolotovGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPainPillsCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpPainPills],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupPainPillsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPipeBombCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpPipeBomb],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupPipeBombGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPumpShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpPumpShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupPumpShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupChromeShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpShotgun_Chrome],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupPumpShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupRifleCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpRifle],
			[IsNotSpeaking],
			[IsInSafeSpot],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupRifleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupDesertRifleCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpRifle_Desert],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupRifleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAK47RifleCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpRifle_AK47],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupRifleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSG552RifleCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpRifle_sg552],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupRifleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSecondPistolCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpSecondPistol],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupSecondPistolGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSMGCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpSMG],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupSMGGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSilencedSMGCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpSmg_silenced],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupSMGGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMP5SMGCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpSmg_mp5],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupSMGGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickuptonfaCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUptonfa],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickuptonfaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupUpExplosiveAmmoCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpExplosiveAmmo],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupUpExplosiveAmmoGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupUpExplosivesCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpUpgradePack_Explosive],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupUpExplosivesGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupUpIncendiaryCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpUpgradePack_Incendiary],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupUpIncendiaryGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupVomitJarCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpVomitJar],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupVomitJarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorPickupVomitJarAlwaysC1Cliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpVomitJar],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupVomitJarAlwaysC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "Player_TakeVomitJarCliffe",
		criteria = 
		[
			[ConceptPlayer_TakeVomitJarC1a],
			[IsCliffe],
			[ChanceToFire10Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_TakeVomitJarGambler,
			},
		],
	},
	{
		name = "PlayerGettingRevivedCliffe",
		criteria = 
		[
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGettingRevivedGambler,
			},
		],
	},
	{
		name = "PlayerHealOtherCliffe",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[NotInIntenseCombat],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHealOtherGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NotInIntenseCombat],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHealOtherC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherCombatCliffe",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[InIntenseCombat],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHealOtherCombatGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherTankCliffe",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCliffe],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHealOtherCombatGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveCliffe",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeSaveGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendCliffe",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerReviveFriendBCliffe",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendBGambler,
			},
		],
	},
	{
		name = "PlayerReviveFriendBCoachCliffe",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotReviveInterrupt],
			[FromIsCoach],
			[ChanceToFire10Percent],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendBCoachGambler,
			},
		],
	},
	{
		name = "PlayerReviveFriendBEllisCliffe",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotReviveInterrupt],
			[FromIsMechanic],
			[ChanceToFire10Percent],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendBEllisGambler,
			},
		],
	},
	{
		name = "PlayerReviveFriendCriticalCliffe",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendCriticalGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoudCliffe",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsCliffe],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendLoudGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveCriticalCliffe",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeSaveGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendFFCliffe",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsShotTeammateCliffe],
			[IsWorldTalkCliffe],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendFFGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendCriticalFFCliffe",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsShotTeammateCliffe],
			[IsWorldTalkCliffe],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendFFGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCoach", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoud2Cliffe",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsCliffe],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendLoudGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoudCritCliffe",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsCliffe],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendLoudGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoudCrit2Cliffe",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsCliffe],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendLoudGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 5.0 },
		},
	},
	{
		name = "_C1M1_ElevatorHelloCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHelloGambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloAllAliveExtra1Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloAllAliveExtra1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHelloAllAliveExtra1Gambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloAllAliveExtra2Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloAllAliveExtra2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHelloAllAliveExtra2Gambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello01bCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello01b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello01bGambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello10cCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello10c],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello10cGambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello04cCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello04c],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello04cGambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello04eCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello04e],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello04eGambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello04dCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello04d],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello04dGambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello13dCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello13d],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello13dGambler,
			},
		],
	},
	{
		name = "_c1m4startelevator5aCliffe",
		criteria = 
		[
			[Concept_c1m4startelevator5a],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c1m4startelevator5aGambler,
			},
		],
	},
	{
		name = "_c1m4startelevator6a1Cliffe",
		criteria = 
		[
			[Concept_c1m4startelevator6a1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c1m4startelevator6a1Gambler,
			},
		],
	},
	{
		name = "_c1m4startelevatorLastCliffe",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsCliffe],
			[ElevatorTimeNotUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c1m4startelevatorLastGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c1m4startelevatorLastTimeUpCliffe",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsCliffe],
			[ElevatorTimeUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c1m4startelevatorLastGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M1_Fall03Cliffe",
		criteria = 
		[
			[Concept_C2M1_Fall03],
			[IsCliffe],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M1_Fall03Gambler,
			},
		],
	},
	{
		name = "_C2M1_Fall05Cliffe",
		criteria = 
		[
			[Concept_C2M1_Fall05],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M1_Fall05Gambler,
			},
		],
	},
	{
		name = "_c2m1_searchlights03Cliffe",
		criteria = 
		[
			[Concept_c2m1_searchlights03],
			[IsCliffe],
			[NotInCombat],
			[IssuerReallyClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m1_searchlights03Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.257 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M1abandoned02Cliffe",
		criteria = 
		[
			[Concept_C2M1abandoned02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M1abandoned02Gambler,
			},
		],
	},
	{
		name = "_C2M1Billboard01Cliffe",
		criteria = 
		[
			[Concept_C2M1Billboard01],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M1Billboard01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.411 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_Bathroom01Cliffe",
		criteria = 
		[
			[Concept_C2M2_Bathroom01],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Bathroom01Gambler,
			},
		],
	},
	{
		name = "_C2M2_CaroButton01Cliffe",
		criteria = 
		[
			[Concept_C2M2_CaroButton01],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_CaroButton01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.411 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_Kiddie01Cliffe",
		criteria = 
		[
			[Concept_C2M2_Kiddie01],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Kiddie01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.314 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_Kiddie04Cliffe",
		criteria = 
		[
			[Concept_C2M2_Kiddie04],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Kiddie04Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.424 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_SeeSafehouse01Cliffe",
		criteria = 
		[
			[Concept_C2M2_SeeSafehouse01],
			[IsCliffe],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_SeeSafehouse01Gambler,
			},
		],
	},
	{
		name = "_C2M2_Steak01Cliffe",
		criteria = 
		[
			[Concept_C2M2_Steak01],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Steak01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.641 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_ThisTall01Cliffe",
		criteria = 
		[
			[Concept_C2M2_ThisTall01],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_ThisTall01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.272 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_coaster02Cliffe",
		criteria = 
		[
			[Concept_c2m3_coaster02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_coaster02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.745 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_coaster05Cliffe",
		criteria = 
		[
			[Concept_c2m3_coaster05],
			[IsCliffe],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_coaster05Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.144 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_hole01Cliffe",
		criteria = 
		[
			[Concept_c2m3_hole01],
			[IsCliffe],
			[IssuerReallyClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDownHole],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_hole01Gambler,
			},
		],
	},
	{
		name = "_c2m3_water01Cliffe",
		criteria = 
		[
			[Concept_c2m3_water01],
			[IsCliffe],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_water01Gambler,
			},
		],
	},
	{
		name = "_C2M4_GateOpen001Cliffe",
		criteria = 
		[
			[Concept_C2M4_GateOpen001],
			[IsCliffe],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M4_GateOpen001Gambler,
			},
		],
	},
	{
		name = "_C4_BigStormHits01Cliffe",
		criteria = 
		[
			[Concept_C4_BigStormHits01],
			[IsCliffe],
			[_auto_NotC4CliffeInCover],
			[_auto_IsTimerA],
			[FromIsAnOrator],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4_BigStormHits01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.363 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C4_BigStormHits02Cliffe",
		criteria = 
		[
			[Concept_C4_BigStormHits02],
			[IsCliffe],
			[IsNotCoughing],
			[IssuerClose],
			[IsNotIncapacitated],
			[_auto_NotC4CliffeInCover],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4_BigStormHits02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.241 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m1_rainresponseCliffe",
		criteria = 
		[
			[Concept_c4m1_rainresponse],
			[IsCliffe],
			[NotInCombat],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidc4m1_rainresponse],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1_rainresponseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_rainresponse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M1IntroCliffe",
		criteria = 
		[
			[ConceptIntroC4M1],
			[IsCliffe],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M1IntroGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
			c2 = { context = "Saidremark_caralarm", value = 1, duration = 400.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m1Intro03Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro03],
			[IsCliffe],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro03Gambler,
			},
		],
	},
	{
		name = "_c4m1Intro04Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro04],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro04Gambler,
			},
		],
	},
	{
		name = "_c4m1Intro05Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro05],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro05Gambler,
			},
		],
	},
	{
		name = "_c4m1Intro07Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro07],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro07Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "c4m1GunBag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m1Intro08Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro08],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro08Gambler,
			},
		],
	},
	{
		name = "_c4m1Intro09Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro09],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro09Gambler,
			},
		],
	},
	{
		name = "_c4m1Intro11Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro11],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro11Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "c4m1IToldYouSo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m1Intro13Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro13],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro13Gambler,
			},
		],
	},
	{
		name = "_c4m1Intro02Cliffe",
		criteria = 
		[
			[Concept_c4m1Intro02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "c4m1MilkRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m2_caneyell01Cliffe",
		criteria = 
		[
			[Concept_c4m2_caneyell01],
			[IsCliffe],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsCliffeInCane],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_caneyell01Gambler,
			},
		],
	},
	{
		name = "_c4m2_ElevatorHere01Cliffe",
		criteria = 
		[
			[Concept_c4m2_ElevatorHere01],
			[IsCliffe],
			[IsNotIncapacitated],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_ElevatorHere01Gambler,
			},
		],
	},
	{
		name = "_c4m2_seestation01Cliffe",
		criteria = 
		[
			[Concept_c4m2_seestation01],
			[IsCliffe],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_seestation01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m2_seestation03Cliffe",
		criteria = 
		[
			[Concept_c4m2_seestation03],
			[IsCliffe],
			[IsSubjectDistNear150],
			[IsNotSaidActivatedC4M2Elevator],
			[NotInCombat],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_seestation03Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m2_streetblocked01Cliffe",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsCliffe],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_streetblocked01Gambler,
			},
		],
	},
	{
		name = "_c4m2_streetblocked01bCliffe",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsCliffe],
			[IsSubjectDistFar400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_streetblocked01bGambler,
			},
		],
	},
	{
		name = "_c4m2_streetblocked02Cliffe",
		criteria = 
		[
			[Concept_c4m2_streetblocked02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_streetblocked01Gambler,
			},
		],
	},
	{
		name = "_c4m2_Witchville01Cliffe",
		criteria = 
		[
			[Concept_c4m2_Witchville01],
			[IsCliffe],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_Witchville01Gambler,
			},
		],
	},
	{
		name = "_c4m2_Witchville05Cliffe",
		criteria = 
		[
			[Concept_c4m2_Witchville05],
			[IsCliffe],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_Witchville05Gambler,
			},
		],
	},
	{
		name = "_c4m3_rain01Cliffe",
		criteria = 
		[
			[Concept_c4m3_rain01],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m3_rain01Gambler,
			},
		],
	},
	{
		name = "_c4m3_startsafe02Cliffe",
		criteria = 
		[
			[Concept_c4m3_startsafe02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m3_startsafe02Gambler,
			},
		],
	},
	{
		name = "_c4m3_startsafe04Cliffe",
		criteria = 
		[
			[Concept_c4m3_startsafe04],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m3_startsafe04Gambler,
			},
		],
	},
	{
		name = "_C4M5_BoatComing01Cliffe",
		criteria = 
		[
			[Concept_C4M5_BoatComing01],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4M5_BoatComing01Gambler,
			},
		],
	},
	{
		name = "_C4M5_FinaleStart01Cliffe",
		criteria = 
		[
			[Concept_C4M5_FinaleStart01],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4M5_FinaleStart01Gambler,
			},
		],
	},
	{
		name = "_C4M5_Intro02Cliffe",
		criteria = 
		[
			[Concept_C4M5_Intro02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4M5_Intro02Gambler,
			},
		],
	},
	{
		name = "_C4M5_Intro04Cliffe",
		criteria = 
		[
			[Concept_C4M5_Intro04],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4M5_Intro04Gambler,
			},
		],
	},
	{
		name = "PlayerRemarkc4m5_BurgerTankCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m5_burgertank],
			[IsNotSaidc4m5_burgertank],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear1000],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m5_BurgerTankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m5_burgertank", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_introc1m1Cliffe",
		criteria = 
		[
			[Concept_introc1m1],
			[IsCliffe],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1Gambler,
			},
		],
	},
	{
		name = "_introc1m1AloneCliffe",
		criteria = 
		[
			[Concept_introc1m1],
			[IsCliffe],
			[IsAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1AloneGambler,
			},
		],
	},
	{
		name = "_introc1m1a01Cliffe",
		criteria = 
		[
			[Concept_introc1m1a01],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1a01Gambler,
			},
		],
	},
	{
		name = "_introc1m1a04Cliffe",
		criteria = 
		[
			[Concept_introc1m1a04],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1a04Gambler,
			},
		],
	},
	{
		name = "_introc1m1b02Cliffe",
		criteria = 
		[
			[Concept_introc1m1b02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1a04Gambler,
			},
		],
	},
	{
		name = "_introc1m1b03Cliffe",
		criteria = 
		[
			[Concept_introc1m1b03],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b03Gambler,
			},
		],
	},
	{
		name = "_introc1m1b04Cliffe",
		criteria = 
		[
			[Concept_introc1m1b04],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b04Gambler,
			},
		],
	},
	{
		name = "_introc1m1helileftCliffe",
		criteria = 
		[
			[Concept_introc1m1helileft],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1helileftGambler,
			},
		],
	},
	{
		name = "_introc1m1b05Cliffe",
		criteria = 
		[
			[Concept_introc1m1b05],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b05Gambler,
			},
		],
	},
	{
		name = "_introc1m1b06Cliffe",
		criteria = 
		[
			[Concept_introc1m1b06],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b06Gambler,
			},
		],
	},
	{
		name = "_introc1m1b08donutsCliffe",
		criteria = 
		[
			[Concept_introc1m1b08donuts],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b08donutsGambler,
			},
		],
	},
	{
		name = "_introc1m1b09Cliffe",
		criteria = 
		[
			[Concept_introc1m1b09],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b09Gambler,
			},
		],
	},
	{
		name = "_introc1m1b10Cliffe",
		criteria = 
		[
			[Concept_introc1m1b10],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b10Gambler,
			},
		],
	},
	{
		name = "_introc1m1lastCliffe",
		criteria = 
		[
			[Concept_introc1m1last],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1lastGambler,
			},
		],
	},
	{
		name = "_introc1m1lastweaponsCliffe",
		criteria = 
		[
			[Concept_introc1m1lastweapons],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1lastGambler,
			},
		],
	},
	{
		name = "_introc1m1b11Cliffe",
		criteria = 
		[
			[Concept_introc1m1b11],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b11Gambler,
			},
		],
	},
	{
		name = "_introc1m1MovieIntroCliffe",
		criteria = 
		[
			[Concept_introc1m1MovieIntro],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1MovieIntroGambler,
			},
		],
	},
	{
		name = "_introc1m1c02Cliffe",
		criteria = 
		[
			[Concept_introc1m1c02],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1c02Gambler,
			},
		],
	},
	{
		name = "BlankTestoCliffe",
		criteria = 
		[
			[ConceptBlankTesto],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BlankTesto", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c1m1_elevator_door_openCliffe",
		criteria = 
		[
			[Conceptc1m1_elevator_door_open2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m1_elevator_door_openGambler,
			},
		],
	},
	{
		name = "c1m1_elevator_ready2Cliffe",
		criteria = 
		[
			[Conceptc1m1_elevator_ready2],
			[IsCliffe],
			[IsNotSaidC1M1OpenDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m1_elevator_ready2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OpenDoor", value = 1, duration = 30.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello2AliveNickIntro1Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveCliffeIntro1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello2AliveNickIntro1Gambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra1Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello2AliveExtra1Gambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra2Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello2AliveExtra2Gambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveExtra1Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveExtra1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveExtra1Gambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNickIntro1Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveCliffeIntro1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNickIntro1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CliffeIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveNickIntro2Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveCliffeIntro2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNickIntro2Gambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[IsCliffe],
			[IsNotCliffeIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveName1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CliffeIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveName2RCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[IsCliffe],
			[IsRochelleElevatorIntro],
			[FromIsProducer],
			[IsNotCliffeIntroduced],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveName2RGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CliffeIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveName2Cliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveCliffeIntro2],
			[IsCliffe],
			[IsNotCliffeIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveName2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CliffeIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadRCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsCliffe],
			[IsProducerNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNameDeadRGambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadECliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsCliffe],
			[IsMechanicNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNameDeadEGambler,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadCCliffe",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsCliffe],
			[IsCoachNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNameDeadCGambler,
			},
		],
	},
	{
		name = "C1M1CoughCliffe",
		criteria = 
		[
			[ConceptC1M1Cough],
			[IsCliffe],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1CoughGambler,
			},
		],
	},
	{
		name = "C1M3AlarmOffaCliffe",
		criteria = 
		[
			[ConceptC1M3AlarmOffa],
			[IsCliffe],
			[IsSubjectDistNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3AlarmOffaGambler,
			},
		],
	},
	{
		name = "C1M3SafeRoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m3_mall],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3SafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M3SafeRoom2aCliffe",
		criteria = 
		[
			[ConceptC1M3SafeRoom2a],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3SafeRoom2aGambler,
			},
		],
	},
	{
		name = "C1M3SafeRoom2bCliffe",
		criteria = 
		[
			[ConceptC1M3SafeRoom2b],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3SafeRoom2bGambler,
			},
		],
	},
	{
		name = "C1M4NearFinale02aCliffe",
		criteria = 
		[
			[ConceptC1M4NearFinale02a],
			[IsCliffe],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4NearFinale02aGambler,
			},
		],
	},
	{
		name = "C1M4NearFinale02cCliffe",
		criteria = 
		[
			[ConceptC1M4NearFinale02c],
			[IsCliffe],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4NearFinale02cGambler,
			},
		],
	},
	{
		name = "C1M4NearFinale02eCliffe",
		criteria = 
		[
			[ConceptC1M4NearFinale02e],
			[IsCliffe],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4NearFinale02eGambler,
			},
		],
	},
	{
		name = "c1m4NearFinale1Cliffe",
		criteria = 
		[
			[Conceptc1m4NearFinale1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4NearFinale1Gambler,
			},
		],
	},
	{
		name = "C1M4SafeRoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m4_atrium],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4SafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M4SafeRoom2a2Cliffe",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4SafeRoom2a2Gambler,
			},
		],
	},
	{
		name = "C1M4SafeRoom2a4Cliffe",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a4],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4SafeRoom2a4Gambler,
			},
		],
	},
	{
		name = "C1M4SafeRoomEndCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[ismap_c1m4_atrium],
			[IsCliffe],
			[IsNotSaidLeavingSafeArea],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4SafeRoomEndGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1IntroStartCliffe",
		criteria = 
		[
			[ConceptIntroC2M1],
			[IsCliffe],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1IntroStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro002Cliffe",
		criteria = 
		[
			[ConceptC2M1Intro002],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1Intro002Gambler,
			},
		],
	},
	{
		name = "LeavingC2M1StartCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsCliffe],
			[Ismap_c2m1],
			[IsTalk],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.LeavingC2M1StartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_400Cliffe",
		criteria = 
		[
			[ConceptC2M1Intro_400],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1Intro_400Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.363 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4EnterCoverCliffe",
		criteria = 
		[
			[ConceptC4EnterCover],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4CliffeInCover", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4ExitCoverCliffe",
		criteria = 
		[
			[ConceptC4ExitCover],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4CliffeInCover", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_InBurgerTank01Cliffe",
		criteria = 
		[
			[Conceptc4m1_InBurgerTank01],
			[IsCliffe],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_InBurgerTank01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4FinaleStartCliffe",
		criteria = 
		[
			[ConceptC4FinaleStart],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4FinaleStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_NoLostCall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_InBurgerTankCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isc4m1_InBurgerTank],
			[IsNotSaidc4m1_InBurgerTank],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear200],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_InBurgerTankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_InBurgerTank", value = 1, duration = 0.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas01Cliffe",
		criteria = 
		[
			[Conceptc4m1_nogas01],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_nogas01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.502 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas02Cliffe",
		criteria = 
		[
			[Conceptc4m1_nogas02],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_nogas02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.95 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas04Cliffe",
		criteria = 
		[
			[Conceptc4m1_nogas04],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_nogas04Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.497 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas05Cliffe",
		criteria = 
		[
			[Conceptc4m1_nogas05],
			[IsCliffe],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_nogas05Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.502 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour20MoreCliffe",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsCliffe],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour20MoreGambler,
			},
		],
	},
	{
		name = "GasPour10MoreTalkCliffe",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsCliffe],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour10MoreTalkGambler,
			},
		],
	},
	{
		name = "GasPour1MoreCliffe",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsCliffe],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour1MoreGambler,
			},
		],
	},
	{
		name = "GasPour2MoreCliffe",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsCliffe],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour2MoreGambler,
			},
		],
	},
	{
		name = "GasPour3MoreCliffe",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsCliffe],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour3MoreGambler,
			},
		],
	},
	{
		name = "GasPour5MoreCliffe",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsCliffe],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour5MoreGambler,
			},
		],
	},
	{
		name = "HistoricTour01aCliffe",
		criteria = 
		[
			[ConceptHistoricTour01a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.HistoricTour01aGambler,
			},
		],
	},
	{
		name = "Player_SeeMudmen2aCliffe",
		criteria = 
		[
			[ConceptPlayer_SeeMudmen2a],
			[IsCliffe],
			[IssuerClose],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_SeeMudmen2aGambler,
			},
		],
	},
	{
		name = "Player_TakeBatR2Cliffe",
		criteria = 
		[
			[ConceptPlayer_TakeBatR2],
			[IsCliffe],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_TakeBatR2Gambler,
			},
		],
	},
	{
		name = "Player_KnowHunterC1Cliffe",
		criteria = 
		[
			[ConceptPlayer_KnowHunter],
			[IsCliffe],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowHunterC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Player_KnowBoomerC1Cliffe",
		criteria = 
		[
			[ConceptPlayer_KnowBoomer],
			[IsCliffe],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowBoomerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Player_KnowChargerC1Cliffe",
		criteria = 
		[
			[ConceptPlayer_KnowCharger],
			[IsCliffe],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowChargerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Player_KnowJockeyC1Cliffe",
		criteria = 
		[
			[ConceptPlayer_KnowJockey],
			[IsCliffe],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowJockeyC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Player_KnowSmokerC1Cliffe",
		criteria = 
		[
			[ConceptPlayer_KnowSmoker],
			[IsCliffe],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowSmokerC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Player_KnowSpitterC1Cliffe",
		criteria = 
		[
			[ConceptPlayer_KnowSpitter],
			[IsCliffe],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowSpitterC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Player_NotPackingHeatCliffe",
		criteria = 
		[
			[ConceptPlayer_NotPackingHeat],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_NotPackingHeatGambler,
			},
		],
	},
	{
		name = "Player_NotPackingHeat2Cliffe",
		criteria = 
		[
			[ConceptPlayer_NotPackingHeat2],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_NotPackingHeat2Gambler,
			},
		],
	},
	{
		name = "Player_WhinyNickCliffe",
		criteria = 
		[
			[ConceptPlayer_WhinyCliffe],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_WhinyNickGambler,
			},
		],
	},
	{
		name = "C1M2TankInfoCliffe",
		criteria = 
		[
			[ConceptC1M2TankInfo],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2TankInfoGambler,
			},
		],
	},
	{
		name = "PlayerCr0wnedBrideCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkCliffe],
			[isc6m1_riverbank],
			[IsWorldTalkCliffe],
		],
		// 	forceweight 101
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCr0wnedBrideGambler,
			},
		],
	},
	{
		name = "PlayerCr0wnedBrideCoachCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[IsCoachAlive],
			[IsCoachNear400],
			[ChanceToFire50Percent],
			[IsTalk],
			[IsTalkCliffe],
			[isc6m1_riverbank],
			[IsWorldTalkCliffe],
		],
		// 	forceweight 102
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCr0wnedBrideCoachGambler,
			},
		],
	},
	{
		name = "PlayerCr0wnedBrideProducerCliffe",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCliffe],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[IsProducerAlive],
			[IsProducerNear400],
			[ChanceToFire25Percent],
			[IsTalk],
			[IsTalkCliffe],
			[isc6m1_riverbank],
			[IsWorldTalkCliffe],
		],
		// 	forceweight 102
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCr0wnedBrideProducerGambler,
			},
		],
	},
	{
		name = "WeddingWitchDead02Cliffe",
		criteria = 
		[
			[ConceptWeddingWitchDead02],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WeddingWitchDead02Gambler,
			},
		],
	},
	{
		name = "WeddingWitchDead03Cliffe",
		criteria = 
		[
			[ConceptWeddingWitchDead03],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WeddingWitchDead03Gambler,
			},
		],
	},
	{
		name = "WeddingWitchDead04Cliffe",
		criteria = 
		[
			[ConceptWeddingWitchDead04],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WeddingWitchDead04Gambler,
			},
		],
	},
	{
		name = "WorldIntroC31a1Cliffe",
		criteria = 
		[
			[ConceptWorldIntroC31a1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31a1Gambler,
			},
		],
	},
	{
		name = "WorldIntroC31a3Cliffe",
		criteria = 
		[
			[ConceptWorldIntroC31a3],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31a3Gambler,
			},
		],
	},
	{
		name = "WorldIntroC31b1Cliffe",
		criteria = 
		[
			[ConceptWorldIntroC31b1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31b1Gambler,
			},
		],
	},
	{
		name = "WorldIntroC31c2Cliffe",
		criteria = 
		[
			[ConceptWorldIntroC31c2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31c2Gambler,
			},
		],
	},
	{
		name = "WorldIntroC31c4Cliffe",
		criteria = 
		[
			[ConceptWorldIntroC31c4],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31c4Gambler,
			},
		],
	},
	{
		name = "WorldIntroC31d1Cliffe",
		criteria = 
		[
			[ConceptWorldIntroC31d1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31d1Gambler,
			},
		],
	},
	{
		name = "WorldIntroC31e3aCliffe",
		criteria = 
		[
			[ConceptWorldIntroC31e3a],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31e3aGambler,
			},
		],
	},
	{
		name = "WorldIntroC3f2Cliffe",
		criteria = 
		[
			[ConceptWorldIntroC3f2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC3f2Gambler,
			},
		],
	},
	{
		name = "PlayerCoverMeHealCliffe",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotAlone],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoverMeHealGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},
	{
		name = "PlayerCoverMeHealC1Cliffe",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotAlone],
			[IsWorldTalkCliffe],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoverMeHealC1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},
	{
		name = "Player_LostCallC6M3Cliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsClosestSurvivorFar3000],
			[IsNotAlone],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_LostCallC6M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AutoPlayerLostCallCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsClosestSurvivorFar3000],
			[IsNotAlone],
			[IsNotSaidPlayerLostCall],
			[_auto_NotNoLostCall],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.AutoPlayerLostCallGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChainsawCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsChainsaw],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChainsawGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChainsawAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsChainsaw],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChainsawGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedcricket_batCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscricket_bat],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedcricket_batGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedcricket_batAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscricket_bat],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedcricket_batGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedcrowbarCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscrowbar],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedcrowbarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedcrowbarAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscrowbar],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedcrowbarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGolfClubCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGolfClubGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGolfClubAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGolfClubGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGuitarCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGuitar],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGuitarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGuitarAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGuitar],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGuitarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedKatanaCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsKatana],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedKatanaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedKatanaAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKatana],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedKatanaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedLaserSightsCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsLaserSights],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedLaserSightsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedLaserSightsAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsLaserSights],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedLaserSightsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorBotPickupLaserSightsSpottedCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotIsAvailable],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotSaidSpotWeapons],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedLaserSightsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedM60Cliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedM60Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedM60AutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedM60Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMacheteCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMachete],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMacheteGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMacheteAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMachete],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMacheteGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMagnumCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMagnum],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMagnumGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMagnumAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMagnum],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMagnumGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedtonfaCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Istonfa],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedtonfaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedtonfaAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Istonfa],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedtonfaGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAutoShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsAutoShotgun],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAutoShotgunAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsAutoShotgun],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedShotgun_ChromeCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_Chrome],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedShotgun_ChromeAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_Chrome],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedShotgun_spasCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_spas],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedShotgun_spasAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_spas],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedPumpShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPumpShotgun],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedPumpShotgunAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPumpShotgun],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedRifleCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedRifleAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedRifle_AK47Cliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_AK47],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedRifle_AK47AutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_AK47],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedRifle_desertCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_desert],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedRifle_desertAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_desert],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedRifle_SG552Cliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_sg552],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedRifle_SG552AutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_sg552],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSecondPistolCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSecondPistol],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSecondPistolGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSecondPistolAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSecondPistol],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSecondPistolGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSMGCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSMG],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSMGAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSMG],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSilencedSMGCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSMG_silenced],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSilencedSMGAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSMG_silenced],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMP5SMGCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSMG_mp5],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMP5SMGAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSMG_mp5],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHuntingRifleCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsHuntingRifle],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHuntingRifleAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsHuntingRifle],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMilitarySniperCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSniper_military],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMilitarySniperAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSniper_military],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedScoutSniperCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSniper_scout],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedScoutSniperAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSniper_scout],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAWPSniperCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSniper_awp],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAWPSniperAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSniper_awp],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBaseballBatCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Isbaseball_bat],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBaseballBatAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Isbaseball_bat],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedFryingPanCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFryingPan],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedFryingPanAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFryingPan],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAxeCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFireAxe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAxeAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFireAxe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedShovelCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShovel],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedShovelAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShovel],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedPitchforkCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPitchfork],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedPitchforkAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPitchfork],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedKnifeCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsKnife],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedKnifeAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKnife],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedPistolCliffe",
		criteria = 
		[
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedPistolGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedOtherWeaponCliffe",
		criteria = 
		[
			[ConceptPlayerSpotOtherWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedShotgunCliffe",
		criteria = 
		[
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3AlarmOffNagCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_IsTracksOk],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_coasteroffGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 11.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AskWhatCliffe",
		criteria = 
		[
			[ConceptAskWhat],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.AskWhatGambler,
			},
		],
	},
	{
		name = "C13M1IntroStartCliffe",
		criteria = 
		[
			[ConceptIntroC13M1],
			[IsCliffe],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1IntroStartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M1Intro2Cliffe",
		criteria = 
		[
			[ConceptC13M1Intro2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1Intro2Gambler,
			},
		],
	},
	{
		name = "C13M1Intro3Cliffe",
		criteria = 
		[
			[ConceptC13M1Intro3],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1Intro3Gambler,
			},
		],
	},
	{
		name = "C13M1IntroLastCliffe",
		criteria = 
		[
			[ConceptC13M1IntroLast],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1IntroLastGambler,
			},
		],
	},
	{
		name = "C13M1IntroLocationLastCliffe",
		criteria = 
		[
			[ConceptC13M1IntroLocationLast],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1IntroLocationLastGambler,
			},
		],
	},
	{
		name = "RemarkC13M1UpHillCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M1UpHill],
			[IsNotRemarkedC13M1UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3UpHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1DownHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M1DownHere],
			[IsNotRemarkedC13M1DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1ThroughHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M1ThroughHere],
			[IsNotRemarkedC13M1ThroughHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RemarkC13M1ThroughHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1ThroughWindowCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M1ThroughWindow],
			[IsNotRemarkedC13M1ThroughWindow],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_throughwindowGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1UpStepsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M1UpSteps],
			[IsNotRemarkedC13M1UpSteps],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upstepsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpSteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1CrossHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M1CrossHere],
			[IsNotRemarkedC13M1CrossHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_crosshereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1CrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1PreBunkerOpenCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M1PreBunkerOpen],
			[IsNotRemarkedC13M1PreBunkerOpen],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RemarkC13M1PreBunkerOpenGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1PreBunkerOpen", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M1OpeningBunkerCliffe",
		criteria = 
		[
			[ConceptC13M1OpeningBunker],
			[IsCliffe],
			[IsNotC13M1OpeningBunker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M2OpenDoor2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "C13M1OpeningBunker", value = 1, duration = 0.0 },
			c2 = { context = "RemarkedC13M1PreBunkerOpen", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2UpHillCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M2UpHill],
			[IsNotRemarkedC13M2UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RemarkC13M2UpHillGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2DownHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M2DownHere],
			[IsNotRemarkedC13M2DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2UpLadderCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M2UpLadder],
			[IsNotRemarkedC13M2UpLadder],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upladderGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2UpStairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M2UpStairs],
			[IsNotRemarkedC13M2UpStairs],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upstepsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2TankApproachingCliffe",
		criteria = 
		[
			[ConceptC13M2TankApproaching],
			[IsCliffe],
			[IsNotNoticedC13M2ShakingGround],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M2TankApproachingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "NoticedC13M2ShakingGround", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2BarrelsIgnitedCliffe",
		criteria = 
		[
			[ConceptC13M2BarrelsIgnited],
			[IsCliffe],
			[IsNotC13M2IgnitedBarrels],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M2BarrelsIgnitedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "C13M2IgnitedBarrels", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2Barrels1Cliffe",
		criteria = 
		[
			[ConceptC13M2Barrels1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M2Barrels1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2Barrels2Cliffe",
		criteria = 
		[
			[ConceptC13M2Barrels2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M2Barrels2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M3DownHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsC13M3DownHere],
			[IsNotRemarkedC13M3DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3ApproachingTankerCliffe",
		criteria = 
		[
			[ConceptC13M3ApproachingTanker],
			[IsCliffe],
			[IsNotSawC13M3Tanker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3ApproachingTankerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SawC13M3Tanker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Tanker1Cliffe",
		criteria = 
		[
			[ConceptC13M3Tanker1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3Tanker1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Tanker2Cliffe",
		criteria = 
		[
			[ConceptC13M3Tanker2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3Tanker2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Tanker3Cliffe",
		criteria = 
		[
			[ConceptC13M3Tanker3],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3Tanker3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3OnScaffoldCliffe",
		criteria = 
		[
			[ConceptC13M3OnScaffold],
			[IsCliffe],
			[IsNotOnC13M3Scaffold],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3OnScaffoldGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "OnC13M3Scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3AirstrikeCliffe",
		criteria = 
		[
			[ConceptC13M3Airstrike],
			[IsCliffe],
			[IsNotWitnissedC13M3Airstrike],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3AirstrikeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "WitnissedC13M3Airstrike", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Airstrike2Cliffe",
		criteria = 
		[
			[ConceptC13M3Airstrike2],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3Airstrike2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4Button1Cliffe",
		criteria = 
		[
			[ConceptC13M4Button1],
			[IsCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4Button1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4FinaleTriggeredCliffe",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsCliffe],
			[ismapc13m4_cutthroatcreek],
			[IsTriggeredByCliffe],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4FinaleTriggeredGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TalkingCliffe", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4FinaleStart2Cliffe",
		criteria = 
		[
			[ConceptC13M4FinaleStart2],
			[IsCliffe],
			[_auto_IsTalkingCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4FinaleStart2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4DownCreekCliffe",
		criteria = 
		[
			[ConceptC13M4DownCreek],
			[IsCliffe],
			[IsNotInC13M4Creek],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
			c2 = { context = "InC13M4Creek", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4InSmokeCliffe",
		criteria = 
		[
			[ConceptC13M4InSmoke],
			[IsCliffe],
			[IsNotInC13M4Smoke],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCoughingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 3.0 },
			c2 = { context = "InC13M4Smoke", value = 1, duration = 0.0 },
		},
	},
	{
		name = "C13M4NoticedHelicopterCliffe",
		criteria = 
		[
			[ConceptC13M4NoticedHelicopter],
			[IsCliffe],
			[IsNotNoticedC13M4Helicopter],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4NoticedHelicopterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
			c2 = { context = "NoticedC13M4Helicopter", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4AlmostThereCliffe",
		criteria = 
		[
			[ConceptC13M4AlmostThere],
			[IsCliffe],
			[IsNotC13M4AlmostThere],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4AlmostThereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
			c2 = { context = "C13M4AlmostThere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4SpottedVehicleCliffe",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsCliffe],
			[ismapc13m4_cutthroatcreek],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4SpottedVehicleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 2, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4GetToVehicleCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[ismapc13m4_cutthroatcreek],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4GetToVehicleGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4InsideVehicleCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[ismapc13m4_cutthroatcreek],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5InsideHeliGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCliffe", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SafeRoomStartCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 45.0 },
			c2 = { context = "_auto_SafeRoomStart", value = 1, duration = 0.0 },
			c3 = { context = "_auto_SafeRoomQuiet", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "IntroEndCliffe",
		criteria = 
		[
			[ConceptIntroEnd],
			[IsCliffe],
			[FromIsCliffe],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "LeavingSafeAreaCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsCliffe],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "LeavingSafeRoomCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCliffe],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinaleTriggeredCliffe",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsCliffe],
			[IsTriggeredByCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinaleTriggeredCliffe",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsCliffe],
			[IsTriggeredByCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinalVehicleSpottedCliffe",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsCliffe],
			[_auto_IsFinaleStarted],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinalVehicleArrivedCliffe",
		criteria = 
		[
			[ConceptFinalVehicleArrived],
			[IsCliffe],
			[_auto_HasSpottedVehicle],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Escape", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "L4D1PlayerNiceShotCliffe",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeaking],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotGambler,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotFrancisCliffe",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotFrancisGambler,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisCliffe",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotLouisGambler,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyCliffe",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsCliffe],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotZoeyGambler,
			},
		],
	},
	{
		name = "C6M3GasPourCliffe",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[isC6M3_Port],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3GasPourGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "C6M1_IntotheparkNoHealthCliffe",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1_IntotheparkNoHealthGambler,
			},
		],
	},
	{
		name = "C6M1Intro_01Biker05Cliffe",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsCliffe],
			[IsFrancisIntroActor],
			[IsNotSaidIntroScene],
			[FrancisGroup5],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_01Biker05Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidIntroScene", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1Intro_07bCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_07b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_07bGambler,
			},
		],
	},
	{
		name = "C6M1Intro_09aCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_09a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09aGambler,
			},
		],
	},
	{
		name = "C6M1Intro_09bCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_09b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09bGambler,
			},
		],
	},
	{
		name = "C6M1Intro_09dCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_09d],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09dGambler,
			},
		],
	},
	{
		name = "C6M1Intro_10eCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_10e],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_10eGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1Intro_11dCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_11d],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_11dGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1Intro_14aCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_14a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_14aGambler,
			},
		],
	},
	{
		name = "C6M1Intro_14cCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_14c],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_14cGambler,
			},
		],
	},
	{
		name = "C6M1Intro_15aCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_15a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_15aGambler,
			},
		],
	},
	{
		name = "C6M1Intro_15eCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_15e],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_15eGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1Intro_16aCliffe",
		criteria = 
		[
			[ConceptC6M1Intro_16a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_16aGambler,
			},
		],
	},
	{
		name = "LeavingC6M1StartCliffe",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.LeavingC6M1StartGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "LeftC6M1Start", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemWorldC6M1_WeddingWarn02Cliffe",
		criteria = 
		[
			[ConceptRemWorldC6M1_WeddingWarn02],
			[IsCliffe],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RemWorldC6M1_WeddingWarn02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "AtWedding", value = 1, duration = 60.0 },
			c2 = { context = "CoachCake", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M1_HistoricTourCliffe",
		criteria = 
		[
			[ConceptWorldC6M1_HistoricTour],
			[IsCliffe],
			[IsNotLeftC6M1Start],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_HistoricTourGambler,
			},
		],
	},
	{
		name = "WorldC6M1_PostWedding02aCliffe",
		criteria = 
		[
			[ConceptWorldC6M1_PostWedding02a],
			[IsCliffe],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_PostWedding02aGambler,
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn05aCliffe",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn05a],
			[IsCliffe],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_WeddingWarn05aGambler,
			},
		],
	},
	{
		name = "C6M2_OpenGate1Cliffe",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2_OpenGate1aCliffe",
		criteria = 
		[
			[ConceptC6M2_OpenGate1a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate1aGambler,
			},
		],
	},
	{
		name = "C6M2_OpenGate2Cliffe",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Said:OpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2SafeRoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsCliffe],
			[isC6m2_bedlam],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidC6M2SafeRoom],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2SafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo01Cliffe",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCliffe],
			[IsFrancisIntroActor],
			[FrancisGroup5],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo01Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo01bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo01b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo01bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo02Cliffe",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCliffe],
			[IsFrancisIntroActor],
			[FrancisGroup1],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo02bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo02b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo02bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo06aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo06a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo06aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo07aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo07a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo07aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08Cliffe",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCliffe],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo08a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo08c],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08cGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08eCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo08e],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08eGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo09bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo09b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo09bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo10Cliffe",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCliffe],
			[IsZoeyIntroActor],
			[ZoeyGroup2],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo10bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo10b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo10dCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo10d],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10dGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo11bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo11b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo11bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo12aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12c],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo12cGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13aCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13aGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13c],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13cGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14fCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14f],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo14fGambler,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo15c],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo15cGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.749 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M2_AfterGate201aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_AfterGate201a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_AfterGate201aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_FinalWater01aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_FinalWater01a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_FinalWater01aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer101cCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101c],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer101cGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer102bCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer102b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer102bGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer201aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer201a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer201aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer202aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer202a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer202aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_InSewerLadder101aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_InSewerLadder101a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewerLadder101aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk101aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk101a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_OnTourWalk101aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk102aCliffe",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk102a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_OnTourWalk102aGambler,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo01b_Cliffe",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo01b_],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_Tattoo01b_Gambler,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo03a_Cliffe",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo03a_],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_Tattoo03a_Gambler,
			},
		],
	},
	{
		name = "C6M3_BridgeDownCliffe",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_BridgeDownGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_BridgeGettoCarCliffe",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCliffe],
			[IsNotSaidGetToCar],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_BridgeGettoCarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorCliffe",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsCliffe],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_elevatorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3Elevator", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorFrancisCliffe",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsCliffe],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
			[IsFrancisIntroActor],
			[IsNotVersus],
			[FrancisGroup5],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_elevatorFrancisGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3Elevator", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_GivenItemBikerCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorBiker],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_GivenItemBikerGambler,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirlCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCliffe],
			[IsDonorTeenGirl],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_GivenItemTeenGirlGambler,
			},
		],
	},
	{
		name = "C6M3SafeRoomCliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsCliffe],
			[isC6m3_port],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidC6M3SafeRoom],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3SafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02Cliffe",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsCliffe],
			[IsNotSaidC6M3SafeRoom2],
			[IsFrancisIntroActor],
			[FrancisGroup5],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02b],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02dCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02d],
			[IsCliffe],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02dGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03b],
			[IsCliffe],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo03bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03dCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03d],
			[IsCliffe],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo03dGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04cCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04c],
			[IsCliffe],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo04cGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05Cliffe",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsCliffe],
			[IsNotSaidC6M3SafeRoom2],
			[IsZoeyIntroActor],
			[ZoeyGroup1],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05bCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo05b],
			[IsCliffe],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05bGambler,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05dCliffe",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo05d],
			[IsCliffe],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05dGambler,
			},
		],
	},
	{
		name = "IncapBounceCliffe",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsCliffe],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.IncapBounceGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidInCapBounce", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_CansDoneCliffe",
		criteria = 
		[
			[Conceptc6m3escapeready],
			[IsCliffe],
			[IsC6M3_Port],
			[IsNotSaidc6m3escapeready],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_CansDoneGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc6m3escapeready", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedFallenCliffe",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedFallenGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWitchChasingC6M1Cliffe",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsCliffe],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidCliffeWitchChasing],
			[IsSaidCliffeWitchAttacking],
			[isc6m1_riverbank],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchChasingC6M1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCliffeWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkCliffe", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerRemarkremark_MidnightRidersBusCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkremark_MidnightRidersBusGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AcrossHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AlleyBelowGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AlleyIntoBuildingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_InAptsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_InAptsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntotheparkCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_Intothepark],
			[IsNotSaidWorldC6M1_Intothepark],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_IntotheparkGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_Intothepark", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoThePark2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_IntoThePark2],
			[IsNotSaidWorldC6M1_IntoThePark2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_IntoThePark2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_IntoThePark2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_IntoTheStoreGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_IntoTheStore", value = 1, duration = 0.0 },
			c2 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleyCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_SafeRoomAlleyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_ThroughBarCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_ThroughBarGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpTheStairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpTheStairs2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.596 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarn1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
			c2 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarn2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
			c2 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn3Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarn3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
			c2 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnAngelCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsMechanicNear800Weight0],
			[IsZoeyIntroActor],
			[ZoeyGroup2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnAngelGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnEllisCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsMechanicNear800Weight0],
			[IsZoeyIntroActor],
			[ZoeyGroup1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnEllisGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AcrossPlankCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear250],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AcrossPlankGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AfterGate1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AfterGate2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownHereCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_DownHereGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_DownIntoBuildingGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalLadderCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalLadderGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterGoGoGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InJazzClubCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1000],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InJazzClubGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewer1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_InSewer2],
			[IsNotSaidWorldC6M2_InSewer2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsSaidWorldC6M2_InSewer1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewer2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewerLadder1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewerLadder1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_IntoConstructionGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_IntoPoolHallGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JukeBoxCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_JukeBoxGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JumpDownCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_JumpDownGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OnTourWalk1],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OnTourWalk3],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate1Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2DownGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IntensityOver75],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2DownIntenseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_PostGate1xCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_PostGate1xGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_SafeRoomCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_SafeRoom],
			[IsNotSaidWorldC6M2_SafeRoom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear800],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_SafeRoomGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_SuitcaseCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Suitcase],
			[IsNotSaidWorldC6M2_Suitcase],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_SuitcaseGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Suitcase", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TattooCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TattooZoeyCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsMechanicNear800Weight0],
			[IsZoeyIntroActor],
			[ZoeyGroup1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooZoeyGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TattooZoey2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsMechanicNear800Weight0],
			[IsZoeyIntroActor],
			[ZoeyGroup2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooZoey2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TourEntranceCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TourEntranceGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpCatWalkGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairsCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpStairsGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Cliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpStairs2Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_BridgeRunCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_BridgeRunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_BridgeRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_ByBridgeCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsSaidFinalVehicleArrived],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_ByBridgeGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldFootLockerCliffe",
		criteria = 
		[
			[ConceptRemark],
			[IsCliffe],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldFootLockerGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_PourFinishedCliffe",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_PourFinishedGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorNearFinaleC6M3Cliffe",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCliffe],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotIncapacitated],
			[IsWorldTalkCliffe],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleC6M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGunCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpSMG],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[CliffeNotPickedUpItem],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsJustSaidWorldC6M1_IntoTheStore],
			[FrancisGroup5],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CliffePickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupGolfCLubCliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[CliffeNotPickedUpItem],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupGolfCLubGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CliffePickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupM60Cliffe",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCliffe],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[CliffeNotPickedUpItem],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupM60Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "CliffePickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "HistoricTour01aCliffe",
		criteria = 
		[
			[ConceptHistoricTour01a],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.HistoricTour01aGambler,
			},
		],
	},
	{
		name = "WeddingWitchDead03Cliffe",
		criteria = 
		[
			[ConceptWeddingWitchDead03],
			[IsCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WeddingWitchDead03Gambler,
			},
		],
	},
	{
		name = "Player_LostCallC6M3Cliffe",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCliffe],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_LostCallC6M3Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGolfClubCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGolfClubGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGolfClubAutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGolfClubAutoGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedM60Cliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedM60Gambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedM60AutoCliffe",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedM60AutoGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M2InsideGunShopCliffe",
		criteria = 
		[
			[ConceptC1M2InsideGunShop],
			[PanicEventCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2InsideGunShopGambler,
			},
		],
	},
	{
		name = "C1M3AlarmOffOratorCliffe",
		criteria = 
		[
			[ConceptC1M3AlarmOff],
			[PanicEventCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3AlarmOffOratorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M3BrokeWindowOratorCliffe",
		criteria = 
		[
			[ConceptC1M3BrokeWindow],
			[PanicEventCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3BrokeWindowOratorGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 1, duration = 0.0 },
			c2 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c3 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "HitCraneButtonCliffe",
		criteria = 
		[
			[ConceptAirport02CraneStarted],
			[PanicEventCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.HitCraneButtonGambler,
			},
		],
	},
	{
		name = "Airport03FireStartedCliffe",
		criteria = 
		[
			[ConceptAirport03FireStarted],
			[PanicEventCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Airport03FireStartedGambler,
			},
		],
	},
	{
		name = "FinaleSceneTriggerFrancisCliffe",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsCliffe],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsFrancisIntroActor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.FinaleSceneTriggerFrancisGambler,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 27.0 },
			c3 = { context = "SaidEllisBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndEllisBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
];

rr_ProcessRules(jess_cliffe_rules);
