local csgo_sas_rules = 
[
	{
		name = "C3M1CallFerry_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M1CallFerry],
			[PanicEventCsgo_sas],
			[IsNotSaidC3M1CallFerry2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M1CallFerryMechanic,
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
		name = "C3M2OpenDoor_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M2OpenDoor],
			[PanicEventCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M2OpenDoorMechanic,
				followup = RThen("Csgo_sas", "C3M2OpenDoor2", { Csgo_sasActor = 1 }, 0.0),
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
		name = "c5m4floatstart_CSGO_SAS",
		criteria = 
		[
			[Conceptc5m4floatstart],
			[PanicEventCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c5m4floatstartMechanic,
				followup = RThen("csgo_sas", "c5m4floatstart2", null, 0.0),
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
		name = "C1M1InSmoke_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsSaidC1M1InSmoke],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M1InSmokeMechanic,
				followup = RThenAny("C1M1Cough", -1.399),
			},
		],
	},
	{
		name = "C1M3AlarmOff_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M3AlarmOff2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M3AlarmOffMechanic,
				followup = RThenAny("C1M3AlarmOffa", 0.5),
			},
		],
	},
	{
		name = "C1M3AlarmActive_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M3AlarmActive],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M3AlarmActiveMechanic,
			},
		],
	},
	{
		name = "C4M3Saferoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C4M3SaferoomMechanic,
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
		name = "L4D1PlayerNiceShotFrancisC6M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotFrancisC6M3Mechanic,
			},
		],
	},
	{
		name = "PlayerNiceShotFrancis_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsBiker],
			[ChanceToFire30Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNiceShotFrancisMechanic,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisC6M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotLouisC6M3Mechanic,
			},
		],
	},
	{
		name = "PlayerNiceShotLouis_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsManager],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNiceShotLouisMechanic,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyC6M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsFrancisIntroActor],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotZoeyC6M3Mechanic,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyC6M3Intro_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsZoeyIntroActor],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotZoeyC6M3IntroMechanic,
			},
		],
	},
	{
		name = "PlayerNiceShotZoey_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsTeenGirl],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotZoeyC6M3Mechanic,
			},
		],
	},
	{
		name = "PlayerNiceShot_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ChanceToFire30Percent],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNiceShotMechanic,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShot_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[SubjectIsNotProducer],
			[SubjectIsNotGambler],
			[SubjectIsNotCoach],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ChanceToFire30Percent],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNiceShotMechanic,
			},
		],
	},
	{
		name = "PlayerNiceShotCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ChanceToFire10Percent],
			[IsWorldTalkCsgo_sas],
			[SubjectIsCoach],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNiceShotCoachMechanic,
			},
		],
	},
	{
		name = "PlayerNiceShotGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ChanceToFire10Percent],
			[IsWorldTalkCsgo_sas],
			[SubjectIsGambler],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNiceShotGamblerMechanic,
			},
		],
	},
	{
		name = "PlayerNiceShotProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ChanceToFire10Percent],
			[IsWorldTalkCsgo_sas],
			[SubjectIsProducer],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNiceShotProducerMechanic,
			},
		],
	},
	{
		name = "SurvivorMournCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsDeadCoach],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorMournCoachMechanic,
			},
		],
	},
	{
		name = "SurvivorMournCoachC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsDeadCoach],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorMournCoachC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorMournGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorMournGamblerMechanic,
			},
		],
	},
	{
		name = "SurvivorMournGamblerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorMournGamblerC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorMournProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorMournProducerMechanic,
			},
		],
	},
	{
		name = "SurvivorMournProducerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorMournProducerC1Mechanic,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloStartAllAlive_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHelloStartAllAliveMechanic,
				followup = RThenAny("_C1M1_ElevatorHello01c", -8.677),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloStart3Alive_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithOnlyThree],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHelloStart3AliveMechanic,
				followup = RThenAny("_C1M1_ElevatorHello3AliveExtra1", -3.112),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloStart2Alive_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithTwo],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHelloStart2AliveMechanic,
				followup = RThenAny("_C1M1_ElevatorHello2AliveName2", -2.926),
			},
		],
	},
	{
		name = "C3M1FerryInTransit_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M1FerryInTransit],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidC3M1FerryInTransit],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M1FerryInTransitMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryInTransit", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Playerc1m1_enter_elevator_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m1_enter_elevator],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidc1m1_enter_elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Playerc1m1_enter_elevatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_enter_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Playerc1m1_elevator_pushbutton_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m1_elevator_pushbutton],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidc1m1_elevator_pushbutton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Playerc1m1_elevator_pushbuttonMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_elevator_pushbutton", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M2PreAlarmDoor_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2PreStoreAlarm],
			[IsNotSaidWorldC1M2PreStoreAlarm],
			[IsNotSaidC1M2AlarmSetoff],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M2PreAlarmDoorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2PreStoreAlarm", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M2AlarmDoor2_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2AlarmDoor2],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2AlarmDoor2Mechanic,
				followup = RThen("orator", "C1M2StoreAlarm", null, 0.3),
			},
		],
	},
	{
		name = "PlayerRemarkC1M2PostAlarmDoor_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M2PostAlarmDoorMechanic,
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
		name = "PlayerC1M2GrabbingCola_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_NotSaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC1M2GrabbingColaMechanic,
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
		name = "PlayerC1M2GrabbingCola2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_SaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC1M2GrabbingCola2Mechanic,
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
		name = "PlayerC1M2FirstOutsideResponse_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC1M2FirstOutsideResponseMechanic,
				followup = RThen("orator", "Whitaker.Nags", null, 10.0),
			},
		],
	},
	{
		name = "C1M2GunRoomDoorResponseGratitude_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2GunRoomDoorResponseGratitude],
			[IsCsgo_sas],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2GunRoomDoorResponseGratitudeMechanic,
			},
		],
	},
	{
		name = "PlayerC1M2InsideGunShop2_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2InsideGunShop2],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidC1M2InsideGunShop],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC1M2InsideGunShop2Mechanic,
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
		name = "PlayerC1M2InsideGunShop3_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2InsideGunShop3],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC1M2InsideGunShop3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC1M2InsideGunShopPickupResponse_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2InsideGunShopPickupResponse],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC1M2InsideGunShopPickupResponseMechanic,
			},
		],
	},
	{
		name = "PlayerC1M2InsideGunShopPickupResponse2_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2InsideGunShopPickupResponse2],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC1M2InsideGunShopPickupResponse2Mechanic,
			},
		],
	},
	{
		name = "PlayerC1M2GunShopKill_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2Gunshopkill],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC1M2GunShopKillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 7.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC3M1CallFerry2_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M1CallFerry2],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsCsgo_sasActor],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC3M1CallFerry2Mechanic,
				followup = RThenAny("C3M1FerryInTransit", 25.0),
			},
		],
	},
	{
		name = "PlayerC3M1FerryLandedIdle_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[C3M1Ferry],
			[IsNotIncapacitated],
			[NotInCombat],
			[IsNotAlone],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC3M1FerryLandedIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC3M1FerryLaunched2a_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M1FerryLaunched2],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC3M1FerryLaunched2aMechanic,
			},
		],
	},
	{
		name = "PlayerC3M2ComingHome_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsSaidC3M2Village1],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC3M2ComingHomeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C3M2BloodFarmers_CSGO_SAS",
		criteria = 
		[
			[Concept_C3M2BloodFarmers],
			[IsCsgo_sas],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C3M2BloodFarmersMechanic,
			},
		],
	},
	{
		name = "PlayerC3M2OpenDoor2_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M2OpenDoor2],
			[IsCsgo_sas],
			[IsTalkCsgo_sas],
			[IsCsgo_sasActor],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC3M2OpenDoor2Mechanic,
			},
		],
	},
	{
		name = "Playerc5m4floatend_CSGO_SAS",
		criteria = 
		[
			[Conceptc5m4floatend2],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Playerc5m4floatendMechanic,
			},
		],
	},
	{
		name = "Playerc5m4floatstart2_CSGO_SAS",
		criteria = 
		[
			[Conceptc5m4floatstart2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Playerc5m4floatstart2Mechanic,
			},
		],
	},
	{
		name = "PlayerintroC1M1_CSGO_SAS",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerintroC1M1Mechanic,
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
		name = "PlayerintroC1M1Alone_CSGO_SAS",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsCsgo_sas],
			[IsAlone],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerintroC1M1AloneMechanic,
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
		name = "WhitakerC1M2DeliverCola_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.WhitakerC1M2DeliverColaMechanic,
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
		name = "PlayerPlayerUsingColaBottles_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerUsingColaBottles],
			[IsCsgo_sas],
			[IsNotSaidPlayerUsingColaBottles],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerUsingColaBottles", value = 1, duration = 20.0 },
			c2 = { context = "WhoPutCola", value = "Csgo_sas", duration = 35 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRelaxedSigh_CSGO_SAS",
		criteria = 
		[
			[ConceptRelaxedSigh],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRelaxedSighMechanic,
			},
		],
	},
	{
		name = "PlayerStayTogetherInsideReponse_CSGO_SAS",
		criteria = 
		[
			[ConceptStayTogetherInsideReponse],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidStayTogetherInsideReponse],
			[IsNotHealthySlow],
			[IsNotInSafeSpot],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerStayTogetherInsideReponseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidStayTogetherInsideReponse", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerUseAdrenaline_CSGO_SAS",
		criteria = 
		[
			[ConceptUseAdrenaline],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerUseAdrenalineMechanic,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FeedGator2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FeedGator2],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IssuerClose],
			[ChanceToFire30Percent],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldC3M1FeedGator2Mechanic,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingA01_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingA01],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldC3M1FerryCrossingA01Mechanic,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingB01_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingB01],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldC3M1FerryCrossingB01Mechanic,
				followup = RThen("producer", "WorldC3M1FerryCrossingB02", null, -3.058),
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingD03_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingD03],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldC3M1FerryCrossingD03Mechanic,
				followup = RThen("producer", "WorldC3M1FerryCrossingD04", null, -1.705),
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingE02_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingE02],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldC3M1FerryCrossingE02Mechanic,
				followup = RThenAny("WorldC3M1FerryCrossingE03", -5.643),
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingE04_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingE04],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldC3M1FerryCrossingE04Mechanic,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG02_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingG02],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldC3M1FerryCrossingG02Mechanic,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingI02_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingI02],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldC3M1FerryCrossingI02Mechanic,
				followup = RThen("coach", "WorldC3M1FerryCrossingI03", null, -3.258),
			},
		],
	},
	{
		name = "WorldC3M1FerryCrossingM2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingM2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC3M1FerryCrossingM2Mechanic,
				followup = RThen("gambler", "WorldC3M1FerryCrossingM3", null, 0.1),
			},
		],
	},
	{
		name = "WorldC3M1FerryCrossingM4_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingM4],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC3M1FerryCrossingM4Mechanic,
				followup = RThen("coach", "WorldC3M1FerryCrossingM5", null, 0.1),
			},
		],
	},
	{
		name = "PlayerWorldIntroC31_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldIntroC31],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldIntroC31Mechanic,
				followup = RThen("gambler", "WorldIntroC31a1", null, -1.96),
			},
		],
	},
	{
		name = "ThanksGotItem_CSGO_SAS",
		criteria = 
		[
			[IsAwardConcept],
			[IsSharingSubject],
			[IsNotCoughing],
			[SubjectIsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
	},
	{
		name = "RescuedSurvivor_CSGO_SAS",
		criteria = 
		[
			[IsAwardConcept],
			[IsRescuer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.RescuedSurvivorMechanic,
			},
		],
	},
	{
		name = "PlayerGivenItem_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGivenItem],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGivenItemMechanic,
			},
		],
	},
	{
		name = "ItemDonorProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ItemDonorProducerMechanic,
				followup = RThen("producer", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorCoach],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ItemDonorCoachMechanic,
				followup = RThen("Coach", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorGambler],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ItemDonorGamblerMechanic,
				followup = RThen("gambler", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorBiker_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorBiker],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ItemDonorBikerMechanic,
				followup = RThen("gambler", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorTeenGirl_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorTeenGirl],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ItemDonorTeenGirlMechanic,
				followup = RThen("teengirl", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorManager_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorManager],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ItemDonorManagerMechanic,
				followup = RThen("manager", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorNamVet_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorNamVet],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ItemDonorNamVetMechanic,
				followup = RThen("namvet", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedMinor_CSGO_SAS",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsCsgo_sas],
			[IsIncappedStarted],
			[IsIncappedStarted2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveMeInterruptedMinorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedMajor_CSGO_SAS",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsCsgo_sas],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveMeInterruptedMajorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedCritical_CSGO_SAS",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsCsgo_sas],
			[IsIncappedLethargic],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveMeInterruptedCriticalMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveThanks_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksCoachMechanic,
				followup = RThen("Subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksCoachC1_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksCoachC1Mechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsGambler],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksGamblerMechanic,
				followup = RThen("Subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksGamblerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsGambler],
			[ChanceToFire30Percent],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksProducerMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksBiker_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsBiker],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksBikerMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksManager_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsManager],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksManagerMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksNamVet_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsNamVet],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksManagerMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksTeenGirl_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsTeenGirl],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ReviveThanksTeenGirlMechanic,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "BotPlayer_YourWelcome_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.BotPlayer_YourWelcomeMechanic,
			},
		],
	},
	{
		name = "BotReassureComing_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorBotReassureComing],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.BotReassureComingMechanic,
			},
		],
	},
	{
		name = "BotYesReady_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorBotYesReady],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.BotReassureComingMechanic,
			},
		],
	},
	{
		name = "BotReassureNearby_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorBotReassureNearby],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.BotReassureNearbyMechanic,
			},
		],
	},
	{
		name = "C1M2LeavingSafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCsgo_sas],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m2_streets],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2LeavingSafeRoomMechanic,
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
		name = "C1M2SafeRooma2_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2SafeRooma2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2SafeRooma2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C1M2SafeRoomc1_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2SafeRoomc1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2SafeRoomc1Mechanic,
				followup = RThen("gambler", "C1M2SafeRoomc2", null, -3.765),
			},
		],
	},
	{
		name = "C1M2TankerAttack_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2TankerAttack2],
			[IsCsgo_sas],
			[WhoPutColaCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2TankerAttackMechanic,
				followup = RThen("orator", "C1M2GoodLuckGettingToTheMall", null, 3.0),
			},
		],
	},
	{
		name = "c1m4escape_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m4escape],
			[IsCsgo_sas],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c1m4escapeMechanic,
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
		name = "c1m4escapeCheckSuccess_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m4escapeCsgo_sasCheck],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c1m4escapeCheckSuccessMechanic,
				followup = RThen("self", "c1m4escapeCsgo_sasCheckSuccess", { from = "CSGO_SAS" }, 0.0),
			},
		],
	},
	{
		name = "c1m4escapeCheckFail_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m4escapeCsgo_sasCheck],
			[IsCsgo_sas],
			[IsIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c1m4escapeCheckFailMechanic,
				followup = RThen("self", "c1m4escapeCsgo_sasCheckFail", { from = "CSGO_SAS" }, 0.0),
			},
		],
	},
	{
		name = "C1M4GasPour_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4GasPourMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "C1M4PlayerGetToRescueVehicle_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4PlayerGetToRescueVehicleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c1m4startelevator_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m4startelevator],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c1m4startelevatorMechanic,
				followup = RThen("csgo_sas", "_c1m4startelevator2", null, -4.816),
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
		name = "C6M3GasPour_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[isC6M3_Port],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3GasPourMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "FinaleStartC1M4_CSGO_SAS",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsCsgo_sas],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m4_atrium],
			[IsNotScavenge],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.FinaleStartC1M4Mechanic,
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
		name = "GasPourDoneC1M4_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[ScoreDoneSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPourDoneC1M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M2CarouselIdle_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[ismap_c2m2],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M2CarouselIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 13.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3RubbleNagIdle_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTeamNearCoaster],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[_auto_IsCoasterExpo],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M3RubbleNagIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.903 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c3 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M2Saferoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C2M2SaferoomMechanic,
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
		name = "_C2M2_Riders02_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Riders02],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Riders02Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "_C2M2_Riders03_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Riders03],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Riders03Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "_C2M2_Riders04_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Riders04],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Riders04Mechanic,
				followup = RThen("coach", "_C2M2_Riders04", null, 0.1),
			},
		],
	},
	{
		name = "_C2M2_Riders06_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Riders06],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Riders06Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "_C2M2_Riders07_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Riders07],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Riders07Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C2M1Intro_400_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_400],
			[IsCsgo_sas],
			[IsSaidLeavingSafeArea],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_400Mechanic,
				followup = RThen("csgo_sas", "C2M1Intro_405", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.363 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_401_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_401],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_401Mechanic,
				followup = RThen("csgo_sas", "C2M1Intro_402", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.772 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_402_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_402],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_402Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.79 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_403_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_403],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_403Mechanic,
				followup = RThen("csgo_sas", "C2M1Intro_404", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.198 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_404_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_404],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_404Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.506 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_405_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_405],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_405Mechanic,
				followup = RThen("csgo_sas", "C2M1Intro_406", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.411 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_406_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_406],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_406Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.506 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_407_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_407],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_407Mechanic,
				followup = RThen("csgo_sas", "C2M1Intro_408", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.846 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_408_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro_408],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro_408Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.098 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m3_DownHole_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m3downhole],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m3_DownHoleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DownHole", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m3CoasterEnd_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m3CoasterEnd],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m3CoasterEndMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3CoasterRunGo_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M3CoasterRunGo],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M3CoasterRunGoMechanic,
			},
		],
	},
	{
		name = "C2M3CoasterStart_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m3CoasterStart],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M3CoasterStartMechanic,
				followup = RThen("csgo_sas", "_c2m3_howcool", null, 1.0),
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
		name = "C2M3Saferoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C2M3SaferoomMechanic,
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
		name = "C2M3SafeIntro006_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M3SafeIntro006],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M3SafeIntro006Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C2M3SafeIntro010_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M3SafeIntro010],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M3SafeIntro010Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "c2m3SeeChopper_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m3SeeChopper],
			[IsCsgo_sas],
			[IsTalk],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m3SeeChopperMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_OutOfTunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m3SpotIncendiary_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsIncendiary],
			[IsCsgo_sas],
			[IsTalk],
			[NotInCombat],
			[Ismap_c2m3],
			[_auto_NotOutOfTunnel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m3SpotIncendiaryMechanic,
			},
		],
	},
	{
		name = "c2m3SpotKatana_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsKatana],
			[IsCsgo_sas],
			[IsTalk],
			[NotInCombat],
			[Ismap_c2m3],
			[_auto_NotOutOfTunnel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m3SpotKatanaMechanic,
			},
		],
	},
	{
		name = "C2M4ButtonPressed_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M4ButtonPressed],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M4ButtonPressedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ButtonPressed", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4Gate004_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M4Gate004],
			[IsCsgo_sas],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M4Gate004Mechanic,
				followup = RThen("coach", "C2M4Gate005", null, 0.01),
			},
		],
	},
	{
		name = "C2M4Gate000_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M4Gate000],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGate],
			[_auto_NotNearGateNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M4Gate000Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.116 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 23.0 },
			c4 = { context = "_auto_NearGateNag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4GateIdle_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGateNag],
			[_auto_IsNearGate],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M4GateIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.645 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 23.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4GateOpenCallout_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M4GateOpenCallout],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M4GateOpenCalloutMechanic,
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
		name = "c2m4SeeChopper_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m4SeeChopper],
			[IsCsgo_sas],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m4SeeChopperMechanic,
			},
		],
	},
	{
		name = "C2M5_Button2Yell_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsCsgo_sas],
			[NotCoachMadAtRiders],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5_Button2YellMechanic,
			},
		],
	},
	{
		name = "C2M5_Button2YellCoachMad_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsCsgo_sas],
			[CoachMadAtRiders],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5_Button2YellMechanic,
			},
		],
	},
	{
		name = "C2M5_Choppercoming_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5_Choppercoming],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5_ChoppercomingMechanic,
				followup = RThenAny("C2M5_PlanWorked", 0.01),
			},
		],
	},
	{
		name = "c2m5_intro003_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro003],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro003Mechanic,
				followup = RThen("self", "c2m5_intro009", null, 0.4),
			},
		],
	},
	{
		name = "c2m5_intro005_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro005],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro005Mechanic,
				followup = RThenAny("c2m5_intro006", 0.1),
			},
		],
	},
	{
		name = "c2m5_intro008_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro008],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro008Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "c2m5_intro009_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro009],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro009Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "c2m5_intro011_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro011],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro011Mechanic,
				followup = RThenAny("c2m5_intro012", 0.1),
			},
		],
	},
	{
		name = "c2m5_intro012_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro012],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "c2m5_intro015_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro015],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "c2m5_intro016_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro016],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "c2m5_intro020_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro020],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "c2m5_intro025_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro025],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro012Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "c2m5_intro019_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro019],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro019Mechanic,
				followup = RThenAny("c2m5_intro020", 0.1),
			},
		],
	},
	{
		name = "c2m5_intro024_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m5_intro024],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c2m5_intro024Mechanic,
				followup = RThenAny("c2m5_intro025", 0.01),
			},
		],
	},
	{
		name = "C2M5_PlanWorked_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsCsgo_sas],
			[NotCoachMadAtRiders],
			[IsNotIncapacitated],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5_PlanWorkedMechanic,
			},
		],
	},
	{
		name = "C2M5_PlanWorkedCoachMad_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsCsgo_sas],
			[CoachMadAtRiders],
			[IsNotIncapacitated],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5_PlanWorkedMechanic,
			},
		],
	},
	{
		name = "C2M5Button1_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5Button1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5Button1Mechanic,
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
		name = "C2M5ChopperNag_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5ChopperNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5InChopperNag_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5InChopperNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5InArenaNag_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[NotInCombat],
			[Ismap_c2m5],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[_auto_IsC2M5InArena],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5InArenaNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 34.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5Singing_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5Microphone],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C2M5SingingMechanic,
			},
		],
	},
	{
		name = "SurvivorReloadingC2M5_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[Ismap_c2m5],
			[IsRocking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorReloadingC2M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorReloadingC2M5RockedOut_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[IsRocking],
			[Ismap_c2m5],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
	},
	{
		name = "SurvivorVocalizeLookOutC2M5_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[Ismap_c2m5],
			[IsRocking],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorVocalizeLookOutC2M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorVocalizeLookOutC2M5RockedOut_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[Ismap_c2m5],
			[IsRocking],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
	},
	{
		name = "C2M5LeaveSafe_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCsgo_sas],
			[ismap_c2m5],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5LeaveSafeMechanic,
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
		name = "C2M5ReloadingTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCsgo_sas],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5ReloadingTankMechanic,
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
		name = "PlayerKillTankConfirmationC2M5_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillTankConfirmationC2M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5ThankYou_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5Microphone],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C2M5ThankYouMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.287 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M1FerryEnd2_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M1FerryEnd2],
			[IsCsgo_sas],
			[IsNotSaidC3M1FerryEnd],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M1FerryEnd2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryEnd", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC3M1FerryCrossingRochelle_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsProducerAlive],
			[ChanceToFire25Percent],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 4
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC3M1FerryCrossingRochelleMechanic,
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
		name = "WorldC3M1FerryCrossingJ3_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingJ3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC3M1FerryCrossingJ3Mechanic,
			},
		],
	},
	{
		name = "WorldC3M1FerryCrossingk3_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingk3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC3M1FerryCrossingk3Mechanic,
			},
		],
	},
	{
		name = "WorldC3M1FerryCrossingL3_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingL3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC3M1FerryCrossingL3Mechanic,
				followup = RThen("coach", "WorldC3M1FerryCrossingD01", null, 0.1),
			},
		],
	},
	{
		name = "C3M2Disgust_CSGO_SAS",
		criteria = 
		[
			[Conceptc3m2disgust],
			[IsCsgo_sas],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M2DisgustMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.803 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M2SafeRooma2_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M2SafeRooma2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M2SafeRooma2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C3M2SafeRoomb3_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M2SafeRoomb3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M2SafeRoomb3Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "InfoRemc3m2_parachutist1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc3m2_parachutist],
			[IsNotSaidc3m2_parachutist],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.InfoRemc3m2_parachutist1Mechanic,
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
		name = "AUTOBLANK_InfoRemc3m2_parachutist1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc3m2_parachutist],
			[IsNotSaidc3m2_parachutist],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m2_parachutist", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "InfoRemC3M2Bathtub2_CSGO_SAS",
		criteria = 
		[
			[ConceptInfoRemC3M2Bathtub2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.InfoRemC3M2Bathtub2Mechanic,
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
		name = "_C3M2Pirogue2_CSGO_SAS",
		criteria = 
		[
			[Concept_C3M2Pirogue2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C3M2Pirogue2Mechanic,
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
		name = "C3M3SafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C3M3SafeRoomMechanic,
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
		name = "C3M3SafeRoom2a2_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M3SafeRoom2a2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M3SafeRoom2a2Mechanic,
				followup = RThen("producer", "C3M3SafeRoom2a3", null, 0.05),
			},
		],
	},
	{
		name = "C3M3SafeRoom2c3_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M3SafeRoom2c3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M3SafeRoom2c3Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C3M3SafeRoom2d2_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M3SafeRoom2d2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M3SafeRoom2d2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "InfoRemC3M3Bodies2_CSGO_SAS",
		criteria = 
		[
			[ConceptInfoRemC3M3Bodies2],
			[IsCsgo_sas],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.InfoRemC3M3Bodies2Mechanic,
				followup = RThen("producer", "InfoRemC3M3Bodies3", null, -1.429),
			},
		],
	},
	{
		name = "InfoRemC3M3LowerGatea_CSGO_SAS",
		criteria = 
		[
			[ConceptInfoRemC3M3LowerGatea],
			[IsCsgo_sas],
			[IsNotSaidC3M3BridgeButton],
			[IntensityUnder25],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.InfoRemC3M3LowerGateaMechanic,
			},
		],
	},
	{
		name = "InfoRemC3M3Unsanitarya1_CSGO_SAS",
		criteria = 
		[
			[ConceptInfoRemC3M3Unsanitarya1],
			[IsCsgo_sas],
			[IssuerClose],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.InfoRemC3M3Unsanitarya1Mechanic,
				followup = RThen("gambler", "InfoRemC3M3Unsanitarya2", null, -3.766),
			},
		],
	},
	{
		name = "C3M4BoatNags_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4BoatNagsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4InBoatNags_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4InBoatNagsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4Button1A_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4Button1A],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[_auto_IsTalkingCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4Button1AMechanic,
				followup = RThen("orator", "C3M4Button101", null, 0.3),
			},
		],
	},
	{
		name = "C3M4ButtonPickUsUp_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4ButtonPickUsUp],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4ButtonPickUsUpMechanic,
				followup = RThen("orator", "C3M4ButtonHowMany", null, 0.3),
			},
		],
	},
	{
		name = "C3M4ButtonName_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4ButtonName],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[_auto_IsTalkingCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4ButtonNameMechanic,
				followup = RThen("orator", "C3M4ButtonHowMany", null, 0.1),
			},
		],
	},
	{
		name = "C3M4HowManyAnswer_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[IsEveryoneAlive],
			[_auto_IsTalkingCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4HowManyAnswerMechanic,
				followup = RThen("orator", "C3M4Button102", null, 0.1),
			},
		],
	},
	{
		name = "C3M4HowManyAnswerNot4_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[IsEveryoneNotAlive],
			[_auto_IsTalkingCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4HowManyAnswerNot4Mechanic,
				followup = RThen("orator", "C3M4Button102", null, 0.1),
			},
		],
	},
	{
		name = "C3M4Button201_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4Button201],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4Button201Mechanic,
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
		name = "C3M4Button202_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4Button202],
			[FromIsAnOrator],
			[_auto_IsTalkingCsgo_sas],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4Button202Mechanic,
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
		name = "C3M4Button203_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4Button203],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[_auto_IsTalkingCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4Button203Mechanic,
			},
		],
	},
	{
		name = "C3M4ReloadingTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCsgo_sas],
			[ismapc3m4_plantation],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4ReloadingTankMechanic,
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
		name = "PlayerKillTankConfirmationC3M4_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[ismapc3m4_plantation],
			[IsNotSpeakingWeight0],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillTankConfirmationC3M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4GateBlow01_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M4GateBlow01],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4GateBlow01Mechanic,
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
		name = "C4StormBlindIdle_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[_auto_NotTimerLockA],
			[_auto_IsTimerA],
			[_auto_NotC4Csgo_sasInCover],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4StormBlindIdleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerA", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M2IdleWitchville01_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[NotInCombat],
			[IsWorldTalkCsgo_sas],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsCsgo_sasInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M2IdleWitchville01Mechanic,
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
		name = "C4M2IdleWitchville02_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsGamblerAlive],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalkCsgo_sas],
			[NotInCombat],
			[IsWorldTalkCsgo_sas],
			[IsGamblerNear400],
			[ChanceToFire10Percent],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsCsgo_sasInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M2IdleWitchville02Mechanic,
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
		name = "C4M2PushedButton_CSGO_SAS",
		criteria = 
		[
			[Conceptc4m2_elevator_top_button],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M2PushedButtonMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidActivatedC4M2Elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M5BoatNags_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M5BoatNagsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M5InBoatNags_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M5InBoatNagsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M1_intro002_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M1_intro002],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M1_intro002Mechanic,
				followup = RThen("orator", "C5M1_intro003", null, 0.01),
			},
		],
	},
	{
		name = "C5M1_intro004_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M1_intro004],
			[IsCsgo_sas],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M1_intro004Mechanic,
				followup = RThen("coach", "C5M1_intro008", null, 0.01),
			},
		],
	},
	{
		name = "C5M1_intro005_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M1_intro005],
			[IsCsgo_sas],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M1_intro005Mechanic,
				followup = RThen("coach", "C5M1_intro008", null, 0.01),
			},
		],
	},
	{
		name = "C5M1_intro007_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M1_intro007],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M1_intro007Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C5M1_intro008_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M1_intro008],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M1_intro008Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C5M1_intro009_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M1_intro009],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M1_intro009Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C5M1Flyby01_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M1Flyby01],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M1Flyby01Mechanic,
				followup = RThenAny("C5M1Flyby02", 0.1),
			},
		],
	},
	{
		name = "C5M2AlarmNag_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsMapc5m2_park],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M2AlarmNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502Horse_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC502Horse],
			[IsNotSaidWorldC502Horse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear600],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[AutoIsNotSurvival],
			[TimeSinceGroupInCombat02],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502HorseMechanic,
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
		name = "AUTOBLANK_PlayerRemarkWorldC502Horse_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC502Horse],
			[IsNotSaidWorldC502Horse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear600],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[AutoIsNotSurvival],
			[TimeSinceGroupInCombat02],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502Horse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502Horse3_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502Horse3],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[TimeSinceGroupInCombat02],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502Horse3Mechanic,
			},
		],
	},
	{
		name = "C5M3AlarmFieldNags_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M3AlarmFieldNagsMechanic,
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
		name = "C5M3AlarmFieldNags01_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3AlarmFieldNags01],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3AlarmFieldNags01Mechanic,
			},
		],
	},
	{
		name = "C5M3AlarmFieldNags03_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3AlarmFieldNags03],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3AlarmFieldNags03Mechanic,
			},
		],
	},
	{
		name = "C5M3AlarmFieldNags2_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M3AlarmFieldNags2Mechanic,
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
		name = "C5M3Bodies01_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3Bodies01],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3Bodies01Mechanic,
			},
		],
	},
	{
		name = "C5M3Bodies02_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3Bodies02],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3Bodies01Mechanic,
			},
		],
	},
	{
		name = "C5M3FirstInAlarm_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3FirstInAlarmField],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3FirstInAlarmMechanic,
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
		name = "C5M3GraveNags_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M3GraveNagsMechanic,
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
		name = "C5M3GraveNagsNOFact_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M3GraveNagsNOFactMechanic,
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
		name = "C5M3GraveNags01_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3GraveNags01],
			[IsCsgo_sas],
			[NotInCombat],
			[IsNotCoughing],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3GraveNags01Mechanic,
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
		name = "_C5M3GraveSmells_CSGO_SAS",
		criteria = 
		[
			[Concept_C5M3GraveSmells],
			[IsCsgo_sas],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C5M3GraveSmellsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.95 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C5M3SmallFavors_CSGO_SAS",
		criteria = 
		[
			[Concept_C5M3SmallFavors],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS._C5M3SmallFavorsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.85 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3Jets2_CSGO_SAS",
		criteria = 
		[
			[Conceptc5m3Jets2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3Jets2Mechanic,
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
		name = "C5M3Jets3_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3Jets3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3Jets3Mechanic,
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
		name = "C5M3StopZombies_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3StopZombies],
			[IsCsgo_sas],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3StopZombiesMechanic,
			},
		],
	},
	{
		name = "C5M3OnBridge_CSGO_SAS",
		criteria = 
		[
			[Conceptc5m3OnBridge],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
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
		name = "C5M3SeeGraveyard01_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard01],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3SeeGraveyard01Mechanic,
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
		name = "C5M3SeeGraveyard04_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard04],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3SeeGraveyard04Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.887 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3SeeGraveyard03_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard03],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3SeeGraveyard03Mechanic,
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
		name = "C5M3SeeGraveyard06_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard06],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3SeeGraveyard06Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.504 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3ShootCar_CSGO_SAS",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsCsgo_sas],
			[IsCarAlarm],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3ShootCarMechanic,
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
		name = "C5M3ShootCarNot_CSGO_SAS",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotCsgo_sas],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		// 	forceweight 500
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3ShootCarNotMechanic,
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
		name = "C5M3ShootCar2_CSGO_SAS",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M3ShootCar2Mechanic,
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
		name = "C5M3ShootCar3_CSGO_SAS",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M3ShootCar3Mechanic,
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
		name = "C5M3ShootCar3Self_CSGO_SAS",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M3ShootCar3SelfMechanic,
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
		name = "C5M3Sniper01_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3Sniper01],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3Sniper01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3bodies_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3bodiesMechanic,
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
		name = "PlayerRemarkc5m2people_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m2peopleMechanic,
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
		name = "AUTOBLANK_PlayerRemarkc5m2people_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2people", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3BeenShot_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M3BeenShot],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3BeenShotMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkc5m3crashedheli_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m3crashedheli],
			[IsNotSaidc5m3crashedheli],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3crashedheliMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3crashedheli", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3insewer_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m3insewer],
			[IsNotSaidc5m3insewer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3insewerMechanic,
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
		name = "PlayerRemarkc5m3safezone_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3safezoneMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3manhole_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m3manhole],
			[IsNotSaidc5m3manhole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3manholeMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -11.59),
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
		name = "PlayerRemarkc5m3offhighway_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3offhighwayMechanic,
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
		name = "PlayerRemarkc5m3seegraveyard_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m3seegraveyard],
			[IsNotSaidc5m3seegraveyard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3seegraveyardMechanic,
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
		name = "PlayerRemarkc5m3seegraveyardEllis_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m3seegraveyard],
			[IsNotSaidc5m3seegraveyard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotAlone],
			[_auto_IsBridgeBomb],
			[_auto_NotTimerLockA],
			[_auto_NotOffHighway],
			[IsNotSpeakingWeight0],
			[_auto_C5M3Csgo_sasReacted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3seegraveyardEllisMechanic,
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
		name = "PlayerRemarkc5m3upladder_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m3upladder],
			[IsNotSaidc5m3upladder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3upladderMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upladder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3upsteps_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m3upsteps],
			[IsNotSaidc5m3upsteps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3upstepsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upsteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombExt_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4BombExt],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M4BombExtMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.411 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt01_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NoAirstrikes],
			[AutoAirstrikeIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M4BombInt01Mechanic,
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
		name = "C5M4BombIntA_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4BombIntA],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M4BombIntAMechanic,
			},
		],
	},
	{
		name = "C5M4BombInt02_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M4BombInt02Mechanic,
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
		name = "C5M4BombInt03_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M4BombInt03Mechanic,
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
		name = "C5M4BombIntMany_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M4BombInt03Mechanic,
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
		name = "C5M4JetPlanes_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4JetPlanes],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M4JetPlanesMechanic,
				followup = RThen("Gambler", "C5M4JetPlanes", null, 0.01),
			},
		],
	},
	{
		name = "PlayerRemarkc5m4alley_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m4alley],
			[IsNotSaidc5m4alley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m4alleyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4alley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4PoolTable_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4PoolTable],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M4PoolTableMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4PoolTableRo_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4PoolTable],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IssuerClose],
			[IsProducerAlive],
			[IsProducerNear400],
			[ChanceToFire40Percent],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M4PoolTableRoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m4inminifinale_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m4inminifinale],
			[IsNotSaidc5m4inminifinale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m4inminifinaleMechanic,
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
		name = "PlayerRemarkc5m4seebridge_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m4seebridge],
			[IsNotSaidc5m4seebridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m4seebridgeMechanic,
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
		name = "PlayerRemarkc5m4tractornag_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc5m4tractornag],
			[IsNotSaidc5m4tractornag],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTractorStarted],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m4tractornagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m4tractornag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4Tractor_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M4Tractor],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M4TractorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5_Button2_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2Mechanic,
				followup = RThen("csgo_sas", "C5M5_Button2200", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BridgeNag", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5_GateDown_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_GateDown],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_GateDownMechanic,
			},
		],
	},
	{
		name = "C5M5_Button2100_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2100],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2100Mechanic,
			},
		],
	},
	{
		name = "C5M5_Button2200_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2200],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2200Mechanic,
				followup = RThen("csgo_sas", "C5M5_Button2201", null, 0.01),
			},
		],
	},
	{
		name = "C5M5_Button2201_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2201],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2201Mechanic,
				followup = RThen("csgo_sas", "C5M5_Button2202", null, 0.3),
			},
		],
	},
	{
		name = "C5M5_Button2202_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2202],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2202Mechanic,
				followup = RThen("csgo_sas", "C5M5_Button2203", null, 0.3),
			},
		],
	},
	{
		name = "C5M5_Button2203_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2203],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2203Mechanic,
				followup = RThen("csgo_sas", "C5M5_Button2204", null, 0.3),
			},
		],
	},
	{
		name = "C5M5_Button2204_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2204],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2204Mechanic,
				followup = RThen("csgo_sas", "C5M5_Button2205", null, 0.2),
			},
		],
	},
	{
		name = "C5M5_Button2205_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2205],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2205Mechanic,
				followup = RThen("self", "C5M5_Button2206", null, 0.2),
			},
		],
	},
	{
		name = "C5M5_Button2206_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_Button2206],
			[IsCsgo_sas],
			[IsProducerAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_Button2206Mechanic,
				followup = RThen("producer", "C5M5_Button2207", null, 0.2),
			},
		],
	},
	{
		name = "C5M5_SurvivorConv01_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv01],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCsgo_sas],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_SurvivorConv01Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv03", null, 0.01),
			},
		],
	},
	{
		name = "C5M5_SurvivorConv01Bomb_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv01],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsBuzzardRunMentioned],
			[_auto_IsTalkingCsgo_sas],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_SurvivorConv01BombMechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv03", null, 0.01),
			},
		],
	},
	{
		name = "C5M5_SurvivorConv02_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv02],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCsgo_sas],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_SurvivorConv02Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv04", null, 0.01),
			},
		],
	},
	{
		name = "C5M5_SurvivorConv03_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv03],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCsgo_sas],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_SurvivorConv03Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv05", null, 0.01),
			},
		],
	},
	{
		name = "C5M5_SurvivorConv04_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv04],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCsgo_sas],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_SurvivorConv04Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01),
			},
		],
	},
	{
		name = "C5M5_SurvivorConv05_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv05],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCsgo_sas],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_SurvivorConv05Mechanic,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01),
			},
		],
	},
	{
		name = "C5M5_LowerTheBridge_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[_auto_IsBridgeNag],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_LowerTheBridgeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5Button1_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCsgo_sas],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5Button1Mechanic,
				followup = RThen("Orator", "C5M5_Soldier1Conv01", null, 0.01),
			},
		],
	},
	{
		name = "C5M5Button1BuzzardRun_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsCsgo_sas],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingCsgo_sas],
			[_auto_IsBuzzardRunMentioned],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5Button1BuzzardRunMechanic,
				followup = RThen("Orator", "C5M5_Soldier1Conv01", null, 0.01),
			},
		],
	},
	{
		name = "C5M5HearSoldiersNag_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[_auto_IsRadioNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5HearSoldiersNagMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5HearSoldiersNagBuzzard_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsBuzzardRunMentioned],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[_auto_IsRadioNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5HearSoldiersNagBuzzardMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5LeaveSafe_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCsgo_sas],
			[IsMapc5m5_bridge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5LeaveSafeMechanic,
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
		name = "C5M5RescueStart_CSGO_SAS",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsCsgo_sas],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5RescueStartMechanic,
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
		name = "C5M5SurvivorVocalizeLookOut_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5SurvivorVocalizeLookOutMechanic,
			},
		],
	},
	{
		name = "C5M5SpottedTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5SpottedTankMechanic,
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
		name = "C5M5ReloadingTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCsgo_sas],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5ReloadingTankMechanic,
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
		name = "PlayerKillTankConfirmationC5M5_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsTank],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[IsMapc5m5_bridge],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillTankConfirmationC5M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "C5M5RunToHeli_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5RunToHeliMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5InsideHeli_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5InsideHeliMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5BridgeDestroyed2_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5BridgeDestroyed2],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsEveryoneAlive],
			[CanSpeakC5M5SurvivorOutro],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5BridgeDestroyed2Mechanic,
			},
		],
	},
	{
		name = "C5M5SafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C5M5SafeRoomMechanic,
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
		name = "C5M5_saferoom002_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_saferoom002],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_saferoom002Mechanic,
				followup = RThen("gambler", "C5M5_saferoom004", null, 0.01),
			},
		],
	},
	{
		name = "C5M5_saferoom004_CSGO_SAS",
		criteria = 
		[
			[ConceptC5M5_saferoom004],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5_saferoom004Mechanic,
			},
		],
	},
	{
		name = "C6M1_IntotheparkNoHealth_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1_IntotheparkNoHealthMechanic,
			},
		],
	},
	{
		name = "C6M1Intro_01a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_01a],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_01aMechanic,
				followup = RThen("Biker", "C6M1Intro_01b", null, -6.365),
			},
		],
	},
	{
		name = "C6M1Intro_01Biker02_CSGO_SAS",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C6M1Intro_01Biker02Mechanic,
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
		name = "C6M1Intro_01c_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_01c],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_01cMechanic,
				followup = RThen("Biker", "C6M1Intro_01d", null, -0.982),
			},
		],
	},
	{
		name = "C6M1Intro_01TeenGirl04_CSGO_SAS",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C6M1Intro_01TeenGirl04Mechanic,
				followup = RThen("TeenGirl", "C6M1Intro_23a", null, -2.512),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.0 },
			c3 = { context = "Csgo_sasInLoveC6M1", value = 1, duration = 0.0 },
			c4 = { context = "RemarkWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1Intro_02a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_02a],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_02aMechanic,
				followup = RThen("Biker", "C6M1Intro_02b", null, -4.221),
			},
		],
	},
	{
		name = "C6M1Intro_11a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_11a],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_11aMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_11b", null, -5.419),
			},
		],
	},
	{
		name = "C6M1Intro_11c_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_11c],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_11cMechanic,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
	},
	{
		name = "C6M1Intro_11cGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_11c],
			[IsCsgo_sas],
			[IsGamblerAlive],
			[ChanceToFire10Percent],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_11cGamblerMechanic,
				followup = RThen("Gambler", "C6M1Intro_11d", null, -13.161),
			},
		],
	},
	{
		name = "C6M1Intro_12b_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_12b],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_12bMechanic,
				followup = RThen("Producer", "C6M1Intro_12c", null, -4.691),
			},
		],
	},
	{
		name = "C6M1Intro_13a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_13a],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_13aMechanic,
				followup = RThen("Coach", "C6M1Intro_13b", null, -14.217),
			},
		],
	},
	{
		name = "C6M1Intro_13c_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_13c],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_13cMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_13d", null, -3.537),
			},
		],
	},
	{
		name = "C6M1Intro_13f_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_13f],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_13fMechanic,
			},
		],
	},
	{
		name = "C6M1Intro_23b_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_23b],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_23bMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_23c", null, -7.488),
			},
		],
	},
	{
		name = "C6M1Intro_23d_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_23d],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_23dMechanic,
				followup = RThenAny("WorldC6M1_HistoricTour", -4.369),
			},
		],
	},
	{
		name = "C6M1Intro_24c_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_24c],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_24cMechanic,
				followup = RThen("Biker", "C6M1Intro_24d", null, -2.841),
			},
		],
	},
	{
		name = "C6M1Intro_24e_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_24e],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_24eMechanic,
			},
		],
	},
	{
		name = "C6M1Intro_ConfirmObjective_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_ConfirmObjective],
			[IsCsgo_sas],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_ConfirmObjectiveMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "LeavingC6M1Start_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.LeavingC6M1StartMechanic,
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
		name = "LeavingC6M1StartnoHealth_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsCsgo_sas],
			[IsNotAlone],
			[NoHasFirstAidKit],
			[isc6m1_riverbank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.LeavingC6M1StartnoHealthMechanic,
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
		name = "C6M1Start2_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Start2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Start2Mechanic,
				followup = RThen("self", "C6M1Start3", null, 1.0),
			},
		],
	},
	{
		name = "C6M1Start3_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Start3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Start3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemWorldC6M1_WeddingWarn02_CSGO_SAS",
		criteria = 
		[
			[ConceptRemWorldC6M1_WeddingWarn02],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.RemWorldC6M1_WeddingWarn02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CoachCake", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M1_WeddingWarn03a_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M1_WeddingWarn03aMechanic,
				followup = RThen("Producer", "WorldC6M1_WeddingWarn03b", null, -0.799),
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn03b_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03b],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M1_WeddingWarn03aMechanic,
				followup = RThen("Producer", "WorldC6M1_WeddingWarn03b", null, -0.799),
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn03c_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03c],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M1_WeddingWarn03cMechanic,
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn03d_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03d],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M1_WeddingWarn03dMechanic,
			},
		],
	},
	{
		name = "C6M2_OpenGate1_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2_OpenGate1Mechanic,
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
		name = "C6M2_OpenGate1b_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2_OpenGate1b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2_OpenGate1bMechanic,
			},
		],
	},
	{
		name = "C6M2_OpenGate1Blame_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsCsgo_sas],
			[IsGamblerNear400],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2_OpenGate1BlameMechanic,
				followup = RThen("Gambler", "C6M2_OpenGate1a", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
			c2 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c3 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c4 = { context = "SaidOpenedGate1BlameCsgo_sas", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2_OpenGate2_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2_OpenGate2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2LeavingSafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCsgo_sas],
			[IsNotSaidLeavingSafeArea],
			[isc6m2_bedlam],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2LeavingSafeRoomMechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo02a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo02a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo02aMechanic,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo02b", null, -3.509),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoProducerStart_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvoProducerStartMechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo03b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo03b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo03bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo03c", null, -16.18),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoZoeyStart_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvoZoeyStartMechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo08_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo08Mechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo11a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo11a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo11aMechanic,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo11b", null, -4.069),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo14bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo14c", null, -2.922),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo16bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo16c", null, -1.763),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16dRochelle_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16d],
			[IsCsgo_sas],
			[FromIsProducer],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo16dRochelleMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16dCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16d],
			[IsCsgo_sas],
			[FromIsCoach],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo16dCoachMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo17a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo17a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo17aMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo17b", null, -7.751),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo18bMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo18c", null, -2.705),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo19aMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo19b", null, -2.249),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo19cMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo19d", null, -6.193),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19e_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19e],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo19eMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19g_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19g],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo19gMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo21b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo21b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo21bMechanic,
			},
		],
	},
	{
		name = "WorldC6M2_FinalWater01b_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M2_FinalWater01b],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M2_FinalWater01bMechanic,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer101a_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101a],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M2_InSewer101aMechanic,
				followup = RThen("Gambler", "WorldC6M2_InSewer101c", null, -0.999),
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk102b_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk102b],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M2_OnTourWalk102bMechanic,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo03b_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo03b],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M2_Tattoo03bMechanic,
			},
		],
	},
	{
		name = "C6M3_BridgeDown_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_BridgeDownMechanic,
			},
		],
	},
	{
		name = "C6M3_BridgeGettoCar_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_BridgeGettoCarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorCancel_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M3_ElevatorCancel],
			[IsCsgo_sas],
			[IsC6M3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
	},
	{
		name = "C6M3_elevator_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsCsgo_sas],
			[IsC6M3_port],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_elevatorMechanic,
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
		name = "C6M3_elevatorZoey_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C6M3_elevatorZoeyMechanic,
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
		name = "C6M3_GivenItemBiker_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorBiker],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_GivenItemBikerMechanic,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirl_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorTeenGirl],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_GivenItemTeenGirlMechanic,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirlIntro_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorTeenGirl],
			[Isc6m3_port],
			[IsZoeyIntroActor],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_GivenItemTeenGirlIntroMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo01a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo01a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo01aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo01b", null, -7.373),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo01c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo01c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo01cMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02e_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02e],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo02eMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo03aMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo03b", null, -1.144),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo03cMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo03d", null, -1.799),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo04aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo04b", null, -3.659),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04d_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04d],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo04dMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo05a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo05aMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo05b", null, -2.546),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoFrancisStart_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvoFrancisStartMechanic,
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
		name = "DLC1_C6M3_SafeRoomConvo06b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo06b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo06bMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo07a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo07a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo07aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo07b", null, -2.804),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo07c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo07c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo07cMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08aMechanic,
				followup = RThen("Coach", "DLC1_C6M3_SafeRoomConvo08b", null, -1.669),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08cMechanic,
				followup = RThen("Csgo_sas", "DLC1_C6M3_SafeRoomConvo08d", null, -0.936),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08d_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08d],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08dMechanic,
				followup = RThen("Csgo_sas", "DLC1_C6M3_SafeRoomConvo08f", null, -1.479),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08e_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08e],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08eMechanic,
				followup = RThen("Csgo_sas", "DLC1_C6M3_SafeRoomConvo08f", null, -2.608),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08f_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08f],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08fMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo08g", null, -5.514),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo09a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo09a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo09aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo09b", null, -13.536),
			},
		],
	},
	{
		name = "IncapBounce_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsCsgo_sas],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.IncapBounceMechanic,
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
		name = "PlayerCallForRescue_CSGO_SAS",
		criteria = 
		[
			[ConceptCallForRescue],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[HasNotCalledForRescue],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCallForRescueMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForRescue", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M2EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c1m2_streets],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -19.75),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M3EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c1m3_mall],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M3EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -7.93),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M4EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c1m4_atrium],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -12.29),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M2EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c2m2],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M2EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -13.43),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c2m3],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M3EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -15.02),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c2m4],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M4EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -10.17),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c2m5],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M5EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -14.33),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M2EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismapc3m2_swamp],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M2EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -13.34),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M3EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismapc3m3_shantytown],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M3EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -23.98),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismapc3m4_plantation],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M4EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -15.53),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M2EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[ismap_c4m2_sugarmill_a],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M2EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -16.69),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M3EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[isc4m3],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M3EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -9.99),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M4EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[isc4m4],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M4EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -15.21),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M2EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[IsMapc5m2_park],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M2EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -8.54),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[IsMapc5m3_cemetery],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M3EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -3.46),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[IsMapc5m4_quarter],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M4EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -17.96),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[IsMapc5m5_bridge],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C5M5EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -18.21),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2EllisStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			[isc6m2_bedlam],
			[IsACoopMode],
			[ChanceToFire20Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			[_auto_IsStoryWait],
			[_auto_NotStoryGate],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2EllisStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c2 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2EllisStoryStart1_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2Csgo_sasStoryStart1],
			[IsCsgo_sas],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2EllisStoryStart1Mechanic,
				followup = RThenAny("Csgo_sasInterrupt", -26.93),
			},
		],
	},
	{
		name = "C6M3EllisBridgeStory_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[isc6m3_port],
			[IsACoopMode],
			[IsNotInStartArea],
			[ChanceToFire20Percent],
			[IsSaidFinaleExchange],
			[IsEndCsgo_sasBridgeStoryStart],
			[IsNotSaidCsgo_sasBridgeStoryStart],
			[IsNotSaidC6M3Elevator],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3EllisBridgeStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 1, duration = 0.0 },
			c3 = { context = "SrcGrp_CSGO_SASSTORY", value = 1, duration = 0.0 },
			c4 = { context = "SaidCsgo_sasBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3EllisBridgeStory1_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M3Csgo_sasBridgeStory1],
			[IsCsgo_sas],
			[IsNotSaidC6M3Elevator],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3EllisBridgeStory1Mechanic,
				followup = RThen("self", "C6M3Csgo_sasBridgeStory1a", null, -24.62),
			},
		],
	},
	{
		name = "C6M3EllisBridgeStory1a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M3Csgo_sasBridgeStory1a],
			[IsCsgo_sas],
			[IsNotSaidC6M3Elevator],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3EllisBridgeStory1aMechanic,
				followup = RThenAny("Csgo_sasInterrupt", 0.1),
			},
		],
	},
	{
		name = "EllisStoryReac01_CSGO_SAS",
		criteria = 
		[
			[ConceptCsgo_sasStoryReac01],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.EllisStoryReac01Mechanic,
			},
		],
	},
	{
		name = "EllisStoryReac01Goat_CSGO_SAS",
		criteria = 
		[
			[ConceptCsgo_sasStoryReac01],
			[IsCsgo_sas],
			[ismap_c1m4_atrium],
		],
		// 	forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.EllisStoryReac01GoatMechanic,
			},
		],
	},
	{
		name = "c6m3_outro_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_outro3],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.c6m3_outroMechanic,
			},
		],
	},
	{
		name = "c6m3_outroZoeyOutro_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_outro3],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.c6m3_outroZoeyOutroMechanic,
				followup = RThen("gambler", "c6m3_outroL4D1011a", null, 0.1),
			},
		],
	},
	{
		name = "c6m3_outroRochelleOutro_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_outroL4D1012a],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[FromIsProducer],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c6m3_outroRochelleOutroMechanic,
			},
		],
	},
	{
		name = "SurvivorSpotFirstWeapons_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotPickedUpFirstAidKit],
			[ismap_c1m1_hotel],
			[IsNotSaidFirstWeapon],
			[IsNotSaidWorldC1M1First],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpotFirstWeaponsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFirstWeapon", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAdrenaline_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsAdrenaline],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedAdrenalineMechanic,
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
		name = "SurvivorSpottedAdrenalineAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			[IsAdrenaline],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedAdrenalineMechanic,
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
		name = "SurvivorSpottedAmmo_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedAmmoMechanic,
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
		name = "SurvivorSpottedAmmoAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAmmo],
			[IsNotSaidSpot],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedAmmoMechanic,
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
		name = "SurvivorSpottedAmmo2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotAmmo],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedAmmo2Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedCoachCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachClose2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedCoachCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachClose2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedCoachClose2C1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachCloseC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedCoachClose2C1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachFar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachFar400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedCoachFarMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedDefibrillator_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsDefibrillator],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedDefibrillatorMechanic,
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
		name = "SurvivorSpottedDefibrillatorAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			[IsDefibrillator],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedDefibrillatorMechanic,
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
		name = "SurvivorSpottedGamblerClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGamblerCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerClose2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGamblerClose2Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerClose2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGamblerClose2C1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerCloseC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGamblerClose2C1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerFar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGamblerFarMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerFarC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGamblerFarC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedGrenade_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsPipeBomb],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGrenadeMechanic,
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
		name = "SurvivorSpottedGrenadeAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			[IsPipeBomb],
			[IsWorldTalkCsgo_sas],
			[YesHasGrenade],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGrenadeMechanic,
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
		name = "SurvivorSpottedGrenadeLauncher_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[Isgrenade_launcher],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGrenadeLauncherMechanic,
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
		name = "SurvivorSpottedGrenadeLauncherAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			[Isgrenade_launcher],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGrenadeLauncherMechanic,
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
		name = "SurvivorSpottedHealth_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsFirstAidKit],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHealthMechanic,
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
		name = "SurvivorSpottedHealthAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			[IsFirstAidKit],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHealthMechanic,
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
		name = "SurvivorSpottedMolotov_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsMolotov],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMolotovMechanic,
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
		name = "SurvivorSpottedMolotovAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			[IsMolotov],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMolotovMechanic,
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
		name = "SurvivorSpottedPills_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsPainPills],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedPillsMechanic,
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
		name = "SurvivorSpottedPillsAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedPillsMechanic,
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
		name = "SurvivorSpottedProducerClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedProducerCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerClose2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedProducerClose2Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerClose2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedProducerClose2C1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerCloseC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedProducerClose2C1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerFar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedProducerFarMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerFarC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedProducerFarC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedUpPack_Explosive_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Explosive],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedUpPack_ExplosiveMechanic,
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
		name = "SurvivorSpottedUpPack_ExplosiveAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			[IsUpgradePack_Explosive],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedUpPack_ExplosiveMechanic,
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
		name = "SurvivorSpottedUpPack_Incendiary_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedUpPack_IncendiaryMechanic,
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
		name = "SurvivorSpottedUpPack_IncendiAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedUpPack_IncendiaryMechanic,
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
		name = "SurvivorSpottedVomitJar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedVomitJarMechanic,
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
		name = "SurvivorSpottedVomitJarAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedVomitJarMechanic,
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
		name = "SurvivorSpottedVomitJarAutoC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedVomitJarAutoC1Mechanic,
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
		name = "SurvivorSpottedVomitJarC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedVomitJarAutoC1Mechanic,
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
		name = "SurvivorSpottedWorldClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWorldCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedArmored_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedArmoredMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedArmoredC5M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[ismap_c5m1_waterfront],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedArmoredC5M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBoomerMechanic,
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
		name = "SurvivorSpottedBoomerAlso_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBoomerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "Csgo_sasAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomer2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBoomerMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedBoomerC1M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBoomerC1M1Mechanic,
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
		name = "SurvivorSpottedBoomerAlsoC1M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBoomerC1M1Mechanic,
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
		name = "SurvivorSpottedBoomer2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBoomerC1M1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedBoomerC1M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBoomerC1M2Mechanic,
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
		name = "SurvivorSpottedBoomerAlsoC1M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBoomerC1M1Mechanic,
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
		name = "SurvivorSpottedCeda_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedCedaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedCedaC1M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedCedaC1M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedCharger_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedChargerMechanic,
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
		name = "SurvivorSpottedChargerAlso_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedChargerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChargerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "Csgo_sasAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedCharger2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedChargerMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedChargerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedChargerC1Mechanic,
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
		name = "SurvivorSpottedChargerAlsoC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedChargerC1Mechanic,
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
		name = "SurvivorSpottedCharger2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedChargerC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedClown_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedClownMechanic,
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
		name = "SurvivorSpottedFallen_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedFallenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedFirstClown_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[ismap_c2m2],
			[IsNotSpeakingWeight0],
			[SawclownsIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedFirstClownMechanic,
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
		name = "SurvivorSpottedHunter_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHunterMechanic,
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
		name = "SurvivorSpottedHunterAlso_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHunterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHunterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "Csgo_sasAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHunter2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHunterMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedHunterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHunterC1Mechanic,
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
		name = "SurvivorSpottedHunterAlsoC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHunterC1Mechanic,
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
		name = "SurvivorSpottedHunter2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHunterC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedInfected_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerIncoming],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedInfectedMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedJimmy_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJimmy],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidJimmyWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedJimmyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJimmyWarn", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockey_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedJockeyMechanic,
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
		name = "SurvivorSpottedJockeyAlso_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedJockeyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJockeyWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "Csgo_sasAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockey2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedJockeyMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedJockeyC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedJockeyC1Mechanic,
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
		name = "SurvivorSpottedJockeyAlsoC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedJockeyC1Mechanic,
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
		name = "SurvivorSpottedJockey2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedJockeyC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedMudmenC3M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[ismapc3m2_swamp],
			[IsNotSpeakingWeight0],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMudmenC3M2Mechanic,
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
		name = "SurvivorSpottedMudmen_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMudmenMechanic,
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
		name = "SurvivorSpottedMudmen2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMudmen2Mechanic,
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
		name = "SurvivorSpottedSmoker_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSmokerMechanic,
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
		name = "SurvivorSpottedSmokerAlso_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSmokerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmokerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "Csgo_sasAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSmoker2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSmokerMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedSmokerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSmokerC1Mechanic,
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
		name = "SurvivorSpottedSmokerAlsoC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSmokerC1Mechanic,
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
		name = "SurvivorSpottedSmoker2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSmokerC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitter_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSpitterMechanic,
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
		name = "SurvivorSpottedSpitterAlso_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSpitterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpitterWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "Csgo_sasAlsoWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSpitter2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSpitterMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSpitterC1Mechanic,
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
		name = "SurvivorSpottedSpitterAlsoC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSpitterC1Mechanic,
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
		name = "SurvivorSpottedSpitter2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSpitterC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedTankMechanic,
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
		name = "SurvivorSpottedTank2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedTankMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedTankC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedTankC1Mechanic,
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
		name = "SurvivorAlsoSpottedTankC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedTankC1Mechanic,
			},
		],
	},
	{
		name = "L4D1SpottedTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.L4D1SpottedTankMechanic,
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
		name = "L4D1SpottedTank2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[Isc6m3_port],
			[IsNotVersus],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1SpottedTankMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedWitch_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWitchMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedWitch2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWitchMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedWitchC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWitchC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedWitch2C1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWitch2C1Mechanic,
			},
		],
	},
	{
		name = "PlayerAlertGiveItem_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[NotInIntenseCombat],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerAlertGiveItemMechanic,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemCombat_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[InIntenseCombat],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerAlertGiveItemCombatMechanic,
			},
		],
	},
	{
		name = "PlayerFaultFriendlyFire_CSGO_SAS",
		criteria = 
		[
			[IsFaultConcept],
			[IsFaultFriendlyFire],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFaultFriendlyFire", value = 1, duration = 0.1 },
			c2 = { context = "SaidFaultFriendlyFireCsgo_sas", value = 1, duration = 0.1 },
			c3 = { context = "ShotTeammateCsgo_sas", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerFriendlyFire_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFire2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeExplosive],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFire2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireFromCoachMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromCoachC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireFromCoachC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireFromGamblerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireFromProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromProducerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireFromProducerC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireNoBullet_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireNoBulletMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireNoBulletC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireNoBulletC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireTankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsCoach],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireTankCoachMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsGambler],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireTankGamblerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsProducer],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFriendlyFireTankProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerToTheRescue_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorBotMovingToReviveFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[NotInCombat],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerToTheRescueMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRescueComing", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerToTheRescueRos_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerToTheRescue],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerToTheRescueRosMechanic,
			},
		],
	},
	{
		name = "SurvivorTauntResponse_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorTauntResponseMechanic,
			},
		],
	},
	{
		name = "C4M1IdleComment01_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire40Percent],
			[IsSurvivor],
			[ismap_c4m1_milltown_a],
			[IsSaidc4m1_nogas],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[NotInCombat],
			[IsWorldTalkCsgo_sas],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotNoGasGate],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M1IdleComment01Mechanic,
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
		name = "C4M2IdleCommentCane01_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire60Percent],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsCsgo_sasInCane],
			[_auto_NotCaneYellGated],
			[_auto_NotLastSurvivorTalkedCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M2IdleCommentCane01Mechanic,
				followup = RThenAny("_c4m2_caneyell01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_CaneYellGated", value = 1, duration = 10.0 },
			c2 = { context = "_auto_LastSurvivorTalkedCsgo_sas", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerChokeResponse_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerChokeResponseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerChokeResponseC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKNowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerChokeResponseC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReloadingC502Run_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsMapc5m2_park],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			[_auto_IsAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReloadingC502RunMechanic,
			},
		],
	},
	{
		name = "PlayerReloadingTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReloadingTankMechanic,
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
		name = "PlayerReloadingTankC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReloadingTankC1Mechanic,
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
		name = "PlayerWitchChasing_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsCsgo_sas],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkCsgo_sas],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWitchChasingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 5.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerWitchChasingC6M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsCsgo_sas],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkCsgo_sas],
			[isc6m1_riverbank],
			[IsWitchAggro],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWitchChasingC6M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},
	{
		name = "PlayerWitchStartAttackC6M1_CSGO_SAS",
		criteria = 
		[
			[IsFaultConcept],
			[IsCsgo_sas],
			[IsFaultWitchHarassment],
			[Isc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWitchStartAttackC6M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 4.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},
	{
		name = "PlayerWitchStartAttack_CSGO_SAS",
		criteria = 
		[
			[IsFaultConcept],
			[IsCsgo_sas],
			[IsFaultWitchHarassment],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWitchStartAttackMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},
	{
		name = "WitchAggro_CSGO_SAS",
		criteria = 
		[
			[ConceptWitchStartAttack],
			[IsCsgo_sas],
			[Iswitch_aggro_onCsgo_sas],
			[WitchaggroIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorCriticalHurt_CSGO_SAS",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsNotJockey],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorCriticalHurtMechanic,
			},
		],
	},
	{
		name = "SurvivorIncapacitatedHurt_CSGO_SAS",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsNotSpeaking],
			[IsIncapacitatedPain],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorIncapacitatedHurtMechanic,
			},
		],
	},
	{
		name = "SurvivorJockeyHurtMajor_CSGO_SAS",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorJockeyHurtMajorMechanic,
				followup = RThen("all", "commentjockey", null, -1.739),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCsgo_sas", value = 1, duration = 6.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMinor_CSGO_SAS",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorJockeyHurtMajorMechanic,
				followup = RThen("all", "commentjockey", null, -1.739),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCsgo_sas", value = 1, duration = 6.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMajorC1_CSGO_SAS",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorJockeyHurtMajorC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCsgo_sas", value = 1, duration = 6.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMinorC1_CSGO_SAS",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorJockeyHurtMajorC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCsgo_sas", value = 1, duration = 6.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorMajorHurt_CSGO_SAS",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsNotJockey],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorMajorHurtMechanic,
			},
		],
	},
	{
		name = "SurvivorMinorHurt_CSGO_SAS",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsNotJockey],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorMinorHurtMechanic,
			},
		],
	},
	{
		name = "SurvivorReloading_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[NotInIntenseCombat],
			[_auto_NotCsgo_sasInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorReloadingMechanic,
			},
		],
	},
	{
		name = "SurvivorReloadingIntense_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[InIntenseCombat],
			[_auto_NotCsgo_sasInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorReloadingIntenseMechanic,
			},
		],
	},
	{
		name = "SurvivorReloadingC4M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[_auto_IsCsgo_sasInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorReloadingC4M2Mechanic,
			},
		],
	},
	{
		name = "PlayerHelpIncapped_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHelpIncappedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 7.5 },
		},
	},
	{
		name = "PlayerHelpIncappedBleeing_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHelpIncappedBleeingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 15.0 },
		},
	},
	{
		name = "PlayerHelpIncappedLethargic_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsIncappedLethargic],
			[IsIncapacitated],
			[NotCalledForHelpRecently],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHelpIncappedLethargicMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 30.0 },
		},
	},
	{
		name = "C2M1DoneFalling_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1DoneFalling],
			[IsCsgo_sas],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDoneFalling],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1DoneFallingMechanic,
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
		name = "C2M1DoneFalling2_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1DoneFalling],
			[IsCsgo_sas],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C2M1DoneFalling2Mechanic,
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
		name = "C2M1Falling_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1FallingMechanic,
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
		name = "C2M2CarouselOff_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m2CarouselEnd],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M2CarouselOffMechanic,
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
		name = "C2M2CarouselOn_CSGO_SAS",
		criteria = 
		[
			[Conceptc2m2CarouselStart],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M2CarouselOnMechanic,
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
		name = "C3M3BridgeButton_CSGO_SAS",
		criteria = 
		[
			[ConceptC3M3BridgeButton],
			[IsNotSaidC3M3BridgeButton],
			[IsCsgo_sas],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C3M3BridgeButtonMechanic,
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
		name = "EndOfWavWindow5_CSGO_SAS",
		criteria = 
		[
			[ConceptEndOfWavWindow5],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.EndOfWavWindow5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Csgo_sasWavWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerChainSawUsed_CSGO_SAS",
		criteria = 
		[
			[ConceptChainsawUsed],
			[IsNotSaidChainSawUsed],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IntensityOver25],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerChainSawUsedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChainSawUsed", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M1AroundFire_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M1AroundFire],
			[IsNotSaidC1M1AroundFire],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M1AroundFireMechanic,
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
		name = "PlayerRemarkC1M1OverTable_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M1OverTable],
			[IsNotSaidC1M1OverTable],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M1OverTableMechanic,
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
		name = "PlayerRemarkC1M1SearchRooms_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M1SearchRooms],
			[IsNotSaidC1M1SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M1SearchRoomsMechanic,
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
		name = "PlayerRemarkC1M1ThroughThisDoor_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M1ThroughThisDoor],
			[IsNotSaidC1M1ThroughThisDoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M1ThroughThisDoorMechanic,
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
		name = "PlayerRemarkC1M2SpotGunStore_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsRemarkWorldC1M2SpotGunStore],
			[IsNotSaidRemarkWorldC1M2SpotGunStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear800],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M2SpotGunStoreMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRemarkWorldC1M2SpotGunStore", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3AlarmDoors_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3AlarmDoors],
			[IsNotSaidC1M3AlarmDoors],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3AlarmDoorsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3AlarmDoors", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3CarefulWindows_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3CarefulWindows],
			[IsNotSaidC1M3CarefulWindows],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3CarefulWindowsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CarefulWindows", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3CEDAGone_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3CEDAGone],
			[IsNotSaidC1M3CEDAGone],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3CEDAGoneMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CEDAGone", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3DownHere],
			[IsNotSaidC1M3DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownHere2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3DownHere2],
			[IsNotSaidC1M3DownHere2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownTheEscalator_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3DownTheEscalator],
			[IsNotSaidC1M3DownTheEscalator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3DownTheEscalatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownTheEscalator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3OverHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3OverHere],
			[IsNotSaidC1M3OverHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3OverHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3OverHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3SearchRooms_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3SearchRooms],
			[IsNotSaidC1M3SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3SearchRoomsMechanic,
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
		name = "PlayerRemarkC1M3ThisWay_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3ThisWay],
			[IsNotSaidC1M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3ThisWayMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3ThroughHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3ThroughHere],
			[IsNotSaidC1M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3ThroughHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3TurnOffAlarm1],
			[IsNotSaidC1M3TurnOffAlarm1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3TurnOffAlarm1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3TurnOffAlarm2],
			[IsNotSaidC1M3TurnOffAlarm2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3TurnOffAlarm2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm3_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3TurnOffAlarm3],
			[IsNotSaidC1M3TurnOffAlarm3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3TurnOffAlarm3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3UpEscalator1],
			[IsNotSaidC1M3UpEscalator1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3UpEscalator1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3UpEscalator2],
			[IsNotSaidC1M3UpEscalator2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3UpEscalator1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator3_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC1M3UpEscalator3],
			[IsNotSaidC1M3UpEscalator3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3UpEscalator1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_busblock_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_busblock],
			[IsNotSaidc2m1_busblock],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_busblockMechanic,
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
		name = "PlayerRemarkc2m1_checkrooms_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_checkrooms],
			[IsNotSaidc2m1_checkrooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_checkroomsMechanic,
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
		name = "PlayerRemarkc2m1_cliff_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_cliff],
			[IsNotSaidc2m1_cliff],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_cliffMechanic,
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
		name = "PlayerRemarkc2m1_downstairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_downstairs],
			[IsNotSaidc2m1_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_downstairsMechanic,
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
		name = "PlayerRemarkc2m1_motelsign_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectFar100],
			[ChanceToFire20Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_motelsignMechanic,
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
		name = "AUTOBLANK_PlayerRemarkc2m1_motelsign_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectFar100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_motelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_offramp_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_offramp],
			[IsNotSaidc2m1_offramp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_offrampMechanic,
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
		name = "PlayerRemarkc2m1_park_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_park],
			[IsNotSaidc2m1_park],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_parkMechanic,
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
		name = "PlayerRemarkc2m1_pool_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_pool],
			[IsNotSaidc2m1_pool],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_poolMechanic,
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
		name = "PlayerRemarkc2m1_searchlights_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_searchlightsMechanic,
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
		name = "PlayerRemarkc2m1_throughhere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_throughhere],
			[IsNotSaidc2m1_throughhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_throughhereMechanic,
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
		name = "PlayerRemarkc2m1_throughmotel_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_throughmotel],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_throughmotelMechanic,
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
		name = "PlayerRemarkc2m1_throughwindow_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_throughwindow],
			[IsNotSaidc2m1_throughwindow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_throughwindowMechanic,
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
		name = "PlayerRemarkc2m1_uphill_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_uphill],
			[IsNotSaidc2m1_uphill],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_uphillMechanic,
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
		name = "PlayerRemarkc2m1_upstairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m1_upstairs],
			[IsNotSaidc2m1_upstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_upstairsMechanic,
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
		name = "PlayerRemarkc2m2_cottoncandy_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m2_cottoncandy],
			[IsNotSaidc2m2_cottoncandy],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m2_cottoncandyMechanic,
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
		name = "PlayerRemarkc2m2_cottoncandy2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m2_cottoncandy2],
			[IsNotSaidc2m2_cottoncandy],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m2_cottoncandyMechanic,
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
		name = "PlayerRemarkc2m2_entrancesign_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m2_entrancesign],
			[IsNotSaidc2m2_entrancesign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m2_entrancesignMechanic,
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
		name = "_C2M2_CottonCandy01_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_CottonCandy01],
			[IsCsgo_sas],
			[NotInCombat],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_CottonCandy01Mechanic,
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
		name = "PlayerRemarkc2m2_kiddieland_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m2_kiddieland],
			[IsNotSaidc2m2_kiddieland],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m2_kiddielandMechanic,
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
		name = "PlayerRemarkc2m2_topofslide_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m2_topofslide],
			[IsNotSaidc2m2_topofslide],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m2_topofslideMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_topofslide", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_coasteroff_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_coasteroff],
			[IsNotSaidc2m3_coasteroff],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_coasteroffMechanic,
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
		name = "PlayerRemarkc2m3_coollight_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_coollight],
			[IsNotSaidc2m3_coollight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_coollightMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_coollight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_coollightNick_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_coollight],
			[IsNotSaidc2m3_coollight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_coollightNickMechanic,
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
		name = "PlayerRemarkc2m3_hole_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_hole],
			[IsNotSaidc2m3_hole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_holeMechanic,
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
		name = "PlayerRemarkc2m3_overfence_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_overfence],
			[IsNotSaidc2m3_overfence],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_overfenceMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_overfence", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_screamingoak_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_screamingoak],
			[IsNotSaidc2m3_screamingoak],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_screamingoakMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_screamingoak", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_swanpileup_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_swanpileup],
			[IsNotSaidc2m3_swanpileup],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_swanpileupMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_swanpileup", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_swanroom_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_swanroom],
			[IsNotSaidc2m3_swanroom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_swanroomMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_swanroom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks01_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_tracks01],
			[IsNotSaidc2m3_tracks01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks02_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_tracks02],
			[IsNotSaidc2m3_tracks02],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks03_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_tracks03],
			[IsNotSaidc2m3_tracks03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks04_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_tracks04],
			[IsNotSaidc2m3_tracks04],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks05_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_tracks05],
			[IsNotSaidc2m3_tracks05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks06_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_tracks06],
			[IsNotSaidc2m3_tracks06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks07_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_tracks07],
			[IsNotSaidc2m3_tracks07],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_tracks08_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_tracks08],
			[IsNotSaidc2m3_tracks08],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_tracks01Mechanic,
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
		name = "PlayerRemarkc2m3_vent_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_vent],
			[IsNotSaidc2m3_vent],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_ventMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_vent", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_water_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_water],
			[IsNotSaidc2m3_water],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_waterMechanic,
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
		name = "AUTOBLANK_PlayerRemarkc2m3_water_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_water],
			[IsNotSaidc2m3_water],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_water", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_wayblocked_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m3_wayblocked],
			[IsNotSaidc2m3_wayblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_wayblockedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_wayblocked", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_barnentry_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m4_barnentry],
			[IsNotSaidc2m4_barnentry],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m4_barnentryMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_barnentry", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_bumpercars_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m4_bumpercars],
			[IsNotSaidc2m4_bumpercars],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m4_bumpercarsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_bumpercars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_pendoor_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m4_pendoor],
			[IsNotSaidc2m4_pendoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m4_pendoorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_pendoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_moustachio_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m4_moustachio],
			[IsNotSaidc2m4_moustachio],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m4_moustachioMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_moustachio", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_stadium_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m4_stadium],
			[IsNotSaidc2m4_stadium],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m4_stadiumMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_stadium", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_upbarn_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m4_upbarn],
			[IsNotSaidc2m4_upbarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m4_upbarnMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_upbarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m5_button2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc2m5_button2],
			[IsNotSaidc2m5_button2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m5_button2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m5_button2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3BridgeDown_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3BridgeDown],
			[IsNotSaidC3M3BridgeDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3BridgeDownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3BridgeDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M1NoSwimming_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M1NoSwimming],
			[IsNotSaidC3M1NoSwimming],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M1NoSwimmingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1NoSwimming", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m2_parachutist_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc3m2_parachutist],
			[IsNotSaidc3m2_parachutist],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 10
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc3m2_parachutistMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m2_parachutist", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m2_overtree_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M2OverTree],
			[IsNotSaidC3M2OverTree],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc3m2_overtreeMechanic,
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
		name = "PlayerRemarkC3M2PlaneCrash_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M2PlaneCrash],
			[IsNotSaidC3M2PlaneCrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear600],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkCsgo_sas],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M2PlaneCrashMechanic,
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
		name = "PlayerRemarkC3M2PlaneDoorNag_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M2PlaneDoorNag],
			[IsNotSaidC3M2PlaneDoorNag],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear500],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M2PlaneDoorNagMechanic,
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
		name = "PlayerRemarkC3M2PlaneDoorNaga_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsSaidC3M2PlaneDoorNag],
			[IsNotSaidC3M2OpenDoor],
			[ismapc3m2_swamp],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M2PlaneDoorNagaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 40.0 },
			c3 = { context = "Talk", value = 1, duration = 1.66 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2Road_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M2Road],
			[IsNotSaidC3M2Road],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M2RoadMechanic,
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
		name = "C3M2LeavingSafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCsgo_sas],
			[IsNotSaidLeavingSafeArea],
			[ismapc3m2_swamp],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M2StartMechanic,
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
		name = "PlayerRemarkC3M2StartDry_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M2StartDry],
			[IsNotSaidC3M2StartDry],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M2StartDryMechanic,
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
		name = "PlayerRemarkC3M2UnderWaterShack_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M2UnderWaterShack],
			[IsNotSaidC3M2UnderWaterShack],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M2UnderWaterShackMechanic,
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
		name = "_C3M2UnderwaterShack_CSGO_SAS",
		criteria = 
		[
			[Concept_C3M2UnderwaterShack],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS._C3M2UnderwaterShackMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkC3M2Village1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M2Village1],
			[IsNotSaidC3M2Village1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear800],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M2Village1Mechanic,
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
		name = "PlayerRemarkC3M3LowerGate_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3LowerGate],
			[IsNotSaidC3M3BridgeButton],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3LowerGateMechanic,
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
		name = "PlayerRemarkC3M3SearchHouses_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3SearchHouses],
			[IsNotSaidC3M3SearchHouses],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3SearchHousesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3SearchHouses", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3Stairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3Stairs],
			[IsNotSaidC3M3Stairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3StairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3Stairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3StayUpHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3StayUpHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3StayUpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3StayUpHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3StayUpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThisWay_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3ThisWayMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3ThisWay_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThroughHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3ThroughHere],
			[IsNotSaidC3M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3ThroughHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThroughThisHouse_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3ThroughThisHouse],
			[IsNotSaidC3M3ThroughThisHouse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3ThroughThisHouseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughThisHouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3UpHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3UpHere],
			[IsNotSaidC3M3UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear100],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3UpHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3UsePlanks_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3UsePlanks],
			[IsNotSaidC3M3UsePlanks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC3M3UsePlanksMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UsePlanks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3UsePlanks_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3UsePlanks],
			[IsNotSaidC3M3UsePlanks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UsePlanks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4downroad_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc3m4downroad],
			[IsNotSaidc3m4downroad],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc3m4downroadMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4downroad", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4radio_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc3m4radio],
			[IsNotSaidc3m4radio],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc3m4radioMechanic,
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
		name = "_C3M4_Radio_CSGO_SAS",
		criteria = 
		[
			[Concept_C3M4_Radio],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C3M4_RadioMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.507 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4scaffold_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc3m4scaffold],
			[IsNotSaidc3m4scaffold],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc3m4scaffoldMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4shacks_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc3m4shacks],
			[IsNotSaidc3m4shacks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc3m4shacksMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4shacks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_carcrash_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear500],
			[IsWorldTalkCsgo_sas],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m1_carcrashMechanic,
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
		name = "AUTOBLANK_PlayerRemarkc4m1_carcrash_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_carcrash", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_garagesale_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m1_garagesale],
			[IsNotSaidc4m1_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m1_garagesaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_nogas_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m1_nogasMechanic,
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
		name = "PlayerRemarkc4m1_playgroundfar_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear1000],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m1_playgroundfarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_playgroundnear_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m1_playgroundnearMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_throughhereA_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m1_throughhereA],
			[IsNotSaidc4m1_throughhereA],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m1_throughhereAMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_throughhereA", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_gasinsidesign_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_gasinsidesign],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear350],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_gasinsidesignMechanic,
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
		name = "PlayerRemarkc4m2_millentrance_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_millentrance],
			[IsNotSaidc4m2_millentrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_millentranceMechanic,
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
		name = "PlayerRemarkc4m2_millentranceexit_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_millentranceexit],
			[IsNotSaidc4m2_millentranceexit],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_millentranceexitMechanic,
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
		name = "PlayerRemarkc4m2_seegasstation_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_seegasstation],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_seegasstationMechanic,
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
		name = "PlayerRemarkc4m2_streetblocked_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_streetblocked],
			[IsNotSaidc4m2_streetblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_streetblockedMechanic,
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
		name = "PlayerRemarkc4m2_upramp_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_upramp],
			[IsNotSaidc4m2_upramp],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_uprampMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upramp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_upthestairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_upthestairs],
			[IsNotSaidc4m2_upthestairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_upthestairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upthestairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_useelevator_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_useelevator],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsSaidc4m2_seegasstation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_useelevatorMechanic,
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
		name = "PlayerRemarkc4m2_waterpool_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_waterpool],
			[IsNotSaidc4m2_waterpool],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_waterpoolMechanic,
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
		name = "PlayerRemarkc4m2_weather_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m2_weather],
			[IsNotSaidc4m2_weather],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_weatherMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_weather", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_cane_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_cane],
			[IsNotSaidc4m3_cane],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_caneMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_cane", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_crosshere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_crosshere],
			[IsNotSaidc4m3_crosshere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_crosshereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_crosshere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_downhere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_downhere],
			[IsNotSaidc4m3_downhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_downhereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downhere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_downstairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_downstairs],
			[IsNotSaidc4m3_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_downstairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downstairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_ducatelsign_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_ducatelsign],
			[IsNotSaidc4m3_ducatelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_ducatelsignMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_ducatelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_elevator_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_elevator],
			[IsNotSaidc4m3_elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_elevatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_overtank_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_overtank],
			[IsNotSaidc4m3_overtank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_overtankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_overtank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_rain_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_rain],
			[IsNotSaidc4m3_rain],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_rainMechanic,
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
		name = "PlayerRemarkc4m3_thisway_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_thisway],
			[IsNotSaidc4m3_thisway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m2_millentranceexitMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_thisway", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_uppipes_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m3_uppipes],
			[IsNotSaidc4m3_uppipes],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m3_uppipesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_uppipes", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_flooded_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m4_floodedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSaferoomRemarkIntro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_garagesale_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m4_garagesale],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m4_garagesaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_garagesale2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m4_garagesale2],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m4_garagesaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_playground_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m4_playground],
			[IsNotSaidc4m4_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m4_playgroundMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_porchlight_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m4_porchlight],
			[IsNotSaidc4m4_porchlight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m4_porchlightMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_porchlight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_truckwreck_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m4_truckwreck],
			[IsNotSaidc4m4_truckwreck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m4_truckwreckMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_truckwreck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_useroofs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m4_useroofs],
			[IsNotSaidc4m4_useroofs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m4_useroofsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_useroofs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkpathc2m1_billboard_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Ispathc2m1_billboard],
			[IsNotSaidpathc2m1_billboard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkCsgo_sas],
			[IsSubjectNear1000],
			[IsWorldTalkCsgo_sas],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkpathc2m1_billboardMechanic,
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
		name = "PlayerRemarkremark_caralarm_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isremark_caralarm],
			[IsNotSaidremark_caralarm],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear700],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkremark_caralarmMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkremark_MidnightRidersBus_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkremark_MidnightRidersBusMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1CedaMaps_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M1CedaMaps],
			[IsNotSaidWorldC1M1CedaMaps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M1CedaMapsMechanic,
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
		name = "PlayerRemarkWorldC1M1DownHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M1DownHere],
			[IsNotSaidWorldC1M1DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M1DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1DownStairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M1DownStairs],
			[IsNotSaidWorldC1M1DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M1DownStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1ElevatorBroken_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M1ElevatorBroken],
			[IsNotSaidWorldC1M1ElevatorBroken],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M1ElevatorBrokenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1ElevatorBroken", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1FireSpreading_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M1FireSpreading],
			[IsNotSaidWorldC1M1FireSpreading],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M1FireSpreadingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1FireSpreading", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1First_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M1First],
			[IsNotSaidWorldC1M1First],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M1FirstMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1First", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1Ledge_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M1Ledge],
			[IsNotSaidWorldC1M1Ledge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M1LedgeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1Ledge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1StairsSign_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M1StairsSign],
			[IsNotSaidWorldC1M1StairsSign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M1StairsSignMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1StairsSign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2Close_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2Close],
			[IsNotSaidWorldC1M2Close],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2CloseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Close", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2DownStairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2DownStairs],
			[IsNotSaidWorldC1M2DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[TimeSinceGroupInCombat05],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2DownStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2Abandoned_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2Abandoned],
			[IsNotSaidWorldC1M2Abandoned],
			[IsNotCoughing],
			[NotInCombat],
			[IntensityZero],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2AbandonedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Abandoned", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2Dumpster_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2Dumpster],
			[IsNotSaidWorldC1M2Dumpster],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2DumpsterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Dumpster", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2GunStoreClose_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2GunStoreClose],
			[IsNotSaidWorldC1M2GunStoreClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2GunStoreCloseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2GunStoreClose", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2InHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2InHere],
			[IsNotSaidWorldC1M2InHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2InHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2InHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2JumpTruck_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2JumpTruck],
			[IsNotSaidWorldC1M2JumpTruck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2JumpTruckMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2JumpTruck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2MallSignHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2MallSignHere],
			[IsNotSaidWorldC1M2MallSignHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2MallSignHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2MallSignHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2MallThisWay_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2MallThisWay],
			[IsNotSaidWorldC1M2MallThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2MallThisWayMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2MallThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2UpStairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC1M2UpStairs],
			[IsNotSaidWorldC1M2UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2UpStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1AmmoUp_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1AmmoUp],
			[IsNotSaidWorldC3M1AmmoUp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1AmmoUpMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1AmmoUp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1CheckingHouses_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1CheckingHouses],
			[IsNotSaidWorldC3M1CheckingHouses],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1CheckingHousesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1CheckingHouses", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1FeedGator_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1FeedGator],
			[IsNotSaidWorldC3M1FeedGator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1FeedGatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FeedGator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1FerryCrossing_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsWorldTalkCsgo_sas],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1FerryCrossingMechanic,
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
		name = "PlayerRemarkWorldC3M1FerryCrossingCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsCoachAlive],
			[IsWorldTalkCsgo_sas],
			[ChanceToFire75Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1FerryCrossingCoachMechanic,
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
		name = "PlayerRemarkWorldC3M1FerryCrossingNick_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsGamblerAlive],
			[IsWorldTalkCsgo_sas],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 3
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1FerryCrossingNickMechanic,
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
		name = "PlayerRemarkWorldC3M1FerryNag_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1FerryNag],
			[IsNotSaidWorldC3M1FerryNag],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear600],
			[IsNotSaidC3M1CallFerry2],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1FerryNagMechanic,
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
		name = "_C3M1CrazyMilitants_CSGO_SAS",
		criteria = 
		[
			[Concept_C3M1CrazyMilitants],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C3M1CrazyMilitantsMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC3M1FerryNaga_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSaidWorldC3M1FerryNag],
			[IsNotSaidC3M1CallFerry2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1FerryNagaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 40.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1GetBackUp_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1WeShouldGetBackUp],
			[IsNotSaidWorldC3M1WeShouldGetBackUp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1GetBackUpMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1WeShouldGetBackUp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1Litter_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1Litter],
			[IsNotSaidWorldC3M1Litter],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[ChanceToFire20Percent],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1LitterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Litter", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldC3M1Litter_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1Litter],
			[IsNotSaidWorldC3M1Litter],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Litter", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1Path01_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1Path01],
			[IsNotSaidWorldC3M1Path01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1Path01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1PlanksRight_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1PlanksRight],
			[IsNotSaidWorldC3M1PlanksRight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1PlanksRightMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1PlanksRight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1Stairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1Stairs],
			[IsNotSaidWorldC3M1Stairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1StairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Stairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1StayOn_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1StayOn],
			[IsNotSaidWorldC3M1StayOn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1StayOnMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1StayOn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1Walkways_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1Walkways],
			[IsNotSaidWorldC3M1Walkways],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear600],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1WalkwaysMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Walkways", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1WhichWay_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC3M1WhichWay],
			[IsNotSaidWorldC3M1WhichWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC3M1WhichWayMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1WhichWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502AlarmButton_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502AlarmButton],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502AlarmButtonMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502AlarmStopped_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502AlarmStopped],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502AlarmStoppedMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502AlarmStopped2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502AlarmStopped2],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502AlarmStopped2Mechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502Alley_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC502Alley],
			[IsNotSaidWorldC502Alley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502AlleyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC52Alley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502BusStory_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC502BusStory],
			[IsNotSaidWorldC502BusStory],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[IsGamblerNear200],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[TimeSinceGroupInCombat02],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502BusStoryMechanic,
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
		name = "AUTOBLANK_PlayerRemarkWorldC502BusStory_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC502BusStory],
			[IsNotSaidWorldC502BusStory],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear400],
			[IsGamblerNear200],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[TimeSinceGroupInCombat02],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC502BusStory", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502BusStory2b_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502BusStory2b],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502BusStory2bMechanic,
				followup = RThen("self", "WorldC502BusStory2c", null, -2.06),
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502BusStory2c_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502BusStory2c],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502BusStory2cMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502NotZombies2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502NotZombies2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502NotZombies2Mechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502Run1_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502AlarmButtonRun],
			[IsCsgo_sas],
			[IsNotCoughing],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502Run1Mechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignReportUnusual_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldSignReportUnusual2],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldSignReportUnusualMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignOfficialInstructions_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502OfficialInstructions],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldSignOfficialInstructionsMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignQuarantineZone_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502QuarantineZone],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldSignQuarantineZoneMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502Smell_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC502Smell],
			[IsNotSaidWorldC502Smell],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502SmellMechanic,
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
		name = "AUTOBLANK_PlayerRemarkWorldC502Smell_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC502Smell],
			[IsNotSaidWorldC502Smell],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._PlayerInfoRemarkableBlankMechanic,
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
		name = "PlayerRemarkWorldC502Smell2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502Smell2],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502Smell2Mechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502SmellBath2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC502SmellBath2],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear300],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC502SmellBath2Mechanic,
				followup = RThen("Gambler", "WorldC502SmellBath3", null, -2.916),
			},
		],
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_AcrossHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyBelow_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_AlleyBelowMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuilding_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_AlleyIntoBuildingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_InApts_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_InAptsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoThePark2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_IntoThePark2],
			[IsNotSaidWorldC6M1_IntoThePark2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_IntoThePark2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_IntoThePark2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoTheStore_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_IntoTheStoreMechanic,
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
		name = "PlayerRemarkWorldC6M1_PostWedding_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_PostWeddingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_PostWeddingZ_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[IsZoeyIntroActor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_PostWeddingZMechanic,
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
		name = "PlayerRemarkWorldC6M1_PostWeddingZC_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_PostWeddingZCMechanic,
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
		name = "PlayerRemarkWorldC6M1_SafeRoomAlley_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_SafeRoomAlleyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_ThroughBar_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_ThroughBarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_UpHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_UpTheStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_UpTheStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsWitchPresent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_WeddingWarnMechanic,
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
		name = "PlayerRemarkWorldC6M2_AcrossPlank_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_AcrossPlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_AfterGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_AfterGate2Mechanic,
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
		name = "PlayerRemarkWorldC6M2_AfterGateNick_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_AfterGateNickMechanic,
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
		name = "PlayerRemarkWorldC6M2_DownHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuilding_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_DownIntoBuildingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalLadder_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_FinalLadderMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWater_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_FinalWaterMechanic,
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
		name = "PlayerRemarkWorldC6M2_FinalWaterNick_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_FinalWaterNickMechanic,
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
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGo_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_FinalWaterGoGoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InJazzClub_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_InJazzClubMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_InSewer2],
			[IsNotSaidWorldC6M2_InSewer2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsSaidWorldC6M2_InSewer1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_InSewer2Mechanic,
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
		name = "PlayerRemarkWorldC6M2_InSewerLadder1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_InSewerLadder1Mechanic,
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
		name = "PlayerRemarkWorldC6M2_IntoConstruction_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_IntoConstructionMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHall_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_IntoPoolHallMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JukeBox_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_JukeBoxMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JumpDown_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_JumpDownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2Falling_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsCsgo_sas],
			[isc6m2_bedlam],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2FallingMechanic,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_OnTourWalk2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_OnTourWalk3],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_OnTourWalk3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_OpenGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_OpenGate2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_Phase2Mechanic,
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
		name = "PlayerRemarkWorldC6M2_Phase2Down_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_Phase2DownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntense_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IntensityOver75],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_Phase2DownIntenseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_PostGate1x_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_PostGate1xMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Tattoo_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_TattooMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TattooStory_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[ExtraWeight10],
			[ChanceToFire10Percent],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_TattooStoryMechanic,
				followup = RThenAny("Csgo_sasInterrupt", -13.1),
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
		name = "PlayerRemarkWorldC6M2_TourEntrance_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_TourEntranceMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpCatWalk_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_UpCatWalkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_UpStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_UpStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_BridgeRun_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M3_BridgeRunMechanic,
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
		name = "PlayerRemarkWorldC6M3_ByBridgeFrancis_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M3_ByBridgeFrancisMechanic,
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
		name = "PlayerRemarkWorldC6M3_ByBridgeZoey_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M3_ByBridgeZoeyMechanic,
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
		name = "PlayerRemarkWorldFootLocker_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldFootLockerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_Bill_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M3_Bill],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
			[_auto_NotC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M3_BillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Csgo_sasC6M3Bill", value = 1, duration = 0.0 },
			c2 = { context = "_auto_C6M3Bill", value = 1, duration = 0.0 },
			c3 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M3LossLouis_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[Isc6m3_port],
			[IsNotSmartLookAuto],
			[IsSubjectNone],
			[IsManagerNear500],
			[IsWorldTalkCsgo_sas],
			[_auto_SawC6M3Bill],
			[_auto_Csgo_sasSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M3LossMechanic,
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
		name = "WorldC6M3LossLouis2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[Isc6m3_port],
			[IsNotSmartLookAuto],
			[IsSubjectNone],
			[IsManagerNear500],
			[IsWorldTalkCsgo_sas],
			[_auto_SawC6M3Bill],
			[_auto_Csgo_sasSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M3LossMechanic,
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
		name = "WorldC6M3Loss2_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_loss],
			[IsNotCoughing],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M3Loss2Mechanic,
				followup = RThen("self", "c6m3_loss2", { from = "CSGO_SAS" }, -0.7),
			},
		],
	},
	{
		name = "WorldC6M3Loss3_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_loss2],
			[IsNotCoughing],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M3Loss3Mechanic,
				followup = RThen("self", "c6m3_loss3", { from = "CSGO_SAS" }, 0.3),
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignColdBeer_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldSignColdBeer],
			[IsNotSaidWorldSignColdBeer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldSignColdBeerMechanic,
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
		name = "PlayerRemarkWorldSignPhotography2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldSignPhotography2],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IssuerClose],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldSignPhotography2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.763 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignReportSick2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldSignReportSick2],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IssuerClose],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldSignReportSick2Mechanic,
				followup = RThen("Producer", "WorldSignReportSick3", null, -1.323),
			},
		],
	},
	{
		name = "PlayerWorldSignC5AlarmWillSound_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldSignC5AlarmWillSound],
			[IsNotSaidWorldSignC5AlarmWillSound],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldSignC5AlarmWillSoundMechanic,
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
		name = "PlayerWorldSignC5AlarmWillSound3_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldSignC5AlarmWillSound3],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldSignC5AlarmWillSound3Mechanic,
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
		name = "PlayerWorldSignC5AlarmWillSound3d_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldSignC5AlarmWillSound3d],
			[IsCsgo_sas],
			[IsNotCoughing],
			[NotInCombat],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldSignC5AlarmWillSound3dMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RespondAffirmative_CSGO_SAS",
		criteria = 
		[
			[ConceptRespondAffirmative],
			[IssuerMediumClose],
			[IsNotCoughing],
			[NotInCombat],
			[isCsgo_sas],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.RespondAffirmativeMechanic,
			},
		],
	},
	{
		name = "PlayerFollowMe_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerFollowMeMechanic,
			},
		],
	},
	{
		name = "PlayerHelp_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsTalk],
			[IsNotIncapacitated],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHelpMechanic,
			},
		],
	},
	{
		name = "PlayerHurryUp_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHurryUpMechanic,
			},
		],
	},
	{
		name = "PlayerHurryUpC4M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsCsgo_sas],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[ismap_c4m2_sugarmill_a],
			[IsNotZombiePresentTank],
			[IsWorldTalkCsgo_sas],
			[_auto_IsCsgo_sasInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHurryUpC4M2Mechanic,
			},
		],
	},
	{
		name = "PlayerKillThatLight_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerKillThatLight],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillThatLightMechanic,
			},
		],
	},
	{
		name = "PlayerLeadOn_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLeadOn],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLeadOnMechanic,
			},
		],
	},
	{
		name = "PlayerMoveOn_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerMoveOn],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerMoveOnMechanic,
			},
		],
	},
	{
		name = "PlayerStayTogether_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerStayTogetherMechanic,
			},
		],
	},
	{
		name = "PlayerWatchOutBehind_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWatchOutBehind],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWatchOutBehindMechanic,
			},
		],
	},
	{
		name = "PlayerAskReady_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerAskReadyMechanic,
			},
		],
	},
	{
		name = "PlayerImWithYou_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerImWithYou],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerImWithYouMechanic,
			},
		],
	},
	{
		name = "PlayerLaugh_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLaugh],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLaughMechanic,
			},
		],
	},
	{
		name = "PlayerLostCall_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLostCall],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLostCallMechanic,
			},
		],
	},
	{
		name = "PlayerNiceJobResponse_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNiceJobResponseMechanic,
			},
		],
	},
	{
		name = "PlayerNo_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNoMechanic,
			},
		],
	},
	{
		name = "PlayerAnswerLostCall_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAnswerLostCall],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerAnswerLostCallMechanic,
			},
		],
	},
	{
		name = "PlayerSorry_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsNotShotTeammateCsgo_sas],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerSorryMechanic,
			},
		],
	},
	{
		name = "PlayerSorryFF_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsShotTeammateCsgo_sas],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerSorryFFMechanic,
			},
		],
	},
	{
		name = "PlayerThanks_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerThanksMechanic,
			},
		],
	},
	{
		name = "PlayerYellRun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerYellRun],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerYellRunMechanic,
			},
		],
	},
	{
		name = "PlayerYes_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerYes],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerYesMechanic,
			},
		],
	},
	{
		name = "PlayerYouAreWelcome_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerYouAreWelcomeMechanic,
			},
		],
	},
	{
		name = "YouAreWelcome_CSGO_SAS",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerYouAreWelcomeMechanic,
			},
		],
	},
	{
		name = "YouAreWelcomeCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[FromIsCoach],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.YouAreWelcomeCoachMechanic,
			},
		],
	},
	{
		name = "YouAreWelcomeCoachC1_CSGO_SAS",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[FromIsCoach],
			[ChanceToFire30Percent],
			[IsWorldTalkCsgo_sas],
			[TimeSinceGroupInCombat05],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.YouAreWelcomeCoachC1Mechanic,
			},
		],
	},
	{
		name = "YouAreWelcomeGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.YouAreWelcomeGamblerMechanic,
			},
		],
	},
	{
		name = "YouAreWelcomeGamblerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.YouAreWelcomeGamblerC1Mechanic,
			},
		],
	},
	{
		name = "YouAreWelcomeProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.YouAreWelcomeProducerMechanic,
			},
		],
	},
	{
		name = "YouAreWelcomeProducerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.YouAreWelcomeProducerC1Mechanic,
			},
		],
	},
	{
		name = "BotAttentionBattle_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsInBattlefield],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.BotAttentionBattleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "BotNoteHumanAttention_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsInStartArea],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.BotNoteHumanAttentionMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerNegative_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNegative],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerNegativeMechanic,
			},
		],
	},
	{
		name = "PlayerShootCarNot_CSGO_SAS",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCsgo_sas],
			[IsNotCoughing],
			[SubjectIsNotCsgo_sas],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsCarAlarm],
			[ChanceToFire60Percent],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerShootCarNotMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerShootCar_CSGO_SAS",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsCsgo_sas],
			[IsNotCoughing],
			[SubjectIsCsgo_sas],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsCarAlarm],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerShootCarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerHeardBoomer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardBoomerMechanic,
			},
		],
	},
	{
		name = "PlayerHeardHunter_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardHunterMechanic,
			},
		],
	},
	{
		name = "PlayerHeardSmoker_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardSmokerMechanic,
			},
		],
	},
	{
		name = "PlayerHeardCharger_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardChargerMechanic,
			},
		],
	},
	{
		name = "PlayerHeardSpitter_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardSpitterMechanic,
			},
		],
	},
	{
		name = "PlayerHeardJockey_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardJockeyMechanic,
			},
		],
	},
	{
		name = "PlayerHeardBoomerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowBoomer],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardBoomerC1Mechanic,
			},
		],
	},
	{
		name = "PlayerHeardHunterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowHunter],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardBoomerC1Mechanic,
			},
		],
	},
	{
		name = "PlayerHeardSmokerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowSmoker],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardBoomerC1Mechanic,
			},
		],
	},
	{
		name = "PlayerHeardChargerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowCharger],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardBoomerC1Mechanic,
			},
		],
	},
	{
		name = "PlayerHeardSpitterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowSpitter],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardBoomerC1Mechanic,
			},
		],
	},
	{
		name = "PlayerHeardJockeyC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardJockeyC1Mechanic,
			},
		],
	},
	{
		name = "PlayerHeardTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardTankMechanic,
			},
		],
	},
	{
		name = "PlayerHeardWitch_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHeardWitchMechanic,
			},
		],
	},
	{
		name = "PlayerHurrah_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHurrah],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHurrahMechanic,
			},
		],
	},
	{
		name = "PlayerWarnCareful_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnCareful],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnCarefulMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedWorldFar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWorldFarMechanic,
			},
		],
	},
	{
		name = "C6M3_PourFinished_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsL4D1Alive],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_PourFinishedMechanic,
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
		name = "GasPour20MoreSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Score20MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour20MoreSCMechanic,
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
		name = "GasPour20MoreWait_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsCsgo_sas],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour20MoreWaitMechanic,
				followup = RThen("self", "GasPour20More", null, 0.1),
			},
		],
	},
	{
		name = "GasPour10MoreSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Score10MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour10MoreSCMechanic,
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
		name = "GasPour10MoreWait_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsCsgo_sas],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour10MoreWaitMechanic,
				followup = RThen("self", "GasPour10More", null, 0.1),
			},
		],
	},
	{
		name = "GasPour1MoreSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Score1MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour1MoreSCMechanic,
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
		name = "GasPour1MoreWait_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsCsgo_sas],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour1MoreWaitMechanic,
				followup = RThen("self", "GasPour1More", null, 0.1),
			},
		],
	},
	{
		name = "GasPour2MoreSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Score2MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour2MoreSCMechanic,
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
		name = "GasPour2MoreWait_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsCsgo_sas],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour2MoreWaitMechanic,
				followup = RThen("self", "GasPour2More", null, 0.1),
			},
		],
	},
	{
		name = "GasPour3MoreSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Score3MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour3MoreSCMechanic,
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
		name = "GasPour3MoreWait_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsCsgo_sas],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour3MoreWaitMechanic,
				followup = RThen("self", "GasPour3More", null, 0.1),
			},
		],
	},
	{
		name = "GasPour5MoreSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Score5MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour5MoreSCMechanic,
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
		name = "GasPour5MoreWait_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsCsgo_sas],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour5MoreWaitMechanic,
				followup = RThen("self", "GasPour5More", null, 0.1),
			},
		],
	},
	{
		name = "GasPourDoneSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsScavenge],
			[ScoreDoneSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPourDoneSCMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPourSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPourSCMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GasPourSCSolo_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPourSCSoloMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GasPourAlone_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPourSCSoloMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GrabbingGasSC_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerEquippedScavengeItem],
			[IsCsgo_sas],
			[IsTalk],
			[IsNotAlone],
			[IsClosestSurvivorNear500],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[NotSaidGrabbingCan],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GrabbingGasSCMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGrabbingCan", value = 1, duration = 8.0 },
		},
	},
	{
		name = "PlayerShotGasCan_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerShotGasCan],
			[IsCsgo_sas],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerShotGasCanMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerShotGasCan", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ScavengeStart_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ScavengeStartMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ScavengeStartC1M4_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m4_atrium],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.ScavengeStartC1M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCommentJockey_CSGO_SAS",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsCsgo_sas],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsNotBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCommentJockeyMechanic,
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
		name = "PlayerCommentJockeyMale_CSGO_SAS",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsCsgo_sas],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			[ChanceToFire25Percent],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsNotBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCommentJockeyMaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M2LockTheDoorCheckPoint_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[ismap_c4m2_sugarmill_a],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M2LockTheDoorCheckPointMechanic,
			},
		],
	},
	{
		name = "GoingToDieCoachCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotComplainBlock],
			[IsCoachAlive],
			[IsCoachNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GoingToDieCoachCoachMechanic,
				followup = RThen("coach", "coachcoaches", null, 0.5),
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "PlayerAlertGiveItemStop_CSGO_SAS",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerAlertGiveItemStopMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerAlertGiveItemStopAnFirstAid_CSGO_SAS",
		criteria = 
		[
			[ConceptAlertGiveItemStopFirstAidA],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[NoHasFirstAidKit],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerAlertGiveItemStopAnFirstAidMechanic,
				followup = RThen("subject", "AlertGiveItemStop", null, 0.0),
			},
		],
	},
	{
		name = "PlayerAlertGiveItemStopC1_CSGO_SAS",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerAlertGiveItemStopC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerAlertGiveItemStopQnFirstAid_CSGO_SAS",
		criteria = 
		[
			[ConceptBashWithItem],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsItemFirstAidKit],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerAlertGiveItemStopQnFirstAidMechanic,
				followup = RThen("subject", "AlertGiveItemStopFirstAidA", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStopFirstAid", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerCoachPounced_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsCoach],
			[IsNotSaidCoachPounced],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCoachPouncedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "CoachPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCoachPouncedC1_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsCoach],
			[IsNotSaidCoachPounced],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCoachPouncedC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCoachPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGamblerPouncedC1_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCoachPouncedC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGamblerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerEatPills_CSGO_SAS",
		criteria = 
		[
			[ConceptEatPills],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerEatPillsMechanic,
			},
		],
	},
	{
		name = "PlayerGamblerPounced_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGamblerPouncedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "GamblerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGetInsideCheckPoint_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGetInsideCheckPointMechanic,
				followup = RThenAny("StayTogetherInsideReponse", -1.898),
			},
		],
	},
	{
		name = "PlayerStayTogetherSaferoom_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerStayTogetherSaferoomMechanic,
			},
		],
	},
	{
		name = "PlayerGetInsideCheckPointC2M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[ismap_c2m2],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGetInsideCheckPointC2M2Mechanic,
				followup = RThenAny("StayTogetherInsideReponse", 0.3),
			},
		],
	},
	{
		name = "PlayerGrabbedByJockey_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGrabbedByJockeyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCsgo_sas", value = 1, duration = 6.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGrabbedByJockeyC1_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGrabbedByJockeyC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedCsgo_sas", value = 1, duration = 6.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGrenadeMolotov_CSGO_SAS",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsGrenadeMolotov],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGrenadeMolotovMechanic,
				followup = RThenAny("GrenadeCareful", -0.821),
			},
		],
	},
	{
		name = "PlayerGrenadeMolotovTank_CSGO_SAS",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsGrenadeMolotov],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGrenadeMolotovTankMechanic,
			},
		],
	},
	{
		name = "PlayerGrenadePipeBomb_CSGO_SAS",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsGrenadePipeBomb],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGrenadePipeBombMechanic,
				followup = RThenAny("GrenadeCareful", -0.579),
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJar_CSGO_SAS",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsGrenadeVomitJar],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGrenadeVomitJarMechanic,
				followup = RThenAny("GrenadeCareful", -1.598),
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJarTank_CSGO_SAS",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsGrenadeVomitJar],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGrenadeVomitJarTankMechanic,
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJarC1_CSGO_SAS",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsGrenadeVomitJar],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGrenadeVomitJarC1Mechanic,
				followup = RThenAny("GrenadeCareful", -1.517),
			},
		],
	},
	{
		name = "PlayerIncapacitatedInitial_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerIncapacitatedInitialMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerIncapacitatedInitialC1M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsCsgo_sas],
			[ismap_c1m2_streets],
			[IsC1M2WhitakerErrand],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerIncapacitatedInitialC1M2Mechanic,
				followup = RThen("orator", "C1M2SurvivorDown", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerKillConfirmation_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectFar300],
			[ChanceToFire40Percent],
			[isNotmap_c1m1_hotel],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillConfirmationMechanic,
				followup = RThenAny("PlayerNiceShot", -0.399),
			},
		],
	},
	{
		name = "PlayerKillConfirmationC1M1_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsUsingFirearm],
			[IsSubjectFar300],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillConfirmationC1M1Mechanic,
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
		name = "PlayerKillConfirmationC1M1Melee_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkCsgo_sas],
			[EquippedMeleeWeapon],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillConfirmationC1M1MeleeMechanic,
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
		name = "KillSteal_CSGO_SAS",
		criteria = 
		[
			[ConceptKillSteal],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IssuerReallyClose],
			[IsCsgo_sasAlsoWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.KillStealMechanic,
				followup = RThen("self", "RightfulKiller", { from = "CSGO_SAS" }, -0.953),
			},
		],
	},
	{
		name = "InsistMine_CSGO_SAS",
		criteria = 
		[
			[ConceptInsistMine],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.InsistMineMechanic,
				followup = RThen("self", "KillStealCalledOut", { from = "CSGO_SAS" }, -1.545),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 1.1 },
		},
	},
	{
		name = "PlayerKillSpitterConfirmation_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsSpitter],
			[IsSubjectNear250],
			[ChanceToFire20Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillSpitterConfirmationMechanic,
			},
		],
	},
	{
		name = "PlayerKillSpitterGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsSpitter],
			[IsGamblerNear400],
			[ChanceToFire20Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillSpitterGamblerMechanic,
			},
		],
	},
	{
		name = "PlayerKillTankConfirmation_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsRocking],
			[IsWorldTalkCsgo_sas],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillTankConfirmationMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillTankNotHealthy_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsNotHealthy],
			[IsWorldTalkCsgo_sas],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillTankNotHealthyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillTankConfirmationC1M2_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m2_streets],
			[IsEveryoneAlive],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerKillTankConfirmationC1M2Mechanic,
				followup = RThen("csgo_sas", "C1M2TankInfo", null, 0.1),
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
		name = "PlayerCr0wnedWitch_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsCsgo_sas],
			[SubjectIsAWitch],
			[IsNotWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
	},
	{
		name = "PlayerKilledStartledWitch_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsCsgo_sas],
			[SubjectIsAWitch],
			[IsWitchAggro],
			[WitchaggroDecrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:--1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerLockTheDoorCheckPoint_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsInSafeSpot],
			[IsNotAlone],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLockTheDoorCheckPointMechanic,
			},
		],
	},
	{
		name = "PlayerLockTheDoorCheckPointC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsInSafeSpot],
			[IsNotAlone],
			[ismap_c1m1_hotel],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLockTheDoorCheckPointC1Mechanic,
			},
		],
	},
	{
		name = "PlayerProducerPounced_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerProducerPouncedMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerProducerPouncedC1_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerProducerPouncedC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRevivedByDefibrillator_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByDefibrillator],
			[IsNotCoughing],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRevivedByDefibrillatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRevivedByDefibrillator2_CSGO_SAS",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRevivedByDefibrillator2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestMeHealth_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[IsNotSuggestedHealth],
			[YesHasFirstAidKit],
			[IsCsgo_sas],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerSuggestMeHealthMechanic,
				followup = RThenAny("PlayerSuggestHealth", 0.0),
			},
		],
	},
	{
		name = "PlayerSuggestHealthGeneric_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCsgo_sas],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerSuggestHealthGenericMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCsgo_sas],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerSuggestHealthC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCsgo_sas],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerSuggestHealthCoachMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCsgo_sas],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerSuggestHealthGamblerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsCsgo_sas],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerSuggestHealthProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransition_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerTransitionMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerTransitionCloseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC1M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m2_streets],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerTransitionC1M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionCloseC1M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m2_streets],
			[IsNotAlone],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerTransitionCloseC1M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC1M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m3_mall],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerTransitionC1M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC2M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[ismap_c2m1],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerTransitionC2M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC5M4_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsMapc5m4_quarter],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerTransitionC5M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC6M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.PlayerTransitionC6M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerUsingDefibrillator_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerUsingDefibrillator],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerUsingDefibrillatorMechanic,
			},
		],
	},
	{
		name = "PlayerWarnHeardBoomer_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardBoomerMechanic,
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
		name = "PlayerWarnHeardCharger_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardChargerMechanic,
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
		name = "PlayerWarnHeardHunter_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardHunterMechanic,
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
		name = "PlayerWarnHeardJockey_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardJockeyMechanic,
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
		name = "PlayerWarnHeardJockeyC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardJockeyC1Mechanic,
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
		name = "PlayerWarnHeardSmoker_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardSmokerMechanic,
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
		name = "PlayerWarnHeardSpitter_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardSpitterMechanic,
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
		name = "PlayerWarnHeardBoomerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardChargerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardHunterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardSmokerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardSpitterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardBoomerC1Mechanic,
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
		name = "PlayerWarnHeardWitch_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsCsgo_sas],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[_auto_NotAlarmV2],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardWitchMechanic,
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
		name = "PlayerWarnHeardWitchC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsCsgo_sas],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardWitchC1Mechanic,
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
		name = "PlayerHeardWitchC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnHeardWitchC1Mechanic,
			},
		],
	},
	{
		name = "Player_C1WorseThanZombies_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_C1WorseThanZombies],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_C1WorseThanZombiesMechanic,
			},
		],
	},
	{
		name = "PlayerWarnMegaMob_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSpeaking],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnMegaMobMechanic,
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
		name = "PlayerWarnWitchAngry_CSGO_SAS",
		criteria = 
		[
			[ConceptWitchGettingAngry],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotWarnAngryWitch],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWarnWitchAngryMechanic,
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
		name = "PlayerWorldIntroC31Blank_CSGO_SAS",
		criteria = 
		[
			[ConceptintroC3M1],
			[IsCsgo_sas],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldIntroC31BlankMechanic,
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
		name = "PlayerWorldIntroC51_CSGO_SAS",
		criteria = 
		[
			[ConceptintroC5M1],
			[IsCsgo_sas],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWorldIntroC51Mechanic,
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
		name = "SurvivorCaughtVomit_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerVomitInFace],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorCaughtVomitMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 10.0 },
		},
	},
	{
		name = "Survivorchargerpound_CSGO_SAS",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidchargerpound],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorchargerpoundMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorchargerpoundC1_CSGO_SAS",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidchargerpound],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorchargerpoundC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorCoughing_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorCoughing],
			[IsCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorCoughingMechanic,
			},
		],
	},
	{
		name = "SurvivorCoughingDeath_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorCoughingMechanic,
			},
		],
	},
	{
		name = "SurvivorDeath_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorDeathMechanic,
			},
		],
	},
	{
		name = "SurvivorGooedBySpitter_CSGO_SAS",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkCsgo_sas],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorGooedBySpitterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorGooedBySpitterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorGooedBySpitterC1Mechanic,
				followup = RThen("csgo_sas", "Player.GooedBySpitterC1R", null, -2.951),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorGrabbedByTongue_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorGrabbedByTongueMechanic,
			},
		],
	},
	{
		name = "SurvivorGrabbedByTongueC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorGrabbedByTongueC1Mechanic,
			},
		],
	},
	{
		name = "SurvivorNearCheckpoint_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC1M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c1m1_hotel],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC1M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC1M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c1m2_streets],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC1M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC1M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c1m3_mall],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC1M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c2m1],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC2M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c2m2],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC2M2Mechanic,
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
		name = "SurvivorNearCheckpointC2M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c2m3],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC2M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M4_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c2m4],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC2M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC3M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c3m1_plankcountry],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC3M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC3M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismapc3m2_swamp],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC3M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3SafeHouseAhead_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC3M3SafeHouseAhead],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC3M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c4m1_milltown_a],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC4M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ismap_c4m2_sugarmill_a],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC4M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[isc4m3],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC4M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M4_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[isc4m4],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC4M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC5M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsMapc5m2_park],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC5M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC5M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsMapc5m3_cemetery],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC5M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC5M4_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsMapc5m4_quarter],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC5M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC6M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[Isc6m1_riverbank],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC6M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC6M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[Isc6m2_bedlam],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearCheckpointC6M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinale_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearFinaleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC1M4_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m4_atrium],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC2M5_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[ismap_c2m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearFinaleC2M5Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC3M4_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[ismapc3m4_plantation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearFinaleC3M4Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC4M5_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[isc4m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC5M5_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[IsMapc5m5_bridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC6M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[Isc6m3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPouncedByHunter_CSGO_SAS",
		criteria = 
		[
			[ConceptScreamWhilePounced],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPouncedByHunterMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorTankPound_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGroundPoundedByTank],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorTankPoundMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorVocalizeBackUp_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerBackUp],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorVocalizeBackUpMechanic,
			},
		],
	},
	{
		name = "SurvivorVocalizeEmphaticGo_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerEmphaticGo],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorVocalizeEmphaticGoMechanic,
			},
		],
	},
	{
		name = "SurvivorVocalizeGoingToDie_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotComplainBlock],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorVocalizeGoingToDieMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "SurvivorVocalizeGoingToDie3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotComplainBlock],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorVocalizeGoingToDie3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "SurvivorVocalizeLookOut_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorVocalizeLookOutMechanic,
			},
		],
	},
	{
		name = "SurvivorVocalizeThisWay_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerThisWay],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorVocalizeThisWayMechanic,
			},
		],
	},
	{
		name = "SurvivorVocalizeWaitHere_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWaitHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorVocalizeWaitHereMechanic,
			},
		],
	},
	{
		name = "SurvivorWarnSpitterIncoming_CSGO_SAS",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorWarnSpitterIncomingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},
	{
		name = "SurvivorWarnSpitterIncomingC1_CSGO_SAS",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidWarnSpitterIncoming],
			[C1M1orC1M2],
			[IsWorldTalkCsgo_sas],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorWarnSpitterIncomingC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerLedgeHangEnd_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLedgeHangEnd],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLedgeHangEndMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeHangMiddle_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLedgeHangMiddle],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLedgeHangMiddleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeHangStart_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLedgeHangStart],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLedgeHangStartMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorFirstDeath_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCsgo_sas],
			[IsEveryoneAlive],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorFirstDeathMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorFirstDeathC1_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCsgo_sas],
			[IsEveryoneAlive],
			[IsNotSaidSomeoneDied],
			[ismap_c1m1_hotel],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCsgo_sas],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorFirstDeathC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DeathOne_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCsgo_sas],
			[IsWithTwo],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DeathOneMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DoubleDeath_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsClosestSurvivorNear400],
			[IsWithOnlyThree],
			[IsNotIncapacitated],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DoubleDeathMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DoubleDeathProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsProducerAlive],
			[IsProducerNear400],
			[IsWithOnlyThree],
			[ChanceToFire100Percent],
			[IsNotIncapacitated],
			[IsNotDeadProducer],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DoubleDeathProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKill_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.TeamKillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromCoach_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireCoach],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.TeamKillFromCoachMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromGambler_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.TeamKillFromGamblerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromProducer_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.TeamKillFromProducerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsPickedUpSMG],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGunSilenced_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakePumpShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsPickedUpPumpShotgun],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeChromeShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsPickedUpShotgun_Chrome],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeCSSMP5_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsPickedUpSmg_mp5],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1TakeSubMachineGunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorDeployUpExplosives_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSaidDeployUpgradePack_Explosive],
			[HasUpgradePack_Explosive],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorDeployUpExplosivesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Explosive", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorDeployUpIncendiary_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSaidDeployUpgradePack_Incendiary],
			[HasUpgradePack_Incendiary],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorDeployUpIncendiaryMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Incendiary", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAdrenaline_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpAdrenaline],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupAdrenalineMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAutoShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpAutoShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupAutoShotgunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSpasShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpShotgun_spas],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupAutoShotgunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupbaseball_bat_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpbaseball_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupbaseball_batMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupShovel_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpShovel],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupShovelMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupchainsaw_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpchainsaw],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupchainsawMechanic,
				followup = RThen("All", "AskWhat", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupKnife_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpKnife],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupKnifeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupcricket_bat_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpcricket_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupcricket_batMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPitchfork_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpPitchfork],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupPitchforkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupCrowBar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpCrowBar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupCrowBarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupDefibrillator_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpDefibrillator],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupDefibrillatorMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupelectric_guitar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpelectric_guitar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupelectric_guitarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupFireAxe_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpFireAxe],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupFireAxeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupFirstAidKit_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpFirstAidKit],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupFirstAidKitMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupFirstSMG_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidPickupFirstSMG],
			[IsSaidC1M1OpenDoor],
			[ExtraWeight10],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupFirstSMGMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstSMG", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupFryingPan_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpFryingPan],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupFryingPanMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupGolfCLub_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupGolfCLubMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupGrenadeLauncher_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpGrenadeLauncher],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupGrenadeLauncherMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupGunC1M2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
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
			[IsWorldTalkCsgo_sas],
			[IsNotSaidC1M2InsideGunShopPickUp],
			[ChanceToFire50Percent],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupGunC1M2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2InsideGunShopPickUp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupHuntingRifle_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpHuntingRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupHuntingRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMilitarySniper_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpSniper_Military],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupHuntingRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupScoutSniper_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpSniper_scout],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupHuntingRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAWPSniper_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpSniper_awp],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupHuntingRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupIncendiaryAmmo_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpIncendiaryAmmo],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupIncendiaryAmmoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupKatana_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpKatana],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupKatanaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupLaserSightsAlways_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotNotAvailable],
			[ChanceToFire50Percent],
			[NotPickedUpItem],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupLaserSightsAlwaysMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupM60_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupM60Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMachete_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpMachete],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupMacheteMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMagnum_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpMagnum],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupMagnumMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMolotov_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpMolotov],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupMolotovMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPainPills_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpPainPills],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupPainPillsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPipeBomb_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpPipeBomb],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupPipeBombMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPumpShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpPumpShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupPumpShotgunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupChromeShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpShotgun_Chrome],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupPumpShotgunMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupRifle_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupDesertRifle_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpRifle_Desert],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupDesertRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAK47Rifle_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpRifle_AK47],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupDesertRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSG552Rifle_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpRifle_sg552],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupDesertRifleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSecondPistol_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpSecondPistol],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupSecondPistolMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSMG_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpSMG],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupSMGMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSilencedSMG_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpSMG_silenced],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupSMGMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMP5SMG_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpSMG_mp5],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupSMGMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickuptonfa_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUptonfa],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickuptonfaMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupUpExplosiveAmmo_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpExplosiveAmmo],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupUpExplosiveAmmoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupUpExplosives_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpUpgradePack_Explosive],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupUpExplosivesMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupUpIncendiary_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpUpgradePack_Incendiary],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupUpIncendiaryMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupVomitJar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpVomitJar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupVomitJarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupVomitJarAlwaysC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpVomitJar],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupVomitJarAlwaysC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "PlayerGettingRevived_CSGO_SAS",
		criteria = 
		[
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGettingRevivedMechanic,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "CSGO_SAS" }, -0.608),
			},
		],
	},
	{
		name = "PlayerGettingRevivedCrybaby_CSGO_SAS",
		criteria = 
		[
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsCsgo_sasCrybaby],
			[FromIsProducer],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerGettingRevivedCrybabyMechanic,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "CSGO_SAS" }, -1.447),
			},
		],
	},
	{
		name = "PlayerHealOther_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[NotInIntenseCombat],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHealOtherMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[NotInIntenseCombat],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHealOtherC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherCombat_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[InIntenseCombat],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHealOtherCombatMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkCsgo_sas],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerHealOtherCombatMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSave_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLedgeSaveMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriend_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReviveFriendMechanic,
				followup = RThen("Subject", "ReviveFriendDown", null, -0.664),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerReviveFriendB_CSGO_SAS",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReviveFriendBMechanic,
			},
		],
	},
	{
		name = "PlayerReviveFriendCritical_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReviveFriendCriticalMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoud_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReviveFriendLoudMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveCritical_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerLedgeSaveMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoud2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsCsgo_sas],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReviveFriendLoudMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoudCrit_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsCsgo_sas],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReviveFriendLoudMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoudCrit2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerReviveFriendLoudMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 5.0 },
		},
	},
	{
		name = "_C1M1_ElevatorHello_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHelloMechanic,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello02c_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello02c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello02cMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello03c", null, -1.856),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello03a_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello03aMechanic,
				followup = RThen("self", "_C1M1_ElevatorHello03e", null, -8.671),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello03e_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03e],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello03eMechanic,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello03d_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03d],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello03dMechanic,
				followup = RThen("gambler", "_C1M1_ElevatorHello04d", null, -0.479),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello05b_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello05bMechanic,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello05cRochelle_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05c],
			[IsCsgo_sas],
			[FromIsProducer],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello05cRochelleMechanic,
				followup = RThen("coach", "_C1M1_ElevatorHello03c", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello05cCoach_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05c],
			[IsCsgo_sas],
			[FromIsCoach],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello05cCoachMechanic,
				followup = RThen("Producer", "_C1M1_ElevatorHello03c", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello05cNick_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05c],
			[IsCsgo_sas],
			[FromIsGambler],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello05cNickMechanic,
				followup = RThen("Producer", "_C1M1_ElevatorHello11a", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello07b_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello07bMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello07c", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello07d_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07d],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello07dMechanic,
				followup = RThen("coach", "_C1M1_ElevatorHello07g", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello07f_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07f],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello07fMechanic,
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
		name = "_C1M1_ElevatorHello08a_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello08a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello08aMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello08b", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello08c_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello08c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello08cMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello08d", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello08e_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello08e],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello08eMechanic,
				followup = RThen("coach", "_C1M1_ElevatorHello07g", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello09a_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello09a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello09aMechanic,
				followup = RThen("producer", "_C1M1_ElevatorHello09a", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello12a_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello12a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello12aMechanic,
				followup = RThen("Coach", "_C1M1_ElevatorHello07g", null, 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello13a_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello13a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello13aMechanic,
				followup = RThen("self", "_C1M1_ElevatorHello13a", { from = "CSGO_SAS" }, -2.554),
			},
		],
	},
	{
		name = "_c1m4startelevator2_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator2Mechanic,
				followup = RThenAny("_c1m4startelevator5a", -8.777),
			},
		],
	},
	{
		name = "_c1m4startelevator2a_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator2a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator2aMechanic,
				followup = RThen("csgo_sas", "_c1m4startelevator3e", null, -2.084),
			},
		],
	},
	{
		name = "_c1m4startelevator2b_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator2b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator2bMechanic,
				followup = RThen("csgo_sas", "_c1m4startelevator3c", null, -1.25),
			},
		],
	},
	{
		name = "_c1m4startelevator2c_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator2c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator2cMechanic,
				followup = RThen("producer", "_c1m4startelevator5a", null, -12.096),
			},
		],
	},
	{
		name = "_c1m4startelevator3_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator3Mechanic,
				followup = RThen("producer", "_c1m4startelevator3a", null, 0.2),
			},
		],
	},
	{
		name = "_c1m4startelevator3b_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator3b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator3bMechanic,
				followup = RThen("producer", "_c1m4startelevator3c", null, 0.2),
			},
		],
	},
	{
		name = "_c1m4startelevator3c_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator3c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator3cMechanic,
				followup = RThen("coach", "_c1m4startelevator5a", null, -4.225),
			},
		],
	},
	{
		name = "_c1m4startelevator3d_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator3d],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator3dMechanic,
				followup = RThen("gambler", "_c1m4startelevator5a", null, -4.225),
			},
		],
	},
	{
		name = "_c1m4startelevator3e_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator3e],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator3eMechanic,
				followup = RThen("gambler", "_c1m4startelevator5a", null, -8.562),
			},
		],
	},
	{
		name = "_c1m4startelevator5a_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator5a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator5aMechanic,
				followup = RThenAny("_c1m4startelevatorLast", -4.282),
			},
		],
	},
	{
		name = "_c1m4startelevator5a1_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator5a1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator5a1Mechanic,
				followup = RThen("gambler", "_c1m4startelevator6a1", null, -4.779),
			},
		],
	},
	{
		name = "_c1m4startelevator5b_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevator5b],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevator5bMechanic,
				followup = RThen("csgo_sas", "_c1m4startelevator5a", null, -2.936),
			},
		],
	},
	{
		name = "_c1m4startelevatorLast_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsCsgo_sas],
			[ElevatorTimeNotUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c1m4startelevatorLastMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c1m4startelevatorLastTimeUp_CSGO_SAS",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsCsgo_sas],
			[ElevatorTimeUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m1_searchlights01_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m1_searchlights01],
			[IsCsgo_sas],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m1_searchlights01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.662 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m1_searchlights04_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m1_searchlights04],
			[IsCsgo_sas],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m1_searchlights04Mechanic,
				followup = RThen("self", "_c2m1_searchlights04", { from = "CSGO_SAS" }, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.662 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_Bathroom01_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Bathroom01],
			[IsCsgo_sas],
			[NotInCombat],
			[IsSubjectDistNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Bathroom01Mechanic,
			},
		],
	},
	{
		name = "_C2M2_CaroStart03_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_CaroStart03],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_CaroStart03Mechanic,
				followup = RThen("self", "_C2M2_CaroStart04", null, 0.2),
			},
		],
	},
	{
		name = "_C2M2_CaroStart04_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_CaroStart04],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_CaroStart04Mechanic,
			},
		],
	},
	{
		name = "_C2M2_Kiddie03_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Kiddie03],
			[IsCsgo_sas],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Kiddie03Mechanic,
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
		name = "_C2M2_Peanut01_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Peanut01],
			[IsCsgo_sas],
			[NotInCombat],
			[IsSubjectDistNear800],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Peanut01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 6.681 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_Slide01_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Slide01],
			[IsCsgo_sas],
			[NotInCombat],
			[IsSubjectDistNear400],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_Slide01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.922 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_ThisTall02_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_ThisTall02],
			[IsCsgo_sas],
			[NotInCombat],
			[IssuerClose],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_ThisTall02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.201 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_ThisTall02Nick_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_ThisTall02],
			[IsCsgo_sas],
			[NotInCombat],
			[IssuerClose],
			[FromIsGambler],
			[Csgo_sasNotTall],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_ThisTall02NickMechanic,
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
		name = "_C2M2_LikeTaters_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_LikeTaters],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_LikeTatersMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 4.435 },
		},
	},
	{
		name = "_C2M2_Kiddie06_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M2_Kiddie06],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M2_ThisTall02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.201 },
			c2 = { context = "Csgo_sasTallJoke", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_cement01_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m3_cement01],
			[IsCsgo_sas],
			[NotInCombat],
			[IsNotIncapacitated],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotSurvival],
			[AutoIsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m3_cement01Mechanic,
			},
		],
	},
	{
		name = "_c2m3_coaster01_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m3_coaster01],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m3_coaster01Mechanic,
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
		name = "_c2m3_coaster03_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m3_coaster03],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m3_coaster03Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.171 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_coaster06_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m3_coaster06],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m3_coaster06Mechanic,
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
		name = "_c2m3_coaster07_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m3_coaster07],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m3_coaster07Mechanic,
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
		name = "_c2m3_coaster08_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m3_coaster08],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m3_coaster08Mechanic,
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
		name = "_c2m3_coollight01_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m3_coollight01],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m3_coollight01Mechanic,
			},
		],
	},
	{
		name = "_c2m3_howcool_CSGO_SAS",
		criteria = 
		[
			[Concept_c2m3_howcool],
			[IsCsgo_sas],
			[ChanceToFire50Percent],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c2m3_howcoolMechanic,
			},
		],
	},
	{
		name = "_C2M4_GateOpen001_CSGO_SAS",
		criteria = 
		[
			[Concept_C2M4_GateOpen001],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C2M4_GateOpen001Mechanic,
			},
		],
	},
	{
		name = "_C4_BigStormHits01_CSGO_SAS",
		criteria = 
		[
			[Concept_C4_BigStormHits01],
			[IsCsgo_sas],
			[_auto_NotC4Csgo_sasInCover],
			[_auto_IsTimerA],
			[FromIsAnOrator],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C4_BigStormHits01Mechanic,
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
		name = "_C4_BigStormHits02_CSGO_SAS",
		criteria = 
		[
			[Concept_C4_BigStormHits02],
			[IsCsgo_sas],
			[IsNotCoughing],
			[IssuerClose],
			[IsNotIncapacitated],
			[_auto_NotC4Csgo_sasInCover],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C4_BigStormHits02Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.845 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m1_rainresponse_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m1_rainresponse],
			[IsCsgo_sas],
			[NotInCombat],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidc4m1_rainresponse],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m1_rainresponseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_rainresponse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M1Intro_CSGO_SAS",
		criteria = 
		[
			[ConceptIntroC4M1],
			[IsCsgo_sas],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4M1IntroMechanic,
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
		name = "_c4m1Intro05_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m1Intro05],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m1Intro05Mechanic,
				followup = RThen("coach", "_c4m1Intro05", null, 0.01),
			},
		],
	},
	{
		name = "_c4m1Intro07_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m1Intro07],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m1Intro07Mechanic,
				followup = RThenAny("_c4m1Intro07", 0.01),
			},
		],
	},
	{
		name = "_c4m1Intro08_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m1Intro08],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m1Intro08Mechanic,
				followup = RThenAny("_c4m1Intro09", -1.0),
			},
		],
	},
	{
		name = "_c4m1Intro12_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m1Intro12],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m1Intro12Mechanic,
				followup = RThen("coach", "_c4m1Intro14", null, -0.3),
			},
		],
	},
	{
		name = "_c4m1Intro16_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m1Intro16],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m1Intro16Mechanic,
				followup = RThen("gambler", "_c4m1Intro07", null, 0.01),
			},
		],
	},
	{
		name = "_c4m2_caneyell01_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_caneyell01],
			[IsCsgo_sas],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsCsgo_sasInCane],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_caneyell01Mechanic,
			},
		],
	},
	{
		name = "_c4m2_ElevatorHere01_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_ElevatorHere01],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_ElevatorHere01Mechanic,
			},
		],
	},
	{
		name = "_c4m2_gasinside01_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_gasinside01],
			[IsCsgo_sas],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotCsgo_sasInCane],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_gasinside01Mechanic,
			},
		],
	},
	{
		name = "_c4m2_seestation01_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_seestation01],
			[IsCsgo_sas],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_seestation01Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m2_seestation02N_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_seestation02],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS._c4m2_seestation02NMechanic,
				followup = RThen("self", "_c4m2_seestation03", { from = "CSGO_SAS" }, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m2_seestation02R_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_seestation02],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS._c4m2_seestation02RMechanic,
				followup = RThen("self", "_c4m2_seestation03", { from = "CSGO_SAS" }, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m2_streetblocked01_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsCsgo_sas],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_streetblocked01Mechanic,
			},
		],
	},
	{
		name = "_c4m2_streetblocked01b_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsCsgo_sas],
			[IsSubjectDistFar400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_streetblocked01bMechanic,
				followup = RThen("subject", "_c4m2_streetblocked02", null, 0.01),
			},
		],
	},
	{
		name = "_c4m2_streetblocked02_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_streetblocked02],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_streetblocked01Mechanic,
			},
		],
	},
	{
		name = "_c4m2_waterpool01_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_waterpool01],
			[IsCsgo_sas],
			[IsSubjectDistNear400],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_waterpool01Mechanic,
			},
		],
	},
	{
		name = "_c4m2_Witchville05_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m2_Witchville05],
			[IsCsgo_sas],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m2_Witchville05Mechanic,
			},
		],
	},
	{
		name = "_c4m3_rain02_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m3_rain02],
			[IsCsgo_sas],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m3_rain02Mechanic,
			},
		],
	},
	{
		name = "_c4m3_startsafe02_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m3_startsafe02],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m3_startsafe02Mechanic,
				followup = RThenAny("_c4m3_startsafe03", 0.2),
			},
		],
	},
	{
		name = "_c4m3_startsafe03_CSGO_SAS",
		criteria = 
		[
			[Concept_c4m3_startsafe03],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._c4m3_startsafe03Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "_C4M4_FLOODED01_CSGO_SAS",
		criteria = 
		[
			[Concept_C4M4_FLOODED01],
			[IsCsgo_sas],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C4M4_FLOODED01Mechanic,
			},
		],
	},
	{
		name = "_C4M4_garagesale01_CSGO_SAS",
		criteria = 
		[
			[Concept_C4M4_garagesale01],
			[IsCsgo_sas],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C4M4_garagesale01Mechanic,
			},
		],
	},
	{
		name = "_C4M5_BoatComing01_CSGO_SAS",
		criteria = 
		[
			[Concept_C4M5_BoatComing01],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C4M5_BoatComing01Mechanic,
			},
		],
	},
	{
		name = "_C4M5_Intro03_CSGO_SAS",
		criteria = 
		[
			[Concept_C4M5_Intro03],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C4M5_Intro03Mechanic,
				followup = RThenAny("_C4M5_Intro04", 0.1),
			},
		],
	},
	{
		name = "_C4M5_Intro04_CSGO_SAS",
		criteria = 
		[
			[Concept_C4M5_Intro04],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C4M5_Intro04Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "PlayerRemarkc4m5_BurgerTank_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isc4m5_burgertank],
			[IsNotSaidc4m5_burgertank],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSubjectNear1000],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc4m5_BurgerTankMechanic,
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
		name = "_introc1m1_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1],
			[IsCsgo_sas],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1Mechanic,
				followup = RThenAny("_introc1m1a01", -1.0),
			},
		],
	},
	{
		name = "_introc1m1Alone_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1],
			[IsCsgo_sas],
			[IsAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1AloneMechanic,
			},
		],
	},
	{
		name = "_introc1m1MovieIntro_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1],
			[IsCsgo_sas],
			[IsNotAlone],
			[ExtraWeight10],
			[ChanceToFire5Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1MovieIntroMechanic,
				followup = RThen("self", "_introc1m1MovieIntro", null, 0.5),
			},
		],
	},
	{
		name = "_introc1m1MovieIntro2_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1MovieIntro],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1MovieIntro2Mechanic,
				followup = RThen("producer", "_introc1m1MovieIntro", null, -1.5),
			},
		],
	},
	{
		name = "_introc1m1a04_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1a04],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1a04Mechanic,
				followup = RThen("gambler", "_introc1m1b03", null, -1.12),
			},
		],
	},
	{
		name = "_introc1m1a05_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1a05],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1a05Mechanic,
				followup = RThen("gambler", "_introc1m1b10", null, 0.1),
			},
		],
	},
	{
		name = "_introc1m1b02_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1b02],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1b02Mechanic,
				followup = RThen("gambler", "_introc1m1b03", null, -1.12),
			},
		],
	},
	{
		name = "_introc1m1b03_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1b03],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1b03Mechanic,
				followup = RThen("gambler", "_introc1m1b06", null, 0.1),
			},
		],
	},
	{
		name = "_introc1m1last_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1last],
			[IsCsgo_sas],
			[FromIsNotCoach],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1lastMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "_introc1m1lastCoach_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1last],
			[IsCsgo_sas],
			[FromIsCoach],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1lastCoachMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "_introc1m1b05_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1b05],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1b05Mechanic,
				followup = RThenAny("_introc1m1b08", 0.1),
			},
		],
	},
	{
		name = "_introc1m1b06_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1b06],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1b06Mechanic,
				followup = RThenAny("_introc1m1last", -5.084),
			},
		],
	},
	{
		name = "_introc1m1b08_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1b08],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1b08Mechanic,
				followup = RThenAny("_introc1m1last", -5.084),
			},
		],
	},
	{
		name = "_introc1m1firealert_CSGO_SAS",
		criteria = 
		[
			[Concept_introc1m1firealert],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._introc1m1firealertMechanic,
				followup = RThen("coach", "_introc1m1b08", null, 0.1),
			},
		],
	},
	{
		name = "BlankTesto_CSGO_SAS",
		criteria = 
		[
			[ConceptBlankTesto],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BlankTesto", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c1m1_elevator_door_open_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m1_elevator_door_open2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c1m1_elevator_door_openMechanic,
				followup = RThen("all", "C1M1Cough", null, -1.399),
			},
		],
	},
	{
		name = "c1m1_elevator_ready2_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m1_elevator_ready2],
			[IsCsgo_sas],
			[IsNotSaidC1M1OpenDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c1m1_elevator_ready2Mechanic,
				followup = RThen("Csgo_sas", "C1M1Cough", null, -0.618),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OpenDoor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello2AliveName1_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveName1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello2AliveName1Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello2AliveName2", -0.911),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveName2_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveName2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello2AliveName2Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello2AliveExtra1", -0.911),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra1_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello2AliveExtra1Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello2AliveExtra2", 0.1),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra2_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello2AliveExtra2Mechanic,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello3AliveName1Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName2", -1.856),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1R_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[FromIsProducer],
			[ChanceToFire100Percent],
			[IsRochelleElevatorIntro],
			[IsNotCsgo_sasIntroduced],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello3AliveName1RMechanic,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveExtra2", { from = "CSGO_SAS" }, -1.856),
			},
		],
		applycontext =
		{
			c1 = { context = "Csgo_sasIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveName2R_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[FromIsProducer],
			[IsRochelleElevatorIntro],
			[ChanceToFire100Percent],
			[IsNotCsgo_sasIntroduced],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello3AliveName2RMechanic,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveName2", { from = "CSGO_SAS" }, -1.856),
			},
		],
		applycontext =
		{
			c1 = { context = "Csgo_sasIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveName2_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[IsCsgo_sas],
			[IsNotCsgo_sasIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello3AliveName2Mechanic,
				followup = RThenAny("_C1M1_ElevatorHello3WhoIsDead", -0.911),
			},
		],
		applycontext =
		{
			c1 = { context = "Csgo_sasIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveWhoIsDead_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveWhoIsDead],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello3AliveWhoIsDeadMechanic,
				followup = RThenAny("_C1M1_ElevatorHello3NameDead", -0.671),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadR_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsProducerNotAlive],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello3AliveNameDeadRMechanic,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadC_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsCoachNotAlive],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello3AliveNameDeadCMechanic,
				followup = RThenAny("_C1M1_ElevatorHello3NameDead", -0.671),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadN_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsGamblerNotAlive],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS._C1M1_ElevatorHello3AliveNameDeadNMechanic,
			},
		],
	},
	{
		name = "Concept_C1M1_ElevatorHello3AliveNameDeadSelf_CSGO_SAS",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsCsgo_sas],
			[IsCoachAlive],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Concept_C1M1_ElevatorHello3AliveNameDeadSelfMechanic,
				followup = RThen("coach", "_C1M1_ElevatorHello3AliveNameDead2", null, 0.1),
			},
		],
	},
	{
		name = "C1M1Cough_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M1Cough],
			[IsCsgo_sas],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M1CoughMechanic,
			},
		],
	},
	{
		name = "C1M2SafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C1M2SafeRoomMechanic,
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
		name = "C1M2SafeRooma4_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2SafeRooma4],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2SafeRooma4Mechanic,
				followup = RThen("producer", "C1M2SafeRooma3", null, 0.1),
			},
		],
	},
	{
		name = "C1M2SafeRooma3_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2SafeRooma3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2SafeRooma3Mechanic,
				followup = RThen("producer", "C1M2SafeRooma4", null, 0.1),
			},
		],
	},
	{
		name = "C1M3AlarmOffa_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M3AlarmOffa],
			[IsCsgo_sas],
			[IsSubjectDistNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M3AlarmOffaMechanic,
			},
		],
	},
	{
		name = "C1M3SafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C1M3SafeRoomMechanic,
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
		name = "C1M3SafeRoom2e_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M3SafeRoom2e],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M3SafeRoom2eMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C1M4NearFinale03c_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M4NearFinale03c],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4NearFinale03cMechanic,
			},
		],
	},
	{
		name = "c1m4NearFinale1_CSGO_SAS",
		criteria = 
		[
			[Conceptc1m4NearFinale1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c1m4NearFinale1Mechanic,
			},
		],
	},
	{
		name = "C1M4SafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C1M4SafeRoomMechanic,
				followup = RThen("csgo_sas", "C1M4SafeRoom2c1", null, 1.25),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M4SafeRoom2a1_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4SafeRoom2a1Mechanic,
				followup = RThen("gambler", "C1M4SafeRoom2a2", null, -5.969),
			},
		],
	},
	{
		name = "C1M4SafeRoom2b1_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M4SafeRoom2b1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4SafeRoom2b1Mechanic,
				followup = RThen("producer", "C1M4SafeRoom2b2", null, -5.969),
			},
		],
	},
	{
		name = "C1M4SafeRoom2b3_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M4SafeRoom2b3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4SafeRoom2b3Mechanic,
				followup = RThen("csgo_sas", "C1M4SafeRoom2b4", null, -1.539),
			},
		],
	},
	{
		name = "C1M4SafeRoom2b4_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M4SafeRoom2b4],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4SafeRoom2b4Mechanic,
				followup = RThen("coach", "C1M4SafeRoom2b5", null, -1.719),
			},
		],
	},
	{
		name = "C1M4SafeRoom2a5_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a5],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4SafeRoom2a5Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C1M4SafeRoom2c1_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M4SafeRoom2c1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4SafeRoom2c1Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C1M4SafeRoomEnd_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[ismap_c1m4_atrium],
			[IsCsgo_sas],
			[IsNotSaidLeavingSafeArea],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4SafeRoomEndMechanic,
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
		name = "C1M4FinaleStartResponse_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M4FinaleStartResponse],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M4FinaleStartResponseMechanic,
			},
		],
	},
	{
		name = "C2M1IntroStart_CSGO_SAS",
		criteria = 
		[
			[ConceptIntroC2M1],
			[IsCsgo_sas],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1IntroStartMechanic,
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
		name = "C2M1Intro002_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro002],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro002Mechanic,
				followup = RThenAny("C2M1Intro002", 0.02),
			},
		],
	},
	{
		name = "C2M1Intro003_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro003],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro003Mechanic,
				followup = RThenAny("C2M1Intro002", 0.02),
			},
		],
	},
	{
		name = "C2M1Intro005_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro005],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro005Mechanic,
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
		name = "C2M1Intro008_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro008],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro008Mechanic,
			},
		],
	},
	{
		name = "C2M1Intro009_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M1Intro009],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M1Intro009Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C2M4PenSmell001_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M4PenSmell001],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C2M4PenSmell001Mechanic,
			},
		],
	},
	{
		name = "C2M5_lipsync001_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5_lipsync001],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C2M5_lipsync001Mechanic,
			},
		],
	},
	{
		name = "C2M5_lipsync002_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M5_lipsync002],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C2M5_lipsync002Mechanic,
			},
		],
	},
	{
		name = "C4EnterCover_CSGO_SAS",
		criteria = 
		[
			[ConceptC4EnterCover],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4Csgo_sasInCover", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4ExitCover_CSGO_SAS",
		criteria = 
		[
			[ConceptC4ExitCover],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4Csgo_sasInCover", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4FinaleStart_CSGO_SAS",
		criteria = 
		[
			[ConceptC4FinaleStart],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C4FinaleStartMechanic,
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
		name = "c4m1_nogas01_CSGO_SAS",
		criteria = 
		[
			[Conceptc4m1_nogas01],
			[IsCsgo_sas],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c4m1_nogas01Mechanic,
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
		name = "c4m1_nogas10_CSGO_SAS",
		criteria = 
		[
			[Conceptc4m1_nogas10],
			[IsCsgo_sas],
			[NotInCombat],
			[IsSubjectDistNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c4m1_nogas10Mechanic,
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
		name = "c4m1_wreck01_CSGO_SAS",
		criteria = 
		[
			[Conceptc4m1_wreck01],
			[IsCsgo_sas],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c4m1_wreck01Mechanic,
				followup = RThen("self", "c4m1_wreck02", null, 0.03),
			},
		],
	},
	{
		name = "c4m1_wreck02_CSGO_SAS",
		criteria = 
		[
			[Conceptc4m1_wreck02],
			[IsCsgo_sas],
			[NotInCombat],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.c4m1_wreck02Mechanic,
			},
		],
	},
	{
		name = "GasPour20More_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour20MoreMechanic,
			},
		],
	},
	{
		name = "GasPour10MoreTalk_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour10MoreTalkMechanic,
			},
		],
	},
	{
		name = "GasPour1More_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour1MoreMechanic,
			},
		],
	},
	{
		name = "GasPour2More_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour2MoreMechanic,
			},
		],
	},
	{
		name = "GasPour3More_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour3MoreMechanic,
			},
		],
	},
	{
		name = "GasPour5More_CSGO_SAS",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.GasPour5MoreMechanic,
			},
		],
	},
	{
		name = "Player_CoverMeC1R_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_CoverMeC1R],
			[IsCsgo_sas],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_CoverMeC1RMechanic,
			},
		],
	},
	{
		name = "Player_CoverMeC1RCoach1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_CoverMeC1RCoach1],
			[IsCsgo_sas],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_CoverMeC1RCoach1Mechanic,
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
		name = "Player_GooedBySpitterC1R_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_GooedBySpitterC1R],
			[IsCsgo_sas],
			[IsNotIncapacitated],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_GooedBySpitterC1RMechanic,
			},
		],
	},
	{
		name = "Player_KnowHunterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_KnowHunter],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_KnowHunterC1Mechanic,
				followup = RThen("self", "Player.KnowHunter2", { from = "CSGO_SAS" }, 0.1),
			},
		],
	},
	{
		name = "Player_KnowBoomerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_KnowBoomer],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_KnowBoomerC1Mechanic,
			},
		],
	},
	{
		name = "Player_KnowChargerC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_KnowCharger],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_KnowChargerC1Mechanic,
			},
		],
	},
	{
		name = "Player_KnowJockeyC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_KnowJockey],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_KnowJockeyC1Mechanic,
			},
		],
	},
	{
		name = "C1M2TankInfo_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2TankInfo],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2TankInfoMechanic,
				followup = RThen("producer", "C1M2TankInfo", null, 0.1),
			},
		],
	},
	{
		name = "Player_KnowSpitterC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayer_KnowSpitter],
			[IsCsgo_sas],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_KnowSpitterC1Mechanic,
			},
		],
	},
	{
		name = "PlayerCr0wnedBride_CSGO_SAS",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsCsgo_sas],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkCsgo_sas],
			[isc6m1_riverbank],
			[IsWorldTalkCsgo_sas],
		],
		// 	forceweight 101
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCr0wnedBrideMechanic,
				followup = RThenAny("WeddingWitchDead02", 3.1),
			},
		],
	},
	{
		name = "WeddingWitchDead02_CSGO_SAS",
		criteria = 
		[
			[ConceptWeddingWitchDead02],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WeddingWitchDead02Mechanic,
				followup = RThen("producer", "WeddingWitchDead02a", null, 0.1),
			},
		],
	},
	{
		name = "WorldIntroC31a2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldIntroC31a2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldIntroC31a2Mechanic,
				followup = RThen("gambler", "WorldIntroC31a3", null, -3.934),
			},
		],
	},
	{
		name = "WorldIntroC31c1_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldIntroC31c1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldIntroC31c1Mechanic,
				followup = RThen("gambler", "WorldIntroC31c2", null, -7.301),
			},
		],
	},
	{
		name = "WorldIntroC31d2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldIntroC31d2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldIntroC31d2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "WorldIntroC31e2a_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldIntroC31e2a],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldIntroC31e2aMechanic,
				followup = RThen("gambler", "WorldIntroC31e3a", null, -1.367),
			},
		],
	},
	{
		name = "WorldIntroC3f2_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldIntroC3f2],
			[IsCsgo_sas],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldIntroC3f2Mechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "WorldIntroC31g1_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldIntroC31g1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldIntroC31g1Mechanic,
				followup = RThen("coach", "WorldIntroC31g2", null, -3.349),
			},
		],
	},
	{
		name = "PlayerCoverMeHeal_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotAlone],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCoverMeHealMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},
	{
		name = "PlayerCoverMeHealC1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotAlone],
			[IsWorldTalkCsgo_sas],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerCoverMeHealC1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},
	{
		name = "Player_LostCallC6M3_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.Player_LostCallC6M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AutoPlayerLostCall_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.AutoPlayerLostCallMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChainsaw_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsChainsaw],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedChainsawMechanic,
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
		name = "SurvivorSpottedChainsawAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsChainsaw],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedChainsawMechanic,
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
		name = "SurvivorSpottedcricket_bat_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscricket_bat],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedcricket_batMechanic,
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
		name = "SurvivorSpottedcricket_batAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscricket_bat],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedcricket_batMechanic,
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
		name = "SurvivorSpottedcrowbar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscrowbar],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedcrowbarMechanic,
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
		name = "SurvivorSpottedcrowbarAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscrowbar],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedcrowbarMechanic,
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
		name = "SurvivorSpottedGolfClub_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGolfClubMechanic,
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
		name = "SurvivorSpottedGolfClubAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGolfClubMechanic,
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
		name = "SurvivorSpottedGuitar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGuitar],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGuitarMechanic,
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
		name = "SurvivorSpottedGuitarAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGuitar],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGuitarMechanic,
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
		name = "SurvivorSpottedKatana_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsKatana],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedKatanaMechanic,
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
		name = "SurvivorSpottedKatanaAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKatana],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedKatanaMechanic,
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
		name = "SurvivorSpottedLaserSights_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsLaserSights],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedLaserSightsMechanic,
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
		name = "SurvivorSpottedLaserSightsAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsLaserSights],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedLaserSightsMechanic,
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
		name = "SurvivorBotPickupLaserSightsSpotted_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotIsAvailable],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsNotInStartArea],
			[IsNotSaidSpotWeapons],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedLaserSightsMechanic,
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
		name = "SurvivorSpottedM60_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedM60Mechanic,
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
		name = "SurvivorSpottedM60Auto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedM60Mechanic,
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
		name = "SurvivorSpottedMachete_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMachete],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMacheteMechanic,
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
		name = "SurvivorSpottedMacheteAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMachete],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMacheteMechanic,
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
		name = "SurvivorSpottedMagnum_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMagnum],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedMagnumAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMagnum],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedSecondPistol_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSecondPistol],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedSecondPistolAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSecondPistol],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedtonfa_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Istonfa],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedtonfaMechanic,
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
		name = "SurvivorSpottedtonfaAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Istonfa],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedtonfaMechanic,
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
		name = "SurvivorSpottedAutoShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsAutoShotgun],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedAutoShotgunAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsAutoShotgun],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedPumpShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPumpShotgun],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedPumpShotgunAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPumpShotgun],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedShotgun_Chrome_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_Chrome],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedShotgun_spas_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_spas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedShotgun_spasAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_spas],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedShotgunMechanic,
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
		name = "SurvivorSpottedSMG_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSMG],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedSMGAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSMG],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedSMG_silenced_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_silenced],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedSMG_silencedAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_silenced],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedMP5SMG_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSMG_mp5],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedMP5SMGAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSMG_mp5],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedSMGMechanic,
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
		name = "SurvivorSpottedHuntingRifle_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsHuntingRifle],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHuntingRifleMechanic,
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
		name = "SurvivorSpottedHuntingRifleAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsHuntingRifle],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedHuntingRifleMechanic,
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
		name = "SurvivorSpottedRifle_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifleAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_AK47_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_AK47],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_AK47Auto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_AK47],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_desert_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_desert],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_desertAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_desert],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_SG552_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_sg552],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedRifle_SG552Auto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_sg552],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedMilitarySniper_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_military],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedMilitarySniperAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_military],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedScoutSniper_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_scout],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedScoutSniperAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_scout],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedAWPSniper_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_awp],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedAWPSniperAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_awp],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedBaseBallBat_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Isbaseball_bat],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedBaseBallBatAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Isbaseball_bat],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedFryingPan_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFryingPan],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedFryingPanAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFryingPan],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedAxe_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFireAxe],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedAxeAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFireAxe],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedShovel_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShovel],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedShovelAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShovel],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedPitchfork_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPitchfork],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedPitchforkAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPitchfork],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedKnife_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsKnife],
			[IsNotSmartLookAuto],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedKnifeAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKnife],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMeleeWeaponMechanic,
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
		name = "SurvivorSpottedOtherWeapon_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotOtherWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedWeaponMechanic,
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
		name = "SurvivorSpottedWeaponPistol_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedMagnumMechanic,
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
		name = "SurvivorSpottedShotgun_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCsgo_sas],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedShotgunMechanic,
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
		name = "C2M3AlarmOffNag_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_IsTracksOK],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m3_coasteroffMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 11.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3Chopper001_CSGO_SAS",
		criteria = 
		[
			[ConceptC2M3Chopper001],
			[IsCsgo_sas],
			[IsTalk],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C2M3Chopper001Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedBikerClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
			[IsSubjectDistNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBikerCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedBikerClose2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
			[IsSubjectDistNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedBikerCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedManagerClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
			[IsSubjectDistNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedManagerCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedManagerClose2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
			[IsSubjectDistNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedManagerCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedNamVetClose2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
			[IsSubjectDistNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedNamVetClose2Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedNamVetClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
			[IsSubjectDistNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedNamVetClose2Mechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedNamVetFar_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
			[IsSubjectDistFar400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedNamVetFarMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedTeenGirlClose_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsTeenGirl],
			[IsSubjectDistNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedTeenGirlCloseMechanic,
			},
		],
	},
	{
		name = "SurvivorSpottedTeenGirlClose2_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[SubjectIsTeenGirl],
			[IsSubjectDistNear400],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedTeenGirlCloseMechanic,
			},
		],
	},
	{
		name = "C13M1IntroStart_CSGO_SAS",
		criteria = 
		[
			[ConceptIntroC13M1],
			[IsCsgo_sas],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M1IntroStartMechanic,
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
		name = "C13M1Intro2_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M1Intro2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[C13M1Csgo_sasNotPanicking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M1Intro2Mechanic,
				followup = RThenAny("C13M1Intro3", 0.1),
			},
		],
	},
	{
		name = "C13M1Intro3_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M1Intro3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[C13M1Csgo_sasNotPanicking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M1Intro3Mechanic,
				followup = RThenAny("C13M1IntroLast", 0.1),
			},
		],
	},
	{
		name = "C13M1IntroLast_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M1IntroLast],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[C13M1Csgo_sasNotPanicking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M1IntroLastMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "C13M1IntroLocationLast_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M1IntroLocationLast],
			[IsCsgo_sas],
			[C13M1Csgo_sasNotPanicking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M1IntroLocationLastMechanic,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},
	{
		name = "RemarkC13M1UpHill_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M1UpHill],
			[IsNotRemarkedC13M1UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_uphillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1DownHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M1DownHere],
			[IsNotRemarkedC13M1DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1ThroughHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M1ThroughHere],
			[IsNotRemarkedC13M1ThroughHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.RemarkC13M1ThroughHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1ThroughWindow_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M1ThroughWindow],
			[IsNotRemarkedC13M1ThroughWindow],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc2m1_throughwindowMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1UpSteps_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M1UpSteps],
			[IsNotRemarkedC13M1UpSteps],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_UpTheStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpSteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1CrossHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M1CrossHere],
			[IsNotRemarkedC13M1CrossHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_AcrossHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1CrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1PreBunkerOpen_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M1PreBunkerOpen],
			[IsNotRemarkedC13M1PreBunkerOpen],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.RemarkC13M1PreBunkerOpenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1PreBunkerOpen", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M1OpeningBunker_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M1OpeningBunker],
			[IsCsgo_sas],
			[IsNotC13M1OpeningBunker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerC3M2OpenDoor2Mechanic,
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
		name = "RemarkC13M2UpHill_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M2UpHill],
			[IsNotRemarkedC13M2UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.RemarkC13M2UpHillMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2DownHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M2DownHere],
			[IsNotRemarkedC13M2DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2UpLadder_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M2UpLadder],
			[IsNotRemarkedC13M2UpLadder],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkc5m3upladderMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2UpStairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M2UpStairs],
			[IsNotRemarkedC13M2UpStairs],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_UpTheStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2TankApproaching_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M2TankApproaching],
			[IsCsgo_sas],
			[IsNotNoticedC13M2ShakingGround],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M2TankApproachingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "NoticedC13M2ShakingGround", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2BarrelsIgnited_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M2BarrelsIgnited],
			[IsCsgo_sas],
			[IsNotC13M2IgnitedBarrels],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M2BarrelsIgnitedMechanic,
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
		name = "C13M2Barrels1_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M2Barrels1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M2Barrels1Mechanic,
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
		name = "C13M2Barrels2_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M2Barrels2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M2Barrels2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M3DownHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsC13M3DownHere],
			[IsNotRemarkedC13M3DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkC1M3DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3ApproachingTanker_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M3ApproachingTanker],
			[IsCsgo_sas],
			[IsNotSawC13M3Tanker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M3ApproachingTankerMechanic,
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
		name = "C13M3Tanker1_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M3Tanker1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M3Tanker1Mechanic,
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
		name = "C13M3Tanker2_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M3Tanker2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M3Tanker2Mechanic,
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
		name = "C13M3Tanker3_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M3Tanker3],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M3Tanker3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3OnScaffold_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M3OnScaffold],
			[IsCsgo_sas],
			[IsNotOnC13M3Scaffold],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC1M2DownStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "OnC13M3Scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Airstrike_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M3Airstrike],
			[IsCsgo_sas],
			[IsNotWitnissedC13M3Airstrike],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M3AirstrikeMechanic,
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
		name = "C13M3Airstrike2_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M3Airstrike2],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M3Airstrike2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4Button1_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M4Button1],
			[IsCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4Button1Mechanic,
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
		name = "C13M4FinaleTriggered_CSGO_SAS",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsCsgo_sas],
			[ismapc13m4_cutthroatcreek],
			[IsTriggeredByCsgo_sas],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4FinaleTriggeredMechanic,
				followup = RThen("orator", "C13M4FinaleStart", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TalkingCsgo_sas", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4FinaleStart2_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M4FinaleStart2],
			[IsCsgo_sas],
			[_auto_IsTalkingCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4FinaleStart2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4DownCreek_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M4DownCreek],
			[IsCsgo_sas],
			[IsNotInC13M4Creek],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4DownCreekMechanic,
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
		name = "C13M4InSmoke_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M4InSmoke],
			[IsCsgo_sas],
			[IsNotInC13M4Smoke],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorCoughingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 3.0 },
			c2 = { context = "InC13M4Smoke", value = 1, duration = 0.0 },
		},
	},
	{
		name = "C13M4NoticedHelicopter_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M4NoticedHelicopter],
			[IsCsgo_sas],
			[IsNotNoticedC13M4Helicopter],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4NoticedHelicopterMechanic,
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
		name = "C13M4AlmostThere_CSGO_SAS",
		criteria = 
		[
			[ConceptC13M4AlmostThere],
			[IsCsgo_sas],
			[IsNotC13M4AlmostThere],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4AlmostThereMechanic,
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
		name = "C13M4SpottedVehicle_CSGO_SAS",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsCsgo_sas],
			[ismapc13m4_cutthroatcreek],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4SpottedVehicleMechanic,
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
		name = "C13M4GetToVehicle_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4GetToVehicleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4InsideVehicle_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
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
			[_auto_NotTimerLockCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C13M4InsideVehicleMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockCsgo_sas", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryStart_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSrcGrp_CSGO_SASSTORYINIT],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_StoryWait", value = 1, duration = 0.0 },
			c2 = { context = "_auto_StoryGate", value = 1, duration = 60.0 },
			c3 = { context = "SrcGrp_CSGO_SASSTORYINIT", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SafeRoomStart_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
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
		name = "IntroEnd_CSGO_SAS",
		criteria = 
		[
			[ConceptIntroEnd],
			[IsCsgo_sas],
			[FromIsCsgo_sas],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "LeavingSafeArea_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsCsgo_sas],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
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
		name = "LeavingSafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCsgo_sas],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
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
		name = "FinaleTriggered_CSGO_SAS",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsCsgo_sas],
			[IsTriggeredByCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinalVehicleSpotted_CSGO_SAS",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsCsgo_sas],
			[_auto_IsFinaleStarted],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinalVehicleArrived_CSGO_SAS",
		criteria = 
		[
			[ConceptFinalVehicleArrived],
			[IsCsgo_sas],
			[_auto_HasSpottedVehicle],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Escape", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "L4D1PlayerNiceShot_CSGO_SAS",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeaking],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotMechanic,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotFrancis_CSGO_SAS",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotFrancisMechanic,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouis_CSGO_SAS",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotLouisMechanic,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoey_CSGO_SAS",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1PlayerNiceShotZoeyMechanic,
			},
		],
	},
	{
		name = "C6M3GasPour_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			[isC6M3_Port],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3GasPourMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "C6M1_IntotheparkNoHealth_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1_IntotheparkNoHealthMechanic,
			},
		],
	},
	{
		name = "C6M1Intro_01a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_01a],
			[IsCsgo_sas],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_01aMechanic,
				followup = RThen("Biker", "C6M1Intro_01b", null, -6.365),
			},
		],
	},
	{
		name = "C6M1Intro_01Biker02_CSGO_SAS",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsCsgo_sas],
			[IsFrancisIntroActor],
			[IsNotSaidIntroScene],
			[FrancisGroup2],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_01Biker02Mechanic,
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
		name = "C6M1Intro_01c_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_01c],
			[IsCsgo_sas],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_01cMechanic,
				followup = RThen("Biker", "C6M1Intro_01d", null, -0.982),
			},
		],
	},
	{
		name = "C6M1Intro_01TeenGirl04_CSGO_SAS",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsCsgo_sas],
			[IsZoeyIntroActor],
			[IsNotSaidIntroScene],
			[MoreThan60],
			[LessThan100],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_01TeenGirl04Mechanic,
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
		name = "C6M1Intro_02a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_02a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_02aMechanic,
				followup = RThen("Biker", "C6M1Intro_02b", null, -4.221),
			},
		],
	},
	{
		name = "C6M1Intro_11a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_11a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_11aMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_11b", null, -5.419),
			},
		],
	},
	{
		name = "C6M1Intro_11c_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_11c],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_11cMechanic,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
	},
	{
		name = "C6M1Intro_12b_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_12b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_12bMechanic,
				followup = RThen("Producer", "C6M1Intro_12c", null, -4.691),
			},
		],
	},
	{
		name = "C6M1Intro_13a_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_13a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_13aMechanic,
				followup = RThen("Coach", "C6M1Intro_13b", null, -14.217),
			},
		],
	},
	{
		name = "C6M1Intro_13c_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_13c],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_13cMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_13d", null, -3.537),
			},
		],
	},
	{
		name = "C6M1Intro_13f_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_13f],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_13fMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1Intro_23b_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_23b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_23bMechanic,
				followup = RThen("TeenGirl", "C6M1Intro_23c", null, -7.488),
			},
		],
	},
	{
		name = "C6M1Intro_23d_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_23d],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_23dMechanic,
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
		name = "C6M1Intro_24c_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_24c],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_24cMechanic,
				followup = RThen("Biker", "C6M1Intro_24d", null, -2.841),
			},
		],
	},
	{
		name = "C6M1Intro_24e_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M1Intro_24e],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M1Intro_24eMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "LeavingC6M1Start_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.LeavingC6M1StartMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "LeftC6M1Start", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemWorldC6M1_WeddingWarn02_CSGO_SAS",
		criteria = 
		[
			[ConceptRemWorldC6M1_WeddingWarn02],
			[IsCsgo_sas],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.RemWorldC6M1_WeddingWarn02Mechanic,
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
		name = "WorldC6M1_WeddingWarn03a_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M1_WeddingWarn03aMechanic,
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
		name = "C6M2_OpenGate1_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2_OpenGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2_OpenGate1b_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2_OpenGate1b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2_OpenGate1bMechanic,
			},
		],
	},
	{
		name = "C6M2_OpenGate1Blame_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsCsgo_sas],
			[IsGamblerNear800Weight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2_OpenGate1BlameMechanic,
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
		name = "C6M2_OpenGate2_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2_OpenGate2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Said:OpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2LeavingSafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsCsgo_sas],
			[IsNotSaidC6M2LeavingSafeRoom],
			[isc6m2_bedlam],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M2LeavingSafeRoomMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2LeavingSafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2SafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C6M2SafeRoomMechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo02a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo02a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo02aMechanic,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo02b", null, -3.509),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo03_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCsgo_sas],
			[IsFrancisIntroActor],
			[FrancisGroup1],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo03Mechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo03b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo03b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo03bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo03c", null, -16.18),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo06_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCsgo_sas],
			[IsZoeyIntroActor],
			[ZoeyGroup1],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo06Mechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo08_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCsgo_sas],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo08Mechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo11a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo11a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo11aMechanic,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo11b", null, -4.069),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo14bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo14c", null, -2.922),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCsgo_sas],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo15Mechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo16b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo16bMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo16c", null, -1.763),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16b1_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16b1],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo16b1Mechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo16e", null, -1.763),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16d_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16d],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo16dMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16f_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16f],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo16fMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo17_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCsgo_sas],
			[IsZoeyIntroActor],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo17Mechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo17a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo17a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo17aMechanic,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo17b", null, -7.751),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo18bMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo18c", null, -2.705),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo19aMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo19b", null, -2.249),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19c],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo19cMechanic,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo19d", null, -6.193),
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19e_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19e],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo19eMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo20_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsCsgo_sas],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo20Mechanic,
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
		name = "DLC1_C6M2_SafeRoomConvo21b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo21b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M2_SafeRoomConvo21bMechanic,
			},
		],
	},
	{
		name = "WorldC6M2_FinalWater01b_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M2_FinalWater01b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M2_FinalWater01bMechanic,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer101a_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101a],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M2_InSewer101aMechanic,
				followup = RThen("Gambler", "WorldC6M2_InSewer101c", null, -0.999),
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk102b_CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk102b],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M2_OnTourWalk102bMechanic,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo03b__CSGO_SAS",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo03b_],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WorldC6M2_Tattoo03b_Mechanic,
			},
		],
	},
	{
		name = "C6M3_BridgeDown_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_BridgeDownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_BridgeGettoCar_CSGO_SAS",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsCsgo_sas],
			[IsNotSaidGetToCar],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_BridgeGettoCarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevator_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsCsgo_sas],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_elevatorMechanic,
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
		name = "C6M3_elevatorZoey_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C6M3_elevatorZoeyMechanic,
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
		name = "C6M3_GivenItemBiker_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorBiker],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_GivenItemBikerMechanic,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirl_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsCsgo_sas],
			[IsDonorTeenGirl],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_GivenItemTeenGirlMechanic,
			},
		],
	},
	{
		name = "C6M3SafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsCsgo_sas],
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
				func = Custom_Talker_CSGO_SAS.C6M3SafeRoomMechanic,
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
		name = "DLC1_C6M3_SafeRoomConvo01a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo01a],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo01aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo01b", null, -7.373),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo01c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo01c],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo01cMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02e_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02e],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo02eMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03a],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo03aMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo03b", null, -1.144),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo03c],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo03cMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo03d", null, -1.799),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04a],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo04aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo04b", null, -3.659),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04d_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo04d],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo04dMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo05a],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo05aMechanic,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo05b", null, -2.546),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo06_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsCsgo_sas],
			[IsNotSaidC6M3SafeRoom2],
			[IsFrancisIntroActor],
			[FrancisGroup4],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo06Mechanic,
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
		name = "DLC1_C6M3_SafeRoomConvo06b_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo06b],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo06bMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo07a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo07a],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo07aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo07b", null, -2.804),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo07c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo07c],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo07cMechanic,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08a],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08aMechanic,
				followup = RThen("Coach", "DLC1_C6M3_SafeRoomConvo08b", null, -1.669),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08c_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08c],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08cMechanic,
				followup = RThen("Csgo_sas", "DLC1_C6M3_SafeRoomConvo08d", null, -0.936),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08d_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08d],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08dMechanic,
				followup = RThen("Csgo_sas", "DLC1_C6M3_SafeRoomConvo08f", null, -1.479),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08e_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08e],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08eMechanic,
				followup = RThen("Csgo_sas", "DLC1_C6M3_SafeRoomConvo08f", null, -2.608),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08f_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08f],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo08fMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo08g", null, -5.514),
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo09a_CSGO_SAS",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo09a],
			[IsCsgo_sas],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.DLC1_C6M3_SafeRoomConvo09aMechanic,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo09b", null, -13.536),
			},
		],
	},
	{
		name = "IncapBounce_CSGO_SAS",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsCsgo_sas],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.IncapBounceMechanic,
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
		name = "C6M3_CansDone_CSGO_SAS",
		criteria = 
		[
			[Conceptc6m3escapeready],
			[IsCsgo_sas],
			[IsC6M3_Port],
			[IsNotSaidc6m3escapeready],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_CansDoneMechanic,
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
		name = "L4D1AlsoSpottedTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerAlsoWarnTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1AlsoSpottedTankMechanic,
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
		name = "L4D1SpottedTank_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Isc6m3_port],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.L4D1SpottedTankMechanic,
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
		name = "SurvivorSpottedFallen_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedFallenMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWitchChasingC6M1_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsCsgo_sas],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidCsgo_sasWitchChasing],
			[IsSaidCsgo_sasWitchAttacking],
			[isc6m1_riverbank],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerWitchChasingC6M1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCsgo_sasWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkCsgo_sas", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerRemarkremark_MidnightRidersBus_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkremark_MidnightRidersBusMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_AcrossHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyBelow_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_AlleyBelowMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuilding_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_AlleyIntoBuildingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_InApts_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_InAptsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_Intothepark_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_Intothepark],
			[IsNotSaidWorldC6M1_Intothepark],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_IntotheparkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_Intothepark", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoThePark2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_IntoThePark2],
			[IsNotSaidWorldC6M1_IntoThePark2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_IntoThePark2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_IntoThePark2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoTheStore_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_IntoTheStoreMechanic,
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
		name = "PlayerRemarkWorldC6M1_PostWedding_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_PostWeddingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_PostWeddingZ_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[IsZoeyIntroActor],
			[ZoeyGroup1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_PostWeddingZMechanic,
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
		name = "PlayerRemarkWorldC6M1_PostWeddingZC_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[IsZoeyIntroActor],
			[ZoeyGroup2],
			[IsCoachNear800Weight0],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_PostWeddingZCMechanic,
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
		name = "PlayerRemarkWorldC6M1_SafeRoomAlley_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_SafeRoomAlleyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_ThroughBar_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_ThroughBarMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_UpHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_UpTheStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_UpTheStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_WeddingWarnMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_WeddingWarn1Mechanic,
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
		name = "PlayerRemarkWorldC6M1_WeddingWarn2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_WeddingWarn2Mechanic,
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
		name = "PlayerRemarkWorldC6M1_WeddingWarn3_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M1_WeddingWarn3Mechanic,
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
		name = "PlayerRemarkWorldC6M2_AcrossPlank_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear250],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_AcrossPlankMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_AfterGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_AfterGate2Mechanic,
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
		name = "PlayerRemarkWorldC6M2_DownHere_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_DownHereMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuilding_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_DownIntoBuildingMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalLadder_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_FinalLadderMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWater_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_FinalWaterMechanic,
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
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGo_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_FinalWaterGoGoMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InJazzClub_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear1000],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_InJazzClubMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_InSewer2],
			[IsNotSaidWorldC6M2_InSewer2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsSaidWorldC6M2_InSewer1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_InSewer2Mechanic,
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
		name = "PlayerRemarkWorldC6M2_InSewerLadder1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_InSewerLadder1Mechanic,
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
		name = "PlayerRemarkWorldC6M2_IntoConstruction_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_IntoConstructionMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHall_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_IntoPoolHallMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JukeBox_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_JukeBoxMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JumpDown_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_JumpDownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_OnTourWalk2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_OnTourWalk3],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_OnTourWalk3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate1_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_OpenGate1Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_OpenGate2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_Phase2Mechanic,
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
		name = "PlayerRemarkWorldC6M2_Phase2Down_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_Phase2DownMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntense_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IntensityOver75],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_Phase2DownIntenseMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_PostGate1x_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_PostGate1xMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_SafeRoom_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_SafeRoom],
			[IsNotSaidWorldC6M2_SafeRoom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear800],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_SafeRoomMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Tattoo_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_Tattoo],
			[IsNotSaidWorldC6M2_Tattoo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_TattooMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Tattoo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TourEntrance_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_TourEntranceMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpCatWalk_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_UpCatWalkMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_UpStairsMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs2_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M2_UpStairs2Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_BridgeRun_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M3_BridgeRunMechanic,
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
		name = "PlayerRemarkWorldC6M3_ByBridge_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[IsSaidFinalVehicleArrived],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldC6M3_ByBridgeMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldFootLocker_CSGO_SAS",
		criteria = 
		[
			[ConceptRemark],
			[IsCsgo_sas],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.PlayerRemarkWorldFootLockerMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_PourFinished_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C6M3_PourFinishedMechanic,
				followup = RThen("Manager", "L4D1_NiceJobPour", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorNearFinaleC6M3_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotIncapacitated],
			[IsWorldTalkCsgo_sas],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorNearFinaleC6M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupGolfCLub_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[Csgo_sasNotPickedUpItem],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupGolfCLubMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Csgo_sasPickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupM60_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[Csgo_sasNotPickedUpItem],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorPickupM60Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "Csgo_sasPickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "WeddingWitchDead04_CSGO_SAS",
		criteria = 
		[
			[ConceptWeddingWitchDead04],
			[IsCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.WeddingWitchDead04Mechanic,
			},
		],
	},
	{
		name = "Player_LostCallC6M3_CSGO_SAS",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsCsgo_sas],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Player_LostCallC6M3Mechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGolfClub_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGolfClubMechanic,
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
		name = "SurvivorSpottedGolfClubAuto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedGolfClubAutoMechanic,
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
		name = "SurvivorSpottedM60_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkCsgo_sas],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedM60Mechanic,
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
		name = "SurvivorSpottedM60Auto_CSGO_SAS",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsCsgo_sas],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.SurvivorSpottedM60AutoMechanic,
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
		name = "C1M2InsideGunShop_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M2InsideGunShop],
			[PanicEventCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M2InsideGunShopMechanic,
				followup = RThen("csgo_sas", "C1M2InsideGunShop2", null, 0.0),
			},
		],
	},
	{
		name = "C1M3AlarmOffOrator_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M3AlarmOff],
			[PanicEventCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M3AlarmOffOratorMechanic,
				followup = RThen("csgo_sas", "C1M3AlarmOff2", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M3BrokeWindowOrator_CSGO_SAS",
		criteria = 
		[
			[ConceptC1M3BrokeWindow],
			[PanicEventCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.C1M3BrokeWindowOratorMechanic,
				followup = RThen("csgo_sas", "C1M3AlarmActive", null, 0.0),
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
		name = "HitCraneButton_CSGO_SAS",
		criteria = 
		[
			[ConceptAirport02CraneStarted],
			[PanicEventCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.HitCraneButtonMechanic,
				followup = RThen("Csgo_sas", "airport02_creshendoCrane", null, 0.01),
			},
		],
	},
	{
		name = "Airport03FireStarted_CSGO_SAS",
		criteria = 
		[
			[ConceptAirport03FireStarted],
			[PanicEventCsgo_sas],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.Airport03FireStartedMechanic,
				followup = RThen("Csgo_sas", "Airport03FireStartedX", null, 0.01),
			},
		],
	},
	{
		name = "FinaleSceneTriggerZoey_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsCsgo_sas],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsZoeyIntroActor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.FinaleSceneTriggerZoeyMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 28.0 },
			c3 = { context = "SaidCsgo_sasBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndCsgo_sasBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinaleSceneTriggerFrancis_CSGO_SAS",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsCsgo_sas],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsFrancisIntroActor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_CSGO_SAS.FinaleSceneTriggerFrancisMechanic,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 29.0 },
			c3 = { context = "SaidCsgo_sasBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndCsgo_sasBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
];

rr_ProcessRules(csgo_sas_rules);
