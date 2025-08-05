local trevor_philips_rules = 
[
	{
		name = "C3M1CallFerryTrevor",
		criteria = 
		[
			[ConceptC3M1CallFerry],
			[PanicEventTrevor],
			[IsNotSaidC3M1CallFerry2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M1CallFerryMechanic,
				followup = RThenAny("C3M1CallFerry2", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1CallFerry2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M2OpenDoorTrevor",
		criteria = 
		[
			[ConceptC3M2OpenDoor],
			[PanicEventTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M2OpenDoorMechanic,
				followup = RThen("Trevor", "C3M2OpenDoor2", { TrevorActor = 1 }, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2OpenDoor", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.157 },
			c3 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c4 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c5m4floatstartTrevor",
		criteria = 
		[
			[Conceptc5m4floatstart],
			[PanicEventTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c5m4floatstartMechanic,
				followup = RThen("trevor", "c5m4floatstart2", null, 0.0),
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
		name = "C1M1InSmokeTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsSaidC1M1InSmoke],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M1InSmokeMechanic,
				followup = RThenAny("C1M1Cough", -1.399),
			},
		],
	},

	{
		name = "C1M3AlarmOffTrevor",
		criteria = 
		[
			[ConceptC1M3AlarmOff2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M3AlarmOffMechanic,
				followup = RThenAny("C1M3AlarmOffa", 0.5),
			},
		],
	},

	{
		name = "C1M3AlarmActiveTrevor",
		criteria = 
		[
			[ConceptC1M3AlarmActive],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M3AlarmActiveMechanic,
			},
		],
	},

	{
		name = "C4M3SaferoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.C4M3SaferoomMechanic,
				followup = RThenAny("_c4m3_startsafe02", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerNiceShotFrancisC6M3Trevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotFrancisC6M3Mechanic,
			},
		],
	},

	{
		name = "PlayerNiceShotFrancisTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsBiker],
			[ChanceToFire30Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNiceShotFrancisMechanic,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotLouisC6M3Trevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotLouisC6M3Mechanic,
			},
		],
	},

	{
		name = "PlayerNiceShotLouisTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsManager],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNiceShotLouisMechanic,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotZoeyC6M3Trevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsFrancisIntroActor],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotZoeyC6M3Mechanic,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotZoeyC6M3IntroTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsZoeyIntroActor],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotZoeyC6M3IntroMechanic,
			},
		],
	},

	{
		name = "PlayerNiceShotZoeyTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsTeenGirl],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotZoeyC6M3Mechanic,
			},
		],
	},

	{
		name = "PlayerNiceShotTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[ChanceToFire30Percent],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNiceShotMechanic,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[SubjectIsNotProducer],
			[SubjectIsNotGambler],
			[SubjectIsNotCoach],
			[IsTalk],
			[IsTalkTrevor],
			[ChanceToFire30Percent],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNiceShotMechanic,
			},
		],
	},

	{
		name = "PlayerNiceShotCoachTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[ChanceToFire10Percent],
			[IsWorldTalkTrevor],
			[SubjectIsCoach],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNiceShotCoachMechanic,
			},
		],
	},

	{
		name = "PlayerNiceShotGamblerTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[ChanceToFire10Percent],
			[IsWorldTalkTrevor],
			[SubjectIsGambler],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNiceShotGamblerMechanic,
			},
		],
	},

	{
		name = "PlayerNiceShotProducerTrevor",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[ChanceToFire10Percent],
			[IsWorldTalkTrevor],
			[SubjectIsProducer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNiceShotProducerMechanic,
			},
		],
	},

	{
		name = "SurvivorMournCoachTrevor",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsTrevor],
			[IsDeadCoach],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorMournCoachMechanic,
			},
		],
	},

	{
		name = "SurvivorMournCoachC1Trevor",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsTrevor],
			[IsDeadCoach],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorMournCoachC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorMournGamblerTrevor",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsTrevor],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorMournGamblerMechanic,
			},
		],
	},

	{
		name = "SurvivorMournGamblerC1Trevor",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsTrevor],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorMournGamblerC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorMournProducerTrevor",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsTrevor],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorMournProducerMechanic,
			},
		],
	},

	{
		name = "SurvivorMournProducerC1Trevor",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsTrevor],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorMournProducerC1Mechanic,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHelloStartAllAliveTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHelloStartAllAliveMechanic,
				followup = RThenAny("_C1M1_ElevatorHello01c", -8.677),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHelloStart3AliveTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithOnlyThree],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHelloStart3AliveMechanic,
				followup = RThenAny("_C1M1_ElevatorHello3AliveExtra1", -3.112),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHelloStart2AliveTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithTwo],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHelloStart2AliveMechanic,
				followup = RThenAny("_C1M1_ElevatorHello2AliveName2", -2.926),
			},
		],
	},

	{
		name = "C3M1FerryInTransitTrevor",
		criteria = 
		[
			[ConceptC3M1FerryInTransit],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidC3M1FerryInTransit],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M1FerryInTransitMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryInTransit", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Playerc1m1_enter_elevatorTrevor",
		criteria = 
		[
			[Conceptc1m1_enter_elevator],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidc1m1_enter_elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Playerc1m1_enter_elevatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_enter_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Playerc1m1_elevator_pushbuttonTrevor",
		criteria = 
		[
			[Conceptc1m1_elevator_pushbutton],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidc1m1_elevator_pushbutton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Playerc1m1_elevator_pushbuttonMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_elevator_pushbutton", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M2PreAlarmDoorTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2PreStoreAlarm],
			[IsNotSaidWorldC1M2PreStoreAlarm],
			[IsNotSaidC1M2AlarmSetoff],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M2PreAlarmDoorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2PreStoreAlarm", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M2AlarmDoor2Trevor",
		criteria = 
		[
			[ConceptC1M2AlarmDoor2],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2AlarmDoor2Mechanic,
				followup = RThen("orator", "C1M2StoreAlarm", null, 0.3),
			},
		],
	},

	{
		name = "PlayerRemarkC1M2PostAlarmDoorTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2StoreAlarm],
			[IsSaidC1M2AlarmSetoff],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_SaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M2PostAlarmDoorMechanic,
				followup = RThen("orator", "C1M2WhitakerErrandInProgress", null, 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "C1M2AlarmSetOff", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC1M2GrabbingColaTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_NotSaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC1M2GrabbingColaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2GrabbingCola2", value = 1, duration = 5.0 },
			c2 = { context = "_auto_SaidC1M2GrabbedCola", value = 1, duration = 0.0 },
			c3 = { context = "Talk", value = 1, duration = 3.092 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC1M2GrabbingCola2Trevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_SaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC1M2GrabbingCola2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2GrabbingCola2", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 3.092 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC1M2FirstOutsideResponseTrevor",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse],
			[IsTrevor],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC1M2FirstOutsideResponseMechanic,
				followup = RThen("orator", "Whitaker.Nags", null, 10.0),
			},
		],
	},

	{
		name = "C1M2GunRoomDoorResponseGratitudeTrevor",
		criteria = 
		[
			[ConceptC1M2GunRoomDoorResponseGratitude],
			[IsTrevor],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2GunRoomDoorResponseGratitudeMechanic,
			},
		],
	},

	{
		name = "PlayerC1M2InsideGunShop2Trevor",
		criteria = 
		[
			[ConceptC1M2InsideGunShop2],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidC1M2InsideGunShop],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC1M2InsideGunShop2Mechanic,
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
		name = "PlayerC1M2InsideGunShop3Trevor",
		criteria = 
		[
			[ConceptC1M2InsideGunShop3],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC1M2InsideGunShop3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC1M2InsideGunShopPickupResponseTrevor",
		criteria = 
		[
			[ConceptC1M2InsideGunShopPickupResponse],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC1M2InsideGunShopPickupResponseMechanic,
			},
		],
	},

	{
		name = "PlayerC1M2InsideGunShopPickupResponse2Trevor",
		criteria = 
		[
			[ConceptC1M2InsideGunShopPickupResponse2],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC1M2InsideGunShopPickupResponse2Mechanic,
			},
		],
	},

	{
		name = "PlayerC1M2GunShopKillTrevor",
		criteria = 
		[
			[ConceptC1M2Gunshopkill],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC1M2GunShopKillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 7.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC3M1CallFerry2Trevor",
		criteria = 
		[
			[ConceptC3M1CallFerry2],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsTrevorActor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC3M1CallFerry2Mechanic,
				followup = RThenAny("C3M1FerryInTransit", 25.0),
			},
		],
	},

	{
		name = "PlayerC3M1FerryLandedIdleTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[C3M1Ferry],
			[IsNotIncapacitated],
			[NotInCombat],
			[IsNotAlone],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC3M1FerryLandedIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC3M1FerryLaunched2aTrevor",
		criteria = 
		[
			[ConceptC3M1FerryLaunched2],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC3M1FerryLaunched2aMechanic,
			},
		],
	},

	{
		name = "PlayerC3M2ComingHomeTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsSaidC3M2Village1],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC3M2ComingHomeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C3M2BloodFarmersTrevor",
		criteria = 
		[
			[Concept_C3M2BloodFarmers],
			[IsTrevor],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C3M2BloodFarmersMechanic,
			},
		],
	},

	{
		name = "PlayerC3M2OpenDoor2Trevor",
		criteria = 
		[
			[ConceptC3M2OpenDoor2],
			[IsTrevor],
			[IsTalkTrevor],
			[IsTrevorActor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC3M2OpenDoor2Mechanic,
			},
		],
	},

	{
		name = "Playerc5m4floatendTrevor",
		criteria = 
		[
			[Conceptc5m4floatend2],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Playerc5m4floatendMechanic,
			},
		],
	},

	{
		name = "Playerc5m4floatstart2Trevor",
		criteria = 
		[
			[Conceptc5m4floatstart2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Playerc5m4floatstart2Mechanic,
			},
		],
	},

	{
		name = "PlayerintroC1M1Trevor",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsTrevor],
			[IsNotAlone],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerintroC1M1Mechanic,
				followup = RThenAny("_introc1m1", 4.0),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerintroC1M1AloneTrevor",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsTrevor],
			[IsAlone],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerintroC1M1AloneMechanic,
				followup = RThen("self", "_introc1m1", null, 4.0),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WhitakerC1M2DeliverColaTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.WhitakerC1M2DeliverColaMechanic,
				followup = RThen("orator", "whitakerputcola", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "C1M2AlarmSetOff", value = 3, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerPlayerUsingColaBottlesTrevor",
		criteria = 
		[
			[ConceptPlayerUsingColaBottles],
			[IsTrevor],
			[IsNotSaidPlayerUsingColaBottles],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerUsingColaBottles", value = 1, duration = 20.0 },
			c2 = { context = "WhoPutCola", value = "Trevor", duration = 35 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRelaxedSighTrevor",
		criteria = 
		[
			[ConceptRelaxedSigh],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRelaxedSighMechanic,
			},
		],
	},

	{
		name = "PlayerStayTogetherInsideReponseTrevor",
		criteria = 
		[
			[ConceptStayTogetherInsideReponse],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidStayTogetherInsideReponse],
			[IsNotHealthySlow],
			[IsNotInSafeSpot],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerStayTogetherInsideReponseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidStayTogetherInsideReponse", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerUseAdrenalineTrevor",
		criteria = 
		[
			[ConceptUseAdrenaline],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerUseAdrenalineMechanic,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FeedGator2Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FeedGator2],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IssuerClose],
			[ChanceToFire30Percent],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldC3M1FeedGator2Mechanic,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingA01Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingA01],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldC3M1FerryCrossingA01Mechanic,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingB01Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingB01],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldC3M1FerryCrossingB01Mechanic,
				followup = RThen("producer", "WorldC3M1FerryCrossingB02", null, -3.058),
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingD03Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingD03],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldC3M1FerryCrossingD03Mechanic,
				followup = RThen("producer", "WorldC3M1FerryCrossingD04", null, -1.705),
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingE02Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingE02],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldC3M1FerryCrossingE02Mechanic,
				followup = RThenAny("WorldC3M1FerryCrossingE03", -5.643),
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingE04Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingE04],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldC3M1FerryCrossingE04Mechanic,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingG02Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingG02],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldC3M1FerryCrossingG02Mechanic,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingI02Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingI02],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldC3M1FerryCrossingI02Mechanic,
				followup = RThen("coach", "WorldC3M1FerryCrossingI03", null, -3.258),
			},
		],
	},

	{
		name = "WorldC3M1FerryCrossingM2Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingM2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC3M1FerryCrossingM2Mechanic,
				followup = RThen("gambler", "WorldC3M1FerryCrossingM3", null, 0.1),
			},
		],
	},

	{
		name = "WorldC3M1FerryCrossingM4Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingM4],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC3M1FerryCrossingM4Mechanic,
				followup = RThen("coach", "WorldC3M1FerryCrossingM5", null, 0.1),
			},
		],
	},

	{
		name = "PlayerWorldIntroC31Trevor",
		criteria = 
		[
			[ConceptWorldIntroC31],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldIntroC31Mechanic,
				followup = RThen("gambler", "WorldIntroC31a1", null, -1.96),
			},
		],
	},

	{
		name = "ThanksGotItemTrevor",
		criteria = 
		[
			[IsAwardConcept],
			[IsSharingSubject],
			[IsNotCoughing],
			[SubjectIsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
	},

	{
		name = "RescuedSurvivorTrevor",
		criteria = 
		[
			[IsAwardConcept],
			[IsRescuer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.RescuedSurvivorMechanic,
			},
		],
	},

	{
		name = "PlayerGivenItemTrevor",
		criteria = 
		[
			[ConceptPlayerGivenItem],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGivenItemMechanic,
			},
		],
	},

	{
		name = "ItemDonorProducerTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ItemDonorProducerMechanic,
				followup = RThen("producer", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorCoachTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorCoach],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ItemDonorCoachMechanic,
				followup = RThen("Coach", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorGamblerTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorGambler],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ItemDonorGamblerMechanic,
				followup = RThen("gambler", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorBikerTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorBiker],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ItemDonorBikerMechanic,
				followup = RThen("gambler", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorTeenGirlTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorTeenGirl],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ItemDonorTeenGirlMechanic,
				followup = RThen("teengirl", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorManagerTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorManager],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ItemDonorManagerMechanic,
				followup = RThen("manager", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorNamVetTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorNamVet],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ItemDonorNamVetMechanic,
				followup = RThen("namvet", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ReviveMeInterruptedMinorTrevor",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsTrevor],
			[IsIncappedStarted],
			[IsIncappedStarted2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveMeInterruptedMinorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ReviveMeInterruptedMajorTrevor",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsTrevor],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveMeInterruptedMajorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ReviveMeInterruptedCriticalTrevor",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsTrevor],
			[IsIncappedLethargic],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveMeInterruptedCriticalMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ReviveThanksTrevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksCoachTrevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksCoachMechanic,
				followup = RThen("Subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksCoachC1Trevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksCoachC1Mechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksGamblerTrevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsGambler],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksGamblerMechanic,
				followup = RThen("Subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksGamblerC1Trevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsGambler],
			[ChanceToFire30Percent],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksProducerTrevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksProducerMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksBikerTrevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsBiker],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksBikerMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksManagerTrevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsManager],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksManagerMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksNamVetTrevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsNamVet],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksManagerMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksTeenGirlTrevor",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsTeenGirl],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ReviveThanksTeenGirlMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "BotPlayer_YourWelcomeTrevor",
		criteria = 
		[
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.BotPlayer_YourWelcomeMechanic,
			},
		],
	},

	{
		name = "BotReassureComingTrevor",
		criteria = 
		[
			[ConceptSurvivorBotReassureComing],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.BotReassureComingMechanic,
			},
		],
	},

	{
		name = "BotYesReadyTrevor",
		criteria = 
		[
			[ConceptSurvivorBotYesReady],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.BotReassureComingMechanic,
			},
		],
	},

	{
		name = "BotReassureNearbyTrevor",
		criteria = 
		[
			[ConceptSurvivorBotReassureNearby],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.BotReassureNearbyMechanic,
			},
		],
	},

	{
		name = "C1M2LeavingSafeRoomTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsTrevor],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m2_streets],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2LeavingSafeRoomMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.547 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M2SafeRooma2Trevor",
		criteria = 
		[
			[ConceptC1M2SafeRooma2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2SafeRooma2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C1M2SafeRoomc1Trevor",
		criteria = 
		[
			[ConceptC1M2SafeRoomc1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2SafeRoomc1Mechanic,
				followup = RThen("gambler", "C1M2SafeRoomc2", null, -3.765),
			},
		],
	},

	{
		name = "C1M2TankerAttackTrevor",
		criteria = 
		[
			[ConceptC1M2TankerAttack2],
			[IsTrevor],
			[WhoPutColaTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2TankerAttackMechanic,
				followup = RThen("orator", "C1M2GoodLuckGettingToTheMall", null, 3.0),
			},
		],
	},

	{
		name = "c1m4escapeTrevor",
		criteria = 
		[
			[Conceptc1m4escape],
			[IsTrevor],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c1m4escapeMechanic,
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
		name = "c1m4escapeCheckSuccessTrevor",
		criteria = 
		[
			[Conceptc1m4escapeTrevorCheck],
			[IsTrevor],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c1m4escapeCheckSuccessMechanic,
				followup = RThen("self", "c1m4escapeTrevorCheckSuccess", { from = "Trevor" }, 0.0),
			},
		],
	},

	{
		name = "c1m4escapeCheckFailTrevor",
		criteria = 
		[
			[Conceptc1m4escapeTrevorCheck],
			[IsTrevor],
			[IsIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c1m4escapeCheckFailMechanic,
				followup = RThen("self", "c1m4escapeTrevorCheckFail", { from = "Trevor" }, 0.0),
			},
		],
	},

	{
		name = "C1M4GasPourTrevor",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4GasPourMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "C1M4PlayerGetToRescueVehicleTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4PlayerGetToRescueVehicleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c1m4startelevatorTrevor",
		criteria = 
		[
			[Conceptc1m4startelevator],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c1m4startelevatorMechanic,
				followup = RThen("trevor", "_c1m4startelevator2", null, -4.816),
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
		name = "C6M3GasPourTrevor",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[isC6M3_Port],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3GasPourMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "FinaleStartC1M4Trevor",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsTrevor],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[ismap_c1m4_atrium],
			[IsNotScavenge],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.FinaleStartC1M4Mechanic,
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
		name = "GasPourDoneC1M4Trevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[ScoreDoneSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPourDoneC1M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M2CarouselIdleTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[ismap_c2m2],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M2CarouselIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 13.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3RubbleNagIdleTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTeamNearCoaster],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[_auto_IsCoasterExpo],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M3RubbleNagIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.903 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c3 = { context = "_auto_TimerLockTrevor", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M2SaferoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M2SaferoomMechanic,
				followup = RThenAny("_C2M2_Riders01", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_Riders02Trevor",
		criteria = 
		[
			[Concept_C2M2_Riders02],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Riders02Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_C2M2_Riders03Trevor",
		criteria = 
		[
			[Concept_C2M2_Riders03],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Riders03Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_C2M2_Riders04Trevor",
		criteria = 
		[
			[Concept_C2M2_Riders04],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Riders04Mechanic,
				followup = RThen("coach", "_C2M2_Riders04", null, 0.1),
			},
		],
	},

	{
		name = "_C2M2_Riders06Trevor",
		criteria = 
		[
			[Concept_C2M2_Riders06],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Riders06Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_C2M2_Riders07Trevor",
		criteria = 
		[
			[Concept_C2M2_Riders07],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Riders07Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C2M1Intro_400Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_400],
			[IsTrevor],
			[IsSaidLeavingSafeArea],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_400Mechanic,
				followup = RThen("trevor", "C2M1Intro_405", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.363 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro_401Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_401],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_401Mechanic,
				followup = RThen("trevor", "C2M1Intro_402", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.772 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro_402Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_402],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_402Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.79 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro_403Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_403],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_403Mechanic,
				followup = RThen("trevor", "C2M1Intro_404", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.198 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro_404Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_404],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_404Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.506 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro_405Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_405],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_405Mechanic,
				followup = RThen("trevor", "C2M1Intro_406", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.411 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro_406Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_406],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_406Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.506 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro_407Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_407],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_407Mechanic,
				followup = RThen("trevor", "C2M1Intro_408", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.846 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro_408Trevor",
		criteria = 
		[
			[ConceptC2M1Intro_408],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro_408Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.098 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c2m3_DownHoleTrevor",
		criteria = 
		[
			[Conceptc2m3downhole],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m3_DownHoleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DownHole", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c2m3CoasterEndTrevor",
		criteria = 
		[
			[Conceptc2m3CoasterEnd],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m3CoasterEndMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3CoasterRunGoTrevor",
		criteria = 
		[
			[ConceptC2M3CoasterRunGo],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M3CoasterRunGoMechanic,
			},
		],
	},

	{
		name = "C2M3CoasterStartTrevor",
		criteria = 
		[
			[Conceptc2m3CoasterStart],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M3CoasterStartMechanic,
				followup = RThen("trevor", "_c2m3_howcool", null, 1.0),
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
		name = "C2M3SaferoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M3SaferoomMechanic,
				followup = RThen("producer", "C2M3SafeIntro009", null, 0.2),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3SafeIntro006Trevor",
		criteria = 
		[
			[ConceptC2M3SafeIntro006],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M3SafeIntro006Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C2M3SafeIntro010Trevor",
		criteria = 
		[
			[ConceptC2M3SafeIntro010],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M3SafeIntro010Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "c2m3SeeChopperTrevor",
		criteria = 
		[
			[Conceptc2m3SeeChopper],
			[IsTrevor],
			[IsTalk],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m3SeeChopperMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_OutOfTunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c2m3SpotIncendiaryTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsIncendiary],
			[IsTrevor],
			[IsTalk],
			[NotInCombat],
			[Ismap_c2m3],
			[_auto_NotOutOfTunnel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m3SpotIncendiaryMechanic,
			},
		],
	},

	{
		name = "c2m3SpotKatanaTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsKatana],
			[IsTrevor],
			[IsTalk],
			[NotInCombat],
			[Ismap_c2m3],
			[_auto_NotOutOfTunnel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m3SpotKatanaMechanic,
			},
		],
	},

	{
		name = "C2M4ButtonPressedTrevor",
		criteria = 
		[
			[ConceptC2M4ButtonPressed],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M4ButtonPressedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ButtonPressed", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M4Gate004Trevor",
		criteria = 
		[
			[ConceptC2M4Gate004],
			[IsTrevor],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M4Gate004Mechanic,
				followup = RThen("coach", "C2M4Gate005", null, 0.01),
			},
		],
	},

	{
		name = "C2M4Gate000Trevor",
		criteria = 
		[
			[ConceptC2M4Gate000],
			[IsTrevor],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGate],
			[_auto_NotNearGateNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M4Gate000Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.116 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockTrevor", value = 1, duration = 23.0 },
			c4 = { context = "_auto_NearGateNag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M4GateIdleTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGateNag],
			[_auto_IsNearGate],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M4GateIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.645 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockTrevor", value = 1, duration = 23.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M4GateOpenCalloutTrevor",
		criteria = 
		[
			[ConceptC2M4GateOpenCallout],
			[IsTrevor],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M4GateOpenCalloutMechanic,
				followup = RThenAny("_C2M4_GateOpen001", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.878 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c2m4SeeChopperTrevor",
		criteria = 
		[
			[Conceptc2m4SeeChopper],
			[IsTrevor],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m4SeeChopperMechanic,
			},
		],
	},

	{
		name = "C2M5_Button2YellTrevor",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsTrevor],
			[NotCoachMadAtRiders],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5_Button2YellMechanic,
			},
		],
	},

	{
		name = "C2M5_Button2YellCoachMadTrevor",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsTrevor],
			[CoachMadAtRiders],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5_Button2YellMechanic,
			},
		],
	},

	{
		name = "C2M5_ChoppercomingTrevor",
		criteria = 
		[
			[ConceptC2M5_Choppercoming],
			[IsTrevor],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5_ChoppercomingMechanic,
				followup = RThenAny("C2M5_PlanWorked", 0.01),
			},
		],
	},

	{
		name = "c2m5_intro003Trevor",
		criteria = 
		[
			[Conceptc2m5_intro003],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro003Mechanic,
				followup = RThen("self", "c2m5_intro009", null, 0.4),
			},
		],
	},

	{
		name = "c2m5_intro005Trevor",
		criteria = 
		[
			[Conceptc2m5_intro005],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro005Mechanic,
				followup = RThenAny("c2m5_intro006", 0.1),
			},
		],
	},

	{
		name = "c2m5_intro008Trevor",
		criteria = 
		[
			[Conceptc2m5_intro008],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro008Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "c2m5_intro009Trevor",
		criteria = 
		[
			[Conceptc2m5_intro009],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro009Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "c2m5_intro011Trevor",
		criteria = 
		[
			[Conceptc2m5_intro011],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro011Mechanic,
				followup = RThenAny("c2m5_intro012", 0.1),
			},
		],
	},

	{
		name = "c2m5_intro012Trevor",
		criteria = 
		[
			[Conceptc2m5_intro012],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "c2m5_intro015Trevor",
		criteria = 
		[
			[Conceptc2m5_intro015],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "c2m5_intro016Trevor",
		criteria = 
		[
			[Conceptc2m5_intro016],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "c2m5_intro020Trevor",
		criteria = 
		[
			[Conceptc2m5_intro020],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "c2m5_intro025Trevor",
		criteria = 
		[
			[Conceptc2m5_intro025],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "c2m5_intro019Trevor",
		criteria = 
		[
			[Conceptc2m5_intro019],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro019Mechanic,
				followup = RThenAny("c2m5_intro020", 0.1),
			},
		],
	},

	{
		name = "c2m5_intro024Trevor",
		criteria = 
		[
			[Conceptc2m5_intro024],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c2m5_intro024Mechanic,
				followup = RThenAny("c2m5_intro025", 0.01),
			},
		],
	},

	{
		name = "C2M5_PlanWorkedTrevor",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsTrevor],
			[NotCoachMadAtRiders],
			[IsNotIncapacitated],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5_PlanWorkedMechanic,
			},
		],
	},

	{
		name = "C2M5_PlanWorkedCoachMadTrevor",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsTrevor],
			[CoachMadAtRiders],
			[IsNotIncapacitated],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5_PlanWorkedMechanic,
			},
		],
	},

	{
		name = "C2M5Button1Trevor",
		criteria = 
		[
			[ConceptC2M5Button1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5Button1Mechanic,
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
		name = "C2M5ChopperNagTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5ChopperNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5InChopperNagTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5InChopperNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5InArenaNagTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[NotInCombat],
			[Ismap_c2m5],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[_auto_IsC2M5InArena],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5InArenaNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 34.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5SingingTrevor",
		criteria = 
		[
			[ConceptC2M5Microphone],
			[IsTrevor],
			[NotInCombat],
			[Ismap_c2m5],
			[TimeSinceGroupInCombat02],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
			[_auto_IsButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5SingingMechanic,
			},
		],
	},

	{
		name = "SurvivorReloadingC2M5Trevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[Ismap_c2m5],
			[IsRocking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorReloadingC2M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorReloadingC2M5RockedOutTrevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[IsRocking],
			[Ismap_c2m5],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
	},

	{
		name = "SurvivorVocalizeLookOutC2M5Trevor",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[Ismap_c2m5],
			[IsRocking],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorVocalizeLookOutC2M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorVocalizeLookOutC2M5RockedOutTrevor",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[Ismap_c2m5],
			[IsRocking],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
	},

	{
		name = "C2M5LeaveSafeTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsTrevor],
			[ismap_c2m5],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5LeaveSafeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
			c2 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5ReloadingTankTrevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkTrevor],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5ReloadingTankMechanic,
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
		name = "PlayerKillTankConfirmationC2M5Trevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillTankConfirmationC2M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5ThankYouTrevor",
		criteria = 
		[
			[ConceptC2M5Microphone],
			[IsTrevor],
			[NotInCombat],
			[Ismap_c2m5],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5ThankYouMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.287 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M1FerryEnd2Trevor",
		criteria = 
		[
			[ConceptC3M1FerryEnd2],
			[IsTrevor],
			[IsNotSaidC3M1FerryEnd],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M1FerryEnd2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryEnd", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WorldC3M1FerryCrossingRochelleTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsProducerAlive],
			[ChanceToFire25Percent],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 4
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC3M1FerryCrossingRochelleMechanic,
				followup = RThen("producer", "WorldC3M1FerryCrossingJ2", null, -2.908),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryCrossing", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WorldC3M1FerryCrossingJ3Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingJ3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC3M1FerryCrossingJ3Mechanic,
			},
		],
	},

	{
		name = "WorldC3M1FerryCrossingk3Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingk3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC3M1FerryCrossingk3Mechanic,
			},
		],
	},

	{
		name = "WorldC3M1FerryCrossingL3Trevor",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingL3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC3M1FerryCrossingL3Mechanic,
				followup = RThen("coach", "WorldC3M1FerryCrossingD01", null, 0.1),
			},
		],
	},

	{
		name = "C3M2DisgustTrevor",
		criteria = 
		[
			[Conceptc3m2disgust],
			[IsTrevor],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M2DisgustMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.803 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M2SafeRooma2Trevor",
		criteria = 
		[
			[ConceptC3M2SafeRooma2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M2SafeRooma2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C3M2SafeRoomb3Trevor",
		criteria = 
		[
			[ConceptC3M2SafeRoomb3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M2SafeRoomb3Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "InfoRemc3m2_parachutist1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc3m2_parachutist],
			[IsNotSaidc3m2_parachutist],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 10
		responses = 
		[
			{
				func = Custom_Talker_Trevor.InfoRemc3m2_parachutist1Mechanic,
				followup = RThen("coach", "InfoRemc3m2_parachutist2", null, -1.466),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m2_parachutist", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_InfoRemc3m2_parachutist1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc3m2_parachutist],
			[IsNotSaidc3m2_parachutist],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m2_parachutist", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "InfoRemC3M2Bathtub2Trevor",
		criteria = 
		[
			[ConceptInfoRemC3M2Bathtub2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.InfoRemC3M2Bathtub2Mechanic,
				followup = RThen("producer", "InfoRemC3M2Bathtub3", null, -1.559),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.659 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C3M2Pirogue2Trevor",
		criteria = 
		[
			[Concept_C3M2Pirogue2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C3M2Pirogue2Mechanic,
				followup = RThenAny("_C3M2Pirogue2", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.75 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M3SafeRoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[NotInCombat],
			[Ismapc3m3_shantytown],
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
				func = Custom_Talker_Trevor.C3M3SafeRoomMechanic,
				followup = RThen("coach", "C3M3SafeRoom2b2", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M3SafeRoom2a2Trevor",
		criteria = 
		[
			[ConceptC3M3SafeRoom2a2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M3SafeRoom2a2Mechanic,
				followup = RThen("producer", "C3M3SafeRoom2a3", null, 0.05),
			},
		],
	},

	{
		name = "C3M3SafeRoom2c3Trevor",
		criteria = 
		[
			[ConceptC3M3SafeRoom2c3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M3SafeRoom2c3Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C3M3SafeRoom2d2Trevor",
		criteria = 
		[
			[ConceptC3M3SafeRoom2d2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M3SafeRoom2d2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "InfoRemC3M3Bodies2Trevor",
		criteria = 
		[
			[ConceptInfoRemC3M3Bodies2],
			[IsTrevor],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.InfoRemC3M3Bodies2Mechanic,
				followup = RThen("producer", "InfoRemC3M3Bodies3", null, -1.429),
			},
		],
	},

	{
		name = "InfoRemC3M3LowerGateaTrevor",
		criteria = 
		[
			[ConceptInfoRemC3M3LowerGatea],
			[IsTrevor],
			[IsNotSaidC3M3BridgeButton],
			[IntensityUnder25],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.InfoRemC3M3LowerGateaMechanic,
			},
		],
	},

	{
		name = "InfoRemC3M3Unsanitarya1Trevor",
		criteria = 
		[
			[ConceptInfoRemC3M3Unsanitarya1],
			[IsTrevor],
			[IssuerClose],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.InfoRemC3M3Unsanitarya1Mechanic,
				followup = RThen("gambler", "InfoRemC3M3Unsanitarya2", null, -3.766),
			},
		],
	},

	{
		name = "C3M4BoatNagsTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
			[IsNotCoughing],
			[ismapc3m4_plantation],
			[IsNotIncapacitated],
			[IsRunning],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4BoatNagsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4InBoatNagsTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
			[IsNotCoughing],
			[ismapc3m4_plantation],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4InBoatNagsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4Button1ATrevor",
		criteria = 
		[
			[ConceptC3M4Button1A],
			[IsTrevor],
			[FromIsAnOrator],
			[_auto_IsTalkingTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4Button1AMechanic,
				followup = RThen("orator", "C3M4Button101", null, 0.3),
			},
		],
	},

	{
		name = "C3M4ButtonPickUsUpTrevor",
		criteria = 
		[
			[ConceptC3M4ButtonPickUsUp],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4ButtonPickUsUpMechanic,
				followup = RThen("orator", "C3M4ButtonHowMany", null, 0.3),
			},
		],
	},

	{
		name = "C3M4ButtonNameTrevor",
		criteria = 
		[
			[ConceptC3M4ButtonName],
			[IsTrevor],
			[FromIsAnOrator],
			[_auto_IsTalkingTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4ButtonNameMechanic,
				followup = RThen("orator", "C3M4ButtonHowMany", null, 0.1),
			},
		],
	},

	{
		name = "C3M4HowManyAnswerTrevor",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsTrevor],
			[FromIsAnOrator],
			[IsEveryoneAlive],
			[_auto_IsTalkingTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4HowManyAnswerMechanic,
				followup = RThen("orator", "C3M4Button102", null, 0.1),
			},
		],
	},

	{
		name = "C3M4HowManyAnswerNot4Trevor",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsTrevor],
			[FromIsAnOrator],
			[IsEveryoneNotAlive],
			[_auto_IsTalkingTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4HowManyAnswerNot4Mechanic,
				followup = RThen("orator", "C3M4Button102", null, 0.1),
			},
		],
	},

	{
		name = "C3M4Button201Trevor",
		criteria = 
		[
			[ConceptC3M4Button201],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4Button201Mechanic,
				followup = RThen("orator", "C3M4Button202", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.509 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4Button202Trevor",
		criteria = 
		[
			[ConceptC3M4Button202],
			[FromIsAnOrator],
			[_auto_IsTalkingTrevor],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4Button202Mechanic,
				followup = RThen("orator", "C3M4Button201", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.424 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4Button203Trevor",
		criteria = 
		[
			[ConceptC3M4Button203],
			[IsTrevor],
			[FromIsAnOrator],
			[_auto_IsTalkingTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4Button203Mechanic,
			},
		],
	},

	{
		name = "C3M4ReloadingTankTrevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkTrevor],
			[ismapc3m4_plantation],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4ReloadingTankMechanic,
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
		name = "PlayerKillTankConfirmationC3M4Trevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[ismapc3m4_plantation],
			[IsNotSpeakingWeight0],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillTankConfirmationC3M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4GateBlow01Trevor",
		criteria = 
		[
			[ConceptC3M4GateBlow01],
			[IsTrevor],
			[FromIsAnOrator],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4GateBlow01Mechanic,
				followup = RThen("orator", "C3M4GateBlow02", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4StormBlindIdleTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[_auto_NotTimerLockA],
			[_auto_IsTimerA],
			[_auto_NotC4TrevorInCover],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4StormBlindIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerA", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M2IdleWitchville01Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[NotInCombat],
			[IsWorldTalkTrevor],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsTrevorInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M2IdleWitchville01Mechanic,
				followup = RThenAny("_c4m2_Witchville05", 0.01),
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
		name = "C4M2IdleWitchville02Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsGamblerAlive],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalkTrevor],
			[NotInCombat],
			[IsWorldTalkTrevor],
			[IsGamblerNear400],
			[ChanceToFire10Percent],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsTrevorInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M2IdleWitchville02Mechanic,
				followup = RThen("gambler", "_c4m2_Witchville01", null, 0.01),
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
		name = "C4M2PushedButtonTrevor",
		criteria = 
		[
			[Conceptc4m2_elevator_top_button],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M2PushedButtonMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidActivatedC4M2Elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M5BoatNagsTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M5BoatNagsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M5InBoatNagsTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M5InBoatNagsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M1_intro002Trevor",
		criteria = 
		[
			[ConceptC5M1_intro002],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M1_intro002Mechanic,
				followup = RThen("orator", "C5M1_intro003", null, 0.01),
			},
		],
	},

	{
		name = "C5M1_intro004Trevor",
		criteria = 
		[
			[ConceptC5M1_intro004],
			[IsTrevor],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M1_intro004Mechanic,
				followup = RThen("coach", "C5M1_intro008", null, 0.01),
			},
		],
	},

	{
		name = "C5M1_intro005Trevor",
		criteria = 
		[
			[ConceptC5M1_intro005],
			[IsTrevor],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M1_intro005Mechanic,
				followup = RThen("coach", "C5M1_intro008", null, 0.01),
			},
		],
	},

	{
		name = "C5M1_intro007Trevor",
		criteria = 
		[
			[ConceptC5M1_intro007],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M1_intro007Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C5M1_intro008Trevor",
		criteria = 
		[
			[ConceptC5M1_intro008],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M1_intro008Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C5M1_intro009Trevor",
		criteria = 
		[
			[ConceptC5M1_intro009],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M1_intro009Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C5M1Flyby01Trevor",
		criteria = 
		[
			[ConceptC5M1Flyby01],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M1Flyby01Mechanic,
				followup = RThenAny("C5M1Flyby02", 0.1),
			},
		],
	},

	{
		name = "C5M2AlarmNagTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsMapc5m2_park],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M2AlarmNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC502HorseTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC502Horse],
			[IsNotSaidWorldC502Horse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear600],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[AutoIsNotSurvival],
			[TimeSinceGroupInCombat02],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502HorseMechanic,
				followup = RThen("Gambler", "WorldC502Horse2", null, -2.947),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502Horse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkWorldC502HorseTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC502Horse],
			[IsNotSaidWorldC502Horse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear600],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[AutoIsNotSurvival],
			[TimeSinceGroupInCombat02],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502Horse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC502Horse3Trevor",
		criteria = 
		[
			[ConceptWorldC502Horse3],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[TimeSinceGroupInCombat02],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502Horse3Mechanic,
			},
		],
	},

	{
		name = "C5M3AlarmFieldNagsTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.C5M3AlarmFieldNagsMechanic,
				followup = RThen("self", "C5M3AlarmFieldNags01", null, 0.2),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.125 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3AlarmFieldNags01Trevor",
		criteria = 
		[
			[ConceptC5M3AlarmFieldNags01],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3AlarmFieldNags01Mechanic,
			},
		],
	},

	{
		name = "C5M3AlarmFieldNags03Trevor",
		criteria = 
		[
			[ConceptC5M3AlarmFieldNags03],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3AlarmFieldNags03Mechanic,
			},
		],
	},

	{
		name = "C5M3AlarmFieldNags2Trevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[NotInCombat],
			[IsNotCoughing],
			[IsTalk],
			[ChanceToFire10Percent],
			[IsGamblerAlive],
			[_auto_IsInAlarmField],
			[_auto_NotTimerLockA],
			[_auto_NotAlarmFieldOn],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 300
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3AlarmFieldNags2Mechanic,
				followup = RThen("gambler", "C5M3AlarmFieldNags02", null, 0.2),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.583 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3Bodies01Trevor",
		criteria = 
		[
			[ConceptC5M3Bodies01],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3Bodies01Mechanic,
			},
		],
	},

	{
		name = "C5M3Bodies02Trevor",
		criteria = 
		[
			[ConceptC5M3Bodies02],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3Bodies01Mechanic,
			},
		],
	},

	{
		name = "C5M3FirstInAlarmTrevor",
		criteria = 
		[
			[ConceptC5M3FirstInAlarmField],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3FirstInAlarmMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.675 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3GraveNagsTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
			[IsGamblerAlive],
			[_auto_IsOffHighway],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3GraveNagsMechanic,
				followup = RThen("self", "_C5M3GraveSmells", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.81 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3GraveNagsNOFactTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
			[IsGamblerAlive],
			[IsGamblerNear400],
			[_auto_IsOffHighway],
			[_auto_NotSaidC5M3NewOrleansFact],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3GraveNagsNOFactMechanic,
				followup = RThen("self", "C5M3GraveNags01", null, 0.4),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.81 },
			c2 = { context = "_auto_C5M3NewOrleansFact", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3GraveNags01Trevor",
		criteria = 
		[
			[ConceptC5M3GraveNags01],
			[IsTrevor],
			[NotInCombat],
			[IsNotCoughing],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3GraveNags01Mechanic,
				followup = RThenAny("C5M3GraveNags02", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.81 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C5M3GraveSmellsTrevor",
		criteria = 
		[
			[Concept_C5M3GraveSmells],
			[IsTrevor],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C5M3GraveSmellsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.95 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C5M3SmallFavorsTrevor",
		criteria = 
		[
			[Concept_C5M3SmallFavors],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[NotInCombat],
			[IssuerClose],
			[IsNotCoughing],
			[IsTalk],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C5M3SmallFavorsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.85 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3Jets2Trevor",
		criteria = 
		[
			[Conceptc5m3Jets2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3Jets2Mechanic,
				followup = RThen("self", "C5M3Jets3", null, 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.709 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3Jets3Trevor",
		criteria = 
		[
			[ConceptC5M3Jets3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3Jets3Mechanic,
				followup = RThen("gambler", "C5M3StopZombies", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.709 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3StopZombiesTrevor",
		criteria = 
		[
			[ConceptC5M3StopZombies],
			[IsTrevor],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3StopZombiesMechanic,
			},
		],
	},

	{
		name = "C5M3OnBridgeTrevor",
		criteria = 
		[
			[Conceptc5m3OnBridge],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.267 },
			c2 = { context = "_auto_AlarmFieldOn", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3SeeGraveyard01Trevor",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard01],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3SeeGraveyard01Mechanic,
				followup = RThen("self", "C5M3SeeGraveyard03", null, 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.855 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3SeeGraveyard04Trevor",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard04],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3SeeGraveyard04Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.887 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3SeeGraveyard03Trevor",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard03],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3SeeGraveyard03Mechanic,
				followup = RThen("gambler", "C5M3SeeGraveyard05", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.887 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3SeeGraveyard06Trevor",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard06],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3SeeGraveyard06Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.504 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3ShootCarTrevor",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsTrevor],
			[IsCarAlarm],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3ShootCarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_AlarmFieldOn", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 1.5 },
			c3 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3ShootCarNotTrevor",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotTrevor],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		// 	forceweight 500
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3ShootCarNotMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_AlarmFieldOn", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 3.0 },
			c3 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3ShootCar2Trevor",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotTrevor],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[_auto_ShotSecondCar],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_NotTimerLockA],
			[AutoShotcarIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3ShootCar2Mechanic,
			},
		],
		applycontext =
		{
			//: _auto_ShotCar:++1:None:None requires criteria function!
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3ShootCar3Trevor",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotTrevor],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[IsNotSpeaking],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_ShotThirdCar],
			[_auto_NotTimerLockA],
			[AutoShotcarIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3ShootCar3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.931 },
			//: _auto_ShotCar:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3ShootCar3SelfTrevor",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsTrevor],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[IsNotSpeaking],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_ShotThirdCar],
			[_auto_NotTimerLockA],
			[AutoShotcarIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3ShootCar3SelfMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.931 },
			//: _auto_ShotCar:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3Sniper01Trevor",
		criteria = 
		[
			[ConceptC5M3Sniper01],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3Sniper01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3bodiesTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m3bodies],
			[NotInCombat],
			[IsSubjectNear100],
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
				func = Custom_Talker_Trevor.PlayerRemarkc5m3bodiesMechanic,
				followup = RThenAny("WorldC502NotZombies2", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m2peopleTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m2peopleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2people", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.85 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkc5m2peopleTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2people", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3BeenShotTrevor",
		criteria = 
		[
			[ConceptC5M3BeenShot],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3BeenShotMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkc5m3crashedheliTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m3crashedheli],
			[IsNotSaidc5m3crashedheli],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m3crashedheliMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3crashedheli", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3insewerTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m3insewer],
			[IsNotSaidc5m3insewer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m3insewerMechanic,
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
		name = "PlayerRemarkc5m3safezoneTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.PlayerRemarkc5m3safezoneMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3manholeTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m3manhole],
			[IsNotSaidc5m3manhole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
				func = Custom_Talker_Trevor.PlayerRemarkc5m3manholeMechanic,
				followup = RThenAny("TrevorInterrupt", -11.59),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3manhole", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 12.0 },
			c3 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3offhighwayTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.PlayerRemarkc5m3offhighwayMechanic,
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
		name = "PlayerRemarkc5m3seegraveyardTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m3seegraveyard],
			[IsNotSaidc5m3seegraveyard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
				func = Custom_Talker_Trevor.PlayerRemarkc5m3seegraveyardMechanic,
				followup = RThen("self", "C5M3SeeGraveyard04", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3seegraveyard", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.855 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3seegraveyardEllisTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m3seegraveyard],
			[IsNotSaidc5m3seegraveyard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotAlone],
			[_auto_IsBridgeBomb],
			[_auto_NotTimerLockA],
			[_auto_NotOffHighway],
			[IsNotSpeakingWeight0],
			[_auto_C5M3TrevorReacted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m3seegraveyardEllisMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3seegraveyard", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.855 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3upladderTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m3upladder],
			[IsNotSaidc5m3upladder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m3upladderMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upladder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3upstepsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m3upsteps],
			[IsNotSaidc5m3upsteps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m3upstepsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upsteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombExtTrevor",
		criteria = 
		[
			[ConceptC5M4BombExt],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4BombExtMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.411 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombInt01Trevor",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NoAirstrikes],
			[AutoAirstrikeIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4BombInt01Mechanic,
				followup = RThenAny("C5M4BombIntA", 0.01),
			},
		],
		applycontext =
		{
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombIntATrevor",
		criteria = 
		[
			[ConceptC5M4BombIntA],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4BombIntAMechanic,
			},
		],
	},

	{
		name = "C5M4BombInt02Trevor",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsTrevor],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_FirstAirstrike],
			[AutoAirstrikeIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4BombInt02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.534 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombInt03Trevor",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsTrevor],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_SecondAirstrike],
			[AutoAirstrikeIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4BombInt03Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.99 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombIntManyTrevor",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsTrevor],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_ManyAirstrikes],
			[AutoAirstrikeIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4BombInt03Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.99 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4JetPlanesTrevor",
		criteria = 
		[
			[ConceptC5M4JetPlanes],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4JetPlanesMechanic,
				followup = RThen("Gambler", "C5M4JetPlanes", null, 0.01),
			},
		],
	},

	{
		name = "PlayerRemarkc5m4alleyTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m4alley],
			[IsNotSaidc5m4alley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m4alleyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4alley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4PoolTableTrevor",
		criteria = 
		[
			[ConceptC5M4PoolTable],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4PoolTableMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4PoolTableRoTrevor",
		criteria = 
		[
			[ConceptC5M4PoolTable],
			[IsTrevor],
			[IsNotCoughing],
			[IssuerClose],
			[IsProducerAlive],
			[IsProducerNear400],
			[ChanceToFire40Percent],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4PoolTableRoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m4inminifinaleTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m4inminifinale],
			[IsNotSaidc5m4inminifinale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m4inminifinaleMechanic,
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
		name = "PlayerRemarkc5m4seebridgeTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m4seebridge],
			[IsNotSaidc5m4seebridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m4seebridgeMechanic,
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
		name = "PlayerRemarkc5m4tractornagTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc5m4tractornag],
			[IsNotSaidc5m4tractornag],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTractorStarted],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m4tractornagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4tractornag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4TractorTrevor",
		criteria = 
		[
			[ConceptC5M4Tractor],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4TractorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5_Button2Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2Mechanic,
				followup = RThen("trevor", "C5M5_Button2200", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BridgeNag", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5_GateDownTrevor",
		criteria = 
		[
			[ConceptC5M5_GateDown],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_GateDownMechanic,
			},
		],
	},

	{
		name = "C5M5_Button2100Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2100],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2100Mechanic,
			},
		],
	},

	{
		name = "C5M5_Button2200Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2200],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2200Mechanic,
				followup = RThen("trevor", "C5M5_Button2201", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_Button2201Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2201],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2201Mechanic,
				followup = RThen("trevor", "C5M5_Button2202", null, 0.3),
			},
		],
	},

	{
		name = "C5M5_Button2202Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2202],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2202Mechanic,
				followup = RThen("trevor", "C5M5_Button2203", null, 0.3),
			},
		],
	},

	{
		name = "C5M5_Button2203Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2203],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2203Mechanic,
				followup = RThen("trevor", "C5M5_Button2204", null, 0.3),
			},
		],
	},

	{
		name = "C5M5_Button2204Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2204],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2204Mechanic,
				followup = RThen("trevor", "C5M5_Button2205", null, 0.2),
			},
		],
	},

	{
		name = "C5M5_Button2205Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2205],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2205Mechanic,
				followup = RThen("self", "C5M5_Button2206", null, 0.2),
			},
		],
	},

	{
		name = "C5M5_Button2206Trevor",
		criteria = 
		[
			[ConceptC5M5_Button2206],
			[IsTrevor],
			[IsProducerAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_Button2206Mechanic,
				followup = RThen("producer", "C5M5_Button2207", null, 0.2),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv01Trevor",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv01],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingTrevor],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_SurvivorConv01Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv03", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv01BombTrevor",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv01],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsBuzzardRunMentioned],
			[_auto_IsTalkingTrevor],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_SurvivorConv01BombMechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv03", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv02Trevor",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv02],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingTrevor],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_SurvivorConv02Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv04", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv03Trevor",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv03],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingTrevor],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_SurvivorConv03Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv05", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv04Trevor",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv04],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingTrevor],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_SurvivorConv04Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv05Trevor",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv05],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingTrevor],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_SurvivorConv05Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_LowerTheBridgeTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[_auto_IsBridgeNag],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_LowerTheBridgeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5Button1Trevor",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingTrevor],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5Button1Mechanic,
				followup = RThen("Orator", "C5M5_Soldier1Conv01", null, 0.01),
			},
		],
	},

	{
		name = "C5M5Button1BuzzardRunTrevor",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsTrevor],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingTrevor],
			[_auto_IsBuzzardRunMentioned],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5Button1BuzzardRunMechanic,
				followup = RThen("Orator", "C5M5_Soldier1Conv01", null, 0.01),
			},
		],
	},

	{
		name = "C5M5HearSoldiersNagTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[_auto_IsRadioNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5HearSoldiersNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5HearSoldiersNagBuzzardTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsBuzzardRunMentioned],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[_auto_IsRadioNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5HearSoldiersNagBuzzardMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5LeaveSafeTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsTrevor],
			[IsMapc5m5_bridge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5LeaveSafeMechanic,
				followup = RThen("orator", "C5M5_Soldier1", null, 0.01),
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
		name = "C5M5RescueStartTrevor",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsTrevor],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5RescueStartMechanic,
				followup = RThen("orator_chopper", "C5M5SoldierHeliNag", null, 0.01),
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
		name = "C5M5SurvivorVocalizeLookOutTrevor",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5SurvivorVocalizeLookOutMechanic,
			},
		],
	},

	{
		name = "C5M5SpottedTankTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5SpottedTankMechanic,
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
		name = "C5M5ReloadingTankTrevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkTrevor],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5ReloadingTankMechanic,
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
		name = "PlayerKillTankConfirmationC5M5Trevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsTank],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[IsMapc5m5_bridge],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillTankConfirmationC5M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "C5M5RunToHeliTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5RunToHeliMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5InsideHeliTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5InsideHeliMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5BridgeDestroyed2Trevor",
		criteria = 
		[
			[ConceptC5M5BridgeDestroyed2],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsEveryoneAlive],
			[CanSpeakC5M5SurvivorOutro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5BridgeDestroyed2Mechanic,
			},
		],
	},

	{
		name = "C5M5SafeRoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.C5M5SafeRoomMechanic,
				followup = RThen("gambler", "C5M5_saferoom001", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5_saferoom002Trevor",
		criteria = 
		[
			[ConceptC5M5_saferoom002],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_saferoom002Mechanic,
				followup = RThen("gambler", "C5M5_saferoom004", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_saferoom004Trevor",
		criteria = 
		[
			[ConceptC5M5_saferoom004],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5_saferoom004Mechanic,
			},
		],
	},

	{
		name = "C6M1_IntotheparkNoHealthTrevor",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1_IntotheparkNoHealthMechanic,
			},
		],
	},

	{
		name = "C6M1Intro_01aTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_01a],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_01aMechanic,
				followup = RThen("Biker", "C6M1Intro_01b", null, -6.365),
			},
		],
	},

	{
		name = "C6M1Intro_01Biker02Trevor",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsTrevor],
			[IsFrancisIntroActor],
			[IsNotSaidCXM1Intro],
			[IsNotVersus],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_01Biker02Mechanic,
				followup = RThen("Biker", "C6M1Intro_24b", null, -12.798),
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
		name = "C6M1Intro_01cTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_01c],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_01cMechanic,
				followup = RThen("Biker", "C6M1Intro_01d", null, -0.982),
			},
		],
	},

	{
		name = "C6M1Intro_01TeenGirl04Trevor",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsTrevor],
			[IsZoeyIntroActor],
			[IsNotSaidCXM1Intro],
			[IsNotVersus],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_01TeenGirl04Mechanic,
				followup = RThen("TeenGirl", "C6M1Intro_23a", null, -2.512),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.0 },
			c3 = { context = "TrevorInLoveC6M1", value = 1, duration = 0.0 },
			c4 = { context = "RemarkWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_02aTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_02a],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_02aMechanic,
				followup = RThen("Biker", "C6M1Intro_02b", null, -4.221),
			},
		],
	},

	{
		name = "C6M1Intro_11aTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_11a],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_11aMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_11b", null, -5.419),
			},
		],
	},

	{
		name = "C6M1Intro_11cTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_11c],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_11cMechanic,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
	},

	{
		name = "C6M1Intro_11cGamblerTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_11c],
			[IsTrevor],
			[IsGamblerAlive],
			[ChanceToFire10Percent],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_11cGamblerMechanic,
				followup = RThen("Gambler", "C6M1Intro_11d", null, -13.161),
			},
		],
	},

	{
		name = "C6M1Intro_12bTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_12b],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_12bMechanic,
				followup = RThen("Producer", "C6M1Intro_12c", null, -4.691),
			},
		],
	},

	{
		name = "C6M1Intro_13aTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_13a],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_13aMechanic,
				followup = RThen("Coach", "C6M1Intro_13b", null, -14.217),
			},
		],
	},

	{
		name = "C6M1Intro_13cTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_13c],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_13cMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_13d", null, -3.537),
			},
		],
	},

	{
		name = "C6M1Intro_13fTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_13f],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_13fMechanic,
			},
		],
	},

	{
		name = "C6M1Intro_23bTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_23b],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_23bMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_23c", null, -7.488),
			},
		],
	},

	{
		name = "C6M1Intro_23dTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_23d],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_23dMechanic,
				followup = RThenAny("WorldC6M1_HistoricTour", -4.369),
			},
		],
	},

	{
		name = "C6M1Intro_24cTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_24c],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_24cMechanic,
				followup = RThen("Biker", "C6M1Intro_24d", null, -2.841),
			},
		],
	},

	{
		name = "C6M1Intro_24eTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_24e],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_24eMechanic,
			},
		],
	},

	{
		name = "C6M1Intro_ConfirmObjectiveTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_ConfirmObjective],
			[IsTrevor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_ConfirmObjectiveMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "LeavingC6M1StartTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsTrevor],
			[IsNotAlone],
			[YesHasFirstAidKit],
			[isc6m1_riverbank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.LeavingC6M1StartMechanic,
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
		name = "LeavingC6M1StartnoHealthTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsTrevor],
			[IsNotAlone],
			[NoHasFirstAidKit],
			[isc6m1_riverbank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.LeavingC6M1StartnoHealthMechanic,
				followup = RThenAny("C6M1_IntotheparkNoHealth", 0.1),
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
		name = "C6M1Start2Trevor",
		criteria = 
		[
			[ConceptC6M1Start2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Start2Mechanic,
				followup = RThen("self", "C6M1Start3", null, 1.0),
			},
		],
	},

	{
		name = "C6M1Start3Trevor",
		criteria = 
		[
			[ConceptC6M1Start3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Start3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemWorldC6M1_WeddingWarn02Trevor",
		criteria = 
		[
			[ConceptRemWorldC6M1_WeddingWarn02],
			[IsTrevor],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.RemWorldC6M1_WeddingWarn02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CoachCake", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WorldC6M1_WeddingWarn03aTrevor",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsTrevor],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M1_WeddingWarn03aMechanic,
				followup = RThen("Producer", "WorldC6M1_WeddingWarn03b", null, -0.799),
			},
		],
	},

	{
		name = "WorldC6M1_WeddingWarn03bTrevor",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03b],
			[IsTrevor],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M1_WeddingWarn03aMechanic,
				followup = RThen("Producer", "WorldC6M1_WeddingWarn03b", null, -0.799),
			},
		],
	},

	{
		name = "WorldC6M1_WeddingWarn03cTrevor",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03c],
			[IsTrevor],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M1_WeddingWarn03cMechanic,
			},
		],
	},

	{
		name = "WorldC6M1_WeddingWarn03dTrevor",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03d],
			[IsTrevor],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M1_WeddingWarn03dMechanic,
			},
		],
	},

	{
		name = "C6M2_OpenGate1Trevor",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2_OpenGate1Mechanic,
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
		name = "C6M2_OpenGate1bTrevor",
		criteria = 
		[
			[ConceptC6M2_OpenGate1b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2_OpenGate1bMechanic,
			},
		],
	},

	{
		name = "C6M2_OpenGate1BlameTrevor",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsTrevor],
			[IsGamblerNear400],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2_OpenGate1BlameMechanic,
				followup = RThen("Gambler", "C6M2_OpenGate1a", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
			c2 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c3 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c4 = { context = "SaidOpenedGate1BlameTrevor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2_OpenGate2Trevor",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2_OpenGate2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2LeavingSafeRoomTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsTrevor],
			[IsNotSaidLeavingSafeArea],
			[isc6m2_bedlam],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2LeavingSafeRoomMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo02aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo02a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo02aMechanic,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo02b", null, -3.509),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvoProducerStartTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsProducerAlive],
			[ChanceToFire50Percent],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvoProducerStartMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo03a", null, -3.33),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo03b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo03bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo03c", null, -16.18),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvoZoeyStartTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsZoeyIntroActor],
			[IsProducerAlive],
			[ChanceToFire50Percent],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvoZoeyStartMechanic,
				followup = RThenAny("DLC1_C6M2_SafeRoomConvo07a", -6.763),
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
		name = "DLC1_C6M2_SafeRoomConvo08Trevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo08Mechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo15a", null, -4.114),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo11aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo11a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo11aMechanic,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo11b", null, -4.069),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo14bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo14c", null, -2.922),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo16bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo16c", null, -1.763),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16dRochelleTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16d],
			[IsTrevor],
			[FromIsProducer],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo16dRochelleMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16dCoachTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16d],
			[IsTrevor],
			[FromIsCoach],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo16dCoachMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo17aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo17a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo17aMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo17b", null, -7.751),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo18bMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo18c", null, -2.705),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo19aMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo19b", null, -2.249),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo19cMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo19d", null, -6.193),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19eTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19e],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo19eMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19gTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19g],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo19gMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo21bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo21b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo21bMechanic,
			},
		],
	},

	{
		name = "WorldC6M2_FinalWater01bTrevor",
		criteria = 
		[
			[ConceptWorldC6M2_FinalWater01b],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M2_FinalWater01bMechanic,
			},
		],
	},

	{
		name = "WorldC6M2_InSewer101aTrevor",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101a],
			[IsTrevor],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M2_InSewer101aMechanic,
				followup = RThen("Gambler", "WorldC6M2_InSewer101c", null, -0.999),
			},
		],
	},

	{
		name = "WorldC6M2_OnTourWalk102bTrevor",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk102b],
			[IsTrevor],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M2_OnTourWalk102bMechanic,
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo03bTrevor",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo03b],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M2_Tattoo03bMechanic,
			},
		],
	},

	{
		name = "C6M3_BridgeDownTrevor",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_BridgeDownMechanic,
			},
		],
	},

	{
		name = "C6M3_BridgeGettoCarTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_BridgeGettoCarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_elevatorCancelTrevor",
		criteria = 
		[
			[ConceptC6M3_ElevatorCancel],
			[IsTrevor],
			[IsC6M3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
	},

	{
		name = "C6M3_elevatorTrevor",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsTrevor],
			[IsC6M3_port],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_elevatorMechanic,
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
		name = "C6M3_elevatorZoeyTrevor",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsTrevor],
			[IsC6M3_port],
			[IsNotSaidC6M3Elevator],
			[IsZoeyIntroActor],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_elevatorZoeyMechanic,
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
		name = "C6M3_GivenItemBikerTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorBiker],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_GivenItemBikerMechanic,
			},
		],
	},

	{
		name = "C6M3_GivenItemTeenGirlTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorTeenGirl],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_GivenItemTeenGirlMechanic,
			},
		],
	},

	{
		name = "C6M3_GivenItemTeenGirlIntroTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorTeenGirl],
			[Isc6m3_port],
			[IsZoeyIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_GivenItemTeenGirlIntroMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo01a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo01aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo01b", null, -7.373),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo01c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo01cMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02eTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02e],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo02eMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo03aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo03aMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo03b", null, -1.144),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo03cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo03cMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo03d", null, -1.799),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo04aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo04b", null, -3.659),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04dTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04d],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo04dMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo05aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo05a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo05aMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo05b", null, -2.546),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvoFrancisStartTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvoFrancisStartMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo06a", null, -5.805),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo06bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo06b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo06bMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo07a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo07aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo07b", null, -2.804),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo07c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo07cMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08aMechanic,
				followup = RThen("Coach", "DLC1_C6M3_SafeRoomConvo08b", null, -1.669),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08cMechanic,
				followup = RThen("Trevor", "DLC1_C6M3_SafeRoomConvo08d", null, -0.936),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08dTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08d],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08dMechanic,
				followup = RThen("Trevor", "DLC1_C6M3_SafeRoomConvo08f", null, -1.479),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08eTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08e],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08eMechanic,
				followup = RThen("Trevor", "DLC1_C6M3_SafeRoomConvo08f", null, -2.608),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08fTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08f],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08fMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo08g", null, -5.514),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo09aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo09a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo09aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo09b", null, -13.536),
			},
		],
	},

	{
		name = "IncapBounceTrevor",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsTrevor],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.IncapBounceMechanic,
				followup = RThen("Biker", "InCapBounce2", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidInCapBounce", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCallForRescueTrevor",
		criteria = 
		[
			[ConceptCallForRescue],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[HasNotCalledForRescue],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCallForRescueMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForRescue", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M2EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c1m2_streets],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -19.75),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M3EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c1m3_mall],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M3EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -7.93),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M4EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c1m4_atrium],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -12.29),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M2EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c2m2],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M2EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -13.43),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c2m3],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M3EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -15.02),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M4EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c2m4],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M4EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -10.17),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c2m5],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -14.33),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M2EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismapc3m2_swamp],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M2EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -13.34),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M3EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismapc3m3_shantytown],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M3EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -23.98),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismapc3m4_plantation],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M4EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -15.53),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M2EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c4m2_sugarmill_a],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M2EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -16.69),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M3EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[isc4m3],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M3EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -9.99),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M4EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[isc4m4],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M4EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -15.21),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M2EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[IsMapc5m2_park],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M2EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -8.54),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[IsMapc5m3_cemetery],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M3EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -3.46),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[IsMapc5m4_quarter],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M4EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -17.96),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[IsMapc5m5_bridge],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C5M5EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -18.21),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2EllisStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[isc6m2_bedlam],
			[IsACoopMode],
			[ChanceToFire20Percent],
			[IsNotSrcGrp_TREVORSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2EllisStoryMechanic,
				followup = RThenAny("TrevorInterrupt", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2EllisStoryStart1Trevor",
		criteria = 
		[
			[ConceptC6M2TrevorStoryStart1],
			[IsTrevor],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2EllisStoryStart1Mechanic,
				followup = RThenAny("TrevorInterrupt", -26.93),
			},
		],
	},

	{
		name = "C6M3EllisBridgeStoryTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsNotSpeaking],
			[isc6m3_port],
			[IsACoopMode],
			[IsNotInStartArea],
			[ChanceToFire20Percent],
			[IsSaidFinaleExchange],
			[IsEndTrevorBridgeStoryStart],
			[IsNotSaidTrevorBridgeStoryStart],
			[IsNotSaidC6M3Elevator],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3EllisBridgeStoryMechanic,
				followup = RThenAny("TrevorInterrupt", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c3 = { context = "SrcGrp_TREVORSTORY", value = 1, duration = 0.0 },
			c4 = { context = "SaidTrevorBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3EllisBridgeStory1Trevor",
		criteria = 
		[
			[ConceptC6M3TrevorBridgeStory1],
			[IsTrevor],
			[IsNotSaidC6M3Elevator],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3EllisBridgeStory1Mechanic,
				followup = RThen("self", "C6M3TrevorBridgeStory1a", null, -24.62),
			},
		],
	},

	{
		name = "C6M3EllisBridgeStory1aTrevor",
		criteria = 
		[
			[ConceptC6M3TrevorBridgeStory1a],
			[IsTrevor],
			[IsNotSaidC6M3Elevator],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3EllisBridgeStory1aMechanic,
				followup = RThenAny("TrevorInterrupt", 0.1),
			},
		],
	},

	{
		name = "EllisStoryReac01Trevor",
		criteria = 
		[
			[ConceptTrevorStoryReac01],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.EllisStoryReac01Mechanic,
			},
		],
	},

	{
		name = "EllisStoryReac01GoatTrevor",
		criteria = 
		[
			[ConceptTrevorStoryReac01],
			[IsTrevor],
			[ismap_c1m4_atrium],
		],
		// 	forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Trevor.EllisStoryReac01GoatMechanic,
			},
		],
	},

	{
		name = "c6m3_outroTrevor",
		criteria = 
		[
			[Conceptc6m3_outro3],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.c6m3_outroMechanic,
			},
		],
	},

	{
		name = "c6m3_outroZoeyOutroTrevor",
		criteria = 
		[
			[Conceptc6m3_outro3],
			[IsTrevor],
			[isC6m3_port],
			[IsZoeyIntroActor],
			[IsNotVersus],
			[IsNotIncapacitated],
			[ChanceToFire100Percent],
			[FromIsBiker],
		],
		// 	forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c6m3_outroZoeyOutroMechanic,
				followup = RThen("gambler", "c6m3_outroL4D1011a", null, 0.1),
			},
		],
	},

	{
		name = "c6m3_outroRochelleOutroTrevor",
		criteria = 
		[
			[Conceptc6m3_outroL4D1012a],
			[IsTrevor],
			[IsNotIncapacitated],
			[FromIsProducer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c6m3_outroRochelleOutroMechanic,
			},
		],
	},

	{
		name = "SurvivorSpotFirstWeaponsTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotPickedUpFirstAidKit],
			[ismap_c1m1_hotel],
			[IsNotSaidFirstWeapon],
			[IsNotSaidWorldC1M1First],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpotFirstWeaponsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFirstWeapon", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAdrenalineTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsAdrenaline],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedAdrenalineMechanic,
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
		name = "SurvivorSpottedAdrenalineAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			[IsAdrenaline],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedAdrenalineMechanic,
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
		name = "SurvivorSpottedAmmoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedAmmoMechanic,
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
		name = "SurvivorSpottedAmmoAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAmmo],
			[IsNotSaidSpot],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedAmmoMechanic,
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
		name = "SurvivorSpottedAmmo2Trevor",
		criteria = 
		[
			[ConceptPlayerSpotAmmo],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedAmmo2Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachCloseTrevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedCoachCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachClose2Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedCoachCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachClose2C1Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedCoachClose2C1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachCloseC1Trevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedCoachClose2C1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachFarTrevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachFar400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedCoachFarMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedDefibrillatorTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsDefibrillator],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedDefibrillatorMechanic,
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
		name = "SurvivorSpottedDefibrillatorAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			[IsDefibrillator],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedDefibrillatorMechanic,
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
		name = "SurvivorSpottedGamblerCloseTrevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGamblerCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerClose2Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGamblerClose2Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerClose2C1Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGamblerClose2C1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerCloseC1Trevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGamblerClose2C1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerFarTrevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGamblerFarMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerFarC1Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGamblerFarC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedGrenadeTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsPipeBomb],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGrenadeMechanic,
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
		name = "SurvivorSpottedGrenadeAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			[IsPipeBomb],
			[IsWorldTalkTrevor],
			[YesHasGrenade],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGrenadeMechanic,
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
		name = "SurvivorSpottedGrenadeLauncherTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[Isgrenade_launcher],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGrenadeLauncherMechanic,
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
		name = "SurvivorSpottedGrenadeLauncherAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			[Isgrenade_launcher],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGrenadeLauncherMechanic,
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
		name = "SurvivorSpottedHealthTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsFirstAidKit],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHealthMechanic,
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
		name = "SurvivorSpottedHealthAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			[IsFirstAidKit],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHealthMechanic,
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
		name = "SurvivorSpottedMolotovTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsMolotov],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMolotovMechanic,
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
		name = "SurvivorSpottedMolotovAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			[IsMolotov],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMolotovMechanic,
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
		name = "SurvivorSpottedPillsTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsPainPills],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedPillsMechanic,
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
		name = "SurvivorSpottedPillsAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedPillsMechanic,
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
		name = "SurvivorSpottedProducerCloseTrevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedProducerCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedProducerClose2Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedProducerClose2Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedProducerClose2C1Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedProducerClose2C1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedProducerCloseC1Trevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedProducerClose2C1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedProducerFarTrevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedProducerFarMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedProducerFarC1Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedProducerFarC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedUpPack_ExplosiveTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Explosive],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedUpPack_ExplosiveMechanic,
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
		name = "SurvivorSpottedUpPack_ExplosiveAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			[IsUpgradePack_Explosive],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedUpPack_ExplosiveMechanic,
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
		name = "SurvivorSpottedUpPack_IncendiaryTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedUpPack_IncendiaryMechanic,
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
		name = "SurvivorSpottedUpPack_IncendiAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedUpPack_IncendiaryMechanic,
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
		name = "SurvivorSpottedVomitJarTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedVomitJarMechanic,
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
		name = "SurvivorSpottedVomitJarAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedVomitJarMechanic,
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
		name = "SurvivorSpottedVomitJarAutoC1Trevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedVomitJarAutoC1Mechanic,
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
		name = "SurvivorSpottedVomitJarC1Trevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedVomitJarAutoC1Mechanic,
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
		name = "SurvivorSpottedWorldCloseTrevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWorldCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedArmoredTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedArmoredMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedArmoredC5M1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[ismap_c5m1_waterfront],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedArmoredC5M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedBoomerTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBoomerMechanic,
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
		name = "SurvivorSpottedBoomerAlsoTrevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBoomerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "TrevorAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedBoomer2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBoomerMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedBoomerC1M1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBoomerC1M1Mechanic,
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
		name = "SurvivorSpottedBoomerAlsoC1M1Trevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBoomerC1M1Mechanic,
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
		name = "SurvivorSpottedBoomer2C1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBoomerC1M1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedBoomerC1M2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBoomerC1M2Mechanic,
				followup = RThenAny("Player.KnowBoomer", 0.1),
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
		name = "SurvivorSpottedBoomerAlsoC1M2Trevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBoomerC1M1Mechanic,
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
		name = "SurvivorSpottedCedaTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedCedaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedCedaC1M1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedCedaC1M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChargerTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedChargerMechanic,
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
		name = "SurvivorSpottedChargerAlsoTrevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedChargerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChargerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "TrevorAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedCharger2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedChargerMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedChargerC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedChargerC1Mechanic,
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
		name = "SurvivorSpottedChargerAlsoC1Trevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedChargerC1Mechanic,
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
		name = "SurvivorSpottedCharger2C1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedChargerC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedClownTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
			[SawclownsIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedClownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidClownWarn", value = 1, duration = 20.0 },
			//: SawClowns:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFallenTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedFallenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFirstClownTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[ismap_c2m2],
			[IsNotSpeakingWeight0],
			[SawclownsIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedFirstClownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidClownWarn", value = 1, duration = 0.0 },
			//: SawClowns:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHunterTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHunterMechanic,
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
		name = "SurvivorSpottedHunterAlsoTrevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHunterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHunterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "TrevorAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHunter2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHunterMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedHunterC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHunterC1Mechanic,
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
		name = "SurvivorSpottedHunterAlsoC1Trevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHunterC1Mechanic,
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
		name = "SurvivorSpottedHunter2C1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHunterC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedInfectedTrevor",
		criteria = 
		[
			[ConceptPlayerIncoming],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedInfectedMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedJimmyTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJimmy],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidJimmyWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedJimmyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJimmyWarn", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedJockeyTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedJockeyMechanic,
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
		name = "SurvivorSpottedJockeyAlsoTrevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedJockeyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJockeyWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "TrevorAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedJockey2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedJockeyMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedJockeyC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedJockeyC1Mechanic,
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
		name = "SurvivorSpottedJockeyAlsoC1Trevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedJockeyC1Mechanic,
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
		name = "SurvivorSpottedJockey2C1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedJockeyC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedMudmenC3M2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[ismapc3m2_swamp],
			[IsNotSpeakingWeight0],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMudmenC3M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidMudmenWarn", value = 1, duration = 0.0 },
			//: SawMudMen:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMudmenTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMudmenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidMudmenWarn", value = 1, duration = 20.0 },
			//: SawMudMen:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMudmen2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[SawManyMudMen],
			[IntensityUnder50],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMudmen2Mechanic,
				followup = RThen("gambler", "Player.SeeMudmen2a", null, -2.938),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidMudmenWarn", value = 1, duration = 20.0 },
			//: SawMudMen:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSmokerTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSmokerMechanic,
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
		name = "SurvivorSpottedSmokerAlsoTrevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSmokerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmokerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "TrevorAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSmoker2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSmokerMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedSmokerC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSmokerC1Mechanic,
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
		name = "SurvivorSpottedSmokerAlsoC1Trevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSmokerC1Mechanic,
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
		name = "SurvivorSpottedSmoker2C1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSmokerC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedSpitterTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSpitterMechanic,
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
		name = "SurvivorSpottedSpitterAlsoTrevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSpitterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpitterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "TrevorAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSpitter2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSpitterMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedSpitterC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSpitterC1Mechanic,
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
		name = "SurvivorSpottedSpitterAlsoC1Trevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSpitterC1Mechanic,
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
		name = "SurvivorSpottedSpitter2C1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSpitterC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedTankTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedTankMechanic,
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
		name = "SurvivorSpottedTank2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedTankMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedTankC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedTankC1Mechanic,
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
		name = "SurvivorAlsoSpottedTankC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedTankC1Mechanic,
			},
		],
	},

	{
		name = "L4D1SpottedTankTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[Isc6m3_port],
			[IsNotSpeakingWeight0],
			[IsNotVersus],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1SpottedTankMechanic,
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
		name = "L4D1SpottedTank2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[Isc6m3_port],
			[IsNotVersus],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1SpottedTankMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedWitchTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWitchMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWitch2Trevor",
		criteria = 
		[
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWitchMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedWitchC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWitchC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWitch2C1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWitch2C1Mechanic,
			},
		],
	},

	{
		name = "PlayerAlertGiveItemTrevor",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[NotInIntenseCombat],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerAlertGiveItemMechanic,
			},
		],
	},

	{
		name = "PlayerAlertGiveItemCombatTrevor",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[InIntenseCombat],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerAlertGiveItemCombatMechanic,
			},
		],
	},

	{
		name = "PlayerFaultFriendlyFireTrevor",
		criteria = 
		[
			[IsFaultConcept],
			[IsFaultFriendlyFire],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFaultFriendlyFire", value = 1, duration = 0.1 },
			c2 = { context = "SaidFaultFriendlyFireTrevor", value = 1, duration = 0.1 },
			c3 = { context = "ShotTeammateTrevor", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerFriendlyFireTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFire2Trevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeExplosive],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFire2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireC1Trevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireFromCoachTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireFromCoachMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireFromCoachC1Trevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireFromCoachC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireFromGamblerTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireFromGamblerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireFromProducerTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireFromProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireFromProducerC1Trevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireFromProducerC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireNoBulletTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireNoBulletMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireNoBulletC1Trevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireNoBulletC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireTankTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireTankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireTankCoachTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsCoach],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireTankCoachMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireTankGamblerTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsGambler],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireTankGamblerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireTankProducerTrevor",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkTrevor],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsProducer],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFriendlyFireTankProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerToTheRescueTrevor",
		criteria = 
		[
			[ConceptSurvivorBotMovingToReviveFriend],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[NotInCombat],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerToTheRescueMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRescueComing", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerToTheRescueRosTrevor",
		criteria = 
		[
			[ConceptPlayerToTheRescue],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerToTheRescueRosMechanic,
			},
		],
	},

	{
		name = "SurvivorTauntResponseTrevor",
		criteria = 
		[
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorTauntResponseMechanic,
			},
		],
	},

	{
		name = "C4M1IdleComment01Trevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire40Percent],
			[IsSurvivor],
			[ismap_c4m1_milltown_a],
			[IsSaidc4m1_nogas],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[NotInCombat],
			[IsWorldTalkTrevor],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotNoGasGate],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M1IdleComment01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.299 },
			c2 = { context = "_auto_NoGasGate", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M2IdleCommentCane01Trevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire60Percent],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTrevorInCane],
			[_auto_NotCaneYellGated],
			[_auto_NotLastSurvivorTalkedTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M2IdleCommentCane01Mechanic,
				followup = RThenAny("_c4m2_caneyell01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_CaneYellGated", value = 1, duration = 10.0 },
			c2 = { context = "_auto_LastSurvivorTalkedTrevor", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerChokeResponseTrevor",
		criteria = 
		[
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerChokeResponseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerChokeResponseC1Trevor",
		criteria = 
		[
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKNowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerChokeResponseC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReloadingC502RunTrevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsMapc5m2_park],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			[_auto_IsAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReloadingC502RunMechanic,
			},
		],
	},

	{
		name = "PlayerReloadingTankTrevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReloadingTankMechanic,
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
		name = "PlayerReloadingTankC1Trevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReloadingTankC1Mechanic,
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
		name = "PlayerWitchChasingTrevor",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsTrevor],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkTrevor],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWitchChasingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 5.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerWitchChasingC6M1Trevor",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsTrevor],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkTrevor],
			[isc6m1_riverbank],
			[IsWitchAggro],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWitchChasingC6M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},

	{
		name = "PlayerWitchStartAttackC6M1Trevor",
		criteria = 
		[
			[IsFaultConcept],
			[IsTrevor],
			[IsFaultWitchHarassment],
			[Isc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWitchStartAttackC6M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 4.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},

	{
		name = "PlayerWitchStartAttackTrevor",
		criteria = 
		[
			[IsFaultConcept],
			[IsTrevor],
			[IsFaultWitchHarassment],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWitchStartAttackMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},

	{
		name = "WitchAggroTrevor",
		criteria = 
		[
			[ConceptWitchStartAttack],
			[IsTrevor],
			[Iswitch_aggro_onTrevor],
			[WitchaggroIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorCriticalHurtTrevor",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsNotJockey],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorCriticalHurtMechanic,
			},
		],
	},

	{
		name = "SurvivorIncapacitatedHurtTrevor",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsNotSpeaking],
			[IsIncapacitatedPain],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorIncapacitatedHurtMechanic,
			},
		],
	},

	{
		name = "SurvivorJockeyHurtMajorTrevor",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			[IsBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorJockeyHurtMajorMechanic,
				followup = RThen("all", "commentjockey", null, -1.739),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedTrevor", value = 1, duration = 6.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMinorTrevor",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			[IsBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorJockeyHurtMajorMechanic,
				followup = RThen("all", "commentjockey", null, -1.739),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedTrevor", value = 1, duration = 6.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMajorC1Trevor",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorJockeyHurtMajorC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedTrevor", value = 1, duration = 6.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMinorC1Trevor",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorJockeyHurtMajorC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedTrevor", value = 1, duration = 6.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorMajorHurtTrevor",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsNotJockey],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorMajorHurtMechanic,
			},
		],
	},

	{
		name = "SurvivorMinorHurtTrevor",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsNotJockey],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorMinorHurtMechanic,
			},
		],
	},

	{
		name = "SurvivorReloadingTrevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[NotInIntenseCombat],
			[_auto_NotTrevorInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorReloadingMechanic,
			},
		],
	},

	{
		name = "SurvivorReloadingIntenseTrevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[InIntenseCombat],
			[_auto_NotTrevorInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorReloadingIntenseMechanic,
			},
		],
	},

	{
		name = "SurvivorReloadingC4M2Trevor",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[_auto_IsTrevorInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorReloadingC4M2Mechanic,
			},
		],
	},

	{
		name = "PlayerHelpIncappedTrevor",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHelpIncappedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 7.5 },
		},
	},

	{
		name = "PlayerHelpIncappedBleeingTrevor",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHelpIncappedBleeingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 15.0 },
		},
	},

	{
		name = "PlayerHelpIncappedLethargicTrevor",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsIncappedLethargic],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHelpIncappedLethargicMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 30.0 },
		},
	},

	{
		name = "C2M1DoneFallingTrevor",
		criteria = 
		[
			[ConceptC2M1DoneFalling],
			[IsTrevor],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDoneFalling],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1DoneFallingMechanic,
				followup = RThen("gambler", "_C2M1_Fall03", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.351 },
			c2 = { context = "_auto_DoneFalling", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1DoneFalling2Trevor",
		criteria = 
		[
			[ConceptC2M1DoneFalling],
			[IsTrevor],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotCoughing],
			[IsCoachAlive],
			[IsCoachNear200],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDoneFalling],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1DoneFalling2Mechanic,
				followup = RThen("coach", "_C2M1_Fall01", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.044 },
			c2 = { context = "_auto_DoneFalling", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1FallingTrevor",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1FallingMechanic,
				followup = RThen("self", "EndOfWavWindow5", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.353 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M2CarouselOffTrevor",
		criteria = 
		[
			[Conceptc2m2CarouselEnd],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M2CarouselOffMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.756 },
			c2 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M2CarouselOnTrevor",
		criteria = 
		[
			[Conceptc2m2CarouselStart],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M2CarouselOnMechanic,
				followup = RThenAny("_C2M2_CaroStart03", 2.0),
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
		name = "C3M3BridgeButtonTrevor",
		criteria = 
		[
			[ConceptC3M3BridgeButton],
			[IsNotSaidC3M3BridgeButton],
			[IsTrevor],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C3M3BridgeButtonMechanic,
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
		name = "EndOfWavWindow5Trevor",
		criteria = 
		[
			[ConceptEndOfWavWindow5],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.EndOfWavWindow5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TrevorWavWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerChainSawUsedTrevor",
		criteria = 
		[
			[ConceptChainsawUsed],
			[IsNotSaidChainSawUsed],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IntensityOver25],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerChainSawUsedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChainSawUsed", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M1AroundFireTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M1AroundFire],
			[IsNotSaidC1M1AroundFire],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M1AroundFireMechanic,
				followup = RThenAny("C1M1Cough", -1.348),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1AroundFire", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M1OverTableTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M1OverTable],
			[IsNotSaidC1M1OverTable],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M1OverTableMechanic,
				followup = RThenAny("C1M1Cough", -0.627),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OverTable", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M1SearchRoomsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M1SearchRooms],
			[IsNotSaidC1M1SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M1SearchRoomsMechanic,
				followup = RThenAny("C1M1Cough", -3.339),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1SearchRooms", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M1ThroughThisDoorTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M1ThroughThisDoor],
			[IsNotSaidC1M1ThroughThisDoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M1ThroughThisDoorMechanic,
				followup = RThenAny("C1M1Cough", -0.618),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1ThroughThisDoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M2SpotGunStoreTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsRemarkWorldC1M2SpotGunStore],
			[IsNotSaidRemarkWorldC1M2SpotGunStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear800],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M2SpotGunStoreMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRemarkWorldC1M2SpotGunStore", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3AlarmDoorsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3AlarmDoors],
			[IsNotSaidC1M3AlarmDoors],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3AlarmDoorsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3AlarmDoors", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3CarefulWindowsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3CarefulWindows],
			[IsNotSaidC1M3CarefulWindows],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3CarefulWindowsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CarefulWindows", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3CEDAGoneTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3CEDAGone],
			[IsNotSaidC1M3CEDAGone],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3CEDAGoneMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CEDAGone", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3DownHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3DownHere],
			[IsNotSaidC1M3DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3DownHere2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3DownHere2],
			[IsNotSaidC1M3DownHere2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3DownTheEscalatorTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3DownTheEscalator],
			[IsNotSaidC1M3DownTheEscalator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3DownTheEscalatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownTheEscalator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3OverHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3OverHere],
			[IsNotSaidC1M3OverHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3OverHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3OverHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3SearchRoomsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3SearchRooms],
			[IsNotSaidC1M3SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3SearchRoomsMechanic,
				followup = RThenAny("C1M1Cough", -3.339),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3SearchRooms", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3ThisWayTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3ThisWay],
			[IsNotSaidC1M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3ThisWayMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3ThroughHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3ThroughHere],
			[IsNotSaidC1M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3ThroughHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3TurnOffAlarm1],
			[IsNotSaidC1M3TurnOffAlarm1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3TurnOffAlarm1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3TurnOffAlarm2],
			[IsNotSaidC1M3TurnOffAlarm2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3TurnOffAlarm2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm3Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3TurnOffAlarm3],
			[IsNotSaidC1M3TurnOffAlarm3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3TurnOffAlarm3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3UpEscalator1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3UpEscalator1],
			[IsNotSaidC1M3UpEscalator1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3UpEscalator1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3UpEscalator2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3UpEscalator2],
			[IsNotSaidC1M3UpEscalator2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3UpEscalator1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3UpEscalator3Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC1M3UpEscalator3],
			[IsNotSaidC1M3UpEscalator3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3UpEscalator1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_busblockTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_busblock],
			[IsNotSaidc2m1_busblock],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_busblockMechanic,
				followup = RThen("producer", "_C2M1MonsterTruck", null, 0.02),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_busblock", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.499 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_checkroomsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_checkrooms],
			[IsNotSaidc2m1_checkrooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_checkroomsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_checkrooms", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.459 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_cliffTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_cliff],
			[IsNotSaidc2m1_cliff],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_cliffMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_cliff", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.248 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_downstairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_downstairs],
			[IsNotSaidc2m1_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_downstairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_downstairs", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.547 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_motelsignTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectFar100],
			[ChanceToFire20Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_motelsignMechanic,
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
		name = "AUTOBLANK_PlayerRemarkc2m1_motelsignTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectFar100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_motelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_offrampTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_offramp],
			[IsNotSaidc2m1_offramp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_offrampMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_offramp", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.167 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_parkTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_park],
			[IsNotSaidc2m1_park],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_parkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_park", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.273 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_poolTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_pool],
			[IsNotSaidc2m1_pool],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_poolMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_pool", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.694 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_searchlightsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_searchlightsMechanic,
				followup = RThenAny("_c2m1_searchlights01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_searchlights", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.371 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_throughhereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_throughhere],
			[IsNotSaidc2m1_throughhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_throughhereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughhere", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.718 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_throughmotelTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_throughmotel],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_throughmotelMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughmotel", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.976 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_throughwindowTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_throughwindow],
			[IsNotSaidc2m1_throughwindow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_throughwindowMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughwindow", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.042 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_uphillTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_uphill],
			[IsNotSaidc2m1_uphill],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_uphillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_uphill", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.63 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_upstairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m1_upstairs],
			[IsNotSaidc2m1_upstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_upstairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_upstairs", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.269 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_cottoncandyTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m2_cottoncandy],
			[IsNotSaidc2m2_cottoncandy],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotCoachFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m2_cottoncandyMechanic,
				followup = RThen("coach", "_C2M2_CottonCandy01", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_cottoncandy", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.708 },
			c3 = { context = "_auto_CoachFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_cottoncandy2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m2_cottoncandy2],
			[IsNotSaidc2m2_cottoncandy],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotCoachFoodBreak],
			[_auto_NotAlarmV2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m2_cottoncandyMechanic,
				followup = RThen("coach", "_C2M2_CottonCandy01", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_cottoncandy", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.708 },
			c3 = { context = "_auto_CoachFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_entrancesignTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m2_entrancesign],
			[IsNotSaidc2m2_entrancesign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m2_entrancesignMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_entrancesign", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.331 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_CottonCandy01Trevor",
		criteria = 
		[
			[Concept_C2M2_CottonCandy01],
			[IsTrevor],
			[NotInCombat],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_CottonCandy01Mechanic,
				followup = RThen("coach", "_C2M2_CottonCandy01", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 10.109 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_kiddielandTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m2_kiddieland],
			[IsNotSaidc2m2_kiddieland],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m2_kiddielandMechanic,
				followup = RThenAny("_C2M2_Kiddie01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_kiddieland", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.403 },
			c3 = { context = "_auto_CoachFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_topofslideTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m2_topofslide],
			[IsNotSaidc2m2_topofslide],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m2_topofslideMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_topofslide", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_coasteroffTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_coasteroff],
			[IsNotSaidc2m3_coasteroff],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_coasteroffMechanic,
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
		name = "PlayerRemarkc2m3_coollightTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_coollight],
			[IsNotSaidc2m3_coollight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_coollightMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_coollight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_coollightNickTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_coollight],
			[IsNotSaidc2m3_coollight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsGamblerNear200],
			[IsGamblerAlive],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_coollightNickMechanic,
				followup = RThen("gambler", "_c2m3_coollight", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_coollight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_holeTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_hole],
			[IsNotSaidc2m3_hole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_holeMechanic,
				followup = RThenAny("_c2m3_hole01", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_hole", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_overfenceTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_overfence],
			[IsNotSaidc2m3_overfence],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_overfenceMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_overfence", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_screamingoakTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_screamingoak],
			[IsNotSaidc2m3_screamingoak],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_screamingoakMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_screamingoak", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_swanpileupTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_swanpileup],
			[IsNotSaidc2m3_swanpileup],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_swanpileupMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_swanpileup", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_swanroomTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_swanroom],
			[IsNotSaidc2m3_swanroom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_swanroomMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_swanroom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_tracks01Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_tracks01],
			[IsNotSaidc2m3_tracks01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks02Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_tracks02],
			[IsNotSaidc2m3_tracks02],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks03Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_tracks03],
			[IsNotSaidc2m3_tracks03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks04Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_tracks04],
			[IsNotSaidc2m3_tracks04],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks05Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_tracks05],
			[IsNotSaidc2m3_tracks05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks06Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_tracks06],
			[IsNotSaidc2m3_tracks06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks07Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_tracks07],
			[IsNotSaidc2m3_tracks07],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks08Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_tracks08],
			[IsNotSaidc2m3_tracks08],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_ventTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_vent],
			[IsNotSaidc2m3_vent],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_ventMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_vent", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_waterTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_water],
			[IsNotSaidc2m3_water],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_waterMechanic,
				followup = RThenAny("_c2m3_water01", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_water", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkc2m3_waterTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_water],
			[IsNotSaidc2m3_water],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_water", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_wayblockedTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m3_wayblocked],
			[IsNotSaidc2m3_wayblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_wayblockedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_wayblocked", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_barnentryTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m4_barnentry],
			[IsNotSaidc2m4_barnentry],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m4_barnentryMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_barnentry", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_bumpercarsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m4_bumpercars],
			[IsNotSaidc2m4_bumpercars],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m4_bumpercarsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_bumpercars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_pendoorTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m4_pendoor],
			[IsNotSaidc2m4_pendoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m4_pendoorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_pendoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_moustachioTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m4_moustachio],
			[IsNotSaidc2m4_moustachio],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m4_moustachioMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_moustachio", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_stadiumTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m4_stadium],
			[IsNotSaidc2m4_stadium],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m4_stadiumMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_stadium", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_upbarnTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m4_upbarn],
			[IsNotSaidc2m4_upbarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m4_upbarnMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_upbarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m5_button2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc2m5_button2],
			[IsNotSaidc2m5_button2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
				func = Custom_Talker_Trevor.PlayerRemarkc2m5_button2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m5_button2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3BridgeDownTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3BridgeDown],
			[IsNotSaidC3M3BridgeDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3BridgeDownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3BridgeDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M1NoSwimmingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M1NoSwimming],
			[IsNotSaidC3M1NoSwimming],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M1NoSwimmingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1NoSwimming", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m2_parachutistTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc3m2_parachutist],
			[IsNotSaidc3m2_parachutist],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 10
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc3m2_parachutistMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m2_parachutist", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m2_overtreeTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M2OverTree],
			[IsNotSaidC3M2OverTree],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc3m2_overtreeMechanic,
				followup = RThenAny("_C3M2Pirogue", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2OverTree", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2PlaneCrashTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M2PlaneCrash],
			[IsNotSaidC3M2PlaneCrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear600],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkTrevor],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M2PlaneCrashMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneCrash", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.419 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2PlaneDoorNagTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M2PlaneDoorNag],
			[IsNotSaidC3M2PlaneDoorNag],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear500],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M2PlaneDoorNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneDoorNag", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
			c3 = { context = "Talk", value = 1, duration = 2.27 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2PlaneDoorNagaTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsSaidC3M2PlaneDoorNag],
			[IsNotSaidC3M2OpenDoor],
			[ismapc3m2_swamp],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotZombiePresentTank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M2PlaneDoorNagaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 40.0 },
			c3 = { context = "Talk", value = 1, duration = 1.66 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2RoadTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M2Road],
			[IsNotSaidC3M2Road],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M2RoadMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2Road", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.154 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M2LeavingSafeRoomTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsTrevor],
			[IsNotSaidLeavingSafeArea],
			[ismapc3m2_swamp],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M2StartMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.547 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2StartDryTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M2StartDry],
			[IsNotSaidC3M2StartDry],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M2StartDryMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2StartDry", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.497 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2UnderWaterShackTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M2UnderWaterShack],
			[IsNotSaidC3M2UnderWaterShack],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M2UnderWaterShackMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2UnderWaterShack", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.38 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C3M2UnderwaterShackTrevor",
		criteria = 
		[
			[Concept_C3M2UnderwaterShack],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C3M2UnderwaterShackMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkC3M2Village1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M2Village1],
			[IsNotSaidC3M2Village1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear800],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M2Village1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2Village1", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.848 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3LowerGateTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3LowerGate],
			[IsNotSaidC3M3BridgeButton],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3LowerGateMechanic,
				followup = RThenAny("InfoRemC3M3LowerGatea", 10.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3LowerGate", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3SearchHousesTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3SearchHouses],
			[IsNotSaidC3M3SearchHouses],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3SearchHousesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3SearchHouses", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3StairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3Stairs],
			[IsNotSaidC3M3Stairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3StairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3Stairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3StayUpHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3StayUpHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3StayUpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3StayUpHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3StayUpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3ThisWayTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3ThisWayMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3ThisWayTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3ThroughHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3ThroughHere],
			[IsNotSaidC3M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3ThroughHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3ThroughThisHouseTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3ThroughThisHouse],
			[IsNotSaidC3M3ThroughThisHouse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3ThroughThisHouseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughThisHouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3UpHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3UpHere],
			[IsNotSaidC3M3UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear100],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3UpHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3UsePlanksTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3UsePlanks],
			[IsNotSaidC3M3UsePlanks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC3M3UsePlanksMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UsePlanks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3UsePlanksTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3UsePlanks],
			[IsNotSaidC3M3UsePlanks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UsePlanks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m4downroadTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc3m4downroad],
			[IsNotSaidc3m4downroad],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc3m4downroadMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4downroad", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m4radioTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc3m4radio],
			[IsNotSaidc3m4radio],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc3m4radioMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4radio", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.228 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C3M4_RadioTrevor",
		criteria = 
		[
			[Concept_C3M4_Radio],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C3M4_RadioMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.507 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m4scaffoldTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc3m4scaffold],
			[IsNotSaidc3m4scaffold],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc3m4scaffoldMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m4shacksTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc3m4shacks],
			[IsNotSaidc3m4shacks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc3m4shacksMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4shacks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_carcrashTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear500],
			[IsWorldTalkTrevor],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m1_carcrashMechanic,
				followup = RThenAny("c4m1_wreck01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_carcrash", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkc4m1_carcrashTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_carcrash", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_garagesaleTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m1_garagesale],
			[IsNotSaidc4m1_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m1_garagesaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_nogasTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m1_nogasMechanic,
				followup = RThenAny("c4m1_nogas01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_nogas", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.929 },
			c3 = { context = "_auto_NoGasGate", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_playgroundfarTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear1000],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m1_playgroundfarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_playgroundnearTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m1_playgroundnearMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_throughhereATrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m1_throughhereA],
			[IsNotSaidc4m1_throughhereA],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m1_throughhereAMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_throughhereA", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m2_gasinsidesignTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_gasinsidesign],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear350],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_gasinsidesignMechanic,
				followup = RThenAny("_c4m2_gasinside01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_gasinsidesign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m2_millentranceTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_millentrance],
			[IsNotSaidc4m2_millentrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_millentranceMechanic,
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
		name = "PlayerRemarkc4m2_millentranceexitTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_millentranceexit],
			[IsNotSaidc4m2_millentranceexit],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_millentranceexitMechanic,
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
		name = "PlayerRemarkc4m2_seegasstationTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_seegasstation],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_seegasstationMechanic,
				followup = RThen("self", "_c4m2_seestation01", null, 0.01),
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
		name = "PlayerRemarkc4m2_streetblockedTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_streetblocked],
			[IsNotSaidc4m2_streetblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_streetblockedMechanic,
				followup = RThenAny("_c4m2_streetblocked01", 0.01),
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
		name = "PlayerRemarkc4m2_uprampTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_upramp],
			[IsNotSaidc4m2_upramp],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_uprampMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upramp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m2_upthestairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_upthestairs],
			[IsNotSaidc4m2_upthestairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_upthestairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upthestairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m2_useelevatorTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_useelevator],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsSaidc4m2_seegasstation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_useelevatorMechanic,
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
		name = "PlayerRemarkc4m2_waterpoolTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_waterpool],
			[IsNotSaidc4m2_waterpool],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_waterpoolMechanic,
				followup = RThenAny("_c4m2_waterpool02", 0.01),
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
		name = "PlayerRemarkc4m2_weatherTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m2_weather],
			[IsNotSaidc4m2_weather],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_weatherMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_weather", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_caneTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_cane],
			[IsNotSaidc4m3_cane],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_caneMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_cane", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_crosshereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_crosshere],
			[IsNotSaidc4m3_crosshere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_crosshereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_crosshere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_downhereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_downhere],
			[IsNotSaidc4m3_downhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_downhereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downhere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_downstairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_downstairs],
			[IsNotSaidc4m3_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_downstairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downstairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_ducatelsignTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_ducatelsign],
			[IsNotSaidc4m3_ducatelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_ducatelsignMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_ducatelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_elevatorTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_elevator],
			[IsNotSaidc4m3_elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_elevatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_overtankTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_overtank],
			[IsNotSaidc4m3_overtank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_overtankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_overtank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_rainTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_rain],
			[IsNotSaidc4m3_rain],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_rainMechanic,
				followup = RThenAny("_c4m3_rain01", 0.02),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_rain", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_thiswayTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_thisway],
			[IsNotSaidc4m3_thisway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m2_millentranceexitMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_thisway", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_uppipesTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m3_uppipes],
			[IsNotSaidc4m3_uppipes],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m3_uppipesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_uppipes", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_floodedTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m4_flooded],
			[NotInCombat],
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
				func = Custom_Talker_Trevor.PlayerRemarkc4m4_floodedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSaferoomRemarkIntro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_garagesaleTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m4_garagesale],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m4_garagesaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_garagesale2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m4_garagesale2],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m4_garagesaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_playgroundTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m4_playground],
			[IsNotSaidc4m4_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m4_playgroundMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_porchlightTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m4_porchlight],
			[IsNotSaidc4m4_porchlight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m4_porchlightMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_porchlight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_truckwreckTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m4_truckwreck],
			[IsNotSaidc4m4_truckwreck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m4_truckwreckMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_truckwreck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_useroofsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m4_useroofs],
			[IsNotSaidc4m4_useroofs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m4_useroofsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_useroofs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkpathc2m1_billboardTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Ispathc2m1_billboard],
			[IsNotSaidpathc2m1_billboard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkTrevor],
			[IsSubjectNear1000],
			[IsWorldTalkTrevor],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkpathc2m1_billboardMechanic,
				followup = RThen("Coach", "_C2M1Billboard", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidpathc2m1_billboard", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkremark_caralarmTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isremark_caralarm],
			[IsNotSaidremark_caralarm],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear700],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkremark_caralarmMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkremark_MidnightRidersBusTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkremark_MidnightRidersBusMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1CedaMapsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M1CedaMaps],
			[IsNotSaidWorldC1M1CedaMaps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M1CedaMapsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1CedaMaps", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 5.579 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1DownHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M1DownHere],
			[IsNotSaidWorldC1M1DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M1DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1DownStairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M1DownStairs],
			[IsNotSaidWorldC1M1DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M1DownStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1ElevatorBrokenTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M1ElevatorBroken],
			[IsNotSaidWorldC1M1ElevatorBroken],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M1ElevatorBrokenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1ElevatorBroken", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1FireSpreadingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M1FireSpreading],
			[IsNotSaidWorldC1M1FireSpreading],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M1FireSpreadingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1FireSpreading", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1FirstTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M1First],
			[IsNotSaidWorldC1M1First],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M1FirstMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1First", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1LedgeTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M1Ledge],
			[IsNotSaidWorldC1M1Ledge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M1LedgeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1Ledge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1StairsSignTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M1StairsSign],
			[IsNotSaidWorldC1M1StairsSign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M1StairsSignMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1StairsSign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2CloseTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2Close],
			[IsNotSaidWorldC1M2Close],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2CloseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Close", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2DownStairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2DownStairs],
			[IsNotSaidWorldC1M2DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[TimeSinceGroupInCombat05],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2DownStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2AbandonedTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2Abandoned],
			[IsNotSaidWorldC1M2Abandoned],
			[IsNotCoughing],
			[NotInCombat],
			[IntensityZero],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2AbandonedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Abandoned", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2DumpsterTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2Dumpster],
			[IsNotSaidWorldC1M2Dumpster],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2DumpsterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Dumpster", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2GunStoreCloseTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2GunStoreClose],
			[IsNotSaidWorldC1M2GunStoreClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2GunStoreCloseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2GunStoreClose", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2InHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2InHere],
			[IsNotSaidWorldC1M2InHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2InHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2InHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2JumpTruckTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2JumpTruck],
			[IsNotSaidWorldC1M2JumpTruck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2JumpTruckMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2JumpTruck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2MallSignHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2MallSignHere],
			[IsNotSaidWorldC1M2MallSignHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2MallSignHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2MallSignHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2MallThisWayTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2MallThisWay],
			[IsNotSaidWorldC1M2MallThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2MallThisWayMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2MallThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2UpStairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC1M2UpStairs],
			[IsNotSaidWorldC1M2UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2UpStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1AmmoUpTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1AmmoUp],
			[IsNotSaidWorldC3M1AmmoUp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1AmmoUpMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1AmmoUp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1CheckingHousesTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1CheckingHouses],
			[IsNotSaidWorldC3M1CheckingHouses],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1CheckingHousesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1CheckingHouses", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FeedGatorTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1FeedGator],
			[IsNotSaidWorldC3M1FeedGator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1FeedGatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FeedGator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsWorldTalkTrevor],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1FerryCrossingMechanic,
				followup = RThen("producer", "WorldC3M1FerryCrossingE01", null, -6.143),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryCrossing", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingCoachTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsCoachAlive],
			[IsWorldTalkTrevor],
			[ChanceToFire75Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1FerryCrossingCoachMechanic,
				followup = RThen("coach", "WorldC3M1FerryCrossingG01", null, -4.268),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryCrossing", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingNickTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsGamblerAlive],
			[IsWorldTalkTrevor],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 3
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1FerryCrossingNickMechanic,
				followup = RThen("gambler", "WorldC3M1FerryCrossingI01", null, -2.234),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryCrossing", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FerryNagTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1FerryNag],
			[IsNotSaidWorldC3M1FerryNag],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear600],
			[IsNotSaidC3M1CallFerry2],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1FerryNagMechanic,
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
		name = "_C3M1CrazyMilitantsTrevor",
		criteria = 
		[
			[Concept_C3M1CrazyMilitants],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C3M1CrazyMilitantsMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC3M1FerryNagaTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSaidWorldC3M1FerryNag],
			[IsNotSaidC3M1CallFerry2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1FerryNagaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 40.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1GetBackUpTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1WeShouldGetBackUp],
			[IsNotSaidWorldC3M1WeShouldGetBackUp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1GetBackUpMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1WeShouldGetBackUp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1LitterTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1Litter],
			[IsNotSaidWorldC3M1Litter],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[ChanceToFire20Percent],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1LitterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Litter", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkWorldC3M1LitterTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1Litter],
			[IsNotSaidWorldC3M1Litter],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Litter", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1Path01Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1Path01],
			[IsNotSaidWorldC3M1Path01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1Path01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1PlanksRightTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1PlanksRight],
			[IsNotSaidWorldC3M1PlanksRight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1PlanksRightMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1PlanksRight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1StairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1Stairs],
			[IsNotSaidWorldC3M1Stairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1StairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Stairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1StayOnTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1StayOn],
			[IsNotSaidWorldC3M1StayOn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1StayOnMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1StayOn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1WalkwaysTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1Walkways],
			[IsNotSaidWorldC3M1Walkways],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear600],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1WalkwaysMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Walkways", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1WhichWayTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC3M1WhichWay],
			[IsNotSaidWorldC3M1WhichWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC3M1WhichWayMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1WhichWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC502AlarmButtonTrevor",
		criteria = 
		[
			[ConceptWorldC502AlarmButton],
			[IsTrevor],
			[IsNotCoughing],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502AlarmButtonMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502AlarmStoppedTrevor",
		criteria = 
		[
			[ConceptWorldC502AlarmStopped],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502AlarmStoppedMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502AlarmStopped2Trevor",
		criteria = 
		[
			[ConceptWorldC502AlarmStopped2],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502AlarmStopped2Mechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502AlleyTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC502Alley],
			[IsNotSaidWorldC502Alley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502AlleyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC52Alley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC502BusStoryTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC502BusStory],
			[IsNotSaidWorldC502BusStory],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[IsGamblerNear200],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[TimeSinceGroupInCombat02],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502BusStoryMechanic,
				followup = RThen("Gambler", "WorldC502BusStory2", null, -4.418),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502BusStory", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkWorldC502BusStoryTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC502BusStory],
			[IsNotSaidWorldC502BusStory],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear400],
			[IsGamblerNear200],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[TimeSinceGroupInCombat02],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502BusStory", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC502BusStory2bTrevor",
		criteria = 
		[
			[ConceptWorldC502BusStory2b],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502BusStory2bMechanic,
				followup = RThen("self", "WorldC502BusStory2c", null, -2.06),
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502BusStory2cTrevor",
		criteria = 
		[
			[ConceptWorldC502BusStory2c],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502BusStory2cMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502NotZombies2Trevor",
		criteria = 
		[
			[ConceptWorldC502NotZombies2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502NotZombies2Mechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502Run1Trevor",
		criteria = 
		[
			[ConceptWorldC502AlarmButtonRun],
			[IsTrevor],
			[IsNotCoughing],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502Run1Mechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldSignReportUnusualTrevor",
		criteria = 
		[
			[ConceptWorldSignReportUnusual2],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldSignReportUnusualMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldSignOfficialInstructionsTrevor",
		criteria = 
		[
			[ConceptWorldC502OfficialInstructions],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldSignOfficialInstructionsMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldSignQuarantineZoneTrevor",
		criteria = 
		[
			[ConceptWorldC502QuarantineZone],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldSignQuarantineZoneMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502SmellTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC502Smell],
			[IsNotSaidWorldC502Smell],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502SmellMechanic,
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
		name = "AUTOBLANK_PlayerRemarkWorldC502SmellTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC502Smell],
			[IsNotSaidWorldC502Smell],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._PlayerInfoRemarkableBlankMechanic,
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
		name = "PlayerRemarkWorldC502Smell2Trevor",
		criteria = 
		[
			[ConceptWorldC502Smell2],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502Smell2Mechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502SmellBath2Trevor",
		criteria = 
		[
			[ConceptWorldC502SmellBath2],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear300],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC502SmellBath2Mechanic,
				followup = RThen("Gambler", "WorldC502SmellBath3", null, -2.916),
			},
		],
	},

	{
		name = "PlayerRemarkWorldC6M1_AcrossHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_AcrossHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_AlleyBelowMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_AlleyIntoBuildingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_InAptsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_InAptsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoThePark2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_IntoThePark2],
			[IsNotSaidWorldC6M1_IntoThePark2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_IntoThePark2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_IntoThePark2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_IntoTheStoreMechanic,
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
		name = "PlayerRemarkWorldC6M1_PostWeddingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_PostWeddingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_PostWeddingZTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[IsZoeyIntroActor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_PostWeddingZMechanic,
				followup = RThenAny("WorldC6M1_PostWedding02a", -3.481),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_PostWeddingZCTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[IsZoeyIntroActor],
			[ChanceToFire20Percent],
			[IsCoachAlive],
			[IsCoachNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_PostWeddingZCMechanic,
				followup = RThen("Coach", "WorldC6M1_PostWedding01a", null, -2.761),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleyTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_SafeRoomAlleyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_ThroughBarTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_ThroughBarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_UpHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_UpTheStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_UpTheStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsWitchPresent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_WeddingWarnMechanic,
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
		name = "PlayerRemarkWorldC6M2_AcrossPlankTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_AcrossPlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_AfterGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_AfterGate2Mechanic,
				followup = RThen("Gambler", "WorldC6M2_AfterGate201a", null, -1.968),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGateNickTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_AfterGateNickMechanic,
				followup = RThen("Gambler", "WorldC6M2_AfterGate201a", null, -1.968),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_DownHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_DownIntoBuildingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalLadderTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_FinalLadderMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_FinalWaterMechanic,
				followup = RThen("Gambler", "WorldC6M2_FinalWater01a", null, -1.706),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterNickTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_FinalWaterNickMechanic,
				followup = RThen("Gambler", "WorldC6M2_FinalWater01a", null, -1.706),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_FinalWaterGoGoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InJazzClubTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_InJazzClubMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_InSewer2],
			[IsNotSaidWorldC6M2_InSewer2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsSaidWorldC6M2_InSewer1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_InSewer2Mechanic,
				followup = RThen("Producer", "WorldC6M2_InSewer202a", null, -4.622),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_InSewerLadder1Mechanic,
				followup = RThenAny("WorldC6M2_InSewerLadder101a", -2.795),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewerLadder1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_IntoConstructionMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_IntoPoolHallMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_JukeBoxTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_JukeBoxMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_JumpDownTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_JumpDownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2FallingTrevor",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsTrevor],
			[isc6m2_bedlam],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2FallingMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_OnTourWalk2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_OnTourWalk3],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_OnTourWalk3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_OpenGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OpenGate2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_OpenGate2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_Phase2Mechanic,
				followup = RThen("Producer", "WorldC6M2_Phase201a", null, -1.792),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_Phase2DownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IntensityOver75],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_Phase2DownIntenseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_PostGate1xTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_PostGate1xMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_TattooTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_TattooMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_TattooStoryTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[ExtraWeight10],
			[ChanceToFire10Percent],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_TattooStoryMechanic,
				followup = RThenAny("TrevorInterrupt", -13.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 1, duration = 14.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_TourEntranceTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_TourEntranceMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_UpCatWalkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_UpStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_UpStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_BridgeRunTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M3_BridgeRunMechanic,
				followup = RThenAny("WorldC6M3_ByBridge01", -1.803),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_BridgeRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeFrancisTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[IsFrancisIntroActor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_C6M3BridgeDown],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M3_ByBridgeFrancisMechanic,
				followup = RThen("biker", "WorldC6M3_ByBridge01", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeZoeyTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[IsZoeyIntroActor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_C6M3BridgeDown],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M3_ByBridgeZoeyMechanic,
				followup = RThen("teengirl", "WorldC6M3_ByBridge01", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldFootLockerTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldFootLockerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_BillTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M3_Bill],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
			[_auto_NotC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M3_BillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TrevorC6M3Bill", value = 1, duration = 0.0 },
			c2 = { context = "_auto_C6M3Bill", value = 1, duration = 0.0 },
			c3 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WorldC6M3LossLouisTrevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[Isc6m3_port],
			[IsNotSmartLookAuto],
			[IsSubjectNone],
			[IsManagerNear500],
			[IsWorldTalkTrevor],
			[_auto_SawC6M3Bill],
			[_auto_TrevorSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M3LossMechanic,
				followup = RThen("Manager", "c6m3_loss", null, 0.1),
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
		name = "WorldC6M3LossLouis2Trevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[Isc6m3_port],
			[IsNotSmartLookAuto],
			[IsSubjectNone],
			[IsManagerNear500],
			[IsWorldTalkTrevor],
			[_auto_SawC6M3Bill],
			[_auto_TrevorSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M3LossMechanic,
				followup = RThen("Manager", "c6m3_loss", null, 0.1),
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
		name = "WorldC6M3Loss2Trevor",
		criteria = 
		[
			[Conceptc6m3_loss],
			[IsNotCoughing],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M3Loss2Mechanic,
				followup = RThen("self", "c6m3_loss2", { from = "Trevor" }, -0.7),
			},
		],
	},

	{
		name = "WorldC6M3Loss3Trevor",
		criteria = 
		[
			[Conceptc6m3_loss2],
			[IsNotCoughing],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M3Loss3Mechanic,
				followup = RThen("self", "c6m3_loss3", { from = "Trevor" }, 0.3),
			},
		],
	},

	{
		name = "PlayerRemarkWorldSignColdBeerTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldSignColdBeer],
			[IsNotSaidWorldSignColdBeer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldSignColdBeerMechanic,
				followup = RThenAny("WorldSignColdBeer2", -2.701),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignColdBeer", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldSignPhotography2Trevor",
		criteria = 
		[
			[ConceptWorldSignPhotography2],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IssuerClose],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldSignPhotography2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.763 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldSignReportSick2Trevor",
		criteria = 
		[
			[ConceptWorldSignReportSick2],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IssuerClose],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldSignReportSick2Mechanic,
				followup = RThen("Producer", "WorldSignReportSick3", null, -1.323),
			},
		],
	},

	{
		name = "PlayerWorldSignC5AlarmWillSoundTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldSignC5AlarmWillSound],
			[IsNotSaidWorldSignC5AlarmWillSound],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear200],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldSignC5AlarmWillSoundMechanic,
				followup = RThenAny("WorldSignC5AlarmWillSound3", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignC5AlarmWillSound", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWorldSignC5AlarmWillSound3Trevor",
		criteria = 
		[
			[ConceptWorldSignC5AlarmWillSound3],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldSignC5AlarmWillSound3Mechanic,
				followup = RThen("Gambler", "WorldSignC5AlarmWillSound3c", null, -1.502),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWorldSignC5AlarmWillSound3dTrevor",
		criteria = 
		[
			[ConceptWorldSignC5AlarmWillSound3d],
			[IsTrevor],
			[IsNotCoughing],
			[NotInCombat],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldSignC5AlarmWillSound3dMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RespondAffirmativeTrevor",
		criteria = 
		[
			[ConceptRespondAffirmative],
			[IssuerMediumClose],
			[IsNotCoughing],
			[NotInCombat],
			[isTrevor],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.RespondAffirmativeMechanic,
			},
		],
	},

	{
		name = "PlayerFollowMeTrevor",
		criteria = 
		[
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerFollowMeMechanic,
			},
		],
	},

	{
		name = "PlayerHelpTrevor",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsTrevor],
			[IsNotCoughing],
			[IsTalk],
			[IsNotIncapacitated],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHelpMechanic,
			},
		],
	},

	{
		name = "PlayerHurryUpTrevor",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHurryUpMechanic,
			},
		],
	},

	{
		name = "PlayerHurryUpC4M2Trevor",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsTrevor],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSafeSpotAhead],
			[ismap_c4m2_sugarmill_a],
			[IsNotZombiePresentTank],
			[IsWorldTalkTrevor],
			[_auto_IsTrevorInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHurryUpC4M2Mechanic,
			},
		],
	},

	{
		name = "PlayerKillThatLightTrevor",
		criteria = 
		[
			[ConceptPlayerKillThatLight],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillThatLightMechanic,
			},
		],
	},

	{
		name = "PlayerLeadOnTrevor",
		criteria = 
		[
			[ConceptPlayerLeadOn],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLeadOnMechanic,
			},
		],
	},

	{
		name = "PlayerMoveOnTrevor",
		criteria = 
		[
			[ConceptPlayerMoveOn],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerMoveOnMechanic,
			},
		],
	},

	{
		name = "PlayerStayTogetherTrevor",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerStayTogetherMechanic,
			},
		],
	},

	{
		name = "PlayerWatchOutBehindTrevor",
		criteria = 
		[
			[ConceptPlayerWatchOutBehind],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWatchOutBehindMechanic,
			},
		],
	},

	{
		name = "PlayerAskReadyTrevor",
		criteria = 
		[
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerAskReadyMechanic,
			},
		],
	},

	{
		name = "PlayerImWithYouTrevor",
		criteria = 
		[
			[ConceptPlayerImWithYou],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerImWithYouMechanic,
			},
		],
	},

	{
		name = "PlayerLaughTrevor",
		criteria = 
		[
			[ConceptPlayerLaugh],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLaughMechanic,
			},
		],
	},

	{
		name = "PlayerLostCallTrevor",
		criteria = 
		[
			[ConceptPlayerLostCall],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLostCallMechanic,
			},
		],
	},

	{
		name = "PlayerNiceJobResponseTrevor",
		criteria = 
		[
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNiceJobResponseMechanic,
			},
		],
	},

	{
		name = "PlayerNoTrevor",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNoMechanic,
			},
		],
	},

	{
		name = "PlayerAnswerLostCallTrevor",
		criteria = 
		[
			[ConceptPlayerAnswerLostCall],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerAnswerLostCallMechanic,
			},
		],
	},

	{
		name = "PlayerSorryTrevor",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsNotShotTeammateTrevor],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerSorryMechanic,
			},
		],
	},

	{
		name = "PlayerSorryFFTrevor",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsShotTeammateTrevor],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerSorryFFMechanic,
			},
		],
	},

	{
		name = "PlayerThanksTrevor",
		criteria = 
		[
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerThanksMechanic,
			},
		],
	},

	{
		name = "PlayerYellRunTrevor",
		criteria = 
		[
			[ConceptPlayerYellRun],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerYellRunMechanic,
			},
		],
	},

	{
		name = "PlayerYesTrevor",
		criteria = 
		[
			[ConceptPlayerYes],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerYesMechanic,
			},
		],
	},

	{
		name = "PlayerYouAreWelcomeTrevor",
		criteria = 
		[
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerYouAreWelcomeMechanic,
			},
		],
	},

	{
		name = "YouAreWelcomeTrevor",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerYouAreWelcomeMechanic,
			},
		],
	},

	{
		name = "YouAreWelcomeCoachTrevor",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[FromIsCoach],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.YouAreWelcomeCoachMechanic,
			},
		],
	},

	{
		name = "YouAreWelcomeCoachC1Trevor",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[FromIsCoach],
			[ChanceToFire30Percent],
			[IsWorldTalkTrevor],
			[TimeSinceGroupInCombat05],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.YouAreWelcomeCoachC1Mechanic,
			},
		],
	},

	{
		name = "YouAreWelcomeGamblerTrevor",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.YouAreWelcomeGamblerMechanic,
			},
		],
	},

	{
		name = "YouAreWelcomeGamblerC1Trevor",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.YouAreWelcomeGamblerC1Mechanic,
			},
		],
	},

	{
		name = "YouAreWelcomeProducerTrevor",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.YouAreWelcomeProducerMechanic,
			},
		],
	},

	{
		name = "YouAreWelcomeProducerC1Trevor",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.YouAreWelcomeProducerC1Mechanic,
			},
		],
	},

	{
		name = "BotAttentionBattleTrevor",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsInBattlefield],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.BotAttentionBattleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "BotNoteHumanAttentionTrevor",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsInStartArea],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.BotNoteHumanAttentionMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerNegativeTrevor",
		criteria = 
		[
			[ConceptPlayerNegative],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerNegativeMechanic,
			},
		],
	},

	{
		name = "PlayerShootCarNotTrevor",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsTrevor],
			[IsNotCoughing],
			[SubjectIsNotTrevor],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkTrevor],
			[IsCarAlarm],
			[ChanceToFire60Percent],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerShootCarNotMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerShootCarTrevor",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsTrevor],
			[IsNotCoughing],
			[SubjectIsTrevor],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkTrevor],
			[IsCarAlarm],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerShootCarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerHeardBoomerTrevor",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardBoomerMechanic,
			},
		],
	},

	{
		name = "PlayerHeardHunterTrevor",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardHunterMechanic,
			},
		],
	},

	{
		name = "PlayerHeardSmokerTrevor",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardSmokerMechanic,
			},
		],
	},

	{
		name = "PlayerHeardChargerTrevor",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardChargerMechanic,
			},
		],
	},

	{
		name = "PlayerHeardSpitterTrevor",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardSpitterMechanic,
			},
		],
	},

	{
		name = "PlayerHeardJockeyTrevor",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardJockeyMechanic,
			},
		],
	},

	{
		name = "PlayerHeardBoomerC1Trevor",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowBoomer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardBoomerC1Mechanic,
			},
		],
	},

	{
		name = "PlayerHeardHunterC1Trevor",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowHunter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardBoomerC1Mechanic,
			},
		],
	},

	{
		name = "PlayerHeardSmokerC1Trevor",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowSmoker],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardBoomerC1Mechanic,
			},
		],
	},

	{
		name = "PlayerHeardChargerC1Trevor",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowCharger],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardBoomerC1Mechanic,
			},
		],
	},

	{
		name = "PlayerHeardSpitterC1Trevor",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowSpitter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardBoomerC1Mechanic,
			},
		],
	},

	{
		name = "PlayerHeardJockeyC1Trevor",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardJockeyC1Mechanic,
			},
		],
	},

	{
		name = "PlayerHeardTankTrevor",
		criteria = 
		[
			[ConceptPlayerHeardTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardTankMechanic,
			},
		],
	},

	{
		name = "PlayerHeardWitchTrevor",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHeardWitchMechanic,
			},
		],
	},

	{
		name = "PlayerHurrahTrevor",
		criteria = 
		[
			[ConceptPlayerHurrah],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHurrahMechanic,
			},
		],
	},

	{
		name = "PlayerWarnCarefulTrevor",
		criteria = 
		[
			[ConceptPlayerWarnCareful],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnCarefulMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedWorldFarTrevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWorldFarMechanic,
			},
		],
	},

	{
		name = "C6M3_PourFinishedTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsL4D1Alive],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_PourFinishedMechanic,
				followup = RThen("Manager", "L4D1_NiceJobPour", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPour20MoreSCTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Score20MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour20MoreSCMechanic,
				followup = RThen("self", "GasPour20More", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPour20MoreWaitTrevor",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsTrevor],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour20MoreWaitMechanic,
				followup = RThen("self", "GasPour20More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour10MoreSCTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Score10MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour10MoreSCMechanic,
				followup = RThen("self", "GasPour10More", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPour10MoreWaitTrevor",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsTrevor],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour10MoreWaitMechanic,
				followup = RThen("self", "GasPour10More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour1MoreSCTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Score1MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour1MoreSCMechanic,
				followup = RThen("self", "GasPour1More", null, 0.01),
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
		name = "GasPour1MoreWaitTrevor",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsTrevor],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour1MoreWaitMechanic,
				followup = RThen("self", "GasPour1More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour2MoreSCTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Score2MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour2MoreSCMechanic,
				followup = RThen("self", "GasPour2More", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPour2MoreWaitTrevor",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsTrevor],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour2MoreWaitMechanic,
				followup = RThen("self", "GasPour2More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour3MoreSCTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Score3MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour3MoreSCMechanic,
				followup = RThen("self", "GasPour3More", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPour3MoreWaitTrevor",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsTrevor],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour3MoreWaitMechanic,
				followup = RThen("self", "GasPour3More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour5MoreSCTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Score5MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour5MoreSCMechanic,
				followup = RThen("self", "GasPour5More", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPour5MoreWaitTrevor",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsTrevor],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour5MoreWaitMechanic,
				followup = RThen("self", "GasPour5More", null, 0.1),
			},
		],
	},

	{
		name = "GasPourDoneSCTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsScavenge],
			[ScoreDoneSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPourDoneSCMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPourSCTrevor",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPourSCMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "GasPourSCSoloTrevor",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPourSCSoloMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "GasPourAloneTrevor",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPourSCSoloMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "GrabbingGasSCTrevor",
		criteria = 
		[
			[ConceptPlayerEquippedScavengeItem],
			[IsTrevor],
			[IsTalk],
			[IsNotAlone],
			[IsClosestSurvivorNear500],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[NotSaidGrabbingCan],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GrabbingGasSCMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGrabbingCan", value = 1, duration = 8.0 },
		},
	},

	{
		name = "PlayerShotGasCanTrevor",
		criteria = 
		[
			[ConceptPlayerShotGasCan],
			[IsTrevor],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerShotGasCanMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerShotGasCan", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ScavengeStartTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ScavengeStartMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ScavengeStartC1M4Trevor",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[ismap_c1m4_atrium],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.ScavengeStartC1M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCommentJockeyTrevor",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsTrevor],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedTrevor],
			[IsNotBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCommentJockeyMechanic,
				followup = RThen("gambler", "commentjockey2", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCommentJockeyMaleTrevor",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsTrevor],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			[ChanceToFire25Percent],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedTrevor],
			[IsNotBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCommentJockeyMaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M2LockTheDoorCheckPointTrevor",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[ismap_c4m2_sugarmill_a],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M2LockTheDoorCheckPointMechanic,
			},
		],
	},

	{
		name = "GoingToDieCoachCoachTrevor",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotComplainBlock],
			[IsCoachAlive],
			[IsCoachNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GoingToDieCoachCoachMechanic,
				followup = RThen("coach", "coachcoaches", null, 0.5),
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "PlayerAlertGiveItemStopTrevor",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerAlertGiveItemStopMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerAlertGiveItemStopAnFirstAidTrevor",
		criteria = 
		[
			[ConceptAlertGiveItemStopFirstAidA],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[NoHasFirstAidKit],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerAlertGiveItemStopAnFirstAidMechanic,
				followup = RThen("subject", "AlertGiveItemStop", null, 0.0),
			},
		],
	},

	{
		name = "PlayerAlertGiveItemStopC1Trevor",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerAlertGiveItemStopC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerAlertGiveItemStopQnFirstAidTrevor",
		criteria = 
		[
			[ConceptBashWithItem],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsItemFirstAidKit],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerAlertGiveItemStopQnFirstAidMechanic,
				followup = RThen("subject", "AlertGiveItemStopFirstAidA", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStopFirstAid", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerCoachPouncedTrevor",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsCoach],
			[IsNotSaidCoachPounced],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCoachPouncedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CoachPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCoachPouncedC1Trevor",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsCoach],
			[IsNotSaidCoachPounced],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCoachPouncedC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCoachPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGamblerPouncedC1Trevor",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCoachPouncedC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGamblerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerEatPillsTrevor",
		criteria = 
		[
			[ConceptEatPills],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerEatPillsMechanic,
			},
		],
	},

	{
		name = "PlayerGamblerPouncedTrevor",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGamblerPouncedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "GamblerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGetInsideCheckPointTrevor",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGetInsideCheckPointMechanic,
				followup = RThenAny("StayTogetherInsideReponse", -1.898),
			},
		],
	},

	{
		name = "PlayerStayTogetherSaferoomTrevor",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsTrevor],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerStayTogetherSaferoomMechanic,
			},
		],
	},

	{
		name = "PlayerGetInsideCheckPointC2M2Trevor",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[ismap_c2m2],
			[IsNotCoughing],
			[IsTrevor],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGetInsideCheckPointC2M2Mechanic,
				followup = RThenAny("StayTogetherInsideReponse", 0.3),
			},
		],
	},

	{
		name = "PlayerGrabbedByJockeyTrevor",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGrabbedByJockeyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedTrevor", value = 1, duration = 6.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGrabbedByJockeyC1Trevor",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGrabbedByJockeyC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedTrevor", value = 1, duration = 6.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGrenadeMolotovTrevor",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsGrenadeMolotov],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGrenadeMolotovMechanic,
				followup = RThenAny("GrenadeCareful", -0.821),
			},
		],
	},

	{
		name = "PlayerGrenadeMolotovTankTrevor",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsGrenadeMolotov],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGrenadeMolotovTankMechanic,
			},
		],
	},

	{
		name = "PlayerGrenadePipeBombTrevor",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsGrenadePipeBomb],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGrenadePipeBombMechanic,
				followup = RThenAny("GrenadeCareful", -0.579),
			},
		],
	},

	{
		name = "PlayerGrenadeVomitJarTrevor",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsGrenadeVomitJar],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGrenadeVomitJarMechanic,
				followup = RThenAny("GrenadeCareful", -1.598),
			},
		],
	},

	{
		name = "PlayerGrenadeVomitJarTankTrevor",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsGrenadeVomitJar],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGrenadeVomitJarTankMechanic,
			},
		],
	},

	{
		name = "PlayerGrenadeVomitJarC1Trevor",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsGrenadeVomitJar],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGrenadeVomitJarC1Mechanic,
				followup = RThenAny("GrenadeCareful", -1.517),
			},
		],
	},

	{
		name = "PlayerIncapacitatedInitialTrevor",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerIncapacitatedInitialMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerIncapacitatedInitialC1M2Trevor",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsTrevor],
			[ismap_c1m2_streets],
			[IsC1M2WhitakerErrand],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerIncapacitatedInitialC1M2Mechanic,
				followup = RThen("orator", "C1M2SurvivorDown", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerKillConfirmationTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectFar300],
			[ChanceToFire40Percent],
			[isNotmap_c1m1_hotel],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillConfirmationMechanic,
				followup = RThenAny("PlayerNiceShot", -0.399),
			},
		],
	},

	{
		name = "PlayerKillConfirmationC1M1Trevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkTrevor],
			[IsUsingFirearm],
			[IsSubjectFar300],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillConfirmationC1M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
			c2 = { context = "FirstKill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerKillConfirmationC1M1MeleeTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkTrevor],
			[EquippedMeleeWeapon],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillConfirmationC1M1MeleeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
			c2 = { context = "FirstKill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "KillStealTrevor",
		criteria = 
		[
			[ConceptKillSteal],
			[IsNotCoughing],
			[IsTrevor],
			[IssuerReallyClose],
			[IsTrevorAlsoWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.KillStealMechanic,
				followup = RThen("self", "RightfulKiller", { from = "Trevor" }, -0.953),
			},
		],
	},

	{
		name = "InsistMineTrevor",
		criteria = 
		[
			[ConceptInsistMine],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.InsistMineMechanic,
				followup = RThen("self", "KillStealCalledOut", { from = "Trevor" }, -1.545),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 1.1 },
		},
	},

	{
		name = "PlayerKillSpitterConfirmationTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsSpitter],
			[IsSubjectNear250],
			[ChanceToFire20Percent],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillSpitterConfirmationMechanic,
			},
		],
	},

	{
		name = "PlayerKillSpitterGamblerTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsSpitter],
			[IsGamblerNear400],
			[ChanceToFire20Percent],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillSpitterGamblerMechanic,
			},
		],
	},

	{
		name = "PlayerKillTankConfirmationTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsRocking],
			[IsWorldTalkTrevor],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillTankConfirmationMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerKillTankNotHealthyTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsNotHealthy],
			[IsWorldTalkTrevor],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillTankNotHealthyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerKillTankConfirmationC1M2Trevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[ismap_c1m2_streets],
			[IsEveryoneAlive],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerKillTankConfirmationC1M2Mechanic,
				followup = RThen("trevor", "C1M2TankInfo", null, 0.1),
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
		name = "PlayerCr0wnedWitchTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsTrevor],
			[SubjectIsAWitch],
			[IsNotWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
	},

	{
		name = "PlayerKilledStartledWitchTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsTrevor],
			[SubjectIsAWitch],
			[IsWitchAggro],
			[WitchaggroDecrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:--1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerLockTheDoorCheckPointTrevor",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsInSafeSpot],
			[IsNotAlone],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLockTheDoorCheckPointMechanic,
			},
		],
	},

	{
		name = "PlayerLockTheDoorCheckPointC1Trevor",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsInSafeSpot],
			[IsNotAlone],
			[ismap_c1m1_hotel],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLockTheDoorCheckPointC1Mechanic,
			},
		],
	},

	{
		name = "PlayerProducerPouncedTrevor",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerProducerPouncedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerProducerPouncedC1Trevor",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerProducerPouncedC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRevivedByDefibrillatorTrevor",
		criteria = 
		[
			[ConceptRevivedByDefibrillator],
			[IsNotCoughing],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRevivedByDefibrillatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRevivedByDefibrillator2Trevor",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRevivedByDefibrillator2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestMeHealthTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[IsNotSuggestedHealth],
			[YesHasFirstAidKit],
			[IsTrevor],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerSuggestMeHealthMechanic,
				followup = RThenAny("PlayerSuggestHealth", 0.0),
			},
		],
	},

	{
		name = "PlayerSuggestHealthGenericTrevor",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsTrevor],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerSuggestHealthGenericMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthC1Trevor",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsTrevor],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerSuggestHealthC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthCoachTrevor",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsTrevor],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerSuggestHealthCoachMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthGamblerTrevor",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsTrevor],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerSuggestHealthGamblerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthProducerTrevor",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsTrevor],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerSuggestHealthProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionTrevor",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerTransitionMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionCloseTrevor",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerTransitionCloseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC1M2Trevor",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[ismap_c1m2_streets],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerTransitionC1M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionCloseC1M2Trevor",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[ismap_c1m2_streets],
			[IsNotAlone],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerTransitionCloseC1M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC1M3Trevor",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[ismap_c1m3_mall],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerTransitionC1M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC2M1Trevor",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[ismap_c2m1],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerTransitionC2M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC5M4Trevor",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsMapc5m4_quarter],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerTransitionC5M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC6M2Trevor",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Isc6m2_bedlam],
			[IsZoeyIntroActor],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerTransitionC6M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerUsingDefibrillatorTrevor",
		criteria = 
		[
			[ConceptPlayerUsingDefibrillator],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerUsingDefibrillatorMechanic,
			},
		],
	},

	{
		name = "PlayerWarnHeardBoomerTrevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardBoomerMechanic,
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
		name = "PlayerWarnHeardChargerTrevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardChargerMechanic,
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
		name = "PlayerWarnHeardHunterTrevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardHunterMechanic,
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
		name = "PlayerWarnHeardJockeyTrevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardJockeyMechanic,
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
		name = "PlayerWarnHeardJockeyC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardJockeyC1Mechanic,
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
		name = "PlayerWarnHeardSmokerTrevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardSmokerMechanic,
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
		name = "PlayerWarnHeardSpitterTrevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardSpitterMechanic,
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
		name = "PlayerWarnHeardBoomerC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardChargerC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardHunterC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardSmokerC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardSpitterC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardWitchTrevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsTrevor],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[_auto_NotAlarmV2],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardWitchMechanic,
				followup = RThenAny("PlayerKillThatLight", -1.652),
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
		name = "PlayerWarnHeardWitchC1Trevor",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsTrevor],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardWitchC1Mechanic,
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
		name = "PlayerHeardWitchC1Trevor",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnHeardWitchC1Mechanic,
			},
		],
	},

	{
		name = "Player_C1WorseThanZombiesTrevor",
		criteria = 
		[
			[ConceptPlayer_C1WorseThanZombies],
			[IsTrevor],
			[IssuerClose],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_C1WorseThanZombiesMechanic,
			},
		],
	},

	{
		name = "PlayerWarnMegaMobTrevor",
		criteria = 
		[
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSpeaking],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnMegaMobMechanic,
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
		name = "PlayerWarnWitchAngryTrevor",
		criteria = 
		[
			[ConceptWitchGettingAngry],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotWarnAngryWitch],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWarnWitchAngryMechanic,
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
		name = "PlayerWorldIntroC31BlankTrevor",
		criteria = 
		[
			[ConceptintroC3M1],
			[IsTrevor],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldIntroC31BlankMechanic,
				followup = RThenAny("WorldIntroC31", 5.0),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWorldIntroC51Trevor",
		criteria = 
		[
			[ConceptintroC5M1],
			[IsTrevor],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWorldIntroC51Mechanic,
				followup = RThen("orator", "C5M1_intro001", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorCaughtVomitTrevor",
		criteria = 
		[
			[ConceptPlayerVomitInFace],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorCaughtVomitMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 10.0 },
		},
	},

	{
		name = "SurvivorchargerpoundTrevor",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidchargerpound],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorchargerpoundMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorchargerpoundC1Trevor",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidchargerpound],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorchargerpoundC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorCoughingTrevor",
		criteria = 
		[
			[ConceptSurvivorCoughing],
			[IsCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorCoughingMechanic,
			},
		],
	},

	{
		name = "SurvivorCoughingDeathTrevor",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorCoughingMechanic,
			},
		],
	},

	{
		name = "SurvivorDeathTrevor",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorDeathMechanic,
			},
		],
	},

	{
		name = "SurvivorGooedBySpitterTrevor",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkTrevor],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorGooedBySpitterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorGooedBySpitterC1Trevor",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorGooedBySpitterC1Mechanic,
				followup = RThen("trevor", "Player.GooedBySpitterC1R", null, -2.951),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorGrabbedByTongueTrevor",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorGrabbedByTongueMechanic,
			},
		],
	},

	{
		name = "SurvivorGrabbedByTongueC1Trevor",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorGrabbedByTongueC1Mechanic,
			},
		],
	},

	{
		name = "SurvivorNearCheckpointTrevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC1M1Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c1m1_hotel],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC1M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC1M2Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c1m2_streets],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC1M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC1M3Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c1m3_mall],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC1M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC2M1Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c2m1],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC2M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC2M2Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c2m2],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC2M2Mechanic,
				followup = RThenAny("_C2M2_SeeSafehouse01", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC2M3Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c2m3],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC2M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC2M4Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c2m4],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC2M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC3M1Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c3m1_plankcountry],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC3M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC3M2Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismapc3m2_swamp],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC3M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3SafeHouseAheadTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC3M3SafeHouseAhead],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC3M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC4M1Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c4m1_milltown_a],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC4M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC4M2Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[ismap_c4m2_sugarmill_a],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC4M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC4M3Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[isc4m3],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC4M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC4M4Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[isc4m4],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC4M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC5M2Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[IsMapc5m2_park],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC5M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC5M3Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[IsMapc5m3_cemetery],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC5M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC5M4Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[IsMapc5m4_quarter],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC5M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC6M1Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[Isc6m1_riverbank],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC6M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC6M2Trevor",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[Isc6m2_bedlam],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearCheckpointC6M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleTrevor",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearFinaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC1M4Trevor",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[ismap_c1m4_atrium],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC2M5Trevor",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[ismap_c2m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearFinaleC2M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC3M4Trevor",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[ismapc3m4_plantation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearFinaleC3M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC4M5Trevor",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[isc4m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC5M5Trevor",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[IsMapc5m5_bridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC6M3Trevor",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[Isc6m3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPouncedByHunterTrevor",
		criteria = 
		[
			[ConceptScreamWhilePounced],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPouncedByHunterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorTankPoundTrevor",
		criteria = 
		[
			[ConceptPlayerGroundPoundedByTank],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorTankPoundMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorVocalizeBackUpTrevor",
		criteria = 
		[
			[ConceptPlayerBackUp],
			[IsTrevor],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorVocalizeBackUpMechanic,
			},
		],
	},

	{
		name = "SurvivorVocalizeEmphaticGoTrevor",
		criteria = 
		[
			[ConceptPlayerEmphaticGo],
			[IsTrevor],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorVocalizeEmphaticGoMechanic,
			},
		],
	},

	{
		name = "SurvivorVocalizeGoingToDieTrevor",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotComplainBlock],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorVocalizeGoingToDieMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "SurvivorVocalizeGoingToDie3Trevor",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsTrevor],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotComplainBlock],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorVocalizeGoingToDie3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "SurvivorVocalizeLookOutTrevor",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorVocalizeLookOutMechanic,
			},
		],
	},

	{
		name = "SurvivorVocalizeThisWayTrevor",
		criteria = 
		[
			[ConceptPlayerThisWay],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorVocalizeThisWayMechanic,
			},
		],
	},

	{
		name = "SurvivorVocalizeWaitHereTrevor",
		criteria = 
		[
			[ConceptPlayerWaitHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorVocalizeWaitHereMechanic,
			},
		],
	},

	{
		name = "SurvivorWarnSpitterIncomingTrevor",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorWarnSpitterIncomingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},

	{
		name = "SurvivorWarnSpitterIncomingC1Trevor",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidWarnSpitterIncoming],
			[C1M1orC1M2],
			[IsWorldTalkTrevor],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorWarnSpitterIncomingC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerLedgeHangEndTrevor",
		criteria = 
		[
			[ConceptPlayerLedgeHangEnd],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLedgeHangEndMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeHangMiddleTrevor",
		criteria = 
		[
			[ConceptPlayerLedgeHangMiddle],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLedgeHangMiddleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeHangStartTrevor",
		criteria = 
		[
			[ConceptPlayerLedgeHangStart],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLedgeHangStartMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorFirstDeathTrevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsTrevor],
			[IsEveryoneAlive],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorFirstDeathMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFirstDeathC1Trevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsTrevor],
			[IsEveryoneAlive],
			[IsNotSaidSomeoneDied],
			[ismap_c1m1_hotel],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkTrevor],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorFirstDeathC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DeathOneTrevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsTrevor],
			[IsWithTwo],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DeathOneMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DoubleDeathTrevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsClosestSurvivorNear400],
			[IsWithOnlyThree],
			[IsNotIncapacitated],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DoubleDeathMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DoubleDeathProducerTrevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsProducerAlive],
			[IsProducerNear400],
			[IsWithOnlyThree],
			[ChanceToFire100Percent],
			[IsNotIncapacitated],
			[IsNotDeadProducer],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DoubleDeathProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "TeamKillTrevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.TeamKillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "TeamKillFromCoachTrevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.TeamKillFromCoachMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "TeamKillFromGamblerTrevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.TeamKillFromGamblerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "TeamKillFromProducerTrevor",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.TeamKillFromProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakeSubMachineGunTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsPickedUpSMG],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakeSubMachineGunSilencedTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakePumpShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsPickedUpPumpShotgun],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakeChromeShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsPickedUpShotgun_Chrome],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakeCSSMP5Trevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsPickedUpSmg_mp5],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorDeployUpExplosivesTrevor",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSaidDeployUpgradePack_Explosive],
			[HasUpgradePack_Explosive],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorDeployUpExplosivesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Explosive", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorDeployUpIncendiaryTrevor",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSaidDeployUpgradePack_Incendiary],
			[HasUpgradePack_Incendiary],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorDeployUpIncendiaryMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Incendiary", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAdrenalineTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpAdrenaline],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupAdrenalineMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAutoShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpAutoShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupAutoShotgunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSpasShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpShotgun_spas],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupAutoShotgunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupbaseball_batTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpbaseball_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupbaseball_batMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupShovelTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpShovel],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupShovelMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupchainsawTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpchainsaw],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupchainsawMechanic,
				followup = RThen("All", "AskWhat", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupKnifeTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpKnife],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupKnifeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupcricket_batTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpcricket_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupcricket_batMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPitchforkTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpPitchfork],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupPitchforkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupCrowBarTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpCrowBar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupCrowBarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupDefibrillatorTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpDefibrillator],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupDefibrillatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupelectric_guitarTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpelectric_guitar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupelectric_guitarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFireAxeTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpFireAxe],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupFireAxeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFirstAidKitTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpFirstAidKit],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupFirstAidKitMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFirstSMGTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidPickupFirstSMG],
			[IsSaidC1M1OpenDoor],
			[ExtraWeight10],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupFirstSMGMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstSMG", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPickupFryingPanTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpFryingPan],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupFryingPanMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupGolfCLubTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupGolfCLubMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupGrenadeLauncherTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpGrenadeLauncher],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupGrenadeLauncherMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupGunC1M2Trevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSpeaking],
			[IsTalk],
			[IsSaidC1M2InsideGunShop],
			[IsNotPickedUpFirstAidKit],
			[IsNotPickedUpAmmo],
			[IsNotPickedUpVomitJar],
			[IsNotPickedUpLaserSights],
			[IsNotPickedUpAdrenaline],
			[IsNotPickedUpPainPills],
			[IsNotPickedUpMolotov],
			[IsNotPickedUpPipeBomb],
			[IsWorldTalkTrevor],
			[IsNotSaidC1M2InsideGunShopPickUp],
			[ChanceToFire50Percent],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupGunC1M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2InsideGunShopPickUp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPickupHuntingRifleTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpHuntingRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupHuntingRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMilitarySniperTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpSniper_Military],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupHuntingRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupScoutSniperTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpSniper_scout],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupHuntingRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAWPSniperTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpSniper_awp],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupHuntingRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupIncendiaryAmmoTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpIncendiaryAmmo],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupIncendiaryAmmoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupKatanaTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpKatana],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupKatanaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupLaserSightsAlwaysTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotNotAvailable],
			[ChanceToFire50Percent],
			[NotPickedUpItem],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupLaserSightsAlwaysMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupM60Trevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupM60Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMacheteTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpMachete],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupMacheteMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMagnumTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpMagnum],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupMagnumMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMolotovTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpMolotov],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupMolotovMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPainPillsTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpPainPills],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupPainPillsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPipeBombTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpPipeBomb],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupPipeBombMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPumpShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpPumpShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupPumpShotgunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupChromeShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpShotgun_Chrome],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupPumpShotgunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupRifleTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupDesertRifleTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpRifle_Desert],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupDesertRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAK47RifleTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpRifle_AK47],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupDesertRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSG552RifleTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpRifle_sg552],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupDesertRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSecondPistolTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpSecondPistol],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupSecondPistolMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSMGTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpSMG],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupSMGMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSilencedSMGTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpSMG_silenced],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupSMGMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMP5SMGTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpSMG_mp5],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupSMGMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickuptonfaTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUptonfa],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickuptonfaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpExplosiveAmmoTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpExplosiveAmmo],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupUpExplosiveAmmoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpExplosivesTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpUpgradePack_Explosive],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupUpExplosivesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpIncendiaryTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpUpgradePack_Incendiary],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupUpIncendiaryMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupVomitJarTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpVomitJar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupVomitJarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupVomitJarAlwaysC1Trevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpVomitJar],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupVomitJarAlwaysC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "PlayerGettingRevivedTrevor",
		criteria = 
		[
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGettingRevivedMechanic,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "Trevor" }, -0.608),
			},
		],
	},

	{
		name = "PlayerGettingRevivedCrybabyTrevor",
		criteria = 
		[
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsTrevor],
			[IsTrevorCrybaby],
			[FromIsProducer],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerGettingRevivedCrybabyMechanic,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "Trevor" }, -1.447),
			},
		],
	},

	{
		name = "PlayerHealOtherTrevor",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[NotInIntenseCombat],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHealOtherMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerHealOtherC1Trevor",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[NotInIntenseCombat],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHealOtherC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerHealOtherCombatTrevor",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[InIntenseCombat],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHealOtherCombatMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerHealOtherTankTrevor",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkTrevor],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerHealOtherCombatMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeSaveTrevor",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLedgeSaveMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendTrevor",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReviveFriendMechanic,
				followup = RThen("Subject", "ReviveFriendDown", null, -0.664),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerReviveFriendBTrevor",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReviveFriendBMechanic,
			},
		],
	},

	{
		name = "PlayerReviveFriendCriticalTrevor",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReviveFriendCriticalMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudTrevor",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsTrevor],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReviveFriendLoudMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeSaveCriticalTrevor",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerLedgeSaveMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoud2Trevor",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsTrevor],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReviveFriendLoudMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudCritTrevor",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsTrevor],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReviveFriendLoudMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudCrit2Trevor",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsTrevor],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerReviveFriendLoudMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 5.0 },
		},
	},

	{
		name = "_C1M1_ElevatorHelloTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHelloMechanic,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello02cTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello02c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello02cMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello03c", null, -1.856),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello03aTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello03aMechanic,
				followup = RThen("self", "_C1M1_ElevatorHello03e", null, -8.671),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello03eTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03e],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello03eMechanic,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello03dTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03d],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello03dMechanic,
				followup = RThen("gambler", "_C1M1_ElevatorHello04d", null, -0.479),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello05bTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello05bMechanic,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello05cRochelleTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05c],
			[IsTrevor],
			[FromIsProducer],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello05cRochelleMechanic,
				followup = RThen("coach", "_C1M1_ElevatorHello03c", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello05cCoachTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05c],
			[IsTrevor],
			[FromIsCoach],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello05cCoachMechanic,
				followup = RThen("Producer", "_C1M1_ElevatorHello03c", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello05cNickTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05c],
			[IsTrevor],
			[FromIsGambler],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello05cNickMechanic,
				followup = RThen("Producer", "_C1M1_ElevatorHello11a", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello07bTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello07bMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello07c", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello07dTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07d],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello07dMechanic,
				followup = RThen("coach", "_C1M1_ElevatorHello07g", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello07fTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07f],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello07fMechanic,
				followup = RThenAny("c1m1_elevator_ready2", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "LongElevatorIntro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello08aTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello08a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello08aMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello08b", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello08cTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello08c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello08cMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello08d", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello08eTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello08e],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello08eMechanic,
				followup = RThen("coach", "_C1M1_ElevatorHello07g", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello09aTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello09a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello09aMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello09a", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello12aTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello12a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello12aMechanic,
				followup = RThen("Coach", "_C1M1_ElevatorHello07g", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello13aTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello13a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello13aMechanic,
				followup = RThen("self", "_C1M1_ElevatorHello13a", { from = "Trevor" }, -2.554),
			},
		],
	},

	{
		name = "_c1m4startelevator2Trevor",
		criteria = 
		[
			[Concept_c1m4startelevator2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator2Mechanic,
				followup = RThenAny("_c1m4startelevator5a", -8.777),
			},
		],
	},

	{
		name = "_c1m4startelevator2aTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator2a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator2aMechanic,
				followup = RThen("trevor", "_c1m4startelevator3e", null, -2.084),
			},
		],
	},

	{
		name = "_c1m4startelevator2bTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator2b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator2bMechanic,
				followup = RThen("trevor", "_c1m4startelevator3c", null, -1.25),
			},
		],
	},

	{
		name = "_c1m4startelevator2cTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator2c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator2cMechanic,
				followup = RThen("producer", "_c1m4startelevator5a", null, -12.096),
			},
		],
	},

	{
		name = "_c1m4startelevator3Trevor",
		criteria = 
		[
			[Concept_c1m4startelevator3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator3Mechanic,
				followup = RThen("producer", "_c1m4startelevator3a", null, 0.2),
			},
		],
	},

	{
		name = "_c1m4startelevator3bTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator3b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator3bMechanic,
				followup = RThen("producer", "_c1m4startelevator3c", null, 0.2),
			},
		],
	},

	{
		name = "_c1m4startelevator3cTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator3c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator3cMechanic,
				followup = RThen("coach", "_c1m4startelevator5a", null, -4.225),
			},
		],
	},

	{
		name = "_c1m4startelevator3dTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator3d],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator3dMechanic,
				followup = RThen("gambler", "_c1m4startelevator5a", null, -4.225),
			},
		],
	},

	{
		name = "_c1m4startelevator3eTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator3e],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator3eMechanic,
				followup = RThen("gambler", "_c1m4startelevator5a", null, -8.562),
			},
		],
	},

	{
		name = "_c1m4startelevator5aTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator5a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator5aMechanic,
				followup = RThenAny("_c1m4startelevatorLast", -4.282),
			},
		],
	},

	{
		name = "_c1m4startelevator5a1Trevor",
		criteria = 
		[
			[Concept_c1m4startelevator5a1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator5a1Mechanic,
				followup = RThen("gambler", "_c1m4startelevator6a1", null, -4.779),
			},
		],
	},

	{
		name = "_c1m4startelevator5bTrevor",
		criteria = 
		[
			[Concept_c1m4startelevator5b],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevator5bMechanic,
				followup = RThen("trevor", "_c1m4startelevator5a", null, -2.936),
			},
		],
	},

	{
		name = "_c1m4startelevatorLastTrevor",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsTrevor],
			[ElevatorTimeNotUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c1m4startelevatorLastMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c1m4startelevatorLastTimeUpTrevor",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsTrevor],
			[ElevatorTimeUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m1_searchlights01Trevor",
		criteria = 
		[
			[Concept_c2m1_searchlights01],
			[IsTrevor],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m1_searchlights01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.662 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m1_searchlights04Trevor",
		criteria = 
		[
			[Concept_c2m1_searchlights04],
			[IsTrevor],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m1_searchlights04Mechanic,
				followup = RThen("self", "_c2m1_searchlights04", { from = "Trevor" }, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.662 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_Bathroom01Trevor",
		criteria = 
		[
			[Concept_C2M2_Bathroom01],
			[IsTrevor],
			[NotInCombat],
			[IsSubjectDistNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Bathroom01Mechanic,
			},
		],
	},

	{
		name = "_C2M2_CaroStart03Trevor",
		criteria = 
		[
			[Concept_C2M2_CaroStart03],
			[IsTrevor],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_CaroStart03Mechanic,
				followup = RThen("self", "_C2M2_CaroStart04", null, 0.2),
			},
		],
	},

	{
		name = "_C2M2_CaroStart04Trevor",
		criteria = 
		[
			[Concept_C2M2_CaroStart04],
			[IsTrevor],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_CaroStart04Mechanic,
			},
		],
	},

	{
		name = "_C2M2_Kiddie03Trevor",
		criteria = 
		[
			[Concept_C2M2_Kiddie03],
			[IsTrevor],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Kiddie03Mechanic,
				followup = RThenAny("_C2M2_Kiddie04", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.572 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_Peanut01Trevor",
		criteria = 
		[
			[Concept_C2M2_Peanut01],
			[IsTrevor],
			[NotInCombat],
			[IsSubjectDistNear800],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Peanut01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 6.681 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_Slide01Trevor",
		criteria = 
		[
			[Concept_C2M2_Slide01],
			[IsTrevor],
			[NotInCombat],
			[IsSubjectDistNear400],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_Slide01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.922 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_ThisTall02Trevor",
		criteria = 
		[
			[Concept_C2M2_ThisTall02],
			[IsTrevor],
			[NotInCombat],
			[IssuerClose],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_ThisTall02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.201 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_ThisTall02NickTrevor",
		criteria = 
		[
			[Concept_C2M2_ThisTall02],
			[IsTrevor],
			[NotInCombat],
			[IssuerClose],
			[FromIsGambler],
			[TrevorNotTall],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_ThisTall02NickMechanic,
				followup = RThen("Gambler", "_C2M2_ThisTall02", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.201 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_LikeTatersTrevor",
		criteria = 
		[
			[Concept_C2M2_LikeTaters],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_LikeTatersMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 4.435 },
		},
	},

	{
		name = "_C2M2_Kiddie06Trevor",
		criteria = 
		[
			[Concept_C2M2_Kiddie06],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M2_ThisTall02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.201 },
			c2 = { context = "TrevorTallJoke", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m3_cement01Trevor",
		criteria = 
		[
			[Concept_c2m3_cement01],
			[IsTrevor],
			[NotInCombat],
			[IsNotIncapacitated],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotSurvival],
			[AutoIsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m3_cement01Mechanic,
			},
		],
	},

	{
		name = "_c2m3_coaster01Trevor",
		criteria = 
		[
			[Concept_c2m3_coaster01],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m3_coaster01Mechanic,
				followup = RThen("self", "_c2m3_coaster07", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.653 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m3_coaster03Trevor",
		criteria = 
		[
			[Concept_c2m3_coaster03],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m3_coaster03Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.171 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m3_coaster06Trevor",
		criteria = 
		[
			[Concept_c2m3_coaster06],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m3_coaster06Mechanic,
				followup = RThen("self", "_c2m3_coaster07", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.653 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m3_coaster07Trevor",
		criteria = 
		[
			[Concept_c2m3_coaster07],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m3_coaster07Mechanic,
				followup = RThenAny("_c2m3_coaster05", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.194 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m3_coaster08Trevor",
		criteria = 
		[
			[Concept_c2m3_coaster08],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m3_coaster08Mechanic,
				followup = RThen("self", "_c2m3_coaster07", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.653 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m3_coollight01Trevor",
		criteria = 
		[
			[Concept_c2m3_coollight01],
			[IsTrevor],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m3_coollight01Mechanic,
			},
		],
	},

	{
		name = "_c2m3_howcoolTrevor",
		criteria = 
		[
			[Concept_c2m3_howcool],
			[IsTrevor],
			[ChanceToFire50Percent],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c2m3_howcoolMechanic,
			},
		],
	},

	{
		name = "_C2M4_GateOpen001Trevor",
		criteria = 
		[
			[Concept_C2M4_GateOpen001],
			[IsTrevor],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C2M4_GateOpen001Mechanic,
			},
		],
	},

	{
		name = "_C4_BigStormHits01Trevor",
		criteria = 
		[
			[Concept_C4_BigStormHits01],
			[IsTrevor],
			[_auto_NotC4TrevorInCover],
			[_auto_IsTimerA],
			[FromIsAnOrator],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C4_BigStormHits01Mechanic,
				followup = RThenAny("_C4_BigStormHits02", 0.04),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.139 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C4_BigStormHits02Trevor",
		criteria = 
		[
			[Concept_C4_BigStormHits02],
			[IsTrevor],
			[IsNotCoughing],
			[IssuerClose],
			[IsNotIncapacitated],
			[_auto_NotC4TrevorInCover],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C4_BigStormHits02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.845 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c4m1_rainresponseTrevor",
		criteria = 
		[
			[Concept_c4m1_rainresponse],
			[IsTrevor],
			[NotInCombat],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidc4m1_rainresponse],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m1_rainresponseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_rainresponse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M1IntroTrevor",
		criteria = 
		[
			[ConceptIntroC4M1],
			[IsTrevor],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4M1IntroMechanic,
				followup = RThen("orator", "_c4m1Intro01", null, 0.01),
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
		name = "_c4m1Intro05Trevor",
		criteria = 
		[
			[Concept_c4m1Intro05],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m1Intro05Mechanic,
				followup = RThen("coach", "_c4m1Intro05", null, 0.01),
			},
		],
	},

	{
		name = "_c4m1Intro07Trevor",
		criteria = 
		[
			[Concept_c4m1Intro07],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m1Intro07Mechanic,
				followup = RThenAny("_c4m1Intro07", 0.01),
			},
		],
	},

	{
		name = "_c4m1Intro08Trevor",
		criteria = 
		[
			[Concept_c4m1Intro08],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m1Intro08Mechanic,
				followup = RThenAny("_c4m1Intro09", -1.0),
			},
		],
	},

	{
		name = "_c4m1Intro12Trevor",
		criteria = 
		[
			[Concept_c4m1Intro12],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m1Intro12Mechanic,
				followup = RThen("coach", "_c4m1Intro14", null, -0.3),
			},
		],
	},

	{
		name = "_c4m1Intro16Trevor",
		criteria = 
		[
			[Concept_c4m1Intro16],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m1Intro16Mechanic,
				followup = RThen("gambler", "_c4m1Intro07", null, 0.01),
			},
		],
	},

	{
		name = "_c4m2_caneyell01Trevor",
		criteria = 
		[
			[Concept_c4m2_caneyell01],
			[IsTrevor],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTrevorInCane],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_caneyell01Mechanic,
			},
		],
	},

	{
		name = "_c4m2_ElevatorHere01Trevor",
		criteria = 
		[
			[Concept_c4m2_ElevatorHere01],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_ElevatorHere01Mechanic,
			},
		],
	},

	{
		name = "_c4m2_gasinside01Trevor",
		criteria = 
		[
			[Concept_c4m2_gasinside01],
			[IsTrevor],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTrevorInCane],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_gasinside01Mechanic,
			},
		],
	},

	{
		name = "_c4m2_seestation01Trevor",
		criteria = 
		[
			[Concept_c4m2_seestation01],
			[IsTrevor],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_seestation01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c4m2_seestation02NTrevor",
		criteria = 
		[
			[Concept_c4m2_seestation02],
			[IsTrevor],
			[IsSubjectDistNear400],
			[IsNotSaidActivatedC4M2Elevator],
			[FromIsGambler],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_seestation02NMechanic,
				followup = RThen("self", "_c4m2_seestation03", { from = "Trevor" }, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c4m2_seestation02RTrevor",
		criteria = 
		[
			[Concept_c4m2_seestation02],
			[IsTrevor],
			[IsSubjectDistNear400],
			[IsNotSaidActivatedC4M2Elevator],
			[FromIsProducer],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_seestation02RMechanic,
				followup = RThen("self", "_c4m2_seestation03", { from = "Trevor" }, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c4m2_streetblocked01Trevor",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsTrevor],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_streetblocked01Mechanic,
			},
		],
	},

	{
		name = "_c4m2_streetblocked01bTrevor",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsTrevor],
			[IsSubjectDistFar400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_streetblocked01bMechanic,
				followup = RThen("subject", "_c4m2_streetblocked02", null, 0.01),
			},
		],
	},

	{
		name = "_c4m2_streetblocked02Trevor",
		criteria = 
		[
			[Concept_c4m2_streetblocked02],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_streetblocked01Mechanic,
			},
		],
	},

	{
		name = "_c4m2_waterpool01Trevor",
		criteria = 
		[
			[Concept_c4m2_waterpool01],
			[IsTrevor],
			[IsSubjectDistNear400],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_waterpool01Mechanic,
			},
		],
	},

	{
		name = "_c4m2_Witchville05Trevor",
		criteria = 
		[
			[Concept_c4m2_Witchville05],
			[IsTrevor],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m2_Witchville05Mechanic,
			},
		],
	},

	{
		name = "_c4m3_rain02Trevor",
		criteria = 
		[
			[Concept_c4m3_rain02],
			[IsTrevor],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m3_rain02Mechanic,
			},
		],
	},

	{
		name = "_c4m3_startsafe02Trevor",
		criteria = 
		[
			[Concept_c4m3_startsafe02],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m3_startsafe02Mechanic,
				followup = RThenAny("_c4m3_startsafe03", 0.2),
			},
		],
	},

	{
		name = "_c4m3_startsafe03Trevor",
		criteria = 
		[
			[Concept_c4m3_startsafe03],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._c4m3_startsafe03Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_C4M4_FLOODED01Trevor",
		criteria = 
		[
			[Concept_C4M4_FLOODED01],
			[IsTrevor],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C4M4_FLOODED01Mechanic,
			},
		],
	},

	{
		name = "_C4M4_garagesale01Trevor",
		criteria = 
		[
			[Concept_C4M4_garagesale01],
			[IsTrevor],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C4M4_garagesale01Mechanic,
			},
		],
	},

	{
		name = "_C4M5_BoatComing01Trevor",
		criteria = 
		[
			[Concept_C4M5_BoatComing01],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C4M5_BoatComing01Mechanic,
			},
		],
	},

	{
		name = "_C4M5_Intro03Trevor",
		criteria = 
		[
			[Concept_C4M5_Intro03],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C4M5_Intro03Mechanic,
				followup = RThenAny("_C4M5_Intro04", 0.1),
			},
		],
	},

	{
		name = "_C4M5_Intro04Trevor",
		criteria = 
		[
			[Concept_C4M5_Intro04],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C4M5_Intro04Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "PlayerRemarkc4m5_BurgerTankTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isc4m5_burgertank],
			[IsNotSaidc4m5_burgertank],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsSubjectNear1000],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc4m5_BurgerTankMechanic,
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
		name = "_introc1m1Trevor",
		criteria = 
		[
			[Concept_introc1m1],
			[IsTrevor],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1Mechanic,
				followup = RThenAny("_introc1m1a01", -1.0),
			},
		],
	},

	{
		name = "_introc1m1AloneTrevor",
		criteria = 
		[
			[Concept_introc1m1],
			[IsTrevor],
			[IsAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1AloneMechanic,
			},
		],
	},

	{
		name = "_introc1m1MovieIntroTrevor",
		criteria = 
		[
			[Concept_introc1m1],
			[IsTrevor],
			[IsNotAlone],
			[ExtraWeight10],
			[ChanceToFire5Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1MovieIntroMechanic,
				followup = RThen("self", "_introc1m1MovieIntro", null, 0.5),
			},
		],
	},

	{
		name = "_introc1m1MovieIntro2Trevor",
		criteria = 
		[
			[Concept_introc1m1MovieIntro],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1MovieIntro2Mechanic,
				followup = RThen("producer", "_introc1m1MovieIntro", null, -1.5),
			},
		],
	},

	{
		name = "_introc1m1a04Trevor",
		criteria = 
		[
			[Concept_introc1m1a04],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1a04Mechanic,
				followup = RThen("gambler", "_introc1m1b03", null, -1.12),
			},
		],
	},

	{
		name = "_introc1m1a05Trevor",
		criteria = 
		[
			[Concept_introc1m1a05],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1a05Mechanic,
				followup = RThen("gambler", "_introc1m1b10", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1b02Trevor",
		criteria = 
		[
			[Concept_introc1m1b02],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1b02Mechanic,
				followup = RThen("gambler", "_introc1m1b03", null, -1.12),
			},
		],
	},

	{
		name = "_introc1m1b03Trevor",
		criteria = 
		[
			[Concept_introc1m1b03],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1b03Mechanic,
				followup = RThen("gambler", "_introc1m1b06", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1lastTrevor",
		criteria = 
		[
			[Concept_introc1m1last],
			[IsTrevor],
			[FromIsNotCoach],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1lastMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1lastCoachTrevor",
		criteria = 
		[
			[Concept_introc1m1last],
			[IsTrevor],
			[FromIsCoach],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1lastCoachMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1b05Trevor",
		criteria = 
		[
			[Concept_introc1m1b05],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1b05Mechanic,
				followup = RThenAny("_introc1m1b08", 0.1),
			},
		],
	},

	{
		name = "_introc1m1b06Trevor",
		criteria = 
		[
			[Concept_introc1m1b06],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1b06Mechanic,
				followup = RThenAny("_introc1m1last", -5.084),
			},
		],
	},

	{
		name = "_introc1m1b08Trevor",
		criteria = 
		[
			[Concept_introc1m1b08],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1b08Mechanic,
				followup = RThenAny("_introc1m1last", -5.084),
			},
		],
	},

	{
		name = "_introc1m1firealertTrevor",
		criteria = 
		[
			[Concept_introc1m1firealert],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._introc1m1firealertMechanic,
				followup = RThen("coach", "_introc1m1b08", null, 0.1),
			},
		],
	},

	{
		name = "BlankTestoTrevor",
		criteria = 
		[
			[ConceptBlankTesto],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BlankTesto", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c1m1_elevator_door_openTrevor",
		criteria = 
		[
			[Conceptc1m1_elevator_door_open2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c1m1_elevator_door_openMechanic,
				followup = RThen("all", "C1M1Cough", null, -1.399),
			},
		],
	},

	{
		name = "c1m1_elevator_ready2Trevor",
		criteria = 
		[
			[Conceptc1m1_elevator_ready2],
			[IsTrevor],
			[IsNotSaidC1M1OpenDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c1m1_elevator_ready2Mechanic,
				followup = RThen("Trevor", "C1M1Cough", null, -0.618),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OpenDoor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello2AliveName1Trevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveName1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello2AliveName1Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello2AliveName2", -0.911),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello2AliveName2Trevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveName2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello2AliveName2Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello2AliveExtra1", -0.911),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello2AliveExtra1Trevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello2AliveExtra1Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello2AliveExtra2", 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello2AliveExtra2Trevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello2AliveExtra2Mechanic,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveName1Trevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello3AliveName1Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName2", -1.856),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveName1RTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[FromIsProducer],
			[ChanceToFire100Percent],
			[IsRochelleElevatorIntro],
			[IsNotTrevorIntroduced],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello3AliveName1RMechanic,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveExtra2", { from = "Trevor" }, -1.856),
			},
		],
		applycontext =
		{
			c1 = { context = "TrevorIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello3AliveName2RTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[FromIsProducer],
			[IsRochelleElevatorIntro],
			[ChanceToFire100Percent],
			[IsNotTrevorIntroduced],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello3AliveName2RMechanic,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveName2", { from = "Trevor" }, -1.856),
			},
		],
		applycontext =
		{
			c1 = { context = "TrevorIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello3AliveName2Trevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[IsTrevor],
			[IsNotTrevorIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello3AliveName2Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello3WhoIsDead", -0.911),
			},
		],
		applycontext =
		{
			c1 = { context = "TrevorIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello3AliveWhoIsDeadTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveWhoIsDead],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello3AliveWhoIsDeadMechanic,
				followup = RThenAny("_C1M1_ElevatorHello3NameDead", -0.671),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadRTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsProducerNotAlive],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello3AliveNameDeadRMechanic,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadCTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsCoachNotAlive],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello3AliveNameDeadCMechanic,
				followup = RThenAny("_C1M1_ElevatorHello3NameDead", -0.671),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadNTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsGamblerNotAlive],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor._C1M1_ElevatorHello3AliveNameDeadNMechanic,
			},
		],
	},

	{
		name = "Concept_C1M1_ElevatorHello3AliveNameDeadSelfTrevor",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsTrevor],
			[IsCoachAlive],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Concept_C1M1_ElevatorHello3AliveNameDeadSelfMechanic,
				followup = RThen("coach", "_C1M1_ElevatorHello3AliveNameDead2", null, 0.1),
			},
		],
	},

	{
		name = "C1M1CoughTrevor",
		criteria = 
		[
			[ConceptC1M1Cough],
			[IsTrevor],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M1CoughMechanic,
			},
		],
	},

	{
		name = "C1M2SafeRoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[NotInCombat],
			[ismap_c1m2_streets],
			[IsInStartArea],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2SafeRoomMechanic,
				followup = RThen("gambler", "C1M2SafeRoomb1", null, -3.584),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M2SafeRooma4Trevor",
		criteria = 
		[
			[ConceptC1M2SafeRooma4],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2SafeRooma4Mechanic,
				followup = RThen("producer", "C1M2SafeRooma3", null, 0.1),
			},
		],
	},

	{
		name = "C1M2SafeRooma3Trevor",
		criteria = 
		[
			[ConceptC1M2SafeRooma3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2SafeRooma3Mechanic,
				followup = RThen("producer", "C1M2SafeRooma4", null, 0.1),
			},
		],
	},

	{
		name = "C1M3AlarmOffaTrevor",
		criteria = 
		[
			[ConceptC1M3AlarmOffa],
			[IsTrevor],
			[IsSubjectDistNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M3AlarmOffaMechanic,
			},
		],
	},

	{
		name = "C1M3SafeRoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.C1M3SafeRoomMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M3SafeRoom2eTrevor",
		criteria = 
		[
			[ConceptC1M3SafeRoom2e],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M3SafeRoom2eMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C1M4NearFinale03cTrevor",
		criteria = 
		[
			[ConceptC1M4NearFinale03c],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4NearFinale03cMechanic,
			},
		],
	},

	{
		name = "c1m4NearFinale1Trevor",
		criteria = 
		[
			[Conceptc1m4NearFinale1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c1m4NearFinale1Mechanic,
			},
		],
	},

	{
		name = "C1M4SafeRoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.C1M4SafeRoomMechanic,
				followup = RThen("trevor", "C1M4SafeRoom2c1", null, 1.25),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M4SafeRoom2a1Trevor",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4SafeRoom2a1Mechanic,
				followup = RThen("gambler", "C1M4SafeRoom2a2", null, -5.969),
			},
		],
	},

	{
		name = "C1M4SafeRoom2b1Trevor",
		criteria = 
		[
			[ConceptC1M4SafeRoom2b1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4SafeRoom2b1Mechanic,
				followup = RThen("producer", "C1M4SafeRoom2b2", null, -5.969),
			},
		],
	},

	{
		name = "C1M4SafeRoom2b3Trevor",
		criteria = 
		[
			[ConceptC1M4SafeRoom2b3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4SafeRoom2b3Mechanic,
				followup = RThen("trevor", "C1M4SafeRoom2b4", null, -1.539),
			},
		],
	},

	{
		name = "C1M4SafeRoom2b4Trevor",
		criteria = 
		[
			[ConceptC1M4SafeRoom2b4],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4SafeRoom2b4Mechanic,
				followup = RThen("coach", "C1M4SafeRoom2b5", null, -1.719),
			},
		],
	},

	{
		name = "C1M4SafeRoom2a5Trevor",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a5],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4SafeRoom2a5Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C1M4SafeRoom2c1Trevor",
		criteria = 
		[
			[ConceptC1M4SafeRoom2c1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4SafeRoom2c1Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C1M4SafeRoomEndTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[ismap_c1m4_atrium],
			[IsTrevor],
			[IsNotSaidLeavingSafeArea],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4SafeRoomEndMechanic,
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
		name = "C1M4FinaleStartResponseTrevor",
		criteria = 
		[
			[ConceptC1M4FinaleStartResponse],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M4FinaleStartResponseMechanic,
			},
		],
	},

	{
		name = "C2M1IntroStartTrevor",
		criteria = 
		[
			[ConceptIntroC2M1],
			[IsTrevor],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1IntroStartMechanic,
				followup = RThenAny("C2M1Intro002", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro002Trevor",
		criteria = 
		[
			[ConceptC2M1Intro002],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro002Mechanic,
				followup = RThenAny("C2M1Intro002", 0.02),
			},
		],
	},

	{
		name = "C2M1Intro003Trevor",
		criteria = 
		[
			[ConceptC2M1Intro003],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro003Mechanic,
				followup = RThenAny("C2M1Intro002", 0.02),
			},
		],
	},

	{
		name = "C2M1Intro005Trevor",
		criteria = 
		[
			[ConceptC2M1Intro005],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro005Mechanic,
				followup = RThenAny("C2M1Intro_400", 0.5),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro008Trevor",
		criteria = 
		[
			[ConceptC2M1Intro008],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro008Mechanic,
			},
		],
	},

	{
		name = "C2M1Intro009Trevor",
		criteria = 
		[
			[ConceptC2M1Intro009],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M1Intro009Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C2M4PenSmell001Trevor",
		criteria = 
		[
			[ConceptC2M4PenSmell001],
			[IsTrevor],
			[IsTalk],
			[NotInCombat],
			[IsGamblerNear400],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M4PenSmell001Mechanic,
			},
		],
	},

	{
		name = "C2M5_lipsync001Trevor",
		criteria = 
		[
			[ConceptC2M5_lipsync001],
			[IsTrevor],
			[TimeSinceGroupInCombat02],
			[NotInCombat],
			[IsNotSpeaking],
			[IsGamblerNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5_lipsync001Mechanic,
			},
		],
	},

	{
		name = "C2M5_lipsync002Trevor",
		criteria = 
		[
			[ConceptC2M5_lipsync002],
			[IsTrevor],
			[TimeSinceGroupInCombat02],
			[NotInCombat],
			[IsNotSpeaking],
			[IsCoachAlive],
			[IsCoachNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M5_lipsync002Mechanic,
			},
		],
	},

	{
		name = "C4EnterCoverTrevor",
		criteria = 
		[
			[ConceptC4EnterCover],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4TrevorInCover", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4ExitCoverTrevor",
		criteria = 
		[
			[ConceptC4ExitCover],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4TrevorInCover", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4FinaleStartTrevor",
		criteria = 
		[
			[ConceptC4FinaleStart],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C4FinaleStartMechanic,
				followup = RThenAny("_C4M5_FinaleStart01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_NoLostCall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c4m1_nogas01Trevor",
		criteria = 
		[
			[Conceptc4m1_nogas01],
			[IsTrevor],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c4m1_nogas01Mechanic,
				followup = RThenAny("c4m1_nogas02", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.179 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c4m1_nogas10Trevor",
		criteria = 
		[
			[Conceptc4m1_nogas10],
			[IsTrevor],
			[NotInCombat],
			[IsSubjectDistNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c4m1_nogas10Mechanic,
				followup = RThenAny("c4m1_nogas02", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.179 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c4m1_wreck01Trevor",
		criteria = 
		[
			[Conceptc4m1_wreck01],
			[IsTrevor],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c4m1_wreck01Mechanic,
				followup = RThen("self", "c4m1_wreck02", null, 0.03),
			},
		],
	},

	{
		name = "c4m1_wreck02Trevor",
		criteria = 
		[
			[Conceptc4m1_wreck02],
			[IsTrevor],
			[NotInCombat],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.c4m1_wreck02Mechanic,
			},
		],
	},

	{
		name = "GasPour20MoreTrevor",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsTrevor],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour20MoreMechanic,
			},
		],
	},

	{
		name = "GasPour10MoreTalkTrevor",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsTrevor],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour10MoreTalkMechanic,
			},
		],
	},

	{
		name = "GasPour1MoreTrevor",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsTrevor],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour1MoreMechanic,
			},
		],
	},

	{
		name = "GasPour2MoreTrevor",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsTrevor],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour2MoreMechanic,
			},
		],
	},

	{
		name = "GasPour3MoreTrevor",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsTrevor],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour3MoreMechanic,
			},
		],
	},

	{
		name = "GasPour5MoreTrevor",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsTrevor],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.GasPour5MoreMechanic,
			},
		],
	},

	{
		name = "Player_CoverMeC1RTrevor",
		criteria = 
		[
			[ConceptPlayer_CoverMeC1R],
			[IsTrevor],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_CoverMeC1RMechanic,
			},
		],
	},

	{
		name = "Player_CoverMeC1RCoach1Trevor",
		criteria = 
		[
			[ConceptPlayer_CoverMeC1RCoach1],
			[IsTrevor],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_CoverMeC1RCoach1Mechanic,
				followup = RThen("coach", "Player.CoverMeC1RCoach2", null, -2.261),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCoach", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Player_GooedBySpitterC1RTrevor",
		criteria = 
		[
			[ConceptPlayer_GooedBySpitterC1R],
			[IsTrevor],
			[IsNotIncapacitated],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_GooedBySpitterC1RMechanic,
			},
		],
	},

	{
		name = "Player_KnowHunterC1Trevor",
		criteria = 
		[
			[ConceptPlayer_KnowHunter],
			[IsTrevor],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_KnowHunterC1Mechanic,
				followup = RThen("self", "Player.KnowHunter2", { from = "Trevor" }, 0.1),
			},
		],
	},

	{
		name = "Player_KnowBoomerC1Trevor",
		criteria = 
		[
			[ConceptPlayer_KnowBoomer],
			[IsTrevor],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_KnowBoomerC1Mechanic,
			},
		],
	},

	{
		name = "Player_KnowChargerC1Trevor",
		criteria = 
		[
			[ConceptPlayer_KnowCharger],
			[IsTrevor],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_KnowChargerC1Mechanic,
			},
		],
	},

	{
		name = "Player_KnowJockeyC1Trevor",
		criteria = 
		[
			[ConceptPlayer_KnowJockey],
			[IsTrevor],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_KnowJockeyC1Mechanic,
			},
		],
	},

	{
		name = "C1M2TankInfoTrevor",
		criteria = 
		[
			[ConceptC1M2TankInfo],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2TankInfoMechanic,
				followup = RThen("producer", "C1M2TankInfo", null, 0.1),
			},
		],
	},

	{
		name = "Player_KnowSpitterC1Trevor",
		criteria = 
		[
			[ConceptPlayer_KnowSpitter],
			[IsTrevor],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_KnowSpitterC1Mechanic,
			},
		],
	},

	{
		name = "PlayerCr0wnedBrideTrevor",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsTrevor],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkTrevor],
			[isc6m1_riverbank],
			[IsWorldTalkTrevor],
		],
		// 	forceweight 101
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCr0wnedBrideMechanic,
				followup = RThenAny("WeddingWitchDead02", 3.1),
			},
		],
	},

	{
		name = "WeddingWitchDead02Trevor",
		criteria = 
		[
			[ConceptWeddingWitchDead02],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WeddingWitchDead02Mechanic,
				followup = RThen("producer", "WeddingWitchDead02a", null, 0.1),
			},
		],
	},

	{
		name = "WorldIntroC31a2Trevor",
		criteria = 
		[
			[ConceptWorldIntroC31a2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldIntroC31a2Mechanic,
				followup = RThen("gambler", "WorldIntroC31a3", null, -3.934),
			},
		],
	},

	{
		name = "WorldIntroC31c1Trevor",
		criteria = 
		[
			[ConceptWorldIntroC31c1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldIntroC31c1Mechanic,
				followup = RThen("gambler", "WorldIntroC31c2", null, -7.301),
			},
		],
	},

	{
		name = "WorldIntroC31d2Trevor",
		criteria = 
		[
			[ConceptWorldIntroC31d2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldIntroC31d2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "WorldIntroC31e2aTrevor",
		criteria = 
		[
			[ConceptWorldIntroC31e2a],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldIntroC31e2aMechanic,
				followup = RThen("gambler", "WorldIntroC31e3a", null, -1.367),
			},
		],
	},

	{
		name = "WorldIntroC3f2Trevor",
		criteria = 
		[
			[ConceptWorldIntroC3f2],
			[IsTrevor],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldIntroC3f2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "WorldIntroC31g1Trevor",
		criteria = 
		[
			[ConceptWorldIntroC31g1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldIntroC31g1Mechanic,
				followup = RThen("coach", "WorldIntroC31g2", null, -3.349),
			},
		],
	},

	{
		name = "PlayerCoverMeHealTrevor",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotAlone],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCoverMeHealMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},

	{
		name = "PlayerCoverMeHealC1Trevor",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotAlone],
			[IsWorldTalkTrevor],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerCoverMeHealC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},

	{
		name = "Player_LostCallC6M3Trevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.Player_LostCallC6M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AutoPlayerLostCallTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.AutoPlayerLostCallMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChainsawTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsChainsaw],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedChainsawMechanic,
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
		name = "SurvivorSpottedChainsawAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsChainsaw],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedChainsawMechanic,
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
		name = "SurvivorSpottedcricket_batTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscricket_bat],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedcricket_batMechanic,
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
		name = "SurvivorSpottedcricket_batAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscricket_bat],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedcricket_batMechanic,
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
		name = "SurvivorSpottedcrowbarTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscrowbar],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedcrowbarMechanic,
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
		name = "SurvivorSpottedcrowbarAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscrowbar],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedcrowbarMechanic,
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
		name = "SurvivorSpottedGolfClubTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGolfClubMechanic,
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
		name = "SurvivorSpottedGolfClubAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGolfClubMechanic,
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
		name = "SurvivorSpottedGuitarTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGuitar],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGuitarMechanic,
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
		name = "SurvivorSpottedGuitarAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGuitar],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGuitarMechanic,
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
		name = "SurvivorSpottedKatanaTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsKatana],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedKatanaMechanic,
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
		name = "SurvivorSpottedKatanaAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKatana],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedKatanaMechanic,
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
		name = "SurvivorSpottedLaserSightsTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsLaserSights],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedLaserSightsMechanic,
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
		name = "SurvivorSpottedLaserSightsAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsLaserSights],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedLaserSightsMechanic,
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
		name = "SurvivorBotPickupLaserSightsSpottedTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotIsAvailable],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsNotInStartArea],
			[IsNotSaidSpotWeapons],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedLaserSightsMechanic,
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
		name = "SurvivorSpottedM60Trevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedM60Mechanic,
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
		name = "SurvivorSpottedM60AutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedM60Mechanic,
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
		name = "SurvivorSpottedMacheteTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMachete],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMacheteMechanic,
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
		name = "SurvivorSpottedMacheteAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMachete],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMacheteMechanic,
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
		name = "SurvivorSpottedMagnumTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMagnum],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedMagnumAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMagnum],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedSecondPistolTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSecondPistol],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedSecondPistolAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSecondPistol],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedtonfaTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Istonfa],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedtonfaMechanic,
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
		name = "SurvivorSpottedtonfaAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Istonfa],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedtonfaMechanic,
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
		name = "SurvivorSpottedAutoShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsAutoShotgun],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedAutoShotgunAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsAutoShotgun],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedPumpShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPumpShotgun],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedPumpShotgunAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPumpShotgun],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedShotgun_ChromeTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_Chrome],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedShotgun_spasTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_spas],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedShotgun_spasAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_spas],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedSMGTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSMG],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedSMGAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSMG],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedSMG_silencedTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_silenced],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedSMG_silencedAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_silenced],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedMP5SMGTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSMG_mp5],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedMP5SMGAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSMG_mp5],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedHuntingRifleTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsHuntingRifle],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHuntingRifleMechanic,
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
		name = "SurvivorSpottedHuntingRifleAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsHuntingRifle],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedHuntingRifleMechanic,
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
		name = "SurvivorSpottedRifleTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifleAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_AK47Trevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_AK47],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_AK47AutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_AK47],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_desertTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_desert],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_desertAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_desert],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_SG552Trevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_sg552],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_SG552AutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_sg552],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedMilitarySniperTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_military],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedMilitarySniperAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_military],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedScoutSniperTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_scout],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedScoutSniperAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_scout],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedAWPSniperTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_awp],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedAWPSniperAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_awp],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedBaseBallBatTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Isbaseball_bat],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedBaseBallBatAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Isbaseball_bat],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedFryingPanTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFryingPan],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedFryingPanAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFryingPan],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedAxeTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFireAxe],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedAxeAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFireAxe],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedShovelTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShovel],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedShovelAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShovel],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedPitchforkTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPitchfork],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedPitchforkAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPitchfork],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedKnifeTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsKnife],
			[IsNotSmartLookAuto],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedKnifeAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKnife],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedOtherWeaponTrevor",
		criteria = 
		[
			[ConceptPlayerSpotOtherWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedWeaponPistolTrevor",
		criteria = 
		[
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedShotgunTrevor",
		criteria = 
		[
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkTrevor],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedShotgunMechanic,
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
		name = "C2M3AlarmOffNagTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_IsTracksOK],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m3_coasteroffMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 11.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3Chopper001Trevor",
		criteria = 
		[
			[ConceptC2M3Chopper001],
			[IsTrevor],
			[IsTalk],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C2M3Chopper001Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedBikerCloseTrevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
			[IsSubjectDistNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBikerCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedBikerClose2Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
			[IsSubjectDistNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedBikerCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedManagerCloseTrevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
			[IsSubjectDistNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedManagerCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedManagerClose2Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
			[IsSubjectDistNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedManagerCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedNamVetClose2Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
			[IsSubjectDistNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedNamVetClose2Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedNamVetCloseTrevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
			[IsSubjectDistNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedNamVetClose2Mechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedNamVetFarTrevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
			[IsSubjectDistFar400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedNamVetFarMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedTeenGirlCloseTrevor",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsTeenGirl],
			[IsSubjectDistNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedTeenGirlCloseMechanic,
			},
		],
	},

	{
		name = "SurvivorSpottedTeenGirlClose2Trevor",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[SubjectIsTeenGirl],
			[IsSubjectDistNear400],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedTeenGirlCloseMechanic,
			},
		],
	},

	{
		name = "C13M1IntroStartTrevor",
		criteria = 
		[
			[ConceptIntroC13M1],
			[IsTrevor],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M1IntroStartMechanic,
				followup = RThenAny("C13M1Intro2", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M1Intro2Trevor",
		criteria = 
		[
			[ConceptC13M1Intro2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[C13M1TrevorNotPanicking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M1Intro2Mechanic,
				followup = RThenAny("C13M1Intro3", 0.1),
			},
		],
	},

	{
		name = "C13M1Intro3Trevor",
		criteria = 
		[
			[ConceptC13M1Intro3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[C13M1TrevorNotPanicking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M1Intro3Mechanic,
				followup = RThenAny("C13M1IntroLast", 0.1),
			},
		],
	},

	{
		name = "C13M1IntroLastTrevor",
		criteria = 
		[
			[ConceptC13M1IntroLast],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[C13M1TrevorNotPanicking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M1IntroLastMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C13M1IntroLocationLastTrevor",
		criteria = 
		[
			[ConceptC13M1IntroLocationLast],
			[IsTrevor],
			[C13M1TrevorNotPanicking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M1IntroLocationLastMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "RemarkC13M1UpHillTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M1UpHill],
			[IsNotRemarkedC13M1UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_uphillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1DownHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M1DownHere],
			[IsNotRemarkedC13M1DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1ThroughHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M1ThroughHere],
			[IsNotRemarkedC13M1ThroughHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.RemarkC13M1ThroughHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1ThroughWindowTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M1ThroughWindow],
			[IsNotRemarkedC13M1ThroughWindow],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc2m1_throughwindowMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1UpStepsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M1UpSteps],
			[IsNotRemarkedC13M1UpSteps],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_UpTheStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpSteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1CrossHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M1CrossHere],
			[IsNotRemarkedC13M1CrossHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_AcrossHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1CrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1PreBunkerOpenTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M1PreBunkerOpen],
			[IsNotRemarkedC13M1PreBunkerOpen],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.RemarkC13M1PreBunkerOpenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1PreBunkerOpen", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M1OpeningBunkerTrevor",
		criteria = 
		[
			[ConceptC13M1OpeningBunker],
			[IsTrevor],
			[IsNotC13M1OpeningBunker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerC3M2OpenDoor2Mechanic,
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
		name = "RemarkC13M2UpHillTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M2UpHill],
			[IsNotRemarkedC13M2UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.RemarkC13M2UpHillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M2DownHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M2DownHere],
			[IsNotRemarkedC13M2DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M2UpLadderTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M2UpLadder],
			[IsNotRemarkedC13M2UpLadder],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkc5m3upladderMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M2UpStairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M2UpStairs],
			[IsNotRemarkedC13M2UpStairs],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_UpTheStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M2TankApproachingTrevor",
		criteria = 
		[
			[ConceptC13M2TankApproaching],
			[IsTrevor],
			[IsNotNoticedC13M2ShakingGround],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M2TankApproachingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "NoticedC13M2ShakingGround", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M2BarrelsIgnitedTrevor",
		criteria = 
		[
			[ConceptC13M2BarrelsIgnited],
			[IsTrevor],
			[IsNotC13M2IgnitedBarrels],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M2BarrelsIgnitedMechanic,
				followup = RThenAny("C13M2Barrels1", 5.0),
			},
		],
		applycontext =
		{
			c1 = { context = "C13M2IgnitedBarrels", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M2Barrels1Trevor",
		criteria = 
		[
			[ConceptC13M2Barrels1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M2Barrels1Mechanic,
				followup = RThenAny("C13M2Barrels2", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M2Barrels2Trevor",
		criteria = 
		[
			[ConceptC13M2Barrels2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M2Barrels2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M3DownHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsC13M3DownHere],
			[IsNotRemarkedC13M3DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3ApproachingTankerTrevor",
		criteria = 
		[
			[ConceptC13M3ApproachingTanker],
			[IsTrevor],
			[IsNotSawC13M3Tanker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M3ApproachingTankerMechanic,
				followup = RThenAny("C13M3Tanker1", 3.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SawC13M3Tanker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3Tanker1Trevor",
		criteria = 
		[
			[ConceptC13M3Tanker1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M3Tanker1Mechanic,
				followup = RThenAny("C13M3Tanker2", -0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3Tanker2Trevor",
		criteria = 
		[
			[ConceptC13M3Tanker2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M3Tanker2Mechanic,
				followup = RThenAny("C13M3Tanker3", 3.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3Tanker3Trevor",
		criteria = 
		[
			[ConceptC13M3Tanker3],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M3Tanker3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3OnScaffoldTrevor",
		criteria = 
		[
			[ConceptC13M3OnScaffold],
			[IsTrevor],
			[IsNotOnC13M3Scaffold],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC1M2DownStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "OnC13M3Scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3AirstrikeTrevor",
		criteria = 
		[
			[ConceptC13M3Airstrike],
			[IsTrevor],
			[IsNotWitnissedC13M3Airstrike],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M3AirstrikeMechanic,
				followup = RThenAny("C13M3Airstrike2", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "WitnissedC13M3Airstrike", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3Airstrike2Trevor",
		criteria = 
		[
			[ConceptC13M3Airstrike2],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M3Airstrike2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4Button1Trevor",
		criteria = 
		[
			[ConceptC13M4Button1],
			[IsTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4Button1Mechanic,
				followup = RThen("orator", "C13M4FinaleBrief", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4FinaleTriggeredTrevor",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsTrevor],
			[ismapc13m4_cutthroatcreek],
			[IsTriggeredByTrevor],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4FinaleTriggeredMechanic,
				followup = RThen("orator", "C13M4FinaleStart", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TalkingTrevor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4FinaleStart2Trevor",
		criteria = 
		[
			[ConceptC13M4FinaleStart2],
			[IsTrevor],
			[_auto_IsTalkingTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4FinaleStart2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4DownCreekTrevor",
		criteria = 
		[
			[ConceptC13M4DownCreek],
			[IsTrevor],
			[IsNotInC13M4Creek],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4DownCreekMechanic,
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
		name = "C13M4InSmokeTrevor",
		criteria = 
		[
			[ConceptC13M4InSmoke],
			[IsTrevor],
			[IsNotInC13M4Smoke],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorCoughingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 3.0 },
			c2 = { context = "InC13M4Smoke", value = 1, duration = 0.0 },
		},
	},

	{
		name = "C13M4NoticedHelicopterTrevor",
		criteria = 
		[
			[ConceptC13M4NoticedHelicopter],
			[IsTrevor],
			[IsNotNoticedC13M4Helicopter],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4NoticedHelicopterMechanic,
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
		name = "C13M4AlmostThereTrevor",
		criteria = 
		[
			[ConceptC13M4AlmostThere],
			[IsTrevor],
			[IsNotC13M4AlmostThere],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4AlmostThereMechanic,
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
		name = "C13M4SpottedVehicleTrevor",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsTrevor],
			[ismapc13m4_cutthroatcreek],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4SpottedVehicleMechanic,
				followup = RThen("pilot", "C13M4PilotEscapeNag", null, 2.0),
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
		name = "C13M4GetToVehicleTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4GetToVehicleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4InsideVehicleTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
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
			[_auto_NotTimerLockTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C13M4InsideVehicleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockTrevor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "EllisStoryStartTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSrcGrp_TREVORSTORYINIT],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_StoryWait", value = 1, duration = 0.0 },
			c2 = { context = "_auto_StoryGate", value = 1, duration = 60.0 },
			c3 = { context = "SrcGrp_TREVORSTORYINIT", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SafeRoomStartTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
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
		name = "IntroEndTrevor",
		criteria = 
		[
			[ConceptIntroEnd],
			[IsTrevor],
			[FromIsTrevor],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "LeavingSafeAreaTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsTrevor],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
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
		name = "LeavingSafeRoomTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsTrevor],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
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
		name = "FinaleTriggeredTrevor",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsTrevor],
			[IsTriggeredByTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "FinalVehicleSpottedTrevor",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsTrevor],
			[_auto_IsFinaleStarted],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "FinalVehicleArrivedTrevor",
		criteria = 
		[
			[ConceptFinalVehicleArrived],
			[IsTrevor],
			[_auto_HasSpottedVehicle],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Escape", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerNiceShotTrevor",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSpeaking],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotMechanic,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotFrancisTrevor",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotFrancisMechanic,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotLouisTrevor",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotLouisMechanic,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotZoeyTrevor",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsTrevor],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1PlayerNiceShotZoeyMechanic,
			},
		],
	},

	{
		name = "C6M3GasPourTrevor",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			[isC6M3_Port],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3GasPourMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "C6M1_IntotheparkNoHealthTrevor",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1_IntotheparkNoHealthMechanic,
			},
		],
	},

	{
		name = "C6M1Intro_01aTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_01a],
			[IsTrevor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_01aMechanic,
				followup = RThen("Biker", "C6M1Intro_01b", null, -6.365),
			},
		],
	},

	{
		name = "C6M1Intro_01Biker02Trevor",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsTrevor],
			[IsFrancisIntroActor],
			[IsNotSaidIntroScene],
			[FrancisGroup2],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_01Biker02Mechanic,
				followup = RThen("Biker", "C6M1Intro_24b", null, -12.798),
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
		name = "C6M1Intro_01cTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_01c],
			[IsTrevor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_01cMechanic,
				followup = RThen("Biker", "C6M1Intro_01d", null, -0.982),
			},
		],
	},

	{
		name = "C6M1Intro_01TeenGirl04Trevor",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsTrevor],
			[IsZoeyIntroActor],
			[IsNotSaidIntroScene],
			[MoreThan60],
			[LessThan100],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_01TeenGirl04Mechanic,
				followup = RThen("TeenGirl", "C6M1Intro_23a", null, -2.512),
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
		name = "C6M1Intro_02aTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_02a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_02aMechanic,
				followup = RThen("Biker", "C6M1Intro_02b", null, -4.221),
			},
		],
	},

	{
		name = "C6M1Intro_11aTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_11a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_11aMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_11b", null, -5.419),
			},
		],
	},

	{
		name = "C6M1Intro_11cTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_11c],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_11cMechanic,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
	},

	{
		name = "C6M1Intro_12bTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_12b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_12bMechanic,
				followup = RThen("Producer", "C6M1Intro_12c", null, -4.691),
			},
		],
	},

	{
		name = "C6M1Intro_13aTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_13a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_13aMechanic,
				followup = RThen("Coach", "C6M1Intro_13b", null, -14.217),
			},
		],
	},

	{
		name = "C6M1Intro_13cTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_13c],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_13cMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_13d", null, -3.537),
			},
		],
	},

	{
		name = "C6M1Intro_13fTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_13f],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_13fMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_23bTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_23b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_23bMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_23c", null, -7.488),
			},
		],
	},

	{
		name = "C6M1Intro_23dTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_23d],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_23dMechanic,
				followup = RThenAny("WorldC6M1_HistoricTour", -4.369),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_24cTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_24c],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_24cMechanic,
				followup = RThen("Biker", "C6M1Intro_24d", null, -2.841),
			},
		],
	},

	{
		name = "C6M1Intro_24eTrevor",
		criteria = 
		[
			[ConceptC6M1Intro_24e],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M1Intro_24eMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "LeavingC6M1StartTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.LeavingC6M1StartMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "LeftC6M1Start", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemWorldC6M1_WeddingWarn02Trevor",
		criteria = 
		[
			[ConceptRemWorldC6M1_WeddingWarn02],
			[IsTrevor],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.RemWorldC6M1_WeddingWarn02Mechanic,
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
		name = "WorldC6M1_WeddingWarn03aTrevor",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M1_WeddingWarn03aMechanic,
				followup = RThen("Producer", "WorldC6M1_WeddingWarn03b", null, -0.799),
			},
		],
		applycontext =
		{
			c1 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2_OpenGate1Trevor",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2_OpenGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2_OpenGate1bTrevor",
		criteria = 
		[
			[ConceptC6M2_OpenGate1b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2_OpenGate1bMechanic,
			},
		],
	},

	{
		name = "C6M2_OpenGate1BlameTrevor",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsTrevor],
			[IsGamblerNear800Weight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2_OpenGate1BlameMechanic,
				followup = RThen("Gambler", "C6M2_OpenGate1a", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2_OpenGate2Trevor",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2_OpenGate2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Said:OpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2LeavingSafeRoomTrevor",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsTrevor],
			[IsNotSaidC6M2LeavingSafeRoom],
			[isc6m2_bedlam],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M2LeavingSafeRoomMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2LeavingSafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2SafeRoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.C6M2SafeRoomMechanic,
				followup = RThenAny("C6M2SafeRoom2", 3.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo02aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo02a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo02aMechanic,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo02b", null, -3.509),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03Trevor",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsTrevor],
			[IsFrancisIntroActor],
			[FrancisGroup1],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo03Mechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo03a", null, -3.33),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo03b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo03bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo03c", null, -16.18),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo06Trevor",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsTrevor],
			[IsZoeyIntroActor],
			[ZoeyGroup1],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo06Mechanic,
				followup = RThenAny("DLC1_C6M2_SafeRoomConvo07a", -6.763),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08Trevor",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsTrevor],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo08Mechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo15a", null, -4.114),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo11aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo11a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo11aMechanic,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo11b", null, -4.069),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo14bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo14c", null, -2.922),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo15Trevor",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsTrevor],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo15Mechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo16a1", null, -3.684),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo16bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo16c", null, -1.763),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16b1Trevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16b1],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo16b1Mechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo16e", null, -1.763),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16dTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16d],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo16dMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16fTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16f],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo16fMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo17Trevor",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsTrevor],
			[IsZoeyIntroActor],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo17Mechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo18a", null, -3.626),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo17aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo17a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo17aMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo17b", null, -7.751),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo18bMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo18c", null, -2.705),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo19aMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo19b", null, -2.249),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19c],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo19cMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo19d", null, -6.193),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19eTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19e],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo19eMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo20Trevor",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsTrevor],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo20Mechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo21a", null, -12.293),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo21bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo21b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M2_SafeRoomConvo21bMechanic,
			},
		],
	},

	{
		name = "WorldC6M2_FinalWater01bTrevor",
		criteria = 
		[
			[ConceptWorldC6M2_FinalWater01b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M2_FinalWater01bMechanic,
			},
		],
	},

	{
		name = "WorldC6M2_InSewer101aTrevor",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101a],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M2_InSewer101aMechanic,
				followup = RThen("Gambler", "WorldC6M2_InSewer101c", null, -0.999),
			},
		],
	},

	{
		name = "WorldC6M2_OnTourWalk102bTrevor",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk102b],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M2_OnTourWalk102bMechanic,
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo03b_Trevor",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo03b_],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WorldC6M2_Tattoo03b_Mechanic,
			},
		],
	},

	{
		name = "C6M3_BridgeDownTrevor",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_BridgeDownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_BridgeGettoCarTrevor",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsTrevor],
			[IsNotSaidGetToCar],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_BridgeGettoCarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_elevatorTrevor",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsTrevor],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_elevatorMechanic,
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
		name = "C6M3_elevatorZoeyTrevor",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsTrevor],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
			[IsZoeyIntroActor],
			[IsNotVersus],
			[ZoeyGroup1],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_elevatorZoeyMechanic,
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
		name = "C6M3_GivenItemBikerTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorBiker],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_GivenItemBikerMechanic,
			},
		],
	},

	{
		name = "C6M3_GivenItemTeenGirlTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsTrevor],
			[IsDonorTeenGirl],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_GivenItemTeenGirlMechanic,
			},
		],
	},

	{
		name = "C6M3SafeRoomTrevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsTrevor],
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
				func = Custom_Talker_Trevor.C6M3SafeRoomMechanic,
				followup = RThenAny("C6M3SafeRoom2", 3.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo01a],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo01aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo01b", null, -7.373),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo01c],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo01cMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02eTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02e],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo02eMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo03aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03a],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo03aMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo03b", null, -1.144),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo03cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03c],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo03cMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo03d", null, -1.799),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04a],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo04aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo04b", null, -3.659),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04dTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04d],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo04dMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo05aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo05a],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo05aMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo05b", null, -2.546),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo06Trevor",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsTrevor],
			[IsNotSaidC6M3SafeRoom2],
			[IsFrancisIntroActor],
			[FrancisGroup4],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo06Mechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo06a", null, -5.805),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo06bTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo06b],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo06bMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo07a],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo07aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo07b", null, -2.804),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo07c],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo07cMechanic,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08a],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08aMechanic,
				followup = RThen("Coach", "DLC1_C6M3_SafeRoomConvo08b", null, -1.669),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08cTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08c],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08cMechanic,
				followup = RThen("Trevor", "DLC1_C6M3_SafeRoomConvo08d", null, -0.936),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08dTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08d],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08dMechanic,
				followup = RThen("Trevor", "DLC1_C6M3_SafeRoomConvo08f", null, -1.479),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08eTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08e],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08eMechanic,
				followup = RThen("Trevor", "DLC1_C6M3_SafeRoomConvo08f", null, -2.608),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08fTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08f],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo08fMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo08g", null, -5.514),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo09aTrevor",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo09a],
			[IsTrevor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.DLC1_C6M3_SafeRoomConvo09aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo09b", null, -13.536),
			},
		],
	},

	{
		name = "IncapBounceTrevor",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsTrevor],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.IncapBounceMechanic,
				followup = RThen("Biker", "InCapBounce2", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidInCapBounce", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_CansDoneTrevor",
		criteria = 
		[
			[Conceptc6m3escapeready],
			[IsTrevor],
			[IsC6M3_Port],
			[IsNotSaidc6m3escapeready],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_CansDoneMechanic,
				followup = RThenAny("EmphaticArriveRun", -1.83),
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
		name = "L4D1AlsoSpottedTankTrevor",
		criteria = 
		[
			[ConceptPlayerAlsoWarnTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1AlsoSpottedTankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "SaidTankWarn2", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SpottedTankTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Isc6m3_port],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.L4D1SpottedTankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "SaidTankWarn2", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFallenTrevor",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedFallenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWitchChasingC6M1Trevor",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsTrevor],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidTrevorWitchChasing],
			[IsSaidTrevorWitchAttacking],
			[isc6m1_riverbank],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerWitchChasingC6M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTrevorWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkTrevor", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerRemarkremark_MidnightRidersBusTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkremark_MidnightRidersBusMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AcrossHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_AcrossHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_AlleyBelowMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_AlleyIntoBuildingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_InAptsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_InAptsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntotheparkTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_Intothepark],
			[IsNotSaidWorldC6M1_Intothepark],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_IntotheparkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_Intothepark", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoThePark2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_IntoThePark2],
			[IsNotSaidWorldC6M1_IntoThePark2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_IntoThePark2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_IntoThePark2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_IntoTheStoreMechanic,
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
		name = "PlayerRemarkWorldC6M1_PostWeddingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_PostWeddingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_PostWeddingZTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[IsZoeyIntroActor],
			[ZoeyGroup1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_PostWeddingZMechanic,
				followup = RThenAny("WorldC6M1_PostWedding02a", -3.481),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_PostWeddingZCTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[IsZoeyIntroActor],
			[ZoeyGroup2],
			[IsCoachNear800Weight0],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_PostWeddingZCMechanic,
				followup = RThen("Coach", "WorldC6M1_PostWedding01a", null, -2.761),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleyTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_SafeRoomAlleyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_ThroughBarTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_ThroughBarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_UpHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_UpTheStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_UpTheStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_WeddingWarnMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_WeddingWarn1Mechanic,
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
		name = "PlayerRemarkWorldC6M1_WeddingWarn2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_WeddingWarn2Mechanic,
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
		name = "PlayerRemarkWorldC6M1_WeddingWarn3Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M1_WeddingWarn3Mechanic,
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
		name = "PlayerRemarkWorldC6M2_AcrossPlankTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear250],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_AcrossPlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_AfterGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_AfterGate2Mechanic,
				followup = RThen("Gambler", "WorldC6M2_AfterGate201a", null, -1.968),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_DownHereTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_DownIntoBuildingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalLadderTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_FinalLadderMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_FinalWaterMechanic,
				followup = RThen("Gambler", "WorldC6M2_FinalWater01a", null, -1.706),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_FinalWaterGoGoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InJazzClubTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear1000],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_InJazzClubMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_InSewer2],
			[IsNotSaidWorldC6M2_InSewer2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsSaidWorldC6M2_InSewer1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_InSewer2Mechanic,
				followup = RThen("Producer", "WorldC6M2_InSewer202a", null, -4.622),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_InSewerLadder1Mechanic,
				followup = RThenAny("WorldC6M2_InSewerLadder101a", -2.795),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewerLadder1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_IntoConstructionMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_IntoPoolHallMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_JukeBoxTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_JukeBoxMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_JumpDownTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_JumpDownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_OnTourWalk2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_OnTourWalk3],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_OnTourWalk3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_OpenGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OpenGate2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_OpenGate2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_Phase2Mechanic,
				followup = RThen("Producer", "WorldC6M2_Phase201a", null, -1.792),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_Phase2DownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IntensityOver75],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_Phase2DownIntenseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_PostGate1xTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_PostGate1xMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_SafeRoomTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_SafeRoom],
			[IsNotSaidWorldC6M2_SafeRoom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear800],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_SafeRoomMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_TattooTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_TattooMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_TourEntranceTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_TourEntranceMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_UpCatWalkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairsTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_UpStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Trevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M2_UpStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_BridgeRunTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M3_BridgeRunMechanic,
				followup = RThenAny("WorldC6M3_ByBridge01", -1.803),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_BridgeRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[IsSaidFinalVehicleArrived],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldC6M3_ByBridgeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldFootLockerTrevor",
		criteria = 
		[
			[ConceptRemark],
			[IsTrevor],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.PlayerRemarkWorldFootLockerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_PourFinishedTrevor",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C6M3_PourFinishedMechanic,
				followup = RThen("Manager", "L4D1_NiceJobPour", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorNearFinaleC6M3Trevor",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsTrevor],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotIncapacitated],
			[IsWorldTalkTrevor],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorNearFinaleC6M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPickupGolfCLubTrevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[TrevorNotPickedUpItem],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupGolfCLubMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TrevorPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupM60Trevor",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsTrevor],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[TrevorNotPickedUpItem],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorPickupM60Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TrevorPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "WeddingWitchDead04Trevor",
		criteria = 
		[
			[ConceptWeddingWitchDead04],
			[IsTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.WeddingWitchDead04Mechanic,
			},
		],
	},

	{
		name = "Player_LostCallC6M3Trevor",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsTrevor],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Player_LostCallC6M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGolfClubMechanic,
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
		name = "SurvivorSpottedGolfClubAutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedGolfClubAutoMechanic,
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
		name = "SurvivorSpottedM60Trevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkTrevor],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedM60Mechanic,
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
		name = "SurvivorSpottedM60AutoTrevor",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsTrevor],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.SurvivorSpottedM60AutoMechanic,
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
		name = "C1M2InsideGunShopTrevor",
		criteria = 
		[
			[ConceptC1M2InsideGunShop],
			[PanicEventTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M2InsideGunShopMechanic,
				followup = RThen("trevor", "C1M2InsideGunShop2", null, 0.0),
			},
		],
	},

	{
		name = "C1M3AlarmOffOratorTrevor",
		criteria = 
		[
			[ConceptC1M3AlarmOff],
			[PanicEventTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M3AlarmOffOratorMechanic,
				followup = RThen("trevor", "C1M3AlarmOff2", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M3BrokeWindowOratorTrevor",
		criteria = 
		[
			[ConceptC1M3BrokeWindow],
			[PanicEventTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.C1M3BrokeWindowOratorMechanic,
				followup = RThen("trevor", "C1M3AlarmActive", null, 0.0),
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
		name = "HitCraneButtonTrevor",
		criteria = 
		[
			[ConceptAirport02CraneStarted],
			[PanicEventTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.HitCraneButtonMechanic,
				followup = RThen("Trevor", "airport02_creshendoCrane", null, 0.01),
			},
		],
	},

	{
		name = "Airport03FireStartedTrevor",
		criteria = 
		[
			[ConceptAirport03FireStarted],
			[PanicEventTrevor],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.Airport03FireStartedMechanic,
				followup = RThen("Trevor", "Airport03FireStartedX", null, 0.01),
			},
		],
	},

	{
		name = "FinaleSceneTriggerZoeyTrevor",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsTrevor],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsZoeyIntroActor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.FinaleSceneTriggerZoeyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 28.0 },
			c3 = { context = "SaidTrevorBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndTrevorBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "FinaleSceneTriggerFrancisTrevor",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsTrevor],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsFrancisIntroActor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Trevor.FinaleSceneTriggerFrancisMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 29.0 },
			c3 = { context = "SaidTrevorBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndTrevorBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

];

rr_ProcessRules(trevor_philips_rules);
