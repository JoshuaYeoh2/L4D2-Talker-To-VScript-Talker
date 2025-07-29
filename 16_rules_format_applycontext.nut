local replica_soldier_rules = 
[
	{
		name = "C1M1InSmokeReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsSaidC1M1InSmoke],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M1InSmokeReplica,
				followup = RThenAny("C1M1Cough", -0.584), // [Coughing from smoke]
			},
		],
	},
	{
		name = "C1M3AlarmOffReplica",
		criteria = 
		[
			[ConceptC1M3AlarmOff2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M3AlarmOffReplica,
				followup = RThenAny("C1M3AlarmOffa", 0.5), // Got it!
			},
		],
	},
	{
		name = "C1M3AlarmActiveReplica",
		criteria = 
		[
			[ConceptC1M3AlarmActive],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M3AlarmActiveReplica,
			},
		],
	},
	{
		name = "C4M3SaferoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.C4M3SaferoomReplica,
				followup = RThenAny("_c4m3_startsafe02", 0.01), // Allright, people. Everybody got a can?
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "L4D1PlayerNiceShotFrancisReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsBiker],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotFrancisReplica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotFrancisC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsC6M3_Port],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotFrancisC6M3Replica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsManager],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotLouisReplica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsC6M3_Port],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotLouisC6M3Replica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsTeenGirl],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotZoeyReplica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsC6M3_Port],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotZoeyReplica,
			},
		],
	},
	{
		name = "PlayerNiceShotReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNiceShotReplica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotGambler],
			[SubjectIsNotMechanic],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNiceShotReplica,
			},
		],
	},
	{
		name = "PlayerNiceShotGamblerReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			[SubjectIsGambler],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNiceShotGamblerReplica,
			},
		],
	},
	{
		name = "PlayerNiceShotMechanicReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			[SubjectIsMechanic],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNiceShotMechanicReplica,
			},
		],
	},
	{
		name = "PlayerNiceShotProducerReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			[SubjectIsProducer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNiceShotProducerReplica,
			},
		],
	},
	{
		name = "SurvivorMournGamblerReplica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorMournGamblerReplica,
			},
		],
	},
	{
		name = "SurvivorMournGamblerC1Replica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorMournGamblerC1Replica,
			},
		],
	},
	{
		name = "SurvivorMournMechanicReplica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadMechanic],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorMournMechanicReplica,
			},
		],
	},
	{
		name = "SurvivorMournMechanicC1Replica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadMechanic],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorMournMechanicC1Replica,
			},
		],
	},
	{
		name = "SurvivorMournProducerReplica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorMournProducerReplica,
			},
		],
	},
	{
		name = "SurvivorMournProducerC1Replica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorMournProducerC1Replica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloStartAllAliveReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHelloStartAllAliveReplica,
				followup = RThen("mechanic", "_C1M1_ElevatorHello05c", null, -5.262), // So. Pleased to meet you. You can call me Replica. What's your name?
			},
		],
	},
	{
		name = "C1M1_ElevatorHelloStart3AliveReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithOnlyThree],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M1_ElevatorHelloStart3AliveReplica,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName1", 0.1), // 5.916 There we go. Most people call me Replica. And we're gonna be okay. Just gotta keep our heads.
			},
		],
		applycontext =
		{
			c1 = { context = "ReplicaIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M1_ElevatorHelloStart3AliveEReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithOnlyThree],
			[IsMechanicNotAlive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M1_ElevatorHelloStart3AliveEReplica,
				followup = RThenAny("_C1M1_ElevatorHello3AliveExtra1", 0.1), // Ahh damnit, I can't take losing anymore people.
			},
		],
	},
	{
		name = "C1M1_ElevatorHelloStart2AliveReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithTwo],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M1_ElevatorHelloStart2AliveReplica,
				followup = RThenAny("_C1M1_ElevatorHello2AliveName2", -5.262), // So. Pleased to meet you. You can call me Replica. What's your name?
			},
		],
	},
	{
		name = "C1M1_ElevatorHelloStart2AliveRReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithTwo],
			[IsProducerAlive],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M1_ElevatorHelloStart2AliveRReplica,
				followup = RThen("producer", "_C1M1_ElevatorHello2AliveName2", null, -7.056), // My name's Replica. I don't like bein' here any more than you do-but if we gotta fight, we might as well fight together.
			},
		],
	},
	{
		name = "C3M1FerryInTransitReplica",
		criteria = 
		[
			[ConceptC3M1FerryInTransit],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC3M1FerryInTransit],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M1FerryInTransitReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryInTransit", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Playerc1m1_enter_elevatorReplica",
		criteria = 
		[
			[Conceptc1m1_enter_elevator],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidc1m1_enter_elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Playerc1m1_enter_elevatorReplica,
				followup = RThen("self", "C1M1ElevatorRules", null, 0.1), // I don't think you're supposed to use an elevator when the buildin's on fire.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_enter_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "Playerc1m1_elevator_pushbuttonReplica",
		criteria = 
		[
			[Conceptc1m1_elevator_pushbutton],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidc1m1_elevator_pushbutton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Playerc1m1_elevator_pushbuttonReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_elevator_pushbutton", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M1ElevatorRulesReplica",
		criteria = 
		[
			[ConceptC1M1ElevatorRules],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M1ElevatorRulesReplica,
			},
		],
	},
	{
		name = "PlayerRemarkC1M2PreAlarmDoorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2PreStoreAlarm],
			[IsNotSaidWorldC1M2PreStoreAlarm],
			[IsNotSaidC1M2AlarmSetoff],
			[IsTalk],
			[IsTalkReplica],
			[IsTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M2PreAlarmDoorReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2PreStoreAlarm", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M2AlarmDoor2Replica",
		criteria = 
		[
			[ConceptC1M2AlarmDoor2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsTalkReplica],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M2AlarmDoor2Replica,
				followup = RThen("orator", "C1M2StoreAlarm", null, 0.3), // Let's go people.
			},
		],
	},
	{
		name = "PlayerRemarkC1M2PostAlarmDoorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkC1M2PostAlarmDoorReplica,
				followup = RThen("orator", "C1M2WhitakerErrandInProgress", null, 1.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "C1M2AlarmSetOff", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC1M2GrabbingColaReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_NotSaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC1M2GrabbingColaReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2GrabbingCola2", value = 1, duration = 5.0 },
			c2 = { context = "_auto_SaidC1M2GrabbedCola", value = 1, duration = 0.0 },
			c3 = { context = "Talk", value = 1, duration = 3.235 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC1M2GrabbingCola2Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_SaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC1M2GrabbingCola2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2GrabbingCola2", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 3.235 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC1M2FirstOutsideResponseReplica",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse],
			[IsReplica],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC1M2FirstOutsideResponseReplica,
				followup = RThen("orator", "C1M2FirstOutsideResponse3", null, -4.417), // Well man-I'll get you your drinks, but you better help us.
			},
		],
	},
	{
		name = "PlayerC1M2FirstOutsideResponse3aReplica",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse3a],
			[IsReplica],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC1M2FirstOutsideResponse3aReplica,
				followup = RThen("orator", "Whitaker.Nags", null, 10.0), // 
			},
		],
	},
	{
		name = "C1M2FirstOutsideResponse8aReplica",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse8a],
			[IsReplica],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M2FirstOutsideResponse8aReplica,
				followup = RThen("orator", "C1M2FirstOutsideResponse8b", null, 0.0), // Cola and nuts? Could go for some myself. Better not be diet cola. Because that I will not do.
			},
		],
	},
	{
		name = "C1M2FirstOutsideResponse8bReplica",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse8b],
			[IsReplica],
			[FromIsGambler],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M2FirstOutsideResponse8bReplica,
				followup = RThen("orator", "C1M2FirstOutsideResponse8c", null, 0.0), // Nick, don't give me that look. Cola and nuts might be this man's last meal, we can't deny him that. We get him his snacks, he helps us. I'm good with it.
			},
		],
	},
	{
		name = "PlayerC1M2InsideGunShop2Replica",
		criteria = 
		[
			[ConceptC1M2InsideGunShop2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC1M2InsideGunShop],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC1M2InsideGunShop2Replica,
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
		name = "PlayerC3M1CallFerry2Replica",
		criteria = 
		[
			[ConceptC3M1CallFerry2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsReplicaActor],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC3M1CallFerry2Replica,
				followup = RThenAny("C3M1FerryInTransit", 25.0), // Get ready, callin' the boat.
			},
		],
	},
	{
		name = "PlayerC3M1FerryLandedIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[C3M1Ferry],
			[IsNotIncapacitated],
			[NotInCombat],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC3M1FerryLandedIdleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC3M1FerryLaunched2aReplica",
		criteria = 
		[
			[ConceptC3M1FerryLaunched2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC3M1FerryLaunched2aReplica,
			},
		],
	},
	{
		name = "PlayerC3M2ComingHomeReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSafeSpotAhead],
			[IsSaidC3M2Village1],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC3M2ComingHomeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerC3M2OpenDoor2Replica",
		criteria = 
		[
			[ConceptC3M2OpenDoor2],
			[IsReplica],
			[IsTalkReplica],
			[IsReplicaActor],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerC3M2OpenDoor2Replica,
			},
		],
	},
	{
		name = "Playerc5m4floatstart2Replica",
		criteria = 
		[
			[Conceptc5m4floatstart2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Playerc5m4floatstart2Replica,
			},
		],
	},
	{
		name = "PlayercoachcoachesReplica",
		criteria = 
		[
			[Conceptreplicareplicaes],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			[IsHealthyHalf],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayercoachcoachesReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidreplicareplicaes", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayercoachcoachesGamblerReplica",
		criteria = 
		[
			[Conceptreplicareplicaes],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[IsHealthyHalf],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayercoachcoachesGamblerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidreplicareplicaes", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayercoachcoachesMechanicReplica",
		criteria = 
		[
			[Conceptreplicareplicaes],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			[FromIsMechanic],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[IsHealthyHalf],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayercoachcoachesMechanicReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidreplicareplicaes", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayercoachcoachesProducerReplica",
		criteria = 
		[
			[Conceptreplicareplicaes],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[IsHealthyHalf],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayercoachcoachesProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidreplicareplicaes", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerintroC1M1Replica",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerintroC1M1Replica,
				followup = RThenAny("_introc1m1", 4.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerintroC1M1AloneReplica",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[IsAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerintroC1M1AloneReplica,
				followup = RThen("self", "_introc1m1a03", null, 4.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WhitakerC1M2DeliverColaReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
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
				func = Custom_Talker_Replica.WhitakerC1M2DeliverColaReplica,
				followup = RThen("orator", "whitakerputcola", null, 0.0), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "C1M2AlarmSetOff", value = 3, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerPlayerUsingColaBottlesReplica",
		criteria = 
		[
			[ConceptPlayerUsingColaBottles],
			[IsReplica],
			[IsNotSaidPlayerUsingColaBottles],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerUsingColaBottles", value = 1, duration = 20.0 },
			c2 = { context = "WhoPutCola", value = "Replica", duration = 35 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRelaxedSighReplica",
		criteria = 
		[
			[ConceptRelaxedSigh],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRelaxedSighReplica,
			},
		],
	},
	{
		name = "PlayerStayTogetherInsideReponseReplica",
		criteria = 
		[
			[ConceptStayTogetherInsideReponse],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidStayTogetherInsideReponse],
			[IsNotHealthySlow],
			[IsNotInSafeSpot],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerStayTogetherInsideReponseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidStayTogetherInsideReponse", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerUseAdrenalineReplica",
		criteria = 
		[
			[ConceptUseAdrenaline],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerUseAdrenalineReplica,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingA01Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingA01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldC3M1FerryCrossingA01Replica,
				followup = RThen("self", "WorldC3M1FerryCrossingD02", null, 0.1), // I normally stay the hell away from swamps on principle.  You remember that movie with that golfer that got his hand ate by a gator?  That shit's real.
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingD01Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingD01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldC3M1FerryCrossingD01Replica,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingD02Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingD02],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldC3M1FerryCrossingD02Replica,
			},
		],
	},
	{
		name = "_C3M1CrazyMilitantsReplica",
		criteria = 
		[
			[Concept_C3M1CrazyMilitants],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C3M1CrazyMilitantsReplica,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG01Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingG01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldC3M1FerryCrossingG01Replica,
				followup = RThenAny("WorldC3M1FerryCrossingG02", -4.832), // Though I walk through the valley of the shadow of death, I will fear no evil
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG03Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingG03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldC3M1FerryCrossingG03Replica,
				followup = RThen("gambler", "WorldC3M1FerryCrossingG04", null, -4.916), // Nick, we're goin into a swamp filled with zombies.  Y'all want me to lie to ya?
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingI03Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingI03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldC3M1FerryCrossingI03Replica,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingM5Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingM5],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldC3M1FerryCrossingM5Replica,
			},
		],
	},
	{
		name = "PlayerWorldC3M1Walkways2Replica",
		criteria = 
		[
			[ConceptWorldC3M1Walkways2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldC3M1Walkways2Replica,
			},
		],
	},
	{
		name = "PlayerWorldIntroC31Replica",
		criteria = 
		[
			[ConceptWorldIntroC31],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldIntroC31Replica,
				followup = RThen("mechanic", "WorldIntroC31g1", null, -3.271), // I can see their point.
			},
		],
	},
	{
		name = "ThanksGotItemReplica",
		criteria = 
		[
			[IsAwardConcept],
			[IsSharingSubject],
			[IsNotCoughing],
			[SubjectIsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
	},
	{
		name = "RescuedSurvivorReplica",
		criteria = 
		[
			[IsAwardConcept],
			[IsRescuer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.RescuedSurvivorReplica,
			},
		],
	},
	{
		name = "PlayerGivenItemReplica",
		criteria = 
		[
			[ConceptPlayerGivenItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGivenItemReplica,
			},
		],
	},
	{
		name = "ItemDonorProducerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ItemDonorProducerReplica,
				followup = RThen("producer", "YouAreWelcome", null, 0.0), // Can always count on you, Ro.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorMechanicReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorMechanic],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ItemDonorMechanicReplica,
				followup = RThen("mechanic", "YouAreWelcome", null, 0.0), // I owe you one, Ellis.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorGamblerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorGambler],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ItemDonorGamblerReplica,
				followup = RThen("gambler", "YouAreWelcome", null, 0.0), // Thanks, Nick, you're all right.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorBikerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorBiker],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ItemDonorBikerReplica,
				followup = RThen("biker", "YouAreWelcome", null, 0.0), // Thanks Francis!
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorTeenGirlReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorTeenGirl],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ItemDonorTeenGirlReplica,
				followup = RThen("teengirl", "YouAreWelcome", null, 0.0), // Thanks.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorManagerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorManager],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ItemDonorManagerReplica,
				followup = RThen("manager", "YouAreWelcome", null, 0.0), // Thanks.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ItemDonorNamVetReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorNamVet],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ItemDonorNamVetReplica,
				followup = RThen("namvet", "YouAreWelcome", null, 0.0), // Thanks.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedReplica",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsReplica],
			[IsIncappedStarted],
			[IsIncappedStarted2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ReviveMeInterruptedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedMajorReplica",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsReplica],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ReviveMeInterruptedMajorReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveMeInterruptedCriticalReplica",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsReplica],
			[IsIncappedLethargic],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ReviveMeInterruptedCriticalReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ReviveThanksReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ReviveThanksReplica,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksGamblerReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsGambler],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ReviveThanksGamblerReplica,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks, Nick, you're all right.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksMechanicReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsMechanic],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ReviveThanksMechanicReplica,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // I owe you one, Ellis.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksProducerReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ReviveThanksProducerReplica,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Can always count on you, Ro.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "ReviveThanksBikerReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsBiker],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ReviveThanksBikerReplica,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks Francis!
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "AutoYouAreWelcomeReplica",
		criteria = 
		[
			[ConceptYouWelcome],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.AutoYouAreWelcomeReplica,
			},
		],
	},
	{
		name = "BotPlayer_YourWelcomeReplica",
		criteria = 
		[
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.BotPlayer_YourWelcomeReplica,
			},
		],
	},
	{
		name = "BotReassureComingReplica",
		criteria = 
		[
			[ConceptSurvivorBotReassureComing],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.BotReassureComingReplica,
			},
		],
	},
	{
		name = "BotReassureNearbyReplica",
		criteria = 
		[
			[ConceptSurvivorBotReassureNearby],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.BotReassureNearbyReplica,
			},
		],
	},
	{
		name = "BotYesReadyReplica",
		criteria = 
		[
			[ConceptSurvivorBotYesReady],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.BotYesReadyReplica,
			},
		],
	},
	{
		name = "C1M2LeavingSafeRoomReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsReplica],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m2_streets],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M2LeavingSafeRoomReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.449 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M2SafeRoomb2Replica",
		criteria = 
		[
			[ConceptC1M2SafeRoomb2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M2SafeRoomb2Replica,
				followup = RThen("gambler", "C1M2SafeRoomb3", null, -2.896), // Mister... I don't think I like your attitude.
			},
		],
	},
	{
		name = "C1M2TankerAttackReplica",
		criteria = 
		[
			[ConceptC1M2TankerAttack2],
			[IsReplica],
			[WhoPutColaReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M2TankerAttackReplica,
				followup = RThen("orator", "C1M2GoodLuckGettingToTheMall", null, 3.0), // Barrier's down! Let's move, baby!
			},
		],
	},
	{
		name = "c1m4escapeReplica",
		criteria = 
		[
			[Conceptc1m4escape],
			[IsReplica],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m4escapeReplica,
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
		name = "c1m4escapeEllisReplica",
		criteria = 
		[
			[Conceptc1m4escape],
			[IsReplica],
			[NotSaidOutro],
			[IsMechanicAlive],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m4escapeEllisReplica,
				followup = RThen("mechanic", "c1m4escapeEllisCheck", null, 0.0), // 
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
		name = "c1m4escapeEllisSuccessReplica",
		criteria = 
		[
			[Conceptc1m4escapeEllisCheckSuccess],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m4escapeEllisSuccessReplica,
			},
		],
	},
	{
		name = "c1m4escapeEllisFailReplica",
		criteria = 
		[
			[Conceptc1m4escapeEllisCheckFail],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m4escapeReplica,
			},
		],
	},
	{
		name = "C1M4GasPourReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M4GasPourReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "C1M4PlayerGetToRescueVehicleReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
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
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M4PlayerGetToRescueVehicleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c1m4startelevatorReplica",
		criteria = 
		[
			[Conceptc1m4startelevator],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m4startelevatorReplica,
				followup = RThen("mechanic", "_c1m4startelevator2b", null, -7.101), // Alright, so...Getting' evac'd ain't happening. Anybody got an idea, now's the time.
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
		name = "C6M3GasPourReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[IsC6M3_Port],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3GasPourReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GasPourReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPourReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "FinaleStartC1M4Replica",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsReplica],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m4_atrium],
			[IsNotScavenge],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.FinaleStartC1M4Replica,
				followup = RThenAny("C1M4FinaleStartResponse", 0.3), // If we see a Jimmy Gibbs zombie. somebody else is gonna have to kill him.
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
		name = "GasPourDoneC1M4Replica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[ScoreDoneSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPourDoneC1M4Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2EntranceReplica",
		criteria = 
		[
			[Concept_C2M2Entrance],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2EntranceReplica,
			},
		],
	},
	{
		name = "C2M2CarouselIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[ismap_c2m2],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M2CarouselIdleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 13.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3RubbleNagIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTeamNearCoaster],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_IsCoasterExpo],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M3RubbleNagIdleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.026 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c3 = { context = "_auto_TimerLockReplica", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M2SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.C2M2SafeRoomReplica,
				followup = RThenAny("_C2M2_Riders02", 0.1), // Hey, the Midnight Riders! I used to LOVE that band. Best pyrotechnics in the business.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_Riders01Replica",
		criteria = 
		[
			[Concept_C2M2_Riders01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M2SafeRoomReplica,
			},
		],
	},
	{
		name = "_C2M2_Riders04Replica",
		criteria = 
		[
			[Concept_C2M2_Riders04],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_Riders04Replica,
				followup = RThenAny("_C2M2_Riders07", 0.2), // [singing] ...Gotta reach for the top, stay on that mountainnnn... dunh-nuh-NAH-nuh-NAH-nha!
			},
		],
	},
	{
		name = "_C2M2_Riders05Replica",
		criteria = 
		[
			[Concept_C2M2_Riders05],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_Riders05Replica,
				followup = RThenAny("_C2M2_Riders03", 0.2), // Best light show in the business, though.
			},
		],
	},
	{
		name = "_C2M2_Riders07Replica",
		criteria = 
		[
			[Concept_C2M2_Riders07],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_Riders07Replica,
				followup = RThen("Self", "_C2M2_Riders05", null, 0.2), // Hell yes! I got ALL their albums. Even their new stuff that ain't no good.
			},
		],
	},
	{
		name = "_C2M2_Slide01Replica",
		criteria = 
		[
			[Concept_C2M2_Slide01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_Slide01Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.922 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m3_DownHoleReplica",
		criteria = 
		[
			[Conceptc2m3downhole],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m3_DownHoleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DownHole", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m3CoasterEndReplica",
		criteria = 
		[
			[Conceptc2m3CoasterEnd],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m3CoasterEndReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3CoasterRunGoReplica",
		criteria = 
		[
			[ConceptC2M3CoasterRunGo],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M3CoasterRunGoReplica,
			},
		],
	},
	{
		name = "C2M3CoasterStartReplica",
		criteria = 
		[
			[Conceptc2m3CoasterStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M3CoasterStartReplica,
				followup = RThen("mechanic", "_c2m3_howcool", null, 1.0), // Get ready to run, I'm hittin' it.
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
		name = "c2m3SeeChopperReplica",
		criteria = 
		[
			[Conceptc2m3SeeChopper],
			[IsReplica],
			[IsTalk],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m3SeeChopperReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_OutOfTunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4ButtonPressedReplica",
		criteria = 
		[
			[ConceptC2M4ButtonPressed],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4ButtonPressedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ButtonPressed", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4Gate000Replica",
		criteria = 
		[
			[ConceptC2M4Gate000],
			[IsReplica],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGate],
			[_auto_NotNearGateNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4Gate000Replica,
				followup = RThen("self", "C2M4Gate001", null, 0.2), // I know how we can signal that chopper.
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.707 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockReplica", value = 1, duration = 23.0 },
			c4 = { context = "_auto_NearGateNag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4GateIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGateNag],
			[_auto_IsNearGate],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4GateIdleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.565 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockReplica", value = 1, duration = 23.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4GateOpenCalloutReplica",
		criteria = 
		[
			[ConceptC2M4GateOpenCallout],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4GateOpenCalloutReplica,
				followup = RThenAny("_C2M4_GateOpen001", 0.01), // Gate's open!
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.96 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m4SeeChopperReplica",
		criteria = 
		[
			[Conceptc2m4SeeChopper],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m4SeeChopperReplica,
			},
		],
	},
	{
		name = "C2M4Gate001Replica",
		criteria = 
		[
			[ConceptC2M4Gate001],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4Gate001Replica,
			},
		],
	},
	{
		name = "C2M4Gate002Replica",
		criteria = 
		[
			[ConceptC2M4Gate002],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4Gate002Replica,
				followup = RThen("self", "C2M4Gate003", null, 0.2), // I know how we can signal that chopper.
			},
		],
	},
	{
		name = "C2M4Gate003Replica",
		criteria = 
		[
			[ConceptC2M4Gate003],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4Gate003Replica,
			},
		],
	},
	{
		name = "C2M4Gate003EllisReplica",
		criteria = 
		[
			[ConceptC2M4Gate003],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsMechanicAlive],
			[ChanceToFire100Percent],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4Gate003EllisReplica,
				followup = RThen("mechanic", "C2M4Gate004", null, 0.1), // Ellis, you ready to rock?
			},
		],
	},
	{
		name = "C2M4Gate005Replica",
		criteria = 
		[
			[ConceptC2M4Gate005],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4Gate003Replica,
			},
		],
	},
	{
		name = "C2M5_Button2YellReplica",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsReplica],
			[IsNotSpeaking],
			[NotReplicaMadAtRiders],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5_Button2YellReplica,
			},
		],
	},
	{
		name = "C2M5_Button2YellMadReplica",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsReplica],
			[IsNotSpeaking],
			[ReplicaMadAtRiders],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
	},
	{
		name = "C2M5_ChoppercomingReplica",
		criteria = 
		[
			[ConceptC2M5_Choppercoming],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5_ChoppercomingReplica,
				followup = RThenAny("C2M5_PlanWorked", 0.01), // The chopper saw us!
			},
		],
	},
	{
		name = "C2M5_PlanWorkedReplica",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsReplica],
			[IsNotIncapacitated],
			[NotReplicaMadAtRiders],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5_PlanWorkedReplica,
			},
		],
	},
	{
		name = "C2M5_PlanWorkedMadReplica",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsReplica],
			[IsNotIncapacitated],
			[ReplicaMadAtRiders],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5_PlanWorkedMadReplica,
			},
		],
	},
	{
		name = "C2M5ChopperNagReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
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
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5ChopperNagReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5InChopperNagReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
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
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5InChopperNagReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5ChopperNagNickCheckReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[Ismap_c2m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsTalk],
			[IsGamblerAlive],
			[IsGamblerNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[ChanceToFire10Percent],
			[NickOCD],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		//forceweight 500
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5ChopperNagNickCheckReplica,
				followup = RThen("gambler", "C2M5ChopperOCD", null, 0.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5PlayerLookNickFinaleReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[Ismap_c2m5],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsInRescueVehicle],
			[SubjectIsGambler],
			[IsGamblerNear800],
			[IsWorldTalkReplica],
			[NickOCD],
			[_auto_IsEscapeReady],
			[IsNotSpeakingWeight0],
		],
		//forceweight 500
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5ChopperNagNickCheckReplica,
			},
		],
	},
	{
		name = "C2M5PlayerLookNickFinale2Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[Ismap_c2m5],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsInRescueVehicle],
			[SubjectIsGambler],
			[IsGamblerNear800],
			[IsWorldTalkReplica],
			[NickOCD],
			[_auto_IsEscapeReady],
			[IsNotSpeakingWeight0],
		],
		//forceweight 500
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5ChopperNagNickCheckReplica,
			},
		],
	},
	{
		name = "C2M5Button1Replica",
		criteria = 
		[
			[ConceptC2M5Button1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5Button1Replica,
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
		name = "C2M5InArenaNagReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[Ismap_c2m5],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_IsC2M5InArena],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5InArenaNagReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 34.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5SingingReplica",
		criteria = 
		[
			[ConceptC2M5Microphone],
			[IsReplica],
			[NotInCombat],
			[Ismap_c2m5],
			[TimeSinceGroupInCombat02],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[NotReplicaMadAtRiders],
			[_auto_NotButton2],
			[_auto_IsButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5SingingReplica,
			},
		],
	},
	{
		name = "SurvivorReloadingC2M5Replica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotZombiePresentTank],
			[IsRocking],
			[Ismap_c2m5],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[NotReplicaMadAtRiders],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorReloadingC2M5Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorReloadingC2M5RockedOutReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotZombiePresentTank],
			[IsRocking],
			[Ismap_c2m5],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[NotReplicaMadAtRiders],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
	},
	{
		name = "SurvivorVocalizeLookOutC2M5Replica",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsRocking],
			[Ismap_c2m5],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeLookOutC2M5Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorVocalizeLookOutC2M5RockedOutReplica",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsRocking],
			[Ismap_c2m5],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
	},
	{
		name = "PlayerKillTankConfirmationC2M5Replica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillTankConfirmationC2M5Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M5ReloadingTankReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5ReloadingTankReplica,
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
		name = "C2M5ConcertTankResponseReplica",
		criteria = 
		[
			[ConceptC2M5ConcertTankResponse],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5ConcertTankResponseReplica,
			},
		],
	},
	{
		name = "C2M5SaferoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5SaferoomReplica,
				followup = RThenAny("c2m5_intro005", 0.3), // Y'all know the Midnight Riders? They gonna save us.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c2m5_intro001Replica",
		criteria = 
		[
			[Conceptc2m5_intro001],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro001Replica,
				followup = RThen("self", "c2m5_intro003", null, 0.1), // First we do a quick check around for corn dogs. Nah, I'm just playin'.
			},
		],
	},
	{
		name = "c2m5_intro002Replica",
		criteria = 
		[
			[Conceptc2m5_intro002],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro002Replica,
				followup = RThenAny("c2m5_intro003", 0.1), // Then we start the Midnight Rider finale. It's all kinds of fireworks, smokepots, and lights and shit. That chopper pilot can't miss it.
			},
		],
	},
	{
		name = "c2m5_intro003Replica",
		criteria = 
		[
			[Conceptc2m5_intro003],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro003Replica,
				followup = RThen("self", "c2m5_intro002", null, 0.1), // First we look for supplies.
			},
		],
	},
	{
		name = "c2m5_intro006Replica",
		criteria = 
		[
			[Conceptc2m5_intro006],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro006Replica,
				followup = RThen("self", "c2m5_intro007", null, 0.1), // We start their finale, that chopper is gonna know something's up.
			},
		],
	},
	{
		name = "c2m5_intro007Replica",
		criteria = 
		[
			[Conceptc2m5_intro007],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro007Replica,
				followup = RThenAny("c2m5_intro008", 0.1), // Because nobody - and I mean NOBODY - has a bigger pyrotechnics show than the Midnight Riders.
			},
		],
	},
	{
		name = "c2m5_intro008Replica",
		criteria = 
		[
			[Conceptc2m5_intro008],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro008Replica,
				followup = RThen("self", "c2m5_intro001", null, 0.3), // Okay, here's the plan.
			},
		],
	},
	{
		name = "c2m5_intro010Replica",
		criteria = 
		[
			[Conceptc2m5_intro010],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro010Replica,
				followup = RThenAny("c2m5_intro011", 0.2), // It's been a long time since I seen the Riders, but if their finale's the same, that'll signal the chopper pilot. We just need to start it.
			},
		],
	},
	{
		name = "c2m5_intro012Replica",
		criteria = 
		[
			[Conceptc2m5_intro012],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro012Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // These zombies better be ready to rock.
			},
		],
	},
	{
		name = "c2m5_intro014Replica",
		criteria = 
		[
			[Conceptc2m5_intro014],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro014Replica,
				followup = RThenAny("c2m5_intro015", 0.1), // Because nobody - and I mean NOBODY - has a bigger pyrotechnics show than the Midnight Riders.
			},
		],
	},
	{
		name = "c2m5_intro018Replica",
		criteria = 
		[
			[Conceptc2m5_intro018],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro014Replica,
			},
		],
	},
	{
		name = "c2m5_intro016Replica",
		criteria = 
		[
			[Conceptc2m5_intro016],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro016Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // These zombies better be ready to rock.
			},
		],
	},
	{
		name = "c2m5_intro020Replica",
		criteria = 
		[
			[Conceptc2m5_intro020],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro016Replica,
			},
		],
	},
	{
		name = "c2m5_intro025Replica",
		criteria = 
		[
			[Conceptc2m5_intro025],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro016Replica,
			},
		],
	},
	{
		name = "c2m5_intro017Replica",
		criteria = 
		[
			[Conceptc2m5_intro017],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c2m5_intro017Replica,
				followup = RThen("self", "c2m5_intro018", null, 0.1), // Y'all know the Midnight Riders? They gonna save us.
			},
		],
	},
	{
		name = "C2M5ChopperOCDReplica",
		criteria = 
		[
			[ConceptC2M5ChopperOCD],
			[IsReplica],
			[IsNotIncapacitated],
			[IsInRescueVehicle],
			[NickOCD],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5ChopperOCDReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "NickOCD", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3SaferoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.C2M3SaferoomReplica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Well-looks like we're going through the tunnel of love, people. No hanky panky.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3SafeIntro010Replica",
		criteria = 
		[
			[ConceptC2M3SafeIntro010],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M3SafeIntro010Replica,
				followup = RThen("gambler", "C2M3SafeIntro010", null, 0.3), // How many tunnel of love memories YOU got, Nick?
			},
		],
	},
	{
		name = "C2M3SafeIntro011Replica",
		criteria = 
		[
			[ConceptC2M3SafeIntro011],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M3SafeIntro011Replica,
				followup = RThen("producer", "C2M3SafeIntro005", null, 0.01), // Nick, I was on the football team. Replica did just fine.
			},
		],
	},
	{
		name = "C3M1FerryEnd2Replica",
		criteria = 
		[
			[ConceptC3M1FerryEnd2],
			[IsReplica],
			[IsNotSaidC3M1FerryEnd],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M1FerryEnd2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryEnd", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M2DisgustReplica",
		criteria = 
		[
			[Conceptc3m2disgust],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M2DisgustReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.04 },
		},
		applycontexttoworld = true,
	},
	{
		name = "InfoRemc3m2_parachutist2Replica",
		criteria = 
		[
			[ConceptInfoRemc3m2_parachutist2],
			[IsReplica],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.InfoRemc3m2_parachutist2Replica,
			},
		],
	},
	{
		name = "C3M3SafeRoom2b2Replica",
		criteria = 
		[
			[ConceptC3M3SafeRoom2b2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M3SafeRoom2b2Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // All right, this just makes me sad.
			},
		],
	},
	{
		name = "C3M3SafeRoom2c2Replica",
		criteria = 
		[
			[ConceptC3M3SafeRoom2c2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M3SafeRoom2c2Replica,
				followup = RThen("mechanic", "C3M3SsafeRoom2c3", null, 0.1), // They headed to the river, sounds like a good idea.
			},
		],
	},
	{
		name = "C3M3SafeRoom2c3Replica",
		criteria = 
		[
			[ConceptC3M3SafeRoom2c3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M3SafeRoom2c3Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // I don't want to stay here, let's follow 'em.
			},
		],
	},
	{
		name = "InfoRemC3M3LowerGateaReplica",
		criteria = 
		[
			[ConceptInfoRemC3M3LowerGatea],
			[IsReplica],
			[IsNotSaidC3M3BridgeButton],
			[IntensityUnder25],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.InfoRemC3M3LowerGateaReplica,
			},
		],
	},
	{
		name = "C3M4BoatNagsReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
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
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4BoatNagsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4InBoatNagsReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
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
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4InBoatNagsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4Button1AReplica",
		criteria = 
		[
			[ConceptC3M4Button1A],
			[IsReplica],
			[FromIsAnOrator],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4Button1AReplica,
				followup = RThen("self", "C3M4Button1B", null, 1.0), // I'm gonna try calling someone.
			},
		],
	},
	{
		name = "C3M4Button1BReplica",
		criteria = 
		[
			[ConceptC3M4Button1B],
			[IsReplica],
			[FromIsReplica],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4Button1BReplica,
				followup = RThen("orator", "C3M4Button101", null, 0.3), // Anyone out there?
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer4Replica",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsReplica],
			[FromIsAnOrator],
			[IsEveryoneAlive],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4ButtonHowManyAnswer4Replica,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // We are a party of four.
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer3Replica",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsReplica],
			[FromIsAnOrator],
			[IsWithOnlyThree],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4ButtonHowManyAnswer3Replica,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // Three of us left.
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer2Replica",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsReplica],
			[FromIsAnOrator],
			[IsWithTwo],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4ButtonHowManyAnswer2Replica,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // Only two of us.
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer1Replica",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsReplica],
			[FromIsAnOrator],
			[IsAlone],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4ButtonHowManyAnswer1Replica,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // Just me.
			},
		],
	},
	{
		name = "C3M4ButtonAnswerEllisReplica",
		criteria = 
		[
			[ConceptC3M4ButtonAnswerEllis],
			[IsReplica],
			[FromIsMechanic],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4ButtonAnswerEllisReplica,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // Nah, you got it, Ellis.
			},
		],
	},
	{
		name = "C3M4Button201Replica",
		criteria = 
		[
			[ConceptC3M4Button201],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4Button201Replica,
				followup = RThen("orator", "C3M4Button202", null, 0.01), // Shit, we're at the plantation house.
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.948 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4Button202Replica",
		criteria = 
		[
			[ConceptC3M4Button202],
			[FromIsAnOrator],
			[_auto_IsTalkingReplica],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4Button202Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.424 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C3M4GateBlow01Replica",
		criteria = 
		[
			[ConceptC3M4GateBlow01],
			[IsReplica],
			[FromIsAnOrator],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M4GateBlow01Replica,
				followup = RThen("orator", "C3M4GateBlow02", null, 0.01), // Oh shit! Gate open!
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4GoingToDieCoachReplica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[ismap_c4m2_sugarmill_a],
		],
		//forceweight 200
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4GoingToDieCoachReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "C4StormBlindIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[_auto_NotTimerLockA],
			[_auto_IsTimerA],
			[_auto_NotC4ReplicaInCover],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4StormBlindIdleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerA", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M1IntroReplica",
		criteria = 
		[
			[ConceptIntroC4M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4M1IntroReplica,
				followup = RThen("orator", "_c4m1Intro01", null, 0.01), // 
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
		name = "_c4m1Intro03Replica",
		criteria = 
		[
			[Concept_c4m1Intro03],
			[IsReplica],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro03Replica,
				followup = RThen("gambler", "_c4m1Intro05", null, 0.01), // We should be in and out here. Get the gas, get back to shore, signal Virgil with the flare gun in the gun bag. Then we just, uh... um... aw, HELL. Tell me SOMEONE brought the GUN BAG.
			},
		],
	},
	{
		name = "_c4m1Intro04Replica",
		criteria = 
		[
			[Concept_c4m1Intro04],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro04Replica,
				followup = RThen("gambler", "_c4m1Intro08", null, 0.01), // Don't think we got much choice in the matter.
			},
		],
	},
	{
		name = "_c4m1Intro05Replica",
		criteria = 
		[
			[Concept_c4m1Intro05],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro05Replica,
				followup = RThenAny("_c4m1Intro07", 0.01), // What gun bag? Oh for-TELL ME we didn't forget the guns.
			},
		],
	},
	{
		name = "_c4m1Intro06Replica",
		criteria = 
		[
			[Concept_c4m1Intro06],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro06Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Don't jinx us, Nick.
			},
		],
	},
	{
		name = "_c4m1Intro07Replica",
		criteria = 
		[
			[Concept_c4m1Intro07],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro07Replica,
				followup = RThen("gambler", "_c4m1Intro07", null, 0.01), // ME? I told Nick to grab the guns!
			},
		],
	},
	{
		name = "_c4m1Intro09Replica",
		criteria = 
		[
			[Concept_c4m1Intro09],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro09Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Look here, the gas station's right across the street. We coulda already been there and back by now. Come on.
			},
		],
	},
	{
		name = "_c4m1Intro11Replica",
		criteria = 
		[
			[Concept_c4m1Intro11],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro07Replica,
			},
		],
	},
	{
		name = "_c4m1Intro14Replica",
		criteria = 
		[
			[Concept_c4m1Intro14],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro14Replica,
				followup = RThen("gambler", "_c4m1Intro13", null, 0.01), // No.
			},
		],
	},
	{
		name = "_c4m1Intro16Replica",
		criteria = 
		[
			[Concept_c4m1Intro16],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1Intro16Replica,
				followup = RThen("mechanic", "_c4m1Intro16", null, 0.01), // Look, I'm a generously proportioned man! Gettin' off a rockin' boat takes CONCENTRATION!
			},
		],
	},
	{
		name = "C4M2IdleWitchville01Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[NotInCombat],
			[IsWorldTalkReplica],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsReplicaInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4M2IdleWitchville01Replica,
				followup = RThenAny("_c4m2_Witchville05", 0.01), // Goddamn it, wha't with all these witches.
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
		name = "C4M2PushedButtonReplica",
		criteria = 
		[
			[Conceptc4m2_elevator_top_button],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4M2PushedButtonReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidActivatedC4M2Elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M5BoatNagsReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
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
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4M5BoatNagsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C4M5_BoatComing01Replica",
		criteria = 
		[
			[Concept_C4M5_BoatComing01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C4M5_BoatComing01Replica,
			},
		],
	},
	{
		name = "C4FinaleStartReplica",
		criteria = 
		[
			[ConceptC4FinaleStart],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4FinaleStartReplica,
				followup = RThenAny("_C4M5_FinaleStart01", 0.01), // The sign's lit!
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_NoLostCall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C4M5_FinaleStart01Replica",
		criteria = 
		[
			[Concept_C4M5_FinaleStart01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C4M5_FinaleStart01Replica,
			},
		],
	},
	{
		name = "C4M5SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[isc4m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4M5SafeRoomReplica,
				followup = RThenAny("_C4M5_Intro02", 0.1), // Let's go, almost back to the boat.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C4M5_Intro03Replica",
		criteria = 
		[
			[Concept_C4M5_Intro03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C4M5_Intro03Replica,
				followup = RThenAny("_C4M5_Intro04", 0.1), // We can use the Burger Tank sign to signal him.
			},
		],
	},
	{
		name = "_C4M5_Intro04Replica",
		criteria = 
		[
			[Concept_C4M5_Intro04],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C4M5_Intro04Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Let's do it.
			},
		],
	},
	{
		name = "PlayerRemarkc4m5_BurgerTankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m5_burgertank],
			[IsNotSaidc4m5_burgertank],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear1000],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m5_BurgerTankReplica,
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
		name = "C5M1_intro002Replica",
		criteria = 
		[
			[ConceptC5M1_intro002],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M1_intro002Replica,
				followup = RThen("orator", "C5M1_intro003", null, 0.01), // Thanks, Virgil. You stay safe, brother.
			},
		],
	},
	{
		name = "C5M1_intro004Replica",
		criteria = 
		[
			[ConceptC5M1_intro004],
			[IsReplica],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M1_intro004Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // We made it REAL damn far, people. I'm proud of you. Now let's just cross that last mile.
			},
		],
	},
	{
		name = "C5M1_intro005Replica",
		criteria = 
		[
			[ConceptC5M1_intro005],
			[IsReplica],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M1_intro004Replica,
			},
		],
	},
	{
		name = "C5M1_intro008Replica",
		criteria = 
		[
			[ConceptC5M1_intro008],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M1_intro008Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Oh yeaah. Our goal is right next to the bridge, ON THE OTHER MOTHER F'IN SIDE OF THE RIVER!
			},
		],
	},
	{
		name = "C5M1Flyby01Replica",
		criteria = 
		[
			[ConceptC5M1Flyby01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M1Flyby01Replica,
				followup = RThenAny("C5M1Flyby02", 0.1), // Military's still active here!
			},
		],
	},
	{
		name = "C5M1Flyby03Replica",
		criteria = 
		[
			[ConceptC5M1Flyby03],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M1Flyby03Replica,
			},
		],
	},
	{
		name = "C5M2_signcontagious01Replica",
		criteria = 
		[
			[ConceptC5M2_signcontagious01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M2_signcontagious01Replica,
			},
		],
	},
	{
		name = "C5M2AlarmNagReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsMapc5m2_park],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M2AlarmNagReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M2Freeway01Replica",
		criteria = 
		[
			[ConceptC5M2Freeway01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M2Freeway01Replica,
			},
		],
	},
	{
		name = "PlayerRemarkc5m2busstationReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m2busstation],
			[IsNotSaidc5m2busstation],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsDoorOpen],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m2busstationReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2busstation", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.11 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m2parkReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m2park],
			[IsNotSaidc5m2park],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m2parkReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2park", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.734 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3AlarmFieldNagsReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
		//forceweight 200
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3AlarmFieldNagsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.294 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3Bodies01Replica",
		criteria = 
		[
			[ConceptC5M3Bodies01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3Bodies01Replica,
				followup = RThen("gambler", "C5M3Bodies04", null, 1.0), // [annoyed] How does bein' so right feel, Nick?
			},
		],
	},
	{
		name = "C5M3Bodies03Replica",
		criteria = 
		[
			[ConceptC5M3Bodies03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3Bodies03Replica,
			},
		],
	},
	{
		name = "C5M3FirstInAlarmReplica",
		criteria = 
		[
			[ConceptC5M3FirstInAlarmField],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3FirstInAlarmReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.959 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3Freeway01Replica",
		criteria = 
		[
			[ConceptC5M3Freeway01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3Freeway01Replica,
			},
		],
	},
	{
		name = "C5M3GraveNagsReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.C5M3GraveNagsReplica,
			},
		],
	},
	{
		name = "C5M3Jets2Replica",
		criteria = 
		[
			[Conceptc5m3Jets2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3Jets2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.059 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3OnBridgeReplica",
		criteria = 
		[
			[Conceptc5m3OnBridge],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3OnBridgeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.647 },
			c2 = { context = "_auto_AlarmFieldOn", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3SeeGraveyard02Replica",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard02],
			[IsReplica],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3SeeGraveyard02Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.839 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3SeeGraveyard03Replica",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard03],
			[IsReplica],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3SeeGraveyard03Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.887 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3ShootCarReplica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsReplica],
			[IsCarAlarm],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3ShootCarReplica,
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
		name = "C5M3ShootCar2Replica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotReplica],
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
				func = Custom_Talker_Replica.C5M3ShootCar2Replica,
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
		name = "C5M3ShootCar3Replica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotReplica],
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
				func = Custom_Talker_Replica.C5M3ShootCar3Replica,
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
		name = "C5M3ShootCar3EllisReplica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsMechanic],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[IsNotSpeaking],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_ShotThirdCar],
			[_auto_NotTimerLockA],
		],
		//forceweight 500
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3ShootCar3EllisReplica,
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
		name = "C5M3Sniper01Replica",
		criteria = 
		[
			[ConceptC5M3Sniper01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3Sniper01Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.595 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3bodiesReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc5m3bodiesReplica,
				followup = RThenAny("C5M3Bodies02", 0.1), // These ain't zombies. Somebody's been shootin' people.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3crashedheliReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3crashedheli],
			[IsNotSaidc5m3crashedheli],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3crashedheliReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3crashedheli", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3freewayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3freeway],
			[IsNotSaidc5m3freeway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3freewayReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3freeway", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3insewerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3insewer],
			[IsNotSaidc5m3insewer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3insewerReplica,
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
		name = "PlayerRemarkc5m3manholeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3manhole],
			[IsNotSaidc5m3manhole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotInSewer],
			[IsNotSpeakingWeight0],
		],
		//forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3manholeReplica,
				followup = RThenAny("C5M3manhole01", 0.1), // Everybody in the sewer.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3manhole", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.491 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3manhole2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3manhole],
			[IsNotSaidc5m3manhole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[_auto_NotInSewer],
			[IsNotSpeakingWeight0],
		],
		//forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3manhole2Replica,
				followup = RThen("gambler", "C5M3manhole01", null, 0.1), // Nick! Good news - we're going down into this sewer.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3manhole", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.733 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3offhighwayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc5m3offhighwayReplica,
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
		name = "PlayerRemarkc5m3seegraveyardReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3seegraveyard],
			[IsNotSaidc5m3seegraveyard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc5m3seegraveyardReplica,
				followup = RThenAny("C5M3SeeGraveyard01", 0.1), // Allright. Shit. Nobody panic. We gonna head down and find another way up onto the bridge.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3seegraveyard", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 6.593 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3sewercommentReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3sewercomment],
			[IsNotSaidc5m3sewercomment],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsGamblerAlive],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3sewercommentReplica,
				followup = RThen("gambler", "C5M3SewerIn01", null, 0.01), // Man, Nick, you picked a bad day to wear your white suit.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sewercomment", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.451 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc5m3sewercommentReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3sewercomment],
			[IsNotSaidc5m3sewercomment],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsGamblerAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sewercomment", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3sniperReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3sniper],
			[IsNotSaidc5m3sniper],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3sniperReplica,
				followup = RThenAny("C5M3Sniper01", 0.1), // I hope those hash marks mean zombies.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3sniper", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.502 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3upladderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3upladder],
			[IsNotSaidc5m3upladder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3upladderReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upladder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3upstepsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3upsteps],
			[IsNotSaidc5m3upsteps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3upstepsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upsteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m3warzoneReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3warzone],
			[IsNotSaidc5m3warzone],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m3warzoneReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3warzone", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombExtReplica",
		criteria = 
		[
			[ConceptC5M4BombExt],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M4BombExtReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.765 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt01Replica",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NoAirstrikes],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M4BombInt01Replica,
				followup = RThenAny("C5M4BombIntA", 0.01), // SHIT!
			},
		],
		applycontext =
		{
			//⚠️WARNING: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt01AReplica",
		criteria = 
		[
			[ConceptC5M4BombIntA],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M4BombInt01AReplica,
			},
		],
	},
	{
		name = "C5M4BombInt02Replica",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsReplica],
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
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			//⚠️WARNING: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt03Replica",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsReplica],
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
				func = Custom_Talker_Replica.C5M4BombInt03Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.312 },
			//⚠️WARNING: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombIntManyReplica",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsReplica],
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
				func = Custom_Talker_Replica.C5M4BombInt03Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.312 },
			//⚠️WARNING: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m4inminifinaleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m4inminifinale],
			[IsNotSaidc5m4inminifinale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m4inminifinaleReplica,
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
		name = "PlayerRemarkc5m4seebridgeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m4seebridge],
			[IsNotSaidc5m4seebridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc5m4seebridgeReplica,
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
		name = "EllisStoryInterruptReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptReplica,
				followup = RThen("mechanic", "EllisStoryReac01", null, 0.01), // We ain't got time for this, Ellis.
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.852 },
			c2 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c3 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c4 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptGenericReplica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptGenericReplica,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01), // Boy, you are WEARIN' me out.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
			c3 = { context = "_auto_FullStory", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "EllisStoryInterruptC1M2Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[ismap_c1m2_streets],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptC1M2Replica,
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
		name = "EllisStoryInterruptGenericC1M3Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[ismap_c1m3_mall],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptGenericReplica,
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
		name = "EllisStoryInterruptGenericC2M5Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[ismap_c2m5],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptGenericReplica,
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
		name = "EllisStoryInterruptC3M2Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[ismapc3m2_swamp],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptC3M2Replica,
				followup = RThen("Mechanic", "PlayerNo", null, 0.0), // All right, you MENTIONED pancakes, but it wasn't really ABOUT them, was it?
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
		name = "EllisStoryInterruptGenericC4M3Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[isc4m3],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptGenericReplica,
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
		name = "EllisStoryInterruptGenericC4M4Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[isc4m4],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptGenericReplica,
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
		name = "EllisStoryInterruptGenericC5M2Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[IsMapc5m2_park],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptGenericReplica,
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
		name = "EllisStoryInterruptGenericC5M5Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[IsMapc5m5_bridge],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryInterruptGenericReplica,
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
		name = "EllisStoryReac01Replica",
		criteria = 
		[
			[ConceptEllisStoryReac01],
			[IsReplica],
			[ismapc3m2_swamp],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EllisStoryReac01Replica,
				followup = RThen("Producer", "EllisStoryReac01", null, -0.5), // Girl! What are you doing?
			},
		],
	},
	{
		name = "C5M5_Button2Replica",
		criteria = 
		[
			[ConceptC5M5_Button2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_Button2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BridgeNag", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5_GateDownReplica",
		criteria = 
		[
			[ConceptC5M5_GateDown],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_GateDownReplica,
			},
		],
	},
	{
		name = "C5M5_SurvivorConv01Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv01],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_SurvivorConv01Replica,
				followup = RThen("orator", "C5M5_Soldier1Conv03", null, 0.01), // Hey! There's four of us on the bridge!
			},
		],
	},
	{
		name = "C5M5_SurvivorConv02Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv02],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_SurvivorConv02Replica,
				followup = RThen("orator", "C5M5_Soldier1Conv04", null, 0.01), // We are NOT infected.
			},
		],
	},
	{
		name = "C5M5_SurvivorConv03Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv03],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_SurvivorConv03Replica,
				followup = RThen("orator", "C5M5_Soldier1Conv05", null, 0.01), // "Encountered"? Boy, I am covered in zombie blood and puke and eyeballs and twenty other parts I don't even recognize. We are immune as SHIT.
			},
		],
	},
	{
		name = "C5M5_SurvivorConv04Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv04],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_SurvivorConv04Replica,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01), // I hear ya man.  See ya soon.
			},
		],
	},
	{
		name = "C5M5_SurvivorConv05Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv05],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_SurvivorConv05Replica,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01), // We gotcha. We used to that shit by now.
			},
		],
	},
	{
		name = "C5M5_LowerTheBridgeReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_IsBridgeNag],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_LowerTheBridgeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5Button1Replica",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5Button1Replica,
				followup = RThen("orator", "C5M5_Soldier1Conv01", null, 0.01), // Hello!
			},
		],
	},
	{
		name = "C5M5Button1BuzzardRunReplica",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
			[_auto_IsTalkingReplica],
			[_auto_IsBuzzardRunMentioned],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5Button1BuzzardRunReplica,
				followup = RThen("orator", "C5M5_Soldier1Conv01", null, 0.01), // Hey, y'all! Stop!
			},
		],
	},
	{
		name = "C5M5HearSoldiersReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsTalk],
			[_auto_NotRadioNag],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5HearSoldiersReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RadioNag", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c3 = { context = "_auto_TimerLockReplica", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5HearSoldiersNagReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[_auto_IsRadioNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5HearSoldiersNagReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5LeaveSafeReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsReplica],
			[IsMapc5m5_bridge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5LeaveSafeReplica,
				followup = RThen("orator", "C5M5_Soldier1", null, 0.01), // Blank
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
		name = "C5M5RescueStartReplica",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsReplica],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5RescueStartReplica,
				followup = RThen("orator_chopper", "C5M5SoldierHeliNag", null, 0.01), // THERE'S OUR CHOPPER! COME ON!
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
		name = "C5M5RunToHeliReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
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
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5RunToHeliReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5RunToHeliRareReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[ChanceToFire10Percent],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		//forceweight 500
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5RunToHeliRareReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5SurvivorSpottedTankEscapeReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsMapc5m5_bridge],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInRescueVehicle],
			[IsNotSpeakingWeight0],
			[_auto_IsEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5SurvivorSpottedTankEscapeReplica,
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
		name = "C5M5BridgeDestroyed2Replica",
		criteria = 
		[
			[ConceptC5M5BridgeDestroyed2],
			[IsReplica],
			[IsNotIncapacitated],
			[IsEveryoneAlive],
			[CanSpeakC5M5SurvivorOutro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5BridgeDestroyed2Replica,
			},
		],
	},
	{
		name = "C5M5SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.C5M5SafeRoomReplica,
				followup = RThen("gambler", "C5M5_saferoom001", null, 0.01), // Allrightallright. We gonna stroll across that bridge, and the army's gonna take care of us.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M5_saferoom002Replica",
		criteria = 
		[
			[ConceptC5M5_saferoom002],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_saferoom002Replica,
				followup = RThen("gambler", "C5M5_saferoom003", null, 0.01), // Well, you free to make yourself a new life here in this room, Nick.
			},
		],
	},
	{
		name = "C5M5_saferoom004Replica",
		criteria = 
		[
			[ConceptC5M5_saferoom004],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_saferoom004Replica,
				followup = RThen("gambler", "C5M5_saferoom004", null, 1.0), // No.
			},
		],
	},
	{
		name = "C5M5_saferoom005Replica",
		criteria = 
		[
			[ConceptC5M5_saferoom005],
			[IsReplica],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M5_saferoom005Replica,
				followup = RThen("gambler", "C5M5_saferoom003", null, 0.01), // Well, you free to make yourself a new life here in this room, Nick.
			},
		],
	},
	{
		name = "PlayerReviveParishReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveParishReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveParishReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveParishReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveCriticalParishReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveParishReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveParishProducerReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsProducer],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveParishProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveParishProducerReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsProducer],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveParishProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveCriticalParishProducerReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsProducer],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveParishProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerKillTankConfirmationC5M5Replica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[IsMapc5m5_bridge],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillTankConfirmationC5M5Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "C6M1_IntotheparkNoHealthReplica",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1_IntotheparkNoHealthReplica,
			},
		],
	},
	{
		name = "C6M1Intro_01TeenGirl04Replica",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsReplica],
			[IsZoeyIntroActor],
			[IsNotSaidCXM1Intro],
			[IsNotVersus],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_01TeenGirl04Replica,
				followup = RThen("TeenGirl", "C6M1Intro_04a", null, -3.822), // Hey, hello there! You wanna let the bridge down for us?
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
		name = "C6M1Intro_04bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_04b],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_04bReplica,
				followup = RThen("TeenGirl", "C6M1Intro_04c", null, -2.342), // Y'all can't climb down there and save us a trip?
			},
		],
	},
	{
		name = "C6M1Intro_08aReplica",
		criteria = 
		[
			[ConceptC6M1Intro_08a],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_08aReplica,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0), // Got it. We'll holla back at you when we get there.
			},
		],
	},
	{
		name = "C6M1Intro_13bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_13b],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_13bReplica,
				followup = RThen("Mechanic", "C6M1Intro_13c", null, -4.288), // You been killin' zombies for the better part of 2 days boy you can talk to a girl.
			},
		],
	},
	{
		name = "C6M1Intro_13eReplica",
		criteria = 
		[
			[ConceptC6M1Intro_13e],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_13eReplica,
				followup = RThen("Mechanic", "C6M1Intro_13f", null, -2.69), // Okay, the boy says thank you.
			},
		],
	},
	{
		name = "C6M1Intro_20aReplica",
		criteria = 
		[
			[ConceptC6M1Intro_20a],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_20aReplica,
				followup = RThen("self", "C6M1Intro_20b", null, -2.005), // (to group) Tell me this boy ain't for real.
			},
		],
	},
	{
		name = "C6M1Intro_20bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_20b],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_20bReplica,
				followup = RThen("Biker", "C6M1Intro_20c", null, -2.472), // No. Can you lower the bridge?
			},
		],
	},
	{
		name = "C6M1Intro_20dReplica",
		criteria = 
		[
			[ConceptC6M1Intro_20d],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_20dReplica,
				followup = RThen("Biker", "C6M1Intro_20e", null, -5.235), // Shit, okay. Yes, we are vampires? All of us are vampires?
			},
		],
		applycontext =
		{
			c1 = { context = "C6M1_ReplicaIsAVampire", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1Intro_20gReplica",
		criteria = 
		[
			[ConceptC6M1Intro_20g],
			[IsReplica],
			[IsReplicaAVampire],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_20gReplica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Dear lord, why'd I ever leave Savannah.
			},
		],
	},
	{
		name = "C6M1Intro_ConfirmObjectiveReplica",
		criteria = 
		[
			[ConceptC6M1Intro_ConfirmObjective],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_ConfirmObjectiveReplica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Got it. We'll holla back at you when we get there.
			},
		],
	},
	{
		name = "C6M1TakeSubMachineGun01Replica",
		criteria = 
		[
			[ConceptC6M1TakeSubMachineGun01],
			[IsReplica],
			[IssuerClose],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1TakeSubMachineGun01Replica,
			},
		],
	},
	{
		name = "LeavingC6M1StartReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsReplica],
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
				func = Custom_Talker_Replica.NoResponse,
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
		name = "LeavingC6M1StartNoHealthReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsReplica],
			[IsNotAlone],
			[NoHasFirstAidKit],
			[Isc6m1_riverbank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.LeavingC6M1StartNoHealthReplica,
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
		name = "WorldC6M1_HistoricTourReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
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
				func = Custom_Talker_Replica.WorldC6M1_HistoricTourReplica,
				followup = RThen("Gambler", "HistoricTour01a", null, -4.418), // Historic Under-the-River Tour! This could be pretty interesting!
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M1_PostWedding01aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_PostWedding01a],
			[IsReplica],
			[IsSubjectDistNear800],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M1_PostWedding01aReplica,
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn03aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M1_WeddingWarn03aReplica,
				followup = RThen("Producer", "WorldC6M1_WeddingWarn03b", null, -2.229), // Come on, Nick, not the time.
			},
		],
		applycontext =
		{
			c1 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M1_WeddingWarn04aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn04a],
			[IsReplica],
			[IsSubjectDistNear800],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M1_WeddingWarn04aReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2_OpenGate1Replica",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M2_OpenGate1Replica,
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
		name = "C6M2_OpenGate2Replica",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M2_OpenGate2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo01aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo01a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo01aReplica,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo09aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo09a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo09aReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo09b", null, -3.735), // Oh, come on, you aren't afraid of a little dirt are you?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoGamblerStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsGamblerAlive],
			[ChanceToFire50Percent],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvoGamblerStartReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo13a", null, -3.828), // Nick, tell me you ain't looking forward to this under-the-river tour.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo12bReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo12c", null, -2.273), // You damn right. Under a river.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo12dReplica,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo13bReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo13c", null, -5.477), // Man, Nick you got a find a way to cheer your ass up. We ain't got much to look forward to.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo13dReplica,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo14dReplica,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo14e", null, -3.766), // Oh. In my heart, I'm there already.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo15b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo15bReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo15c", null, -4.894), // Man, I keep hoping we find an open burger tank.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo16aReplica,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo16b", null, -4.595), // Ellis, you do know that eventually we're gonna have to leave that car behind. Right?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16cReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo16cReplica,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo16d", null, -3.567), // Boy, the Military ain't exactly going to strap it to the bottom of a helicopter.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18cReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo18cReplica,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo18d", null, -0.5), // Girl! What are you doing?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18e],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo18eReplica,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvoStartReplica,
				followup = RThenAny("DLC1_C6M2_SafeRoomConvo19a", -5.056), // Man, I just realized with all this runnin', climbin' and fightin', I ain't even had time to eat.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo19bReplica,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo19c", null, -8.355), // [happily] I bet I'm losin' some serious weight! [laughs proudly] Two more days, I'll be takin' my BELT in a notch.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo19dReplica,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo19e", null, -1.762), // Man, I forgot about that.
			},
		],
	},
	{
		name = "WorldC6M2_InSewer101aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_InSewer101aReplica,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer102aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer102a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_InSewer102aReplica,
				followup = RThen("Gambler", "WorldC6M2_InSewer102b", null, -3.563), // Gotta keep your head above water, man.[laughs]
			},
		],
	},
	{
		name = "WorldC6M2_InSewer202aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer202a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_InSewer202aReplica,
			},
		],
	},
	{
		name = "WorldC6M2_InSewerLadder101aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewerLadder101a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_InSewerLadder101aReplica,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk101cReplica",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk101c],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_OnTourWalk101cReplica,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk103aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk103a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_OnTourWalk103aReplica,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo02bReplica",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo02b],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_Tattoo02bReplica,
				followup = RThen("Producer", "WorldC6M2_Tattoo02c", null, -2.512), // Shit, it's allll south of the border.
			},
		],
	},
	{
		name = "C6M3_BridgeDownReplica",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_BridgeDownReplica,
			},
		],
	},
	{
		name = "C6M3_BridgeGettoCarReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[Isc6m3_port],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_BridgeGettoCarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorCancelReplica",
		criteria = 
		[
			[ConceptC6M3_ElevatorCancel],
			[IsReplica],
			[IsC6M3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
	},
	{
		name = "C6M3_elevatorReplica",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsReplica],
			[IsC6M3_port],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_elevatorReplica,
			},
		],
		//then get back to the car.
		applycontext =
		{
			c1 = { context = "SaidC6M3Elevator", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorZoeyReplica",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsReplica],
			[IsC6M3_port],
			[IsZoeyIntroActor],
			[IsMechanicAlive],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_elevatorZoeyReplica,
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
		name = "C6M3_GivenItemBikerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorBiker],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_GivenItemBikerReplica,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirlReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorTeenGirl],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_GivenItemTeenGirlReplica,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02e],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvo02eReplica,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoZoeyStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvoZoeyStartReplica,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo03a", null, -2.358), // Ellis. It's showtime, buddy.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoFrancisStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[isC6m3_port],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsFrancisIntroActor],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvoFrancisStartReplica,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo08a", null, -3.801), // I don't trust that biker. He's probably long gone by now.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvo08bReplica,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo08c", null, -3.689), // Minute we left, bet ya he stole the Jimmy Gibbs Jr.
			},
		],
	},
	{
		name = "IncapBounceReplica",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsReplica],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.IncapBounceReplica,
				followup = RThen("Biker", "InCapBounce2", null, 0.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "SaidInCapBounce", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCallForRescueReplica",
		criteria = 
		[
			[ConceptCallForRescue],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[HasNotCalledForRescue],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerCallForRescueReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForRescue", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c6m3_outroReplica",
		criteria = 
		[
			[Conceptc6m3_outro3],
			[IsReplica],
			[isC6m3_port],
			[IsNotVersus],
			[IsNotIncapacitated],
			[ChanceToFire100Percent],
			[FromIsBiker],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.c6m3_outroReplica,
			},
		],
	},
	{
		name = "SurvivorSpotFirstWeaponsReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotPickedUpFirstAidKit],
			[ismap_c1m1_hotel],
			[IsNotSaidFirstWeapon],
			[IsNotSaidWorldC1M1First],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpotFirstWeaponsReplica,
				followup = RThen("gambler", "Player.WhinyNick", null, 0.1), // If everyone's good with it, we should stick together.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFirstWeapon", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedAdrenalineReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsAdrenaline],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedAdrenalineReplica,
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
		name = "SurvivorSpottedAdrenalineAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			[IsAdrenaline],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedAdrenalineReplica,
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
		name = "SurvivorSpottedAmmoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedAmmoReplica,
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
		name = "SurvivorSpottedAmmoAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAmmo],
			[IsNotSaidSpot],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedAmmoReplica,
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
		name = "SurvivorSpottedAmmo2Replica",
		criteria = 
		[
			[ConceptPlayerSpotAmmo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedAmmo2Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedDefibrillatorReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsDefibrillator],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedDefibrillatorReplica,
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
		name = "SurvivorSpottedDefibrillatorAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			[IsDefibrillator],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedDefibrillatorReplica,
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
		name = "SurvivorSpottedGamblerCloseReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGamblerCloseReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerClose2Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGamblerCloseReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerClose2C1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGamblerClose2C1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerCloseC1Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGamblerClose2C1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerFarReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGamblerFarReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedGamblerFarC1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGamblerFarC1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedGrenadeReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsPipeBomb],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGrenadeReplica,
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
		name = "SurvivorSpottedGrenadeAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			[IsPipeBomb],
			[IsWorldTalkReplica],
			[YesHasGrenade],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGrenadeReplica,
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
		name = "SurvivorSpottedGrenadeLauncherReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isgrenade_launcher],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGrenadeLauncherReplica,
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
		name = "SurvivorSpottedGrenadeLauncherAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			[Isgrenade_launcher],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGrenadeLauncherReplica,
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
		name = "SurvivorSpottedHealthReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsFirstAidKit],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHealthReplica,
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
		name = "SurvivorSpottedHealthAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			[IsFirstAidKit],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHealthReplica,
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
		name = "SurvivorSpottedMechanicCloseReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMechanicCloseReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicClose2Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMechanicCloseReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicClose2C1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMechanicClose2C1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicCloseC1Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMechanicClose2C1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicFarReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicFar400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMechanicFarReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicFarC1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicFar400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMechanicFarC1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedMolotovReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsMolotov],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMolotovReplica,
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
		name = "SurvivorSpottedMolotovAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			[IsMolotov],
			[IsWorldTalkReplica],
			[YesHasMolotov],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMolotovReplica,
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
		name = "SurvivorSpottedPillsReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsPainPills],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedPillsReplica,
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
		name = "SurvivorSpottedPillsAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedPillsReplica,
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
		name = "SurvivorSpottedPillsAutoHasPillsReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[YesHasPainPills],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
			[ChanceToFire40Percent],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedPillsAutoHasPillsReplica,
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
		name = "SurvivorSpottedProducerCloseReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedProducerCloseReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerClose2Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedProducerCloseReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerClose2C1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedProducerClose2C1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerCloseC1Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedProducerClose2C1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerFarReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedProducerFarReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerFarC1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedProducerFarC1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedUpPack_ExplosiveReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Explosive],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedUpPack_ExplosiveReplica,
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
		name = "SurvivorSpottedUpPack_ExplosiveAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			[IsUpgradePack_Explosive],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedUpPack_ExplosiveReplica,
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
		name = "SurvivorSpottedUpPack_IncendiaryReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedUpPack_IncendiaryReplica,
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
		name = "SurvivorSpottedUpPack_IncendiAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedUpPack_IncendiaryReplica,
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
		name = "SurvivorSpottedVomitJarReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedVomitJarReplica,
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
		name = "SurvivorSpottedVomitJarAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedVomitJarReplica,
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
		name = "SurvivorSpottedVomitJarAutoC1Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedVomitJarAutoC1Replica,
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
		name = "SurvivorSpottedVomitJarC1Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedVomitJarAutoC1Replica,
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
		name = "SurvivorSpottedWorldCloseReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWorldCloseReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedArmoredReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedArmoredReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedArmoredC5M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[ismap_c5m1_waterfront],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedArmoredC5M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomerReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedBoomerReplica,
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
		name = "SurvivorSpottedBoomerAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedBoomerReplica,
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
		name = "SurvivorSpottedBoomer2Replica",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedBoomerReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedBoomerC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedBoomerC1M1Replica,
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
		name = "SurvivorSpottedBoomerAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedBoomerC1M1Replica,
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
		name = "SurvivorSpottedBoomer2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedBoomerC1M1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedBoomerC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedBoomerC1M2Replica,
				followup = RThenAny("Player.KnowBoomer", 0.1), // That's what they call a boomer...
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
		name = "SurvivorSpottedBoomerAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedBoomerC1M1Replica,
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
		name = "SurvivorSpottedCedaReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedCedaReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedCedaC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedCedaReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChargerReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChargerReplica,
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
		name = "SurvivorSpottedChargerAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChargerReplica,
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
		name = "SurvivorSpottedCharger2Replica",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChargerReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedChargerC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChargerC1M1Replica,
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
		name = "SurvivorSpottedChargerAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChargerC1M1Replica,
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
		name = "SurvivorSpottedCharger2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChargerC1M1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedChargerC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowCharger],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChargerC1M2Replica,
				followup = RThenAny("Player.KnowCharger", 0.1), // They call them Chargers.
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
		name = "SurvivorSpottedChargerAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChargerC1M1Replica,
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
		name = "SurvivorSpottedClownReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedClownReplica,
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
		name = "SurvivorSpottedFallenReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedFallenReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedFirstClownReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[ismap_c2m2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedFirstClownReplica,
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
		name = "SurvivorSpottedHunterReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHunterReplica,
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
		name = "SurvivorSpottedHunterAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHunterReplica,
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
		name = "SurvivorSpottedHunter2Replica",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHunterReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedHunterC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHunterC1M1Replica,
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
		name = "SurvivorSpottedHunterAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHunterC1M1Replica,
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
		name = "SurvivorSpottedHunter2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHunterC1M1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedHunterC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowHunter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHunterC1M2Replica,
				followup = RThenAny("Player.KnowHunter", 0.1), // Think they call 'em Hunters.
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
		name = "SurvivorSpottedHunterAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedHunterC1M1Replica,
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
		name = "SurvivorSpottedInfectedReplica",
		criteria = 
		[
			[ConceptPlayerIncoming],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedInfectedReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedJimmyReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJimmy],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidJimmyWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJimmyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJimmyWarn", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedJockeyReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJockeyReplica,
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
		name = "SurvivorSpottedJockeyAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJockeyReplica,
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
		name = "SurvivorSpottedJockey2Replica",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJockeyReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedJockeyC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJockeyC1M1Replica,
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
		name = "SurvivorSpottedJockeyAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJockeyC1M1Replica,
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
		name = "SurvivorSpottedJockey2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJockeyC1M1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedJockeyC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowJockey],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJockeyC1M2Replica,
				followup = RThenAny("Player.KnowJockey", 0.1), // I think they're called Jockeys.
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
		name = "SurvivorSpottedJockeyAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedJockeyC1M1Replica,
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
		name = "SurvivorSpottedMudmenReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMudmenReplica,
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
		name = "SurvivorSpottedMudmenC3M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMudmenC3M2Replica,
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
		name = "SurvivorSpottedSmokerReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSmokerReplica,
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
		name = "SurvivorSpottedSmokerAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSmokerReplica,
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
		name = "SurvivorSpottedSmoker2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSmokerReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedSmokerC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSmokerC1Replica,
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
		name = "SurvivorSpottedSmokerAlsoC1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSmokerC1Replica,
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
		name = "SurvivorSpottedSmoker2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSmokerC1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSpitterReplica,
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
		name = "SurvivorSpottedSpitterAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSpitterReplica,
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
		name = "SurvivorSpottedSpitter2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSpitterReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSpitterC1M1Replica,
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
		name = "SurvivorSpottedSpitterAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSpitterC1M1Replica,
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
		name = "SurvivorSpottedSpitter2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSpitterC1M1Replica,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowSpitter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSpitterC1M2Replica,
				followup = RThenAny("Player.KnowSpitter", 0.1), // They've been calling them things Spitters.
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
		name = "SurvivorSpottedSpitterAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedSpitterC1M1Replica,
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
		name = "SurvivorSpottedTankReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedTankReplica,
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
		name = "SurvivorSpottedTank2Replica",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedTankReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedTankC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedTankC1Replica,
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
		name = "SurvivorSpottedTank2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotIncapacitated],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedTankC1Replica,
			},
		],
	},
	{
		name = "L4D1SpottedTankReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.L4D1SpottedTankReplica,
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
		name = "L4D1SpottedTank2Replica",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[Isc6m3_port],
			[IsNotVersus],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1SpottedTankReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedWitchReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWitchReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedWitch2Replica",
		criteria = 
		[
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWitchReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedWitchC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[IsNotSaidWitchStartAttack],
			[IsProducerAlive],
			[IsProducerNear400],
			[C1M1orC1M2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWitchC1M2Replica,
				followup = RThen("producer", "BeNice", null, 0.1), // I see that Bitch!
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerAlertGiveItemReplica",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInIntenseCombat],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAlertGiveItemReplica,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemC1Replica",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInIntenseCombat],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAlertGiveItemC1Replica,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemCombatReplica",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[InIntenseCombat],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAlertGiveItemCombatReplica,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemTankReplica",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAlertGiveItemCombatReplica,
			},
		],
	},
	{
		name = "PlayerFaultFriendlyFireReplica",
		criteria = 
		[
			[IsFaultConcept],
			[IsFaultFriendlyFire],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFaultFriendlyFire", value = 1, duration = 0.1 },
			c2 = { context = "SaidFaultFriendlyFireReplica", value = 1, duration = 0.1 },
			c3 = { context = "ShotTeammateReplica", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerFriendlyFireReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotOnThirdStrike],
			[IsNotZombiePresentTank],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFire2Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkReplica],
			[IsOnThirdStrike],
			[IsNotZombiePresentTank],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFire2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromGamblerReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireFromGamblerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromMechanicReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireFromMechanicReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromMechanicC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireFromMechanicC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromProducerReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsProducer],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireFromProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireFromProducerC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireFromProducerC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireNoBulletReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireNoBulletReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireNoBulletC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireNoBulletC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireTankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireTankC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankGamblerReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsGambler],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireTankGamblerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankMechanicReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsMechanic],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireTankMechanicReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerFriendlyFireTankProducerReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsProducer],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFriendlyFireTankProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerToTheRescueReplica",
		criteria = 
		[
			[ConceptSurvivorBotMovingToReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInCombat],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerToTheRescueReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRescueComing", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerToTheRescueRosReplica",
		criteria = 
		[
			[ConceptPlayerToTheRescue],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerToTheRescueRosReplica,
			},
		],
	},
	{
		name = "SurvivorTauntResponseReplica",
		criteria = 
		[
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorTauntResponseReplica,
			},
		],
	},
	{
		name = "C4M1IdleComment01Replica",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire40Percent],
			[IsSurvivor],
			[ismap_c4m1_milltown_a],
			[IsSaidc4m1_nogas],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[NotInCombat],
			[IsWorldTalkReplica],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotNoGasGate],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4M1IdleComment01Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.016 },
			c2 = { context = "_auto_NoGasGate", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M2IdleCommentCane01Replica",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire60Percent],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsReplicaInCane],
			[_auto_NotCaneYellGated],
			[_auto_NotLastSurvivorTalkedReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4M2IdleCommentCane01Replica,
				followup = RThenAny("_c4m2_caneyell01", 0.01), // KEEP MOVING! HEAD FOR THE SIGN!
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_CaneYellGated", value = 1, duration = 10.0 },
			c2 = { context = "_auto_LastSurvivorTalkedReplica", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerChokeResponseReplica",
		criteria = 
		[
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerChokeResponseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReloadingC502RunReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsMapc5m2_park],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			[_auto_IsAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReloadingC502RunReplica,
			},
		],
	},
	{
		name = "PlayerReloadingTankReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReloadingTankReplica,
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
		name = "PlayerReloadingTankC1Replica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReloadingTankC1Replica,
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
		name = "PlayerWitchChasingReplica",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsReplica],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkReplica],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWitchChasingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 5.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerWitchChasingC6M1Replica",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsReplica],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkReplica],
			[isc6m1_riverbank],
			[IsWitchAggro],
		],
		//forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWitchChasingC6M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerWitchStartAttackReplica",
		criteria = 
		[
			[IsFaultConcept],
			[IsReplica],
			[IsFaultWitchHarassment],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWitchStartAttackReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},
	{
		name = "PlayerWitchStartAttackC6M1Replica",
		criteria = 
		[
			[IsFaultConcept],
			[IsReplica],
			[IsFaultWitchHarassment],
			[isc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWitchStartAttackC6M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},
	{
		name = "WitchAggroReplica",
		criteria = 
		[
			[ConceptWitchStartAttack],
			[IsReplica],
			[Iswitch_aggro_onReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			//⚠️WARNING: WitchAggro:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorCriticalHurtReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotJockey],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorCriticalHurtReplica,
			},
		],
	},
	{
		name = "SurvivorIncapacitatedHurtReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsNotSpeaking],
			[IsIncapacitatedPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorIncapacitatedHurtReplica,
			},
		],
	},
	{
		name = "SurvivorJockeyHurtMajorReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[IsBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorJockeyHurtMajorReplica,
				followup = RThen("all", "commentjockey", null, -1.07), // Jockey on me!
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedReplica", value = 1, duration = 6.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMinorReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[IsBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorJockeyHurtMajorReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedReplica", value = 1, duration = 6.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMajorC1Replica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorJockeyHurtMajorC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedReplica", value = 1, duration = 6.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorJockeyHurtMinorC1Replica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorJockeyHurtMajorC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedReplica", value = 1, duration = 6.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorMajorHurtReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotJockey],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorMajorHurtReplica,
			},
		],
	},
	{
		name = "SurvivorMinorHurtReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotJockey],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorMinorHurtReplica,
			},
		],
	},
	{
		name = "SurvivorReloadingReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[NotInIntenseCombat],
			[_auto_NotReplicaInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorReloadingReplica,
			},
		],
	},
	{
		name = "SurvivorReloadingIntenseReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[InIntenseCombat],
			[_auto_NotReplicaInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorReloadingIntenseReplica,
			},
		],
	},
	{
		name = "SurvivorReloadingC4M2Replica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[_auto_IsReplicaInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorReloadingC4M2Replica,
			},
		],
	},
	{
		name = "PlayerHelpIncappedReplica",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsIncapacitated],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			[NotCalledForHelpRecently],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHelpIncappedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 7.5 },
		},
	},
	{
		name = "PlayerHelpIncappedBleedingReplica",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsIncapacitated],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			[NotCalledForHelpRecently],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHelpIncappedBleedingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 15.0 },
		},
	},
	{
		name = "PlayerHelpIncappedLethargicReplica",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsIncapacitated],
			[IsIncappedLethargic],
			[NotCalledForHelpRecently],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHelpIncappedLethargicReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 30.0 },
		},
	},
	{
		name = "HelpResponseCoachReplica",
		criteria = 
		[
			[ConceptFriendNeedsHelp],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsReplica],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.HelpResponseCoachReplica,
			},
		],
	},
	{
		name = "C2M1FallingReplica",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M1FallingReplica,
				followup = RThen("self", "EndOfWavWindow5", null, 0.01), // Whoaaa! Whoa!
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.615 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M2CarouselOffReplica",
		criteria = 
		[
			[Conceptc2m2CarouselEnd],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M2CarouselOffReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.895 },
			c2 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M2CarouselOnReplica",
		criteria = 
		[
			[Conceptc2m2CarouselStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M2CarouselOnReplica,
				followup = RThen("self", "_C2M2_CaroStart03", null, 2.0), // Gate's open!
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
		name = "C3M3BridgeButtonReplica",
		criteria = 
		[
			[ConceptC3M3BridgeButton],
			[IsNotSaidC3M3BridgeButton],
			[IsReplica],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M3BridgeButtonReplica,
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
		name = "EndOfWavWindow5Replica",
		criteria = 
		[
			[ConceptEndOfWavWindow5],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.EndOfWavWindow5Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ReplicaWavWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerChainSawUsedReplica",
		criteria = 
		[
			[ConceptChainsawUsed],
			[IsNotSaidChainSawUsed],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IntensityOver50],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerChainSawUsedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChainSawUsed", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M1OverTableReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M1OverTable],
			[IsNotSaidC1M1OverTable],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M1OverTableReplica,
				followup = RThenAny("C1M1Cough", -1.753), // Come on y' all this way.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OverTable", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M1SearchRoomsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M1SearchRooms],
			[IsNotSaidC1M1SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M1SearchRoomsReplica,
				followup = RThenAny("C1M1Cough", -2.783), // Search these rooms. Might be something we can use.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1SearchRooms", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M1ThroughThisDoorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M1ThroughThisDoor],
			[IsNotSaidC1M1ThroughThisDoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M1ThroughThisDoorReplica,
				followup = RThenAny("C1M1Cough", -0.932), // Through this door!
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1ThroughThisDoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M2SpotGunStoreReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsRemarkWorldC1M2SpotGunStore],
			[IsNotSaidRemarkWorldC1M2SpotGunStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear800],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M2SpotGunStoreReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRemarkWorldC1M2SpotGunStore", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3AlarmDoorsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3AlarmDoors],
			[IsNotSaidC1M3AlarmDoors],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3AlarmDoorsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3AlarmDoors", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3CarefulWindowsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3CarefulWindows],
			[IsNotSaidC1M3CarefulWindows],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3CarefulWindowsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CarefulWindows", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3CEDAGoneReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3CEDAGone],
			[IsNotSaidC1M3CEDAGone],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3CEDAGoneReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CEDAGone", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DiscoPantsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3DiscoPants],
			[IsNotSaidC1M3DiscoPants],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3DiscoPantsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DiscoPants", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3DownHere],
			[IsNotSaidC1M3DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3DownHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownHere2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3DownHere2],
			[IsNotSaidC1M3DownHere2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3DownHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3DownTheEscalatorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3DownTheEscalator],
			[IsNotSaidC1M3DownTheEscalator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3DownTheEscalatorReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownTheEscalator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3FoodCourtNotOkayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3FoodCourtNotOkay],
			[IsNotSaidC1M3FoodCourtNotOkay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3FoodCourtNotOkayReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3FoodCourtNotOkay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3FoodCourtOkayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3FoodCourtOkay],
			[IsNotSaidC1M3FoodCourtOkay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3FoodCourtOkayReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3FoodCourtOkay", value = 1, duration = 0.0 },
			c2 = { context = "SaidC1M3ReplicaFoodCourt", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3OverHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3OverHere],
			[IsNotSaidC1M3OverHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3OverHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3OverHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3SearchRoomsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3SearchRooms],
			[IsNotSaidC1M3SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3SearchRoomsReplica,
				followup = RThenAny("C1M1Cough", -2.783), // Search these rooms. Might be something we can use.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3SearchRooms", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3ThisWayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3ThisWay],
			[IsNotSaidC1M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3ThisWayReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3ThroughHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3ThroughHere],
			[IsNotSaidC1M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3ThroughHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3TurnOffAlarm1],
			[IsNotSaidC1M3TurnOffAlarm1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3TurnOffAlarm1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3TurnOffAlarm2],
			[IsNotSaidC1M3TurnOffAlarm2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3TurnOffAlarm2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm3Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3TurnOffAlarm3],
			[IsNotSaidC1M3TurnOffAlarm3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3TurnOffAlarm3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3UpEscalator1],
			[IsNotSaidC1M3UpEscalator1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3UpEscalator1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3UpEscalator2],
			[IsNotSaidC1M3UpEscalator2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3UpEscalator1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC1M3UpEscalator3Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3UpEscalator3],
			[IsNotSaidC1M3UpEscalator3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3UpEscalator1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_campsiteReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_campsite],
			[IsNotSaidc2m1_campsite],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_campsiteReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_campsite", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.914 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_checkroomsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_checkrooms],
			[IsNotSaidc2m1_checkrooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_checkroomsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_checkrooms", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.591 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_cliffReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_cliff],
			[IsNotSaidc2m1_cliff],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_cliffReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_cliff", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 5.157 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_downstairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_downstairs],
			[IsNotSaidc2m1_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_downstairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_downstairs", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.746 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_bridgeoutReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_bridgeout],
			[IsNotSaidc2m1_bridgeout],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_bridgeoutReplica,
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
		name = "PlayerRemarkc2m1_followriverReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_followriver],
			[IsNotSaidc2m1_followriver],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_followriverReplica,
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
		name = "PlayerRemarkc2m1_motelsignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			[ChanceToFire20Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_motelsignReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_motelsign", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 5.093 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m1_motelsignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_motelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_offrampReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_offramp],
			[IsNotSaidc2m1_offramp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_offrampReplica,
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
		name = "PlayerRemarkc2m1_parkReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_park],
			[IsNotSaidc2m1_park],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_parkReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_park", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.644 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_searchlightsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_searchlightsReplica,
				followup = RThen("self", "_c2m1_searchlights02", null, 0.1), // Look at this.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_searchlights", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.835 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_searchlightsNickReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_searchlightsNickReplica,
				followup = RThen("gambler", "_c2m1_searchlights03", null, 0.01), // Look, searchlights! Might be survivors there, we should check it out.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_searchlights", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.835 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_throughhereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_throughhere],
			[IsNotSaidc2m1_throughhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_throughhereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughhere", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.032 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_throughmotelReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_throughmotel],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_throughmotelReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughmotel", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.748 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_throughwindowReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_throughwindow],
			[IsNotSaidc2m1_throughwindow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_throughwindowReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughwindow", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.089 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_uphillReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_uphill],
			[IsNotSaidc2m1_uphill],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_uphillReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_uphill", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.805 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m1_upstairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_upstairs],
			[IsNotSaidc2m1_upstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_upstairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_upstairs", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.221 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_burgersReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_burgers],
			[IsNotSaidc2m2_burgers],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_burgersReplica,
				followup = RThen("mechanic", "_C2M2_ReplicaApocolypse", null, 0.3), // I find a Burger Tank in this place? I'm-a be a one-man cheeseburger apocalypse.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_burgers", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 6.07 },
			c3 = { context = "_auto_ReplicaFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_candymachineReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_candymachine],
			[IsNotSaidc2m2_candymachine],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_candymachineReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_candymachine", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.824 },
			c3 = { context = "_auto_ReplicaFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_carouselbuttonReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_carouselbutton],
			[IsNotSaidc2m2_carouselbutton],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_carouselbuttonReplica,
				followup = RThenAny("_C2M2_CaroButton01", 0.1), // Alright, this is gonna open the gate and what the hell else?
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_carouselbutton", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.462 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_cobblerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_cobbler],
			[IsNotSaidc2m2_cobbler],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_cobblerReplica,
				followup = RThen("producer", "_C2M2_Cobbler", null, 0.0), // Mmmhmm. Peach cobbler.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_cobbler", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.221 },
			c3 = { context = "_auto_ReplicaFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_cottoncandyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_cottoncandy],
			[IsNotSaidc2m2_cottoncandy],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_cottoncandyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_cottoncandy", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 10.109 },
			c3 = { context = "_auto_ReplicaFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_cottoncandy2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_cottoncandy2],
			[IsNotSaidc2m2_cottoncandy],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarmV2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_cottoncandyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_cottoncandy", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 10.109 },
			c3 = { context = "_auto_ReplicaFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_entrancesignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_entrancesign],
			[IsNotSaidc2m2_entrancesign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_entrancesignReplica,
				followup = RThen("self", "_C2M2Entrance", null, 0.1), // Hm. Lights on, but nobody's home.
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
		name = "PlayerRemarkc2m2_lilpeanutReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_lilpeanut],
			[IsNotSaidc2m2_lilpeanut],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_lilpeanutReplica,
				followup = RThen("mechanic", "_C2M2_Peanut01", null, 0.01), // I don't like that peanut.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_lilpeanut", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_ladderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_ladder],
			[IsNotSaidc2m2_ladder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_ladderReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_ladder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_favoriterideReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_favoriteride],
			[IsNotSaidc2m2_favoriteride],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_favoriterideReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_favoriteride", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.037 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_kettlekornReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_kettlekorn],
			[IsNotSaidc2m2_kettlekorn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_kettlekornReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_kettlekorn", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.909 },
			c3 = { context = "_auto_ReplicaFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_miscfoodReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_miscfood],
			[IsNotSaidc2m2_miscfood],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_miscfoodReplica,
				followup = RThen("producer", "_C2M2_MiscFood", null, 0.1), // All these signs are making me hungry.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_miscfood", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 6.24 },
			c3 = { context = "_auto_ReplicaFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_OkraReplica",
		criteria = 
		[
			[Concept_C2M2_Okra],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_OkraReplica,
				followup = RThen("producer", "_C2M2_Okra", null, 0.1), // And what's your point?
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_steakeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_steake],
			[IsNotSaidc2m2_steake],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_steakeReplica,
				followup = RThenAny("_C2M2_Steak01", 0.1), // Once the world goes back to normal? I'm buyin' you guys a steak dinner.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_steake", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.713 },
			c3 = { context = "_auto_ReplicaFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_thistallReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_thistall],
			[IsNotSaidc2m2_thistall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_thistallReplica,
				followup = RThenAny("_C2M2_ThisTall01", 0.01), // 'You must be this tall to ride.' Well-least there won't be no jockeys in there.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_thistall", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 6.523 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_thistall2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_thistall],
			[IsNotSaidc2m2_thistall],
			[ChanceToFire40Percent],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_thistall2Replica,
				followup = RThen("mechanic", "_C2M2_ThisTall02", null, 0.01), // 'You must be this tall to ride.' Sorry Ellis. It's been real man.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_thistall", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 5.502 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m2_topofslideReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_topofslide],
			[IsNotSaidc2m2_topofslide],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m2_topofslideReplica,
				followup = RThen("mechanic", "_C2M2_Slide01", null, 0.01), // We gotta hurry.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_topofslide", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_coasteroffReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_coasteroff],
			[IsNotSaidc2m3_coasteroff],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc2m3_coasteroffReplica,
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
		name = "PlayerRemarkc2m3_coollightReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_coollight],
			[IsNotSaidc2m3_coollight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_coollightReplica,
				followup = RThenAny("_c2m3_coollight01", 0.1), // Back in the day, I had some posters that woulda looked GOOD in this light.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_coollight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_freshairReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_freshair],
			[IsNotSaidc2m3_freshair],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc2m3_freshairReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_freshair", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_freshairReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_freshair],
			[IsNotSaidc2m3_freshair],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_freshair", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_holeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_hole],
			[IsNotSaidc2m3_hole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_holeReplica,
				followup = RThenAny("_c2m3_hole01", 0.1), // Down this hole!
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_hole", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_longesttunnelReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_longesttunnel],
			[IsNotSaidc2m3_longesttunnel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc2m3_longesttunnelReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_longesttunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_longesttunnelReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_longesttunnel],
			[IsNotSaidc2m3_longesttunnel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_longesttunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_overfenceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_overfence],
			[IsNotSaidc2m3_overfence],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_overfenceReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_overfence", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_rubbleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_rubble],
			[IsNotSaidc2m3_rubble],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc2m3_rubbleReplica,
				followup = RThenAny("_c2m3_coaster06", 0.01), // The only way over is on the coaster.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_rubble", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.887 },
			c3 = { context = "_auto_TimerLockA", value = 1, duration = 12.0 },
			c4 = { context = "_auto_CoasterExpo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_swanroomReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_swanroom],
			[IsNotSaidc2m3_swanroom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_swanroomReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_swanroom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_tracks01Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks01],
			[IsNotSaidc2m3_tracks01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_tracks01Replica,
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
		name = "PlayerRemarkc2m3_tracks02Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks02],
			[IsNotSaidc2m3_tracks02],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_tracks01Replica,
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
		name = "PlayerRemarkc2m3_tracks03Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks03],
			[IsNotSaidc2m3_tracks03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_tracks01Replica,
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
		name = "PlayerRemarkc2m3_tracks04Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks04],
			[IsNotSaidc2m3_tracks04],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_tracks01Replica,
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
		name = "PlayerRemarkc2m3_tracks05Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks05],
			[IsNotSaidc2m3_tracks05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_tracks01Replica,
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
		name = "PlayerRemarkc2m3_tracks06Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks06],
			[IsNotSaidc2m3_tracks06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_tracks01Replica,
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
		name = "PlayerRemarkc2m3_tracks07Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks07],
			[IsNotSaidc2m3_tracks07],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_tracks01Replica,
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
		name = "PlayerRemarkc2m3_tracks08Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks08],
			[IsNotSaidc2m3_tracks08],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_tracks01Replica,
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
		name = "PlayerRemarkc2m3_waterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_water],
			[IsNotSaidc2m3_water],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_waterReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_water", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_waterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_water],
			[IsNotSaidc2m3_water],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_water", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m3_wayblockedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_wayblocked],
			[IsNotSaidc2m3_wayblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_wayblockedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_wayblocked", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_barnentryReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_barnentry],
			[IsNotSaidc2m4_barnentry],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m4_barnentryReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_barnentry", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_bumpercarsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_bumpercars],
			[IsNotSaidc2m4_bumpercars],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m4_bumpercarsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_bumpercars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_pendoorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_pendoor],
			[IsNotSaidc2m4_pendoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m4_pendoorReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_pendoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_stadiumReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_stadium],
			[IsNotSaidc2m4_stadium],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m4_stadiumReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_stadium", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m4_upbarnReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_upbarn],
			[IsNotSaidc2m4_upbarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m4_upbarnReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_upbarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc2m5_button2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m5_button2],
			[IsNotSaidc2m5_button2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc2m5_button2Replica,
				followup = RThen("orator", "C2M5_OratorBlank02", null, 0.01), // Well ain't this a bitch, they got a tape for their music. To think I used to like these guys.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m5_button2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3BridgeDownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3BridgeDown],
			[IsNotSaidC3M3BridgeDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3BridgeDownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3BridgeDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2PlaneCrashReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2PlaneCrash],
			[IsNotSaidC3M2PlaneCrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear600],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkReplica],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M2PlaneCrashReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneCrash", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.761 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2PlaneCrashNickReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2PlaneCrash],
			[IsNotSaidC3M2PlaneCrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear600],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire30Percent],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M2PlaneCrashNickReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneCrash", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.761 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C3M2PirogueReplica",
		criteria = 
		[
			[Concept_C3M2Pirogue],
			[IsReplica],
			[ChanceToFire40Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C3M2PirogueReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.25 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C3M2Pirogue2Replica",
		criteria = 
		[
			[Concept_C3M2Pirogue2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C3M2PirogueReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.25 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2PlaneDoorNagReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2PlaneDoorNag],
			[IsNotSaidC3M2PlaneDoorNag],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear500],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M2PlaneDoorNagReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneDoorNag", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
			c3 = { context = "Talk", value = 1, duration = 3.106 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2PlaneDoorNagaReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSaidC3M2PlaneDoorNag],
			[ismapc3m2_swamp],
			[IsNotSaidC3M2OpenDoor],
			[IsNotZombiePresentTank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M2PlaneDoorNagaReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 40.0 },
			c3 = { context = "Talk", value = 1, duration = 1.652 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2SickOfSwampReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2SickOfSwamp],
			[IsNotSaidC3M2SickOfSwamp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M2SickOfSwampReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2SickOfSwamp", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.861 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2Village1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2Village1],
			[IsNotSaidC3M2Village1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear800],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M2Village1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2Village1", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.906 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M2WhereAreWeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2WhereAreWe],
			[IsNotSaidC3M2WhereAreWe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire30Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M2WhereAreWeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2WhereAreWe", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.766 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M2WhereAreWeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2WhereAreWe],
			[IsNotSaidC3M2WhereAreWe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2WhereAreWe", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3LowerGateReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3LowerGate],
			[IsNotSaidC3M3BridgeButton],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3LowerGateReplica,
				followup = RThenAny("InfoRemC3M3LowerGatea", 10.0), // We have to lower this bridge.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3LowerGate", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3SearchHousesReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3SearchHouses],
			[IsNotSaidC3M3SearchHouses],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3SearchHousesReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3SearchHouses", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3StayUpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3StayUpHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3StayUpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3StayUpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3StayUpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThisWayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3ThisWayReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3ThisWayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThroughHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3ThroughHere],
			[IsNotSaidC3M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3ThroughHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3ThroughThisHouseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3ThroughThisHouse],
			[IsNotSaidC3M3ThroughThisHouse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3ThroughThisHouseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughThisHouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3UpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3UpHere],
			[IsNotSaidC3M3UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3UpHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4downroadReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc3m4downroad],
			[IsNotSaidc3m4downroad],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc3m4downroadReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4downroad", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4radioReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc3m4radio],
			[IsNotSaidc3m4radio],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc3m4radioReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4radio", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.975 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4scaffoldReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc3m4scaffold],
			[IsNotSaidc3m4scaffold],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc3m4scaffoldReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc3m4shacksReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc3m4shacks],
			[IsNotSaidc3m4shacks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc3m4shacksReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4shacks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_carcrashReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear500],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m1_carcrashReplica,
				followup = RThenAny("c4m1_wreck01", 0.01), // That's a nasty damn wreck.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_carcrash", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc4m1_carcrashReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear500],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_carcrash", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_garagesaleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_garagesale],
			[IsNotSaidc4m1_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m1_garagesaleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_InBurgerTankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_InBurgerTank],
			[IsNotSaidc4m1_InBurgerTank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m1_InBurgerTankReplica,
				followup = RThenAny("c4m1_InBurgerTank01", 0.01), // Shit. All these zombies should help you swallow.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_InBurgerTank", value = 1, duration = 0.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_nogasReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m1_nogasReplica,
				followup = RThenAny("c4m1_nogas01", 0.01), // Outta gas. Shit.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_nogas", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.538 },
			c3 = { context = "_auto_NoGasGate", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_playgroundfarReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear1000],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m1_playgroundfarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_playgroundnearReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m1_playgroundfarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m1_throughhereAReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_throughhereA],
			[IsNotSaidc4m1_throughhereA],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m1_throughhereAReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_throughhereA", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_gasinsidesignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_gasinsidesign],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear350],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_gasinsidesignReplica,
				followup = RThenAny("_c4m2_gasinside01", 0.01), // Says there's gas inside.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_gasinsidesign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_millentranceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_millentrance],
			[IsNotSaidc4m2_millentrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_millentranceReplica,
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
		name = "PlayerRemarkc4m2_millentranceexitReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_millentranceexit],
			[IsNotSaidc4m2_millentranceexit],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_millentranceexitReplica,
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
		name = "PlayerRemarkc4m2_seegasstationReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_seegasstation],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_seegasstationReplica,
				followup = RThen("self", "_c4m2_seestation01", null, 0.01), // There's the gas station!
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
		name = "PlayerRemarkc4m2_streetblockedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_streetblocked],
			[IsNotSaidc4m2_streetblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_streetblockedReplica,
				followup = RThenAny("_c4m2_streetblocked01", 0.01), // Road's blocked.
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
		name = "PlayerRemarkc4m2_uprampReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_upramp],
			[IsNotSaidc4m2_upramp],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_uprampReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upramp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_upthestairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_upthestairs],
			[IsNotSaidc4m2_upthestairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_upthestairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upthestairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m2_useelevatorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_useelevator],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsSaidc4m2_seegasstation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_useelevatorReplica,
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
		name = "PlayerRemarkc4m2_waterpoolReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_waterpool],
			[IsNotSaidc4m2_waterpool],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_waterpoolReplica,
				followup = RThenAny("_c4m2_waterpool02", 0.01), // Water's starting to pool. We gotta move!
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
		name = "PlayerRemarkc4m2_weatherReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_weather],
			[IsNotSaidc4m2_weather],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_weatherReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_weather", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_caneReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_cane],
			[IsNotSaidc4m3_cane],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_caneReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_cane", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_crosshereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_crosshere],
			[IsNotSaidc4m3_crosshere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_crosshereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_crosshere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_downhereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_downhere],
			[IsNotSaidc4m3_downhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_downhereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downhere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_downstairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_downstairs],
			[IsNotSaidc4m3_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_downstairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downstairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_ducatelsignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_ducatelsign],
			[IsNotSaidc4m3_ducatelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_ducatelsignReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_ducatelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_elevatorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_elevator],
			[IsNotSaidc4m3_elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_elevatorReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_floodedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_flooded],
			[IsNotSaidc4m3_flooded],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_floodedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_flooded", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_flooded2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_flooded2],
			[IsNotSaidc4m3_flooded2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_flooded2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_flooded2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_overtankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_overtank],
			[IsNotSaidc4m3_overtank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_overtankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_overtank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_rainReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_rain],
			[IsNotSaidc4m3_rain],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_rainReplica,
				followup = RThenAny("_c4m3_rain01", 0.02), // Damn. It's really stormin' now.
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_rain", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_thiswayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_thisway],
			[IsNotSaidc4m3_thisway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m2_millentranceexitReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_thisway", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m3_uppipesReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_uppipes],
			[IsNotSaidc4m3_uppipes],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_uppipesReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_uppipes", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_floodedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_flooded],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsSubjectNear150],
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
				func = Custom_Talker_Replica.PlayerRemarkc4m4_floodedReplica,
				followup = RThenAny("_C4M4_FLOODED01", 0.5), // Towns flooded.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_garagesaleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_garagesale],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m4_garagesaleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_garagesale2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_garagesale2],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m4_garagesaleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_playgroundReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_playground],
			[IsNotSaidc4m4_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m4_playgroundReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_porchlightReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_porchlight],
			[IsNotSaidc4m4_porchlight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m4_porchlightReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_porchlight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_truckwreckReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_truckwreck],
			[IsNotSaidc4m4_truckwreck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m4_truckwreckReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_truckwreck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc4m4_useroofsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_useroofs],
			[IsNotSaidc4m4_useroofs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m4_useroofsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_useroofs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m2peopleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkc5m2peopleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2people", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.726 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkc5m2peopleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2people", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkpathc2m1_billboardReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Ispathc2m1_billboard],
			[IsNotSaidpathc2m1_billboard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkReplica],
			[IsSubjectNear1000],
			[IsWorldTalkReplica],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkpathc2m1_billboardReplica,
				followup = RThen("Gambler", "_C2M1Billboard01", null, 0.02), // Hey, Whisperin' Oaks! Shit, I used to go there when I was a kid!
			},
		],
		applycontext =
		{
			c1 = { context = "Saidpathc2m1_billboard", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkremark_MidnightRidersBusReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkremark_MidnightRidersBusReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1CedaMapsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1CedaMaps],
			[IsNotSaidWorldC1M1CedaMaps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1CedaMapsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1CedaMaps", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 5.668 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1KnowBoomerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1KnowBoomer],
			[IsNotSaidWorldC1M1KnowBoomer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1KnowBoomerReplica,
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
		name = "PlayerRemarkWorldC1M1DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1DownHere],
			[IsNotSaidWorldC1M1DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1DownHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1DownStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1DownStairs],
			[IsNotSaidWorldC1M1DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1DownStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1ElevatorBrokenReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1ElevatorBroken],
			[IsNotSaidWorldC1M1ElevatorBroken],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1ElevatorBrokenReplica,
				followup = RThen("gambler", "C1M1Crumbs", null, 0.1), // Oh, crumbs! Elevator's out!
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1ElevatorBroken", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1FireRoomReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1FireRoom],
			[IsNotSaidWorldC1M1FireRoom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1FireRoomReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1FireRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1FireSpreadingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1FireSpreading],
			[IsNotSaidWorldC1M1FireSpreading],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1FireSpreadingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1FireSpreading", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1FirstReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1First],
			[IsNotSaidWorldC1M1First],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1FirstReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1First", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1LedgeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1Ledge],
			[IsNotSaidWorldC1M1Ledge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1LedgeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1Ledge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M1StairsSignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1StairsSign],
			[IsNotSaidWorldC1M1StairsSign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M1StairsSignReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1StairsSign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2CloseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2Close],
			[IsNotSaidWorldC1M2Close],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2CloseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Close", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2DownStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2DownStairs],
			[IsNotSaidWorldC1M2DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[TimeSinceGroupInCombat05],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2DownStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2AbandonedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2Abandoned],
			[IsNotSaidWorldC1M2Abandoned],
			[IsNotCoughing],
			[NotInCombat],
			[IntensityZero],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2AbandonedReplica,
				followup = RThen("gambler", "_C1M2Abandoned", null, 0.1), // Shit. This place is DESERTED. It's startin' to creep me out.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Abandoned", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2DumpsterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2Dumpster],
			[IsNotSaidWorldC1M2Dumpster],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2DumpsterReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Dumpster", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2GunStoreCloseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2GunStoreClose],
			[IsNotSaidWorldC1M2GunStoreClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2GunStoreCloseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2GunStoreClose", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2InHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2InHere],
			[IsNotSaidWorldC1M2InHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2InHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2InHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2JumpTruckReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2JumpTruck],
			[IsNotSaidWorldC1M2JumpTruck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2JumpTruckReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2JumpTruck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2MallSignHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2MallSignHere],
			[IsNotSaidWorldC1M2MallSignHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2MallSignHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2MallSignHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2MallThisWayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2MallThisWay],
			[IsNotSaidWorldC1M2MallThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2MallThisWayReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2MallThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC1M2UpStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2UpStairs],
			[IsNotSaidWorldC1M2UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2UpStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1FerryCrossingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC3M1FerryCrossingReplica,
				followup = RThen("producer", "WorldC3M1FerryCrossingN2", null, 0.1), // Man. When you're forced to turn to people livin' in a swamp to help you get out of a city? I don't think CEDA's doing their job right.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryCrossing", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1FeedGatorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1FeedGator],
			[IsNotSaidWorldC3M1FeedGator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC3M1FeedGatorReplica,
				followup = RThen("mechanic", "WorldC3M1FeedGator2", null, -1.87), // Do not feed the gators.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FeedGator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1FerryNagReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1FerryNag],
			[IsNotSaidWorldC3M1FerryNag],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear600],
			[IsNotSaidC3M1CallFerry2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC3M1FerryNagReplica,
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
		name = "PlayerRemarkWorldC3M1FerryNagaReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSaidWorldC3M1FerryNag],
			[IsNotSaidC3M1CallFerry2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC3M1FerryNagaReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 40.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1Path01Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1Path01],
			[IsNotSaidWorldC3M1Path01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC3M1Path01Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC3M1StayOnReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1StayOn],
			[IsNotSaidWorldC3M1StayOn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC3M1StayOnReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1StayOn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502AlarmButtonReplica",
		criteria = 
		[
			[ConceptWorldC502AlarmButton],
			[IsReplica],
			[IsNotCoughing],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC502AlarmButtonReplica,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502AlarmStoppedReplica",
		criteria = 
		[
			[ConceptWorldC502AlarmStopped],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC502AlarmStoppedReplica,
				followup = RThenAny("WorldC502AlarmStopped2", 0.3), // Got it!
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502AlleyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC502Alley],
			[IsNotSaidWorldC502Alley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC502AlleyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC52Alley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC502NotZombies2Replica",
		criteria = 
		[
			[ConceptWorldC502NotZombies2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC502NotZombies2Replica,
				followup = RThen("mechanic", "WorldC502NotZombies2", null, 0.1), // They been shot.
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502NotZombies3bReplica",
		criteria = 
		[
			[ConceptWorldC502NotZombies3b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC502NotZombies3bReplica,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502Smell2Replica",
		criteria = 
		[
			[ConceptWorldC502Smell2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC502Smell2Replica,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_AcrossHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_AlleyBelowReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_AlleyIntoBuildingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_InAptsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_InAptsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_IntoTheStoreReplica,
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
		name = "PlayerRemarkWorldC6M1_PostWeddingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_PostWeddingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_PostWeddingCakeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ReplicaCake],
			[ChanceToFire100Percent],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_PostWeddingCakeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_SafeRoomAlleyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_ThroughBarReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_ThroughBarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_UpHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_UpTheStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_UpTheStairs2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsWitchPresent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_WeddingWarnReplica,
				followup = RThen("Producer", "RemWorldC6M1_WeddingWarn01", null, -2.989), // Damn. This here wedding didn't end well.
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
		name = "PlayerRemarkWorldC6M2_AcrossPlankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_AcrossPlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_AfterGate1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_AfterGate2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_DownHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_DownIntoBuildingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalLadderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_FinalLadderReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_FinalWaterReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_FinalWaterGoGoReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InJazzClubReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_InJazzClubReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_InSewer1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer1GamblerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_InSewer1GamblerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_InSewerLadder1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewerLadder1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_IntoConstructionReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_IntoPoolHallReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JukeBoxReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_JukeBoxReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JumpDownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_JumpDownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2FallingReplica",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsReplica],
			[isC6m2_bedlam],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OnTourWalk1],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OnTourWalk1Replica,
				followup = RThenAny("WorldC6M2_OnTourWalk101a", -2.374), // Man, this is a real...
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OnTourWalk2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OpenGate1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OpenGate2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2EllisReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
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
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OpenGate2EllisReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_Phase2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_Phase2DownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IntensityOver75],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_Phase2DownIntenseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_PostGate1xReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_PostGate1xReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_SuitcaseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Suitcase],
			[IsNotSaidWorldC6M2_Suitcase],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_SuitcaseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Suitcase", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TourEntranceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_TourEntranceReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_UpCatWalkReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_UpStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_UpStairs2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_BridgeRunReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M3_BridgeRunReplica,
				followup = RThenAny("WorldC6M3_ByBridge01", -3.325), // Come on people, GET TO THE CAR! GET TO THE CAR!
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_BridgeRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_ByBridgeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_C6M3BridgeDown],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M3_ByBridgeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldFootLockerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldFootLockerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_BillReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_Bill],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
			[_auto_NotC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M3_BillReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ReplicaC6M3Bill", value = 1, duration = 0.0 },
			c2 = { context = "_auto_C6M3Bill", value = 1, duration = 0.0 },
			c3 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M3LossZoeyReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsTeenGirl],
			[IsTeenGirlNear400],
			[IsWorldTalkReplica],
			[_auto_SawC6M3Bill],
			[_auto_ReplicaSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M3LossReplica,
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
		name = "WorldC6M3LossFrancisReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsBiker],
			[IsBikerNear400],
			[IsWorldTalkReplica],
			[_auto_SawC6M3Bill],
			[_auto_ReplicaSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M3LossReplica,
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
		name = "WorldC6M3LossZoey2Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsTeenGirl],
			[IsTeenGirlNear400],
			[IsWorldTalkReplica],
			[_auto_SawC6M3Bill],
			[_auto_ReplicaSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M3LossReplica,
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
		name = "WorldC6M3LossFrancis2Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsBiker],
			[IsBikerNear400],
			[IsWorldTalkReplica],
			[_auto_SawC6M3Bill],
			[_auto_ReplicaSawC6M3Bill],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M3LossReplica,
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
		name = "WorldC6M3Loss2Replica",
		criteria = 
		[
			[Conceptc6m3_loss],
			[IsNotCoughing],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M3Loss2Replica,
				followup = RThen("biker", "c6m3_loss", null, 0.1), // Shit. Not a lot of good news goin' around these days.
			},
		],
	},
	{
		name = "WorldC6M3Loss3Replica",
		criteria = 
		[
			[Conceptc6M3_loss2],
			[IsNotCoughing],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M3Loss3Replica,
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignContagiousReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignContagious],
			[IsNotSaidWorldSignContagious],
			[NotInCombat],
			[IsSubjectNear100],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignContagiousReplica,
				followup = RThen("self", "C5M2_signcontagious01", null, 0.2), // Highly contagious area.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignContagious", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignContagiousRochelleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignContagious],
			[IsNotSaidWorldSignContagious],
			[NotInCombat],
			[IsSubjectNear100],
			[IsProducerAlive],
			[IsProducerNear200],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignContagiousRochelleReplica,
				followup = RThen("producer", "C5M2_signcontagious01", null, 0.2), // Highly contagious area.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignContagious", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignContagiousEllisReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignContagious],
			[IsNotSaidWorldSignContagious],
			[NotInCombat],
			[IsSubjectNear100],
			[IsMechanicAlive],
			[IsMechanicNear200],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 3
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignContagiousEllisReplica,
				followup = RThenAny("WorldC502OfficialInstructions", 0.2), // Wait for official instructions.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignContagious", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignDeadlyForceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignDeadlyForce],
			[IsNotSaidWorldSignDeadlyForce],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear100],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignDeadlyForceReplica,
				followup = RThen("Self", "WorldSignDeadlyForce2", null, -3.556), // This shit says: Use of deadly force authorized.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignDeadlyForce", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignDeadlyForce2Replica",
		criteria = 
		[
			[ConceptWorldSignDeadlyForce2],
			[IsReplica],
			[IsNotSaidWorldSignDeadlyForce2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignDeadlyForce2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignDeadlyForce2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignOfficialInstructionsReplica",
		criteria = 
		[
			[ConceptWorldC502OfficialInstructions],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignOfficialInstructionsReplica,
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignBarricadeHomesReplica",
		criteria = 
		[
			[ConceptWorldC502BarricadeHomes],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignBarricadeHomesReplica,
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignFormLineReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignFormLine],
			[IsNotSaidWorldSignFormLine],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignFormLineReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignFormLine", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignPhotographyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignPhotography],
			[IsNotSaidWorldSignPhotography],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignPhotographyReplica,
				followup = RThen("mechanic", "WorldSignPhotography2", null, -1.667), // Photography prohibited.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignPhotography", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.567 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldSignPhotographyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignPhotography],
			[IsNotSaidWorldSignPhotography],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignPhotography", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignReportSickReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignReportSick],
			[IsNotSaidWorldSignReportSick],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignReportSickReplica,
				followup = RThen("Mechanic", "WorldSignReportSick2", null, -1.286), // Report the sick.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignReportSick", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldSignReportSickReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignReportSick],
			[IsNotSaidWorldSignReportSick],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignReportSick", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignReportUnusReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignReportUnusual],
			[IsNotSaidWorldSignReportUnusual],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignReportUnusReplica,
				followup = RThen("mechanic", "WorldSignReportUnusual2", null, 0.1), // Report unusual behavoir.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignReportUnusual", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignRestrictedAreaReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignRestrictedArea],
			[IsNotSaidWorldSignRestrictedArea],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignRestrictedAreaReplica,
				followup = RThenAny("WorldSignRestrictedArea2", -1.48), // Restricted area.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignRestrictedArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.58 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignsInfectedDetReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignsInfectedDetected],
			[IsNotSaidWorldSignsInfectedDetected],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear100],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignsInfectedDetReplica,
				followup = RThenAny("WorldSignsInfectedDetected2", -2.244), // Infected detected in this area.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignsInfectedDetected", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignStayInGroupReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignStayInGroup],
			[IsNotSaidWorldSignStayInGroup],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignStayInGroupReplica,
				followup = RThen("self", "WorldSignStayInGroup2", null, -1.7), // Stay in your group.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignStayInGroup", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldSignStayInGroupReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignStayInGroup],
			[IsNotSaidWorldSignStayInGroup],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._PlayerInfoRemarkableBlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignStayInGroup", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignStayInGroup2Replica",
		criteria = 
		[
			[ConceptWorldSignStayInGroup2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignStayInGroup2Replica,
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignWhereIsCEDAReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignWhereIsCEDA],
			[IsNotSaidWorldSignWhereIsCEDA],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[ChanceToFire100Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignWhereIsCEDAReplica,
				followup = RThen("replica", "WorldSignWhereIsCEDA2", null, 0.4), // Where is CEDA.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignWhereIsCEDA", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignWhereIsCEDARochelleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignWhereIsCEDA],
			[IsNotSaidWorldSignWhereIsCEDA],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsProducerAlive],
			[IsProducerNear400],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignWhereIsCEDARochelleReplica,
				followup = RThenAny("WorldSignWhereIsCEDA2", 0.1), // Where is CEDA.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignWhereIsCEDA", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignWhereIsCEDAEllisReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignWhereIsCEDA],
			[IsNotSaidWorldSignWhereIsCEDA],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[ChanceToFire25Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 3
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignWhereIsCEDAEllisReplica,
				followup = RThenAny("WorldC502QuaratineZone", 0.4), // Quarantine zone. No unauthorized admittance.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignWhereIsCEDA", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldSignWhereIsCEDA2Replica",
		criteria = 
		[
			[ConceptWorldSignWhereIsCEDA2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldSignWhereIsCEDA2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.114 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldSignC5AlarmWillSoundReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignC5AlarmWillSound],
			[IsNotSaidWorldSignC5AlarmWillSound],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldSignC5AlarmWillSoundReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignC5AlarmWillSound", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldSignC5AlarmWillSound3Replica",
		criteria = 
		[
			[ConceptWorldSignC5AlarmWillSound3],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldSignC5AlarmWillSound3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RespondAffirmativeReplica",
		criteria = 
		[
			[ConceptRespondAffirmative],
			[IssuerMediumClose],
			[IsNotCoughing],
			[NotInCombat],
			[isReplica],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.RespondAffirmativeReplica,
			},
		],
	},
	{
		name = "PlayerFollowMeReplica",
		criteria = 
		[
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerFollowMeReplica,
			},
		],
	},
	{
		name = "PlayerHelpReplica",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsReplica],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHelpReplica,
			},
		],
	},
	{
		name = "PlayerHurryUpReplica",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHurryUpReplica,
			},
		],
	},
	{
		name = "PlayerHurryUpC4M2Replica",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsReplica],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[IsWorldTalkReplica],
			[_auto_IsReplicaInWitchville],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHurryUpC4M2Replica,
			},
		],
	},
	{
		name = "PlayerKillThatLightReplica",
		criteria = 
		[
			[ConceptPlayerKillThatLight],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillThatLightReplica,
			},
		],
	},
	{
		name = "PlayerLeadOnReplica",
		criteria = 
		[
			[ConceptPlayerLeadOn],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLeadOnReplica,
			},
		],
	},
	{
		name = "PlayerMoveOnReplica",
		criteria = 
		[
			[ConceptPlayerMoveOn],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerMoveOnReplica,
			},
		],
	},
	{
		name = "PlayerStayTogetherReplica",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerStayTogetherReplica,
			},
		],
	},
	{
		name = "PlayerWatchOutBehindReplica",
		criteria = 
		[
			[ConceptPlayerWatchOutBehind],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWatchOutBehindReplica,
			},
		],
	},
	{
		name = "PlayerAskReadyReplica",
		criteria = 
		[
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAskReadyReplica,
			},
		],
	},
	{
		name = "PlayerImWithYouReplica",
		criteria = 
		[
			[ConceptPlayerImWithYou],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerImWithYouReplica,
			},
		],
	},
	{
		name = "PlayerLaughReplica",
		criteria = 
		[
			[ConceptPlayerLaugh],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLaughReplica,
			},
		],
	},
	{
		name = "PlayerLostCallReplica",
		criteria = 
		[
			[ConceptPlayerLostCall],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLostCallReplica,
			},
		],
	},
	{
		name = "PlayerNiceJobResponseReplica",
		criteria = 
		[
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNiceJobResponseReplica,
			},
		],
	},
	{
		name = "PlayerNoReplica",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNoReplica,
			},
		],
	},
	{
		name = "PlayerNoEllisReplica",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsMechanic],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNoEllisReplica,
			},
		],
	},
	{
		name = "PlayerNoFemaleReplica",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsProducer],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNoFemaleReplica,
			},
		],
	},
	{
		name = "PlayerNoZoeyReplica",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTeenGirl],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNoFemaleReplica,
			},
		],
	},
	{
		name = "PlayerAnswerLostCallReplica",
		criteria = 
		[
			[ConceptPlayerAnswerLostCall],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAnswerLostCallReplica,
			},
		],
	},
	{
		name = "KillStealCalledOutReplica",
		criteria = 
		[
			[ConceptKillStealCalledOut],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.KillStealCalledOutReplica,
			},
		],
	},
	{
		name = "PlayerSorryReplica",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsNotShotTeammateReplica],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerSorryReplica,
			},
		],
	},
	{
		name = "PlayerSorryFFReplica",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsShotTeammateReplica],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerSorryFFReplica,
			},
		],
	},
	{
		name = "PlayerThanksReplica",
		criteria = 
		[
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerThanksReplica,
			},
		],
	},
	{
		name = "PlayerYellRunReplica",
		criteria = 
		[
			[ConceptPlayerYellRun],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerYellRunReplica,
			},
		],
	},
	{
		name = "PlayerYesReplica",
		criteria = 
		[
			[ConceptPlayerYes],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerYesReplica,
			},
		],
	},
	{
		name = "PlayerYouAreWelcomeReplica",
		criteria = 
		[
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerYouAreWelcomeReplica,
			},
		],
	},
	{
		name = "YouAreWelcomeReplica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSpeaking],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerYouAreWelcomeReplica,
			},
		],
	},
	{
		name = "NickC1AttitudeReplica",
		criteria = 
		[
			[ConceptNickC1Attitude],
			[IsNotCoughing],
			[IsNotSpeaking],
			[FromIsGambler],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NickC1AttitudeReplica,
			},
		],
	},
	{
		name = "YouAreWelcomeGamblerReplica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.YouAreWelcomeGamblerReplica,
			},
		],
	},
	{
		name = "YouAreWelcomeGamblerC1Replica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerYouAreWelcomeReplica,
			},
		],
	},
	{
		name = "YouAreWelcomeMechanicReplica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsMechanic],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.YouAreWelcomeMechanicReplica,
			},
		],
	},
	{
		name = "YouAreWelcomeMechanicC1Replica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsMechanic],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerYouAreWelcomeReplica,
			},
		],
	},
	{
		name = "YouAreWelcomeProducerReplica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.YouAreWelcomeProducerReplica,
			},
		],
	},
	{
		name = "YouAreWelcomeProducerC1Replica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerYouAreWelcomeReplica,
			},
		],
	},
	{
		name = "BotAttentionBattleReplica",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsReplica],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsInBattlefield],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.BotAttentionBattleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "BotNoteHumanAttentionReplica",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsReplica],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsInStartArea],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.BotNoteHumanAttentionReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerNegativeReplica",
		criteria = 
		[
			[ConceptPlayerNegative],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerNegativeReplica,
			},
		],
	},
	{
		name = "PlayerShootCarNotReplica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[IsNotCoughing],
			[SubjectIsNotReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotc5m3_cemetery],
			[IsCarAlarm],
			[ChanceToFire40Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerShootCarNotReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerShootCarReplica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[IsNotCoughing],
			[SubjectIsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotc5m3_cemetery],
			[IsCarAlarm],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerShootCarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerHeardBoomerReplica",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardBoomerReplica,
			},
		],
	},
	{
		name = "PlayerHeardHunterReplica",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardHunterReplica,
			},
		],
	},
	{
		name = "PlayerHeardSmokerReplica",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardSmokerReplica,
			},
		],
	},
	{
		name = "PlayerHeardChargerReplica",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardChargerReplica,
			},
		],
	},
	{
		name = "PlayerHeardSpitterReplica",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardSpitterReplica,
			},
		],
	},
	{
		name = "PlayerHeardJockeyReplica",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardJockeyReplica,
			},
		],
	},
	{
		name = "PlayerHeardBoomerC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowBoomer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardBoomerC1Replica,
			},
		],
	},
	{
		name = "PlayerHeardHunterC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowHunter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardBoomerC1Replica,
			},
		],
	},
	{
		name = "PlayerHeardSmokerC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSmoker],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardBoomerC1Replica,
			},
		],
	},
	{
		name = "PlayerHeardChargerC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowCharger],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardBoomerC1Replica,
			},
		],
	},
	{
		name = "PlayerHeardSpitterC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSpitter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardBoomerC1Replica,
			},
		],
	},
	{
		name = "PlayerHeardJockeyC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardJockeyC1Replica,
			},
		],
	},
	{
		name = "PlayerHeardTankReplica",
		criteria = 
		[
			[ConceptPlayerHeardTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardTankReplica,
			},
		],
	},
	{
		name = "PlayerHeardWitchReplica",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHeardWitchReplica,
			},
		],
	},
	{
		name = "PlayerHurrahReplica",
		criteria = 
		[
			[ConceptPlayerHurrah],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHurrahReplica,
			},
		],
	},
	{
		name = "PlayerWarnCarefulReplica",
		criteria = 
		[
			[ConceptPlayerWarnCareful],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnCarefulReplica,
			},
		],
	},
	{
		name = "SurvivorSpottedWorldFarReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWorldFarReplica,
			},
		],
	},
	{
		name = "C6M3_PourFinishedReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsL4D1Alive],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_PourFinishedReplica,
				followup = RThen("Manager", "L4D1_NiceJobPour", null, 0.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour20MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score20MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour20MoreSCReplica,
				followup = RThen("self", "GasPour20More", null, 0.01), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour20MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour20MoreWaitReplica,
				followup = RThen("self", "GasPour20More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour10MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score10MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour10MoreSCReplica,
				followup = RThen("self", "GasPour10More", null, 0.01), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour10MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour10MoreWaitReplica,
				followup = RThen("self", "GasPour10More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour1MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score1MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour1MoreSCReplica,
				followup = RThen("self", "GasPour1More", null, 0.01), // Blank
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
		name = "GasPour1MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour1MoreWaitReplica,
				followup = RThen("self", "GasPour1More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour2MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score2MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour2MoreSCReplica,
				followup = RThen("self", "GasPour2More", null, 0.01), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour2MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour2MoreWaitReplica,
				followup = RThen("self", "GasPour2More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour3MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score3MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour3MoreSCReplica,
				followup = RThen("self", "GasPour3More", null, 0.01), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour3MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour3MoreWaitReplica,
				followup = RThen("self", "GasPour3More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour5MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score5MoreSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour5MoreSCReplica,
				followup = RThen("self", "GasPour5More", null, 0.01), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_GasCountOK", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour5MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour5MoreWaitReplica,
				followup = RThen("self", "GasPour5More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPourDoneSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsScavenge],
			[ScoreDoneSC],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPourDoneSCReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPourSCAloneReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsAlone],
			[IsWorldTalkReplica],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPourSCAloneReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GasPourAloneReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsAlone],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPourSCAloneReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GasPourSCNotAloneReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPourSCNotAloneReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "GrabbingGasSCReplica",
		criteria = 
		[
			[ConceptPlayerEquippedScavengeItem],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear500],
			[IsWorldTalkReplica],
			[NotSaidGrabbingCan],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GrabbingGasSCReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGrabbingCan", value = 1, duration = 8.0 },
		},
	},
	{
		name = "PlayerShotGasCanReplica",
		criteria = 
		[
			[ConceptPlayerShotGasCan],
			[IsReplica],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerShotGasCanReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerShotGasCan", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ScavengeStartReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ScavengeStartReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "ScavengeStartC1M4Replica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m4_atrium],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.ScavengeStartC1M4Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCommentJockeyMaleReplica",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsReplica],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			[ChanceToFire25Percent],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsNotBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerCommentJockeyMaleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCommentJockeyGenericReplica",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsReplica],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsNotBeingJockeyed],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerCommentJockeyGenericReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4M2LockTheDoorCheckPointReplica",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c4m2_sugarmill_a],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C4M2LockTheDoorCheckPointReplica,
			},
		],
	},
	{
		name = "GoingToDieCoachCoachReplica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsReplicaNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GoingToDieCoachCoachReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "SurvivorVocalizeGoingToDie3Replica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeGoingToDie3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "SurvivorVocalizeGoingToDie3C5M5Replica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsOnThirdStrike],
			[IsMapc5m5_bridge],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotSaidGoingToDieC5M5],
			[ChanceToFire50Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeGoingToDie3C5M5Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 8.0 },
			c3 = { context = "SaidGoingToDieC5M5", value = 1, duration = 0.0 },
		},
	},
	{
		name = "PlayerAlertGiveItemStopReplica",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAlertGiveItemStopReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerAlertGiveItemStopAnFirstAidReplica",
		criteria = 
		[
			[ConceptAlertGiveItemStopFirstAidA],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[NoHasFirstAidKit],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAlertGiveItemStopAnFirstAidReplica,
				followup = RThen("subject", "AlertGiveItemStop", null, 0.0), // Blank
			},
		],
	},
	{
		name = "PlayerAlertGiveItemStopC1Replica",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAlertGiveItemStopC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerAlertGiveItemStopQnFirstAidReplica",
		criteria = 
		[
			[ConceptBashWithItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsItemFirstAidKit],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerAlertGiveItemStopQnFirstAidReplica,
				followup = RThen("subject", "AlertGiveItemStopFirstAidA", null, 0.0), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStopFirstAid", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerEatPillsReplica",
		criteria = 
		[
			[ConceptEatPills],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerEatPillsReplica,
			},
		],
	},
	{
		name = "PlayerGamblerPouncedReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGamblerPouncedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGamblerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGetInsideCheckPointReplica",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGetInsideCheckPointReplica,
				followup = RThenAny("StayTogetherInsideReponse", -2.761), // Come on people, get you asses in here!
			},
		],
	},
	{
		name = "PlayerGetInsideCheckPointC2M2Replica",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[ismap_c2m2],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGetInsideCheckPointC2M2Replica,
				followup = RThenAny("StayTogetherInsideReponse", 0.3), // Come on, get into the tunnel of love.
			},
		],
	},
	{
		name = "PlayerGrabbedByJockeyReplica",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGrabbedByJockeyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedReplica", value = 1, duration = 6.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGrabbedByJockeyC1Replica",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGrabbedByJockeyC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedReplica", value = 1, duration = 6.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGrenadeMolotovReplica",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsGrenadeMolotov],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGrenadeMolotovReplica,
				followup = RThenAny("GrenadeCareful", 0.0), // Molotov!
			},
		],
	},
	{
		name = "PlayerGrenadePipeBombReplica",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsGrenadePipeBomb],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGrenadePipeBombReplica,
				followup = RThenAny("GrenadeCareful", -1.004), // GRENADE!
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJarReplica",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsGrenadeVomitJar],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGrenadeVomitJarReplica,
				followup = RThenAny("GrenadeCareful", -0.646), // Heads up!
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJarC1Replica",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsGrenadeVomitJar],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGrenadeVomitJarC1Replica,
				followup = RThenAny("GrenadeCareful", -0.929), // Incoming!
			},
		],
	},
	{
		name = "PlayerIncapacitatedInitialReplica",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerIncapacitatedInitialReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerIncapacitatedInitialC1M2Replica",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsReplica],
			[ismap_c1m2_streets],
			[IsC1M2WhitakerErrand],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerIncapacitatedInitialC1M2Replica,
				followup = RThen("orator", "C1M2SurvivorDown", null, 0.1), // 
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerKillConfirmationReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsSubjectFar300],
			[ChanceToFire40Percent],
			[isNotmap_c1m1_hotel],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillConfirmationReplica,
				followup = RThenAny("PlayerNiceShot", -0.376), // Got it!
			},
		],
	},
	{
		name = "PlayerKillConfirmationC1M1Replica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkReplica],
			[IsUsingFirearm],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillConfirmationC1M1Replica,
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
		name = "PlayerKillConfirmationC1M1MeleeReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkReplica],
			[EquippedMeleeWeapon],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillConfirmationC1M1Replica,
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
		name = "PlayerKillJockeyConfirmationC2M4EasterEggReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsJockey],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidJockeyEasterEgg],
			[ChanceToFire1Percent],
			[ismap_c2m4],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillJockeyConfirmationC2M4EasterEggReplica,
				followup = RThen("self", "C2M4JockeyEasterEgg", null, 1.5), // No.
			},
		],
		applycontext =
		{
			c1 = { context = "JockeyEasterEgg", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "KillJockeyC2M4EasterEggReplica",
		criteria = 
		[
			[ConceptC2M4JockeyEasterEgg],
			[IsNotCoughing],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.KillJockeyC2M4EasterEggReplica,
				followup = RThen("all", "PlayerLaugh", null, 0.1), // Enh-oh.
			},
		],
	},
	{
		name = "RightfulKillerReplica",
		criteria = 
		[
			[ConceptRightfulKiller],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.RightfulKillerReplica,
				followup = RThen("self", "InsistMine", { from = "Replica" }, 0.0),
			},
		],
	},
	{
		name = "PlayerKillTankConfirmationReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsRocking],
			[IsWorldTalkReplica],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillTankConfirmationReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillConfirmationEllisCloseReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsSubjectFar300],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsEllisAlsoWarn],
			[ChanceToFire5Percent],
			[IsRocking],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillConfirmationEllisCloseReplica,
				followup = RThen("Mechanic", "KillSteal", null, 0.0), // 
			},
		],
	},
	{
		name = "PlayerKillTankNotHealthyReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsNotHealthy],
			[IsWorldTalkReplica],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillTankNotHealthyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerKillTankConfirmationC1M2Replica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[ismap_c1m2_streets],
			[IsEveryoneAlive],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerKillTankConfirmationC1M2Replica,
				followup = RThen("mechanic", "C1M2TankInfo", null, 0.1), // 
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
		name = "PlayerCr0wnedWitchReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsReplica],
			[SubjectIsAWitch],
			[IsNotWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
	},
	{
		name = "PlayerKilledStartledWitchReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsReplica],
			[SubjectIsAWitch],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			//⚠️WARNING: WitchAggro:--1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerLockTheDoorCheckPointReplica",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsNotAlone],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLockTheDoorCheckPointReplica,
			},
		],
	},
	{
		name = "PlayerLockTheDoorCheckPointC1Replica",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[ismap_c1m1_hotel],
			[IsNotAlone],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLockTheDoorCheckPointC1Replica,
			},
		],
	},
	{
		name = "PlayerMechanicPouncedReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsMechanic],
			[IsNotSaidMechanicPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerMechanicPouncedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "MechanicPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerMechanicPouncedC1Replica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsMechanic],
			[IsNotSaidMechanicPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerMechanicPouncedC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "MechanicPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerGamblerPouncedC1Replica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerMechanicPouncedC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGamblerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerProducerPouncedReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerProducerPouncedReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerProducerPouncedC1KnownReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[YesKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerProducerPouncedC1KnownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerProducerPouncedC1M2Replica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m2_streets],
			[NoKnowHunter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerProducerPouncedC1KnownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerProducerPouncedC1UnknownReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerProducerPouncedC1UnknownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidProducerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRevivedByDefibrillatorReplica",
		criteria = 
		[
			[ConceptRevivedByDefibrillator],
			[IsNotCoughing],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRevivedByDefibrillatorReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRevivedByDefibrillator2Replica",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRevivedByDefibrillator2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRevivedByDefibrillator2ProducerReplica",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsReplica],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRevivedByDefibrillator2ProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRevivedByDefibrillator2TeenGirlReplica",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsReplica],
			[SubjectIsTeenGirl],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRevivedByDefibrillator2ProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerStayTogetherSaferoomReplica",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerStayTogetherSaferoomReplica,
			},
		],
	},
	{
		name = "PlayerSuggestMeHealthReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[IsNotSuggestedHealth],
			[YesHasFirstAidKit],
			[IsNotIncapacitated],
			[IsReplica],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerSuggestMeHealthReplica,
				followup = RThenAny("PlayerSuggestHealth", 0.0), // 
			},
		],
	},
	{
		name = "PlayerSuggestHealthGenericReplica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat20],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerSuggestHealthGenericReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthC1Replica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerSuggestHealthC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthGamblerReplica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerSuggestHealthGamblerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthMechanicReplica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerSuggestHealthMechanicReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerSuggestHealthProducerReplica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerSuggestHealthProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionReplica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerTransitionReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionCloseReplica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerTransitionCloseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionSoloReplica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerTransitionSoloReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC1M2Replica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m2_streets],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerTransitionC1M2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC1M3Replica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m3_mall],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerTransitionC1M3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC5M4Replica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsMapc5m4_quarter],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerTransitionC5M4Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerTransitionC6M2Replica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Isc6m2_bedlam],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerTransitionC6M2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerUsingDefibrillatorReplica",
		criteria = 
		[
			[ConceptPlayerUsingDefibrillator],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerUsingDefibrillatorReplica,
			},
		],
	},
	{
		name = "PlayerWarnHeardBoomerReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsReplica],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardBoomerReplica,
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
		name = "PlayerWarnHeardChargerReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsReplica],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardChargerReplica,
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
		name = "PlayerWarnHeardHunterReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardHunterReplica,
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
		name = "PlayerWarnHeardJockeyReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardJockeyReplica,
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
		name = "PlayerWarnHeardSmokerReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardSmokerReplica,
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
		name = "PlayerWarnHeardSpitterReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardSpitterReplica,
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
		name = "PlayerWarnHeardJockeyC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardJockeyC1Replica,
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
		name = "PlayerWarnHeardBoomerC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardBoomerC1Replica,
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
		name = "PlayerWarnHeardChargerC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardBoomerC1Replica,
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
		name = "PlayerWarnHeardHunterC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardBoomerC1Replica,
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
		name = "PlayerWarnHeardSmokerC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardBoomerC1Replica,
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
		name = "PlayerWarnHeardSpitterC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardBoomerC1Replica,
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
		name = "PlayerWarnHeardWitchReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsReplica],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[_auto_NotAlarmV2],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardWitchReplica,
				followup = RThenAny("PlayerKillThatLight", -2.24), // Quiet everybody I hear a bitch.
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
		name = "PlayerWarnHeardWitchC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardWitchC1Replica,
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
		name = "PlayerHeardWitchC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardWitchC1Replica,
			},
		],
	},
	{
		name = "PlayerWarnHeardWitchC1RochelleReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsClosestSurvivorNear1200],
			[IsProducerAlive],
			[IsProducerNear800],
			[ChanceToFire40Percent],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnHeardWitchC1RochelleReplica,
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
		name = "PlayerWarnMegaMobReplica",
		criteria = 
		[
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsReplica],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSpeaking],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnMegaMobReplica,
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
		name = "PlayerWarnWitchAngryReplica",
		criteria = 
		[
			[ConceptWitchGettingAngry],
			[IsNotCoughing],
			[IsReplica],
			[IsNotWarnAngryWitch],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWarnWitchAngryReplica,
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
		name = "PlayerWorldInfectedDet2Replica",
		criteria = 
		[
			[ConceptWorldSignsInfectedDetected2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldInfectedDet2Replica,
			},
		],
	},
	{
		name = "PlayerWorldStayTogether2Replica",
		criteria = 
		[
			[ConceptWorldSignsStayTogether2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldInfectedDet2Replica,
			},
		],
	},
	{
		name = "PlayerWorldIntroC31BlankReplica",
		criteria = 
		[
			[ConceptintroC3M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldIntroC31BlankReplica,
				followup = RThenAny("WorldIntroC31", 5.0), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldIntroC51Replica",
		criteria = 
		[
			[ConceptintroC5M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldIntroC51Replica,
				followup = RThen("orator", "C5M1_intro001", null, 0.01), // Blank
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWorldIntroC513Replica",
		criteria = 
		[
			[ConceptWorldIntroC513],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldIntroC513Replica,
			},
		],
	},
	{
		name = "PlayerWorldSignColdBeer2Replica",
		criteria = 
		[
			[ConceptWorldSignColdBeer2],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IssuerClose],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldSignColdBeer2Replica,
			},
		],
	},
	{
		name = "PlayerWorldSignHurricane2Replica",
		criteria = 
		[
			[ConceptWorldSignHurricane2],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IssuerReallyClose],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWorldSignHurricane2Replica,
				followup = RThen("producer", "WorldSignHurricane3", null, 0.1), // WHAT??
			},
		],
	},
	{
		name = "SurvivorCaughtVomitReplica",
		criteria = 
		[
			[ConceptPlayerVomitInFace],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorCaughtVomitReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 10.0 },
		},
	},
	{
		name = "SurvivorchargerpoundReplica",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidchargerpound],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorchargerpoundReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorchargerpoundC1Replica",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidchargerpound],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorchargerpoundReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorCoughingReplica",
		criteria = 
		[
			[ConceptSurvivorCoughing],
			[IsCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorCoughingReplica,
			},
		],
	},
	{
		name = "SurvivorCoughingDeathReplica",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorCoughingReplica,
			},
		],
	},
	{
		name = "SurvivorDeathReplica",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorDeathReplica,
			},
		],
	},
	{
		name = "SurvivorGooedBySpitterReplica",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorGooedBySpitterReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorGooedBySpitterC1Replica",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			[IsNotIncapacitated],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorGooedBySpitterC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorGrabbedByTongueReplica",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorGrabbedByTongueReplica,
			},
		],
	},
	{
		name = "SurvivorGrabbedByTongueC1Replica",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorGrabbedByTongueC1Replica,
			},
		],
	},
	{
		name = "SurvivorNearCheckpointReplica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC1M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c1m1_hotel],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC1M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC1M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c1m2_streets],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC1M2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC1M3Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c1m3_mall],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC1M3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c2m1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC2M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c2m2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC2M2Replica,
				followup = RThenAny("_C2M2_SeeSafehouse01", 0.1), // There's the saferoom! Everybody in the tunnel of love!
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC2M4Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c2m4],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC2M4Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC3M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c3m1_plankcountry],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC3M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC3M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismapc3m2_swamp],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC3M2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkC3M3SafeHouseAheadReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3SafeHouseAhead],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC3M3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c4m1_milltown_a],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC4M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c4m2_sugarmill_a],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC4M2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M3Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[isc4m3],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC4M3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC4M4Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[isc4m4],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC4M4Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC5M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsMapc5m2_park],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC5M2Replica,
				followup = RThenAny("C5M2Freeway01", 0.1), // Look, that freeway's headin' right to our bridge.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC5M4Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsMapc5m4_quarter],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC5M4Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC6M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[Isc6m1_riverbank],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC6M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearCheckpointC6M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[Isc6m2_bedlam],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearCheckpointC6M2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleReplica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearFinaleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC1M4Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[ismap_c1m4_atrium],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC2M5Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[ismap_c2m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearFinaleC2M5Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC3M4Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[ismapc3m4_plantation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearFinaleC3M4Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC4M5Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[isc4m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC5M5Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[IsMapc5m5_bridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorNearFinaleC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[Isc6m3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPouncedByHunterReplica",
		criteria = 
		[
			[ConceptScreamWhilePounced],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPouncedByHunterReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorTankPoundReplica",
		criteria = 
		[
			[ConceptPlayerGroundPoundedByTank],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorTankPoundReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorTankPoundC1Replica",
		criteria = 
		[
			[ConceptPlayerGroundPoundedByTank],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorTankPoundC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorVocalizeBackUpReplica",
		criteria = 
		[
			[ConceptPlayerBackUp],
			[IsReplica],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeBackUpReplica,
			},
		],
	},
	{
		name = "SurvivorVocalizeEmphaticGoReplica",
		criteria = 
		[
			[ConceptPlayerEmphaticGo],
			[IsReplica],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeEmphaticGoReplica,
			},
		],
	},
	{
		name = "SurvivorVocalizeGoingToDieReplica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeGoingToDieReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "SurvivorVocalizeGoingToDie3Replica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeGoingToDie3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},
	{
		name = "SurvivorVocalizeLookOutReplica",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeLookOutReplica,
			},
		],
	},
	{
		name = "SurvivorVocalizeThisWayReplica",
		criteria = 
		[
			[ConceptPlayerThisWay],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeThisWayReplica,
			},
		],
	},
	{
		name = "SurvivorVocalizeWaitHereReplica",
		criteria = 
		[
			[ConceptPlayerWaitHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorVocalizeWaitHereReplica,
			},
		],
	},
	{
		name = "SurvivorWarnSpitterIncomingReplica",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorWarnSpitterIncomingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},
	{
		name = "SurvivorWarnSpitterIncomingC1Replica",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidWarnSpitterIncoming],
			[C1M1orC1M2],
			[IsWorldTalkReplica],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorWarnSpitterIncomingC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},
	{
		name = "PlayerLedgeHangEndReplica",
		criteria = 
		[
			[ConceptPlayerLedgeHangEnd],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLedgeHangEndReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeHangMiddleReplica",
		criteria = 
		[
			[ConceptPlayerLedgeHangMiddle],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLedgeHangMiddleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeHangStartReplica",
		criteria = 
		[
			[ConceptPlayerLedgeHangStart],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLedgeHangStartReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "SurvivorFirstDeathReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsReplica],
			[IsNotSaidSomeoneDied],
			[IsEveryoneAlive],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorFirstDeathReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DeathOneReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsReplica],
			[IsNotSaidSomeoneDied],
			[IsWithTwo],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DeathOneReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DoubleDeathReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsClosestSurvivorNear400],
			[IsWithOnlyThree],
			[IsNotIncapacitated],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DoubleDeathReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.TeamKillReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromMechanicReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.TeamKillFromMechanicReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromProducerReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.TeamKillFromProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "TeamKillFromTeenGirlReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireTeenGirl],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.TeamKillFromProducerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpSMG],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1TakeSubMachineGunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGunSilencedReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1TakeSubMachineGunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakePumpShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpPumpShotgun],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1TakeSubMachineGunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeChromeShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpShotgun_Chrome],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1TakeSubMachineGunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeCSSMP5Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpSmg_mp5],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1TakeSubMachineGunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorDeployUpExplosivesReplica",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSaidDeployUpgradePack_Explosive],
			[HasUpgradePack_Explosive],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorDeployUpExplosivesReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Explosive", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorDeployUpIncendiaryReplica",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSaidDeployUpgradePack_Incendiary],
			[HasUpgradePack_Incendiary],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorDeployUpIncendiaryReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Incendiary", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAdrenalineReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpAdrenaline],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupAdrenalineReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAutoShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpAutoShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupAutoShotgunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSpasShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpShotgun_spas],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupAutoShotgunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupchainsawReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpchainsaw],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupchainsawReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupcricket_batReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpcricket_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupcricket_batReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupCricketBatReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpcricket_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupCricketBatReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupShovelReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpShovel],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupCricketBatReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupKnifeReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpKnife],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupKnifeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupCrowBarReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpCrowBar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupCrowBarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupDefibrillatorReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpDefibrillator],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupDefibrillatorReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupelectric_guitarReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpelectric_guitar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupelectric_guitarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupFirstAidKitReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpFirstAidKit],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupFirstAidKitReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupFirstSMGReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidPickupFirstSMG],
			[IsSaidC1M1OpenDoor],
			[ExtraWeight10],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupFirstSMGReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstSMG", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupGolfCLubReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupGolfCLubReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupGrenadeLauncherReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpGrenadeLauncher],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupGrenadeLauncherReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupHuntingRifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpHuntingRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupHuntingRifleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMilitarySniperReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSniper_Military],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupHuntingRifleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupScoutSniperReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSniper_scout],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupHuntingRifleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAWPSniperReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSniper_awp],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupHuntingRifleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupIncendiaryAmmoReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpIncendiaryAmmo],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupIncendiaryAmmoReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupExplosiveAmmoReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpIncendiaryAmmo],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupExplosiveAmmoReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupKatanaReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpKatana],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupKatanaReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupLaserSightsAlwaysReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[ChanceToFire50Percent],
			[IsBotNotAvailable],
			[NotPickedUpItem],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupLaserSightsAlwaysReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupM60Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupM60Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMacheteReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpMachete],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupMacheteReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMagnumReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpMagnum],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupMagnumReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPitchforkReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpPitchfork],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupMagnumReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupMolotovReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpMolotov],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupMolotovReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPainPillsReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpPainPills],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupPainPillsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPipeBombReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpPipeBomb],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupPipeBombReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupPumpShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpPumpShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupPumpShotgunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupChromeShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpShotgun_chrome],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupPumpShotgunReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupRifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupRifleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupDesertRifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpRifle_Desert],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupRifleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupAK47RifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpRifle_AK47],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupRifleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSG552RifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpRifle_sg552],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupRifleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSecondPistolReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSecondPistol],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupSecondPistolReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSMGReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSMG],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupSMGReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupSilencedSMGReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSmg_silenced],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupSMGReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickuptonfaReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUptonfa],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickuptonfaReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupUpExplosivesReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpUpgradePack_Explosive],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupUpExplosivesReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupUpIncendiaryReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpUpgradePack_Incendiary],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupUpIncendiaryReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupVomitJarReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpVomitJar],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupVomitJarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupVomitJarAlwaysC1Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpVomitJar],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupVomitJarAlwaysC1Replica,
				followup = RThen("replica", "Player.TakeVomitJarC1a", null, -0.912), // Grabbin' puke!
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "PlayerGettingRevivedReplica",
		criteria = 
		[
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerGettingRevivedReplica,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "Replica" }, -1.648),
			},
		],
	},
	{
		name = "PlayerHealOtherReplica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInIntenseCombat],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHealOtherReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherC1Replica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInIntenseCombat],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHealOtherC1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherCombatReplica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[InIntenseCombat],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHealOtherCombatReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealOtherTankReplica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
		],
		//forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHealOtherCombatReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerHealMechanicCombatReplica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[InIntenseCombat],
			[SubjectIsMechanic],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerHealMechanicCombatReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLedgeSaveReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendReplica,
				followup = RThen("Subject", "ReviveFriendDown", null, -1.159), // Where that put you at?
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerReviveFriendFFReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsShotTeammateReplica],
			[IsWorldTalkReplica],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendFFReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendCriticalFFReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsShotTeammateReplica],
			[IsWorldTalkReplica],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendFFReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendBReplica",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendBReplica,
			},
		],
	},
	{
		name = "PlayerReviveFriendGamblerReplica",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsReplica],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendGamblerReplica,
			},
		],
	},
	{
		name = "PlayerReviveFriendMechanicReplica",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsReplica],
			[FromIsMechanic],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendMechanicReplica,
			},
		],
	},
	{
		name = "PlayerReviveFriendProducerReplica",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsReplica],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendProducerReplica,
			},
		],
	},
	{
		name = "PlayerReviveFriendCriticalReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendCriticalReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoudReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendLoudReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerLedgeSaveCriticalReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerLedgeSaveReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoud2Replica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendLoudReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoudCritReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsReplica],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendLoudReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "PlayerReviveFriendLoudCrit2Replica",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerReviveFriendLoudReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 5.0 },
		},
	},
	{
		name = "_C1M1_ElevatorHelloReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHelloReplica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello01aReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello01a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello01aReplica,
				followup = RThen("producer", "_C1M1_ElevatorHello02a", null, -1.78), // Everyone just calls me Replica.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello01cReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello01c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello01cReplica,
				followup = RThen("mechanic", "_C1M1_ElevatorHello13a", null, -3.956), // Settle down, son. We're going to be okay. What's your name?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello01dReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello01d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello01dReplica,
				followup = RThen("producer", "_C1M1_ElevatorHello02d", null, -0.673), // Replica.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello02bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello02b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello02bReplica,
				followup = RThen("gambler", "_C1M1_ElevatorHelloAllAliveExtra1", null, -0.539), // And you?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloAllAliveExtra1Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloAllAliveExtra1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHelloAllAliveExtra1Replica,
				followup = RThen("gambler", "_C1M1_ElevatorHelloAllAliveExtra1", null, -0.539), // And you?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello03bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello03bReplica,
				followup = RThen("producer", "_C1M1_ElevatorHello02a", null, -2.294), // People call me Replica, what's your name?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello03cReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello03cReplica,
				followup = RThen("gambler", "_C1M1_ElevatorHello04c", null, -2.294), // People call me Replica, what's your name?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello05cReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello05cReplica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello07dReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello07dReplica,
				followup = RThen("producer", "_C1M1_ElevatorHello07e", null, -3.385), // People call me Replica. And I LIVE here.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello07gReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07g],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello07gReplica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello09aReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello09a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello09aReplica,
				followup = RThen("mechanic", "_C1M1_ElevatorHello09a", null, -3.385), // My name's Replica. And I KNOW how to shoot a gun.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello10aReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello10a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello10aReplica,
				followup = RThen("replica", "_C1M1_ElevatorHello10b", null, -1.224), // No, I'm good.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello10bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello10b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello10bReplica,
				followup = RThen("gambler", "_C1M1_ElevatorHello10c", null, -0.539), // And you?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello12bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello12b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello12bReplica,
				followup = RThen("replica", "_C1M1_ElevatorHello112c", null, 1.5), // Replica'll work.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello12cReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello12c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello12cReplica,
				followup = RThen("producer", "C1M1WeAreScrewed", null, 0.1), // Girl - You're in news. Can you make any sense of this?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello13aReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello13a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello13aReplica,
				followup = RThen("producer", "_C1M1_ElevatorHello13b", null, 0.1), // 5.916 There we go. Most people call me Replica. And we're gonna be okay. Just gotta keep our heads.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello13bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello13b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello13bReplica,
				followup = RThen("producer", "_C1M1_ElevatorHello13c", null, -1.78), // Everyone just calls me Replica.
			},
		],
	},
	{
		name = "_c1m4startelevator5aReplica",
		criteria = 
		[
			[Concept_c1m4startelevator5a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c1m4startelevator5aReplica,
				followup = RThen("mechanic", "_c1m4startelevator5a", null, -2.313), // Son, you got a DEAL.
			},
		],
	},
	{
		name = "_c1m4startelevatorLastReplica",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsReplica],
			[ElevatorTimeNotUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c1m4startelevatorLastReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c1m4startelevatorLastTimeUpReplica",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsReplica],
			[ElevatorTimeUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M1_Fall01Replica",
		criteria = 
		[
			[Concept_C2M1_Fall01],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M1_Fall01Replica,
			},
		],
	},
	{
		name = "_C2M1_Fall02Replica",
		criteria = 
		[
			[Concept_C2M1_Fall02],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M1_Fall02Replica,
			},
		],
	},
	{
		name = "_C2M1_Fall04Replica",
		criteria = 
		[
			[Concept_C2M1_Fall04],
			[IsReplica],
			[NotInCombat],
			[ChanceToFire20Percent],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M1_Fall04Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 7.124 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m1_searchlights01Replica",
		criteria = 
		[
			[Concept_c2m1_searchlights01],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c2m1_searchlights01Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.903 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m1_searchlights02Replica",
		criteria = 
		[
			[Concept_c2m1_searchlights02],
			[IsReplica],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c2m1_searchlights02Replica,
				followup = RThenAny("_c2m1_searchlights03", 0.01), // There's still searchlights on. I'd say that's a good sign.
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.292 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m1_searchlights03Replica",
		criteria = 
		[
			[Concept_c2m1_searchlights03],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c2m1_searchlights03Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.295 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M1abandoned01Replica",
		criteria = 
		[
			[Concept_C2M1abandoned01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M1abandoned01Replica,
				followup = RThenAny("_C2M1abandoned02", 0.01), // Maybe they left 'em when they got rescued.
			},
		],
	},
	{
		name = "_C2M1BillboardReplica",
		criteria = 
		[
			[Concept_C2M1Billboard],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkpathc2m1_billboardReplica,
			},
		],
	},
	{
		name = "_C2M2_Bathroom01Replica",
		criteria = 
		[
			[Concept_C2M2_Bathroom01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_Bathroom01Replica,
			},
		],
	},
	{
		name = "_C2M2_CaroStart03Replica",
		criteria = 
		[
			[Concept_C2M2_CaroStart03],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_CaroStart03Replica,
			},
		],
	},
	{
		name = "_C2M2_CottonCandy01Replica",
		criteria = 
		[
			[Concept_C2M2_CottonCandy01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear300],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_CottonCandy01Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 10.109 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_Kiddie01Replica",
		criteria = 
		[
			[Concept_C2M2_Kiddie01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_Kiddie01Replica,
				followup = RThen("producer", "_C2M2_Kiddie05", null, 0.2), // Sometimes it feels like we're babysitting, doesn't it?
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.173 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C2M2_SeeSafehouse01Replica",
		criteria = 
		[
			[Concept_C2M2_SeeSafehouse01],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M2_SeeSafehouse01Replica,
			},
		],
	},
	{
		name = "_c2m3_coaster01Replica",
		criteria = 
		[
			[Concept_c2m3_coaster01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c2m3_coaster01Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.591 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_coaster05Replica",
		criteria = 
		[
			[Concept_c2m3_coaster05],
			[IsReplica],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c2m3_coaster05Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.144 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_coaster08Replica",
		criteria = 
		[
			[Concept_c2m3_coaster08],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c2m3_coaster08Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.591 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c2m3_freshair01Replica",
		criteria = 
		[
			[Concept_c2m3_freshair01],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c2m3_freshair01Replica,
			},
		],
	},
	{
		name = "_c2m3_hole01Replica",
		criteria = 
		[
			[Concept_c2m3_hole01],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDownHole],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c2m3_hole01Replica,
			},
		],
	},
	{
		name = "_C2M4_GateOpen001Replica",
		criteria = 
		[
			[Concept_C2M4_GateOpen001],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M4_GateOpen001Replica,
			},
		],
	},
	{
		name = "_C4_BigStormHits01Replica",
		criteria = 
		[
			[Concept_C4_BigStormHits01],
			[IsReplica],
			[_auto_NotC4ReplicaInCover],
			[_auto_IsTimerA],
			[FromIsAnOrator],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C4_BigStormHits01Replica,
				followup = RThenAny("_C4_BigStormHits02", 0.04), // SQUALL'S STARTIN', PEOPLE!
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.787 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C4_BigStormHits02Replica",
		criteria = 
		[
			[Concept_C4_BigStormHits02],
			[IsReplica],
			[IsNotCoughing],
			[IssuerClose],
			[IsNotIncapacitated],
			[_auto_NotC4ReplicaInCover],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C4_BigStormHits02Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.203 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m1_rainresponseReplica",
		criteria = 
		[
			[Concept_c4m1_rainresponse],
			[IsReplica],
			[NotInCombat],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidc4m1_rainresponse],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m1_rainresponseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_rainresponse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m2_caneyell01Replica",
		criteria = 
		[
			[Concept_c4m2_caneyell01],
			[IsReplica],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsReplicaInCane],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_caneyell01Replica,
			},
		],
	},
	{
		name = "_c4m2_ElevatorHere01Replica",
		criteria = 
		[
			[Concept_c4m2_ElevatorHere01],
			[IsReplica],
			[IsNotIncapacitated],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_ElevatorHere01Replica,
			},
		],
	},
	{
		name = "_c4m2_gasinside01Replica",
		criteria = 
		[
			[Concept_c4m2_gasinside01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaInCane],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_gasinside01Replica,
			},
		],
	},
	{
		name = "_c4m2_seestation01Replica",
		criteria = 
		[
			[Concept_c4m2_seestation01],
			[IsReplica],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_seestation01Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_c4m2_streetblocked01Replica",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsReplica],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_streetblocked01Replica,
			},
		],
	},
	{
		name = "_c4m2_streetblocked01bReplica",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsReplica],
			[IsSubjectDistFar400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_streetblocked01bReplica,
				followup = RThen("subject", "_c4m2_streetblocked02", null, 0.01), // 
			},
		],
	},
	{
		name = "_c4m2_streetblocked02Replica",
		criteria = 
		[
			[Concept_c4m2_streetblocked02],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_streetblocked01Replica,
			},
		],
	},
	{
		name = "_c4m2_waterpool02Replica",
		criteria = 
		[
			[Concept_c4m2_waterpool02],
			[IsReplica],
			[IsSubjectDistNear400],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_waterpool02Replica,
			},
		],
	},
	{
		name = "_c4m2_Witchville05Replica",
		criteria = 
		[
			[Concept_c4m2_Witchville05],
			[IsReplica],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m2_Witchville05Replica,
			},
		],
	},
	{
		name = "_C4M3_FLOODED01Replica",
		criteria = 
		[
			[Concept_C4M3_FLOODED01],
			[IsReplica],
			[NotInCombat],
			[IsNotCoughing],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C4M3_FLOODED01Replica,
			},
		],
	},
	{
		name = "_c4m3_rain01Replica",
		criteria = 
		[
			[Concept_c4m3_rain01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m3_rain01Replica,
			},
		],
	},
	{
		name = "_c4m3_startsafe02Replica",
		criteria = 
		[
			[Concept_c4m3_startsafe02],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m3_startsafe02Replica,
				followup = RThenAny("_c4m3_startsafe03", 0.2), // Yup.
			},
		],
	},
	{
		name = "_c4m3_startsafe03Replica",
		criteria = 
		[
			[Concept_c4m3_startsafe03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._c4m3_startsafe03Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Let's head back to the boat.
			},
		],
	},
	{
		name = "_introc1m1MovieIntroReplica",
		criteria = 
		[
			[Concept_introc1m1MovieIntro],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1MovieIntroReplica,
				followup = RThen("gambler", "_introc1m1MovieIntro", null, -2.033), // They left us here to die.
			},
		],
	},
	{
		name = "_introc1m1a03Replica",
		criteria = 
		[
			[Concept_introc1m1a03],
			[IsReplica],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1a03Replica,
				followup = RThenAny("_introc1m1a04", -6.346), // HEYYY! COME BACK! COME-ahh, he ain't comin' back.
			},
		],
	},
	{
		name = "_introc1m1a03AloneReplica",
		criteria = 
		[
			[Concept_introc1m1a03],
			[IsReplica],
			[IsAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1a03AloneReplica,
			},
		],
	},
	{
		name = "_introc1m1a05Replica",
		criteria = 
		[
			[Concept_introc1m1a05],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1a05Replica,
				followup = RThen("gambler", "_introc1m1b08donuts", null, 0.1), // Dollars to donuts, that chopper's headin' to the mall across town.
			},
		],
	},
	{
		name = "_introc1m1b01Replica",
		criteria = 
		[
			[Concept_introc1m1b01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1b01Replica,
				followup = RThenAny("_introc1m1b02", -4.215), // Hey! There's still people on the roof! Get BACK HERE!
			},
		],
	},
	{
		name = "_introc1m1b04Replica",
		criteria = 
		[
			[Concept_introc1m1b04],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1b04Replica,
				followup = RThen("gambler", "_introc1m1helileft", null, 0.1), // 
			},
		],
	},
	{
		name = "_introc1m1b06Replica",
		criteria = 
		[
			[Concept_introc1m1b06],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1b06Replica,
				followup = RThenAny("_introc1m1last", 0.1), // There's a mall got turned into an evac station not too far from here. I'll bet that chopper's headin' there.
			},
		],
	},
	{
		name = "_introc1m1b08Replica",
		criteria = 
		[
			[Concept_introc1m1b08],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1b08Replica,
				followup = RThenAny("_introc1m1last", 0.1), // There's a mall got turned into an evac station not too far from here. I'll bet that chopper's headin' there.
			},
		],
	},
	{
		name = "_introc1m1b09Replica",
		criteria = 
		[
			[Concept_introc1m1b09],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1b09Replica,
				followup = RThen("gambler", "_introc1m1b11", null, 0.1), // There ARE three other people here, son.
			},
		],
	},
	{
		name = "_introc1m1c01Replica",
		criteria = 
		[
			[Concept_introc1m1c01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1c01Replica,
				followup = RThen("gambler", "_introc1m1c02", null, 0.1), // Don't take the Lord's name in vain.
			},
		],
	},
	{
		name = "_introc1m1c02Replica",
		criteria = 
		[
			[Concept_introc1m1c02],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1c02Replica,
				followup = RThen("producer", "_introc1m1b05", null, 0.1), // YEAH. I'm serious.
			},
		],
	},
	{
		name = "_introc1m1lastweaponsReplica",
		criteria = 
		[
			[Concept_introc1m1lastweapons],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._introc1m1lastweaponsReplica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Gotta agree. Let's follow them to the mall.
			},
		],
	},
	{
		name = "BlankTestoReplica",
		criteria = 
		[
			[ConceptBlankTesto],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BlankTesto", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c1m1_elevator_door_openReplica",
		criteria = 
		[
			[Conceptc1m1_elevator_door_open2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m1_elevator_door_openReplica,
				followup = RThen("all", "C1M1Cough", null, -0.584), // [Coughing from smoke]
			},
		],
	},
	{
		name = "c1m1_elevator_ready2Replica",
		criteria = 
		[
			[Conceptc1m1_elevator_ready2],
			[IsReplica],
			[IsNotSaidC1M1OpenDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m1_elevator_ready2Replica,
				followup = RThen("replica", "C1M1Cough", null, -2.002), // Alright, enough chat. Get ready.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OpenDoor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello2AliveName1Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveName1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello2AliveName1Replica,
				followup = RThenAny("_C1M1_ElevatorHello2AliveName2", -1.524), // People just call me Replica.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveName2Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveName2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello2AliveName2Replica,
				followup = RThenAny("_C1M1_ElevatorHello2AliveExtra1", -7.056), // 7.056 My name's Replica. I don't like bein' here any more than you do-but if we gotta fight, we might as well fight together.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra1Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello2AliveExtra1Replica,
				followup = RThenAny("_C1M1_ElevatorHello2AliveExtra2", 0.1), // This ain't how i thought this would go.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra2Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello2AliveExtra2Replica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra2NReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra2],
			[IsReplica],
			[FromIsGambler],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello2AliveExtra2NReplica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1RNReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[FromIsProducer],
			[ChanceToFire100Percent],
			[IsRochelleElevatorIntro],
			[IsNotReplicaIntroduced],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveName1RNReplica,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveExtra2", { from = "Replica" }, -1.524),
			},
		],
		applycontext =
		{
			c1 = { context = "ReplicaIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1REReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[FromIsProducer],
			[ChanceToFire100Percent],
			[IsRochelleElevatorIntro],
			[IsNotReplicaIntroduced],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveName1REReplica,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveName2", { from = "Replica" }, -1.524),
			},
		],
		applycontext =
		{
			c1 = { context = "ReplicaIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[IsReplica],
			[IsNotReplicaIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveName1Replica,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName2", -1.524), // People just call me Replica.
			},
		],
		applycontext =
		{
			c1 = { context = "ReplicaIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveName2Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[IsReplica],
			[IsNotReplicaIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveName2Replica,
				followup = RThenAny("_C1M1_ElevatorHello3WhoIsDead", -1.524), // People just call me Replica.
			},
		],
		applycontext =
		{
			c1 = { context = "ReplicaIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "_C1M1_ElevatorHello3AliveWhoIsDeadReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveWhoIsDead],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveWhoIsDeadReplica,
				followup = RThenAny("_C1M1_ElevatorHello3AliveNameDead", -0.981), // Who'd we lose?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadEReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsReplica],
			[IsMechanicNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveNameDeadEReplica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadNReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsReplica],
			[IsGamblerNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveNameDeadNReplica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadRReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsReplica],
			[IsProducerNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveNameDeadRReplica,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDead2Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C1M1_ElevatorHello3AliveNameDead2Replica,
			},
		],
	},
	{
		name = "C1M1CoughReplica",
		criteria = 
		[
			[ConceptC1M1Cough],
			[IsReplica],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M1CoughReplica,
			},
		],
	},
	{
		name = "C1M2SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[ismap_c1m2_streets],
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
				func = Custom_Talker_Replica.C1M2SafeRoomReplica,
				followup = RThen("producer", "C1M2SafeRooma1", null, -4.016), // There's a gun store on the way to the mall. What do you say we pay it a visit?
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M3AlarmOffaReplica",
		criteria = 
		[
			[ConceptC1M3AlarmOffa],
			[IsReplica],
			[IsSubjectDistNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M3AlarmOffaReplica,
			},
		],
	},
	{
		name = "C1M3SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.C1M3SafeRoomReplica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Keep an eye out for the evac center. Also the food court. I am STARVING.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M3SafeRoom2cReplica",
		criteria = 
		[
			[ConceptC1M3SafeRoom2c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M3SafeRoom2cReplica,
				followup = RThen("self", "IntroEnd", null, 0.1), // CEDA's gotta be around here somewhere. Let's find this evac and get out of here.
			},
		],
	},
	{
		name = "C1M3SafeRoom2dReplica",
		criteria = 
		[
			[ConceptC1M3SafeRoom2d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M3SafeRoom2dReplica,
				followup = RThen("all", "C1M3SafeRoom2e", null, -0.1), // Amen
			},
		],
	},
	{
		name = "C1M4NearFinale03aReplica",
		criteria = 
		[
			[ConceptC1M4NearFinale03a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M4NearFinale03aReplica,
			},
		],
	},
	{
		name = "c1m4NearFinale1Replica",
		criteria = 
		[
			[Conceptc1m4NearFinale1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m4NearFinale1Replica,
			},
		],
	},
	{
		name = "c1m4NearFinale1NickReplica",
		criteria = 
		[
			[Conceptc1m4NearFinale1],
			[IsReplica],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c1m4NearFinale1NickReplica,
				followup = RThen("Gambler", "C1M4NearFinale02a", null, -1.263), // What do ya'all make of this?
			},
		],
	},
	{
		name = "C1M4SafeRoom2a1Replica",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M4SafeRoom2a1Replica,
				followup = RThen("gambler", "C1M4SafeRoom2a2", null, -3.132), // Ohh heyyy! Jimmy Gibbs!
			},
		],
	},
	{
		name = "C1M4SafeRoom2a3Replica",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M4SafeRoom2a3Replica,
				followup = RThen("gambler", "C1M4SafeRoom2a4", null, -6.9), // Well, trust me-in these parts? He's as famous as... Elvis. Or the President.
			},
		],
	},
	{
		name = "C1M4SafeRoom2b5Replica",
		criteria = 
		[
			[ConceptC1M4SafeRoom2b5],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M4SafeRoom2b5Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Amen
			},
		],
	},
	{
		name = "C1M4SafeRoomEndReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[ismap_c1m4_atrium],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M4SafeRoomEndReplica,
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
		name = "C2M1DoneFallingAlt1Replica",
		criteria = 
		[
			[ConceptC2M1DoneFalling],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDoneFalling],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M1DoneFallingAlt1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.055 },
			c2 = { context = "_auto_DoneFalling", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro002Replica",
		criteria = 
		[
			[ConceptC2M1Intro002],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M1Intro002Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // All right, let's get back on foot.
			},
		],
	},
	{
		name = "C2M1Intro009Replica",
		criteria = 
		[
			[ConceptC2M1Intro009],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M1Intro009Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Yeah, Ellis, that was some good driving.
			},
		],
	},
	{
		name = "C2M1Intro010Replica",
		criteria = 
		[
			[ConceptC2M1Intro010],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M1Intro010Replica,
				followup = RThen("mechanic", "C2M1Intro002", null, 0.1), // But the roads blocked now.
			},
		],
	},
	{
		name = "LeavingC2M1StartReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m1],
			[IsTalk],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.LeavingC2M1StartReplica,
				followup = RThen("mechanic", "C2M1Intro005", null, 0.1), // 
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M1Intro_400Replica",
		criteria = 
		[
			[ConceptC2M1Intro_400],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M1Intro_400Replica,
				followup = RThen("mechanic", "C2M1Intro_400", null, 1.0), // We tight.
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.363 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M4PenSmell001Replica",
		criteria = 
		[
			[ConceptC2M4PenSmell001],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M4PenSmell001Replica,
				followup = RThen("gambler", "_C2M4_Ribs", null, 0.1), // All I smell is ribs.
			},
		],
	},
	{
		name = "_C2M4_RibsReplica",
		criteria = 
		[
			[Concept_C2M4_Ribs],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica._C2M4_RibsReplica,
			},
		],
	},
	{
		name = "C2M5_lipsync001Replica",
		criteria = 
		[
			[ConceptC2M5_lipsync001],
			[IsReplica],
			[TimeSinceGroupInCombat02],
			[NotInCombat],
			[IsNotSpeaking],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M5_lipsync001Replica,
				followup = RThen("orator", "C2M5_OratorBlank01", null, 0.01), // They have taped music? Shit. Old ass classic rock clowns.
			},
		],
	},
	{
		name = "C4EnterCoverReplica",
		criteria = 
		[
			[ConceptC4EnterCover],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4ReplicaInCover", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C4ExitCoverReplica",
		criteria = 
		[
			[ConceptC4ExitCover],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4ReplicaInCover", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_InBurgerTank01Replica",
		criteria = 
		[
			[Conceptc4m1_InBurgerTank01],
			[IsReplica],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c4m1_InBurgerTank01Replica,
				followup = RThen("replica", "c4m1_InBurgerTank01", null, 0.01), // I could go for a BBQ bacon burger.
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas01Replica",
		criteria = 
		[
			[Conceptc4m1_nogas01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c4m1_nogas01Replica,
				followup = RThenAny("c4m1_nogas04", 0.01), // Next gas two miles. Looks like Virgil's gonna be waitin' a bit longer than he thought.
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 6.7 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas03Replica",
		criteria = 
		[
			[Conceptc4m1_nogas03],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c4m1_nogas03Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.734 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas06Replica",
		criteria = 
		[
			[Conceptc4m1_nogas06],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c4m1_nogas06Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.734 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas07Replica",
		criteria = 
		[
			[Conceptc4m1_nogas07],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c4m1_nogas07Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.734 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c4m1_nogas10Replica",
		criteria = 
		[
			[Conceptc4m1_nogas10],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c4m1_nogas10Replica,
				followup = RThenAny("c4m1_nogas02", 0.01), // Let's head to this Ducatel diesel.
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.141 },
		},
		applycontexttoworld = true,
	},
	{
		name = "GasPour20MoreTalkReplica",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour20MoreTalkReplica,
			},
		],
	},
	{
		name = "GasPour10MoreTalkReplica",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour10MoreTalkReplica,
			},
		],
	},
	{
		name = "GasPour1MoreReplica",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour1MoreReplica,
			},
		],
	},
	{
		name = "GasPour2MoreReplica",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour2MoreReplica,
			},
		],
	},
	{
		name = "GasPour3MoreReplica",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour3MoreReplica,
			},
		],
	},
	{
		name = "GasPour5MoreReplica",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.GasPour5MoreReplica,
			},
		],
	},
	{
		name = "HistoricTour02aReplica",
		criteria = 
		[
			[ConceptHistoricTour02a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.HistoricTour02aReplica,
				followup = RThen("Producer", "HistoricTour02b", null, -2.837), // Yeah, it's historic.
			},
		],
	},
	{
		name = "Player_CoverMeC1RCoach2Replica",
		criteria = 
		[
			[ConceptPlayer_CoverMeC1RReplica2],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Player_CoverMeC1RCoach2Replica,
			},
		],
	},
	{
		name = "Player_KnowHunterC1Replica",
		criteria = 
		[
			[ConceptPlayer_KnowHunter],
			[IsReplica],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Player_KnowHunterC1Replica,
			},
		],
	},
	{
		name = "Player_TakeBatRReplica",
		criteria = 
		[
			[ConceptPlayer_TakeBatR],
			[IsReplica],
			[IsGamblerNear400],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Player_TakeBatRReplica,
				followup = RThen("gambler", "Player.TakeBatR2", null, -1.068), // You play ball Nick?
			},
		],
	},
	{
		name = "Player_TakeVomitJarC1aReplica",
		criteria = 
		[
			[ConceptPlayer_TakeVomitJarC1a],
			[IsReplica],
			[ChanceToFire10Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Player_TakeVomitJarC1aReplica,
			},
		],
	},
	{
		name = "C1M2TankInfoReplica",
		criteria = 
		[
			[ConceptC1M2TankInfo],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M2TankInfoReplica,
			},
		],
	},
	{
		name = "PlayerShotGasCanReplica",
		criteria = 
		[
			[ConceptPlayerShotGasCan],
			[IsReplica],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerShotGasCanReplica,
			},
		],
		applycontext =
		{
			//⚠️WARNING: SaidPlayerShotGasCan1:10:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerCr0wnedBrideReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkReplica],
			[isc6m1_riverbank],
			[IsWorldTalkReplica],
		],
		//forceweight 101
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerCr0wnedBrideReplica,
				followup = RThen("gambler", "WeddingWitchDead03", null, 3.1), // Mm, now that's a shotgun wedding.
			},
		],
	},
	{
		name = "WeddingWitchDead01Replica",
		criteria = 
		[
			[ConceptWeddingWitchDead01],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WeddingWitchDead01Replica,
			},
		],
	},
	{
		name = "WeddingWitchDead02Replica",
		criteria = 
		[
			[ConceptWeddingWitchDead02],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WeddingWitchDead02Replica,
			},
		],
	},
	{
		name = "WorldIntroC31a2Replica",
		criteria = 
		[
			[ConceptWorldIntroC31a2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldIntroC31a2Replica,
				followup = RThen("producer", "WorldIntroC31a4", null, -6.296), // That's true. If I had a pick a low point in the flight, it was probably when he stopped flying the chopper and attacked us.
			},
		],
	},
	{
		name = "WorldIntroC31e3Replica",
		criteria = 
		[
			[ConceptWorldIntroC31e3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldIntroC31e3Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Come on now, if I was having a cookout, I ain't invitin' CEDA either.
			},
		],
	},
	{
		name = "WorldIntroC3e1Replica",
		criteria = 
		[
			[ConceptWorldIntroC3e1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldIntroC3e1Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Next time someone wants to shoot our pilot, can I get a little warning?
			},
		],
	},
	{
		name = "WorldIntroC3f1Replica",
		criteria = 
		[
			[ConceptWorldIntroC3f1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldIntroC3f1Replica,
				followup = RThen("gambler", "WorldIntroC3f2", null, -11.007), // Shit, that pilot just changed. One minute he was flying us to safety, the next he was... well... I am pretty damn sure he was trying to eat us.
			},
		],
	},
	{
		name = "WorldIntroC31g2Replica",
		criteria = 
		[
			[ConceptWorldIntroC31g2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldIntroC31g2Replica,
				followup = RThen("self", "IntroEnd", null, 0.1), // I don't think anyone likes the swamp.
			},
		],
	},
	{
		name = "PlayerCoverMeHealReplica",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerCoverMeHealReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},
	{
		name = "PlayerCoverMeHealC1Replica",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerCoverMeHealC1Replica,
				followup = RThen("mechanic", "Player.CoverMeC1RReplica1", null, -2.791), // Hold up, gotta try and heal myself.
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},
	{
		name = "Player_LostCallC6M3Replica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsClosestSurvivorFar3000],
			[IsNotAlone],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Player_LostCallC6M3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "AutoPlayerLostCallReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
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
				func = Custom_Talker_Replica.AutoPlayerLostCallReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedChainsawReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsChainsaw],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChainsawReplica,
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
		name = "SurvivorSpottedChainsawAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsChainsaw],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedChainsawReplica,
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
		name = "SurvivorSpottedcricket_batReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscricket_bat],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedcricket_batReplica,
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
		name = "SurvivorSpottedcricket_batAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscricket_bat],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedcricket_batReplica,
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
		name = "SurvivorSpottedcrowbarReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscrowbar],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedcrowbarReplica,
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
		name = "SurvivorSpottedcrowbarAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscrowbar],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedcrowbarReplica,
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
		name = "SurvivorSpottedGolfClubReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGolfClubReplica,
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
		name = "SurvivorSpottedGolfClubAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGolfClubReplica,
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
		name = "SurvivorSpottedGuitarReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGuitar],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGuitarReplica,
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
		name = "SurvivorSpottedGuitarAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGuitar],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGuitarReplica,
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
		name = "SurvivorSpottedKatanaReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsKatana],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedKatanaReplica,
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
		name = "SurvivorSpottedKatanaAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKatana],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedKatanaReplica,
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
		name = "SurvivorSpottedLaserSightsReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsLaserSights],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedLaserSightsReplica,
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
		name = "SurvivorSpottedLaserSightsAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsLaserSights],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedLaserSightsReplica,
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
		name = "SurvivorBotPickupLaserSightsSpottedReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotIsAvailable],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotSaidSpotWeapons],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedLaserSightsReplica,
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
		name = "SurvivorSpottedM60Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedM60Replica,
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
		name = "SurvivorSpottedM60AutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedM60Replica,
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
		name = "SurvivorSpottedMacheteReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMachete],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMacheteReplica,
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
		name = "SurvivorSpottedMacheteAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMachete],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMacheteReplica,
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
		name = "SurvivorSpottedMagnumReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMagnum],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMagnumReplica,
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
		name = "SurvivorSpottedMagnumAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMagnum],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMagnumReplica,
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
		name = "SurvivorSpottedtonfaReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Istonfa],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedtonfaReplica,
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
		name = "SurvivorSpottedtonfaAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Istonfa],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedtonfaReplica,
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
		name = "SurvivorSpottedSecondPistolReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSecondPistol],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedSecondPistolAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSecondPistol],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedAutoShotgunReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsAutoShotgun],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedAutoShotgunAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsAutoShotgun],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedHuntingRifleReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsHuntingRifle],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedHuntingRifleAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsHuntingRifle],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedPumpShotgunReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPumpShotgun],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedPumpShotgunAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPumpShotgun],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedRifleReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedRifleAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedRifle_AK47Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_AK47],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedRifle_AK47AutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_AK47],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedRifle_desertReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_desert],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedRifle_desertAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_desert],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedRifle_SG552Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_sg552],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedRifle_SG552AutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_sg552],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedShotgun_ChromeReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_Chrome],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedShotgun_ChromeAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_Chrome],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedShotgun_spasReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_spas],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedShotgun_spasAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_spas],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedSMGReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSMG],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedSMGAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSMG],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedSMG_silencedReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_silenced],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedSMG_silencedAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_silenced],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedMP5SMGReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_mp5],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedMP5SMGAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_mp5],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedMilitarySniperReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_military],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedMilitarySniperAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_military],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedScoutSniperReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_scout],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedScoutSniperAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_scout],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedAWPSniperReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_awp],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedAWPSniperAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_awp],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedBaseballBatReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Isbaseball_bat],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedBaseballBatAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Isbaseball_bat],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedFryingPanReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFryingPan],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedFryingPanAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFryingPan],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedAxeReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFireAxe],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedAxeAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFireAxe],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedShovelReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShovel],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedShovelAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShovel],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedPitchforkReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPitchfork],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedPitchforkAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPitchfork],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedKnifeReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsKnife],
			[IsNotSmartLookAuto],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedKnifeAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKnife],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedMeleeWeaponReplica,
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
		name = "SurvivorSpottedWeaponPistolReplica",
		criteria = 
		[
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedShotgunReplica",
		criteria = 
		[
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "SurvivorSpottedOtherWeaponReplica",
		criteria = 
		[
			[ConceptPlayerSpotOtherWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedWeaponReplica,
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
		name = "C2M3AlarmOffNagReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_IsTracksOK],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m3_coasteroffReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 11.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C2M3Chopper001Replica",
		criteria = 
		[
			[ConceptC2M3Chopper001],
			[IsReplica],
			[IsTalk],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C2M3Chopper001Replica,
			},
		],
	},
	{
		name = "AskWhatReplica",
		criteria = 
		[
			[ConceptAskWhat],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.AskWhatReplica,
			},
		],
	},
	{
		name = "C13M1IntroStartReplica",
		criteria = 
		[
			[ConceptIntroC13M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M1IntroStartReplica,
				followup = RThenAny("C13M1Intro2", 0.1), // We gotta find a way around this fire!
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M1Intro2Replica",
		criteria = 
		[
			[ConceptC13M1Intro2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M1Intro2Replica,
				followup = RThenAny("C13M1Intro3", 0.1), // Where in the hell are we?
			},
		],
	},
	{
		name = "C13M1Intro2EllisReplica",
		criteria = 
		[
			[ConceptC13M1Intro2Ellis],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M1Intro2EllisReplica,
				followup = RThenAny("C13M1Intro2", 0.1), // Boy, ain't nobody gonna burn up. We can get around the fire.
			},
		],
		applycontext =
		{
			c1 = { context = "C13M1EllisPanicking", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M1Intro3Replica",
		criteria = 
		[
			[ConceptC13M1Intro3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M1Intro3Replica,
				followup = RThenAny("C13M1IntroLocationLast", 0.1), // I heard there's a military base just south of here. Last I heard, they were still evacuating.
			},
		],
	},
	{
		name = "C13M1IntroLastReplica",
		criteria = 
		[
			[ConceptC13M1IntroLast],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M1IntroLastReplica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Alright, let's get it on.
			},
		],
	},
	{
		name = "C13M1IntroLocationLastReplica",
		criteria = 
		[
			[ConceptC13M1IntroLocationLast],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M1IntroLocationLastReplica,
				followup = RThen("self", "IntroEnd", null, 0.1), // Allright, let's go.
			},
		],
	},
	{
		name = "RemarkC13M1UpHillReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1UpHill],
			[IsNotRemarkedC13M1UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3UpHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1DownHere],
			[IsNotRemarkedC13M1DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3DownHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1ThroughHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1ThroughHere],
			[IsNotRemarkedC13M1ThroughHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3ThroughThisHouseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1ThroughWindowReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1ThroughWindow],
			[IsNotRemarkedC13M1ThroughWindow],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc2m1_throughwindowReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1UpStepsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1UpSteps],
			[IsNotRemarkedC13M1UpSteps],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_UpStairs2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpSteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1CrossHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1CrossHere],
			[IsNotRemarkedC13M1CrossHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkc4m3_crosshereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1CrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M1PreBunkerOpenReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1PreBunkerOpen],
			[IsNotRemarkedC13M1PreBunkerOpen],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.RemarkC13M1PreBunkerOpenReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1PreBunkerOpen", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M1OpeningBunkerReplica",
		criteria = 
		[
			[ConceptC13M1OpeningBunker],
			[IsReplica],
			[IsNotC13M1OpeningBunker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M1OpeningBunkerReplica,
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
		name = "RemarkC13M2UpHillReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M2UpHill],
			[IsNotRemarkedC13M2UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC3M3UpHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M2DownHere],
			[IsNotRemarkedC13M2DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3DownHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2UpLadderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M2UpLadder],
			[IsNotRemarkedC13M2UpLadder],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.RemarkC13M2UpLadderReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M2UpStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M2UpStairs],
			[IsNotRemarkedC13M2UpStairs],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_UpTheStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2TankApproachingReplica",
		criteria = 
		[
			[ConceptC13M2TankApproaching],
			[IsReplica],
			[IsNotNoticedC13M2ShakingGround],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M2TankApproachingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "NoticedC13M2ShakingGround", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2BarrelsIgnitedReplica",
		criteria = 
		[
			[ConceptC13M2BarrelsIgnited],
			[IsReplica],
			[IsNotC13M2IgnitedBarrels],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M2BarrelsIgnitedReplica,
				followup = RThenAny("C13M2Barrels1", 5.0), // Back Back Back Back Back!
			},
		],
		applycontext =
		{
			c1 = { context = "C13M2IgnitedBarrels", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2Barrels1Replica",
		criteria = 
		[
			[ConceptC13M2Barrels1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M2Barrels1Replica,
				followup = RThenAny("C13M2Barrels2", 0.1), // Oh shit! Gate open!
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M2Barrels2Replica",
		criteria = 
		[
			[ConceptC13M2Barrels2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M2Barrels2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "RemarkC13M3DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M3DownHere],
			[IsNotRemarkedC13M3DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkC1M3DownHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3ApproachingTankerReplica",
		criteria = 
		[
			[ConceptC13M3ApproachingTanker],
			[IsReplica],
			[IsNotSawC13M3Tanker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M3ApproachingTankerReplica,
				followup = RThenAny("C13M3Tanker1", 3.0), // Damn, I'm all turned around now.
			},
		],
		applycontext =
		{
			c1 = { context = "SawC13M3Tanker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Tanker1Replica",
		criteria = 
		[
			[ConceptC13M3Tanker1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M3Tanker1Replica,
				followup = RThenAny("C13M3Tanker2", -0.3), // SHIT!
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Tanker2Replica",
		criteria = 
		[
			[ConceptC13M3Tanker2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M3Tanker2Replica,
				followup = RThenAny("C13M2Tanker3", 3.0), // Oh shit, watch out!
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Tanker3Replica",
		criteria = 
		[
			[ConceptC13M3Tanker3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M3Tanker3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3OnScaffoldReplica",
		criteria = 
		[
			[ConceptC13M3OnScaffold],
			[IsReplica],
			[IsNotOnC13M3Scaffold],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC1M2DownStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "OnC13M3Scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3AirstrikeReplica",
		criteria = 
		[
			[ConceptC13M3Airstrike],
			[IsReplica],
			[IsNotWitnissedC13M3Airstrike],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M3AirstrikeReplica,
				followup = RThenAny("C13M3Airstrike2", 0.3), // MOTHERF-
			},
		],
		applycontext =
		{
			c1 = { context = "WitnissedC13M3Airstrike", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M3Airstrike2Replica",
		criteria = 
		[
			[ConceptC13M3Airstrike2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3Jets2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4Button1Replica",
		criteria = 
		[
			[ConceptC13M4Button1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M4Button1Replica,
				followup = RThen("orator", "C13M4FinaleBrief", null, 0.3), // Anyone out there?
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4FinaleTriggeredReplica",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsReplica],
			[ismapc13m4_cutthroatcreek],
			[IsTriggeredByReplica],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M4FinaleTriggeredReplica,
				followup = RThen("orator", "C13M4FinaleStart", null, 0.01), // I hear ya man.  See ya soon.
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TalkingReplica", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4FinaleStart2Replica",
		criteria = 
		[
			[ConceptC13M4FinaleStart2],
			[IsReplica],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M4FinaleStart2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C13M4DownCreekReplica",
		criteria = 
		[
			[ConceptC13M4DownCreek],
			[IsReplica],
			[IsNotInC13M4Creek],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M4DownCreekReplica,
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
		name = "C13M4InSmokeReplica",
		criteria = 
		[
			[ConceptC13M4InSmoke],
			[IsReplica],
			[IsNotInC13M4Smoke],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorCoughingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 3.0 },
			c2 = { context = "InC13M4Smoke", value = 1, duration = 0.0 },
		},
	},
	{
		name = "C13M4NoticedHelicopterReplica",
		criteria = 
		[
			[ConceptC13M4NoticedHelicopter],
			[IsReplica],
			[IsNotNoticedC13M4Helicopter],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M4NoticedHelicopterReplica,
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
		name = "C13M4AlmostThereReplica",
		criteria = 
		[
			[ConceptC13M4AlmostThere],
			[IsReplica],
			[IsNotC13M4AlmostThere],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M4AlmostThereReplica,
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
		name = "C13M4SpottedVehicleReplica",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsReplica],
			[ismapc13m4_cutthroatcreek],
			[_auto_IsFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M4SpottedVehicleReplica,
				followup = RThen("pilot", "C13M4PilotEscapeNag", null, 2.0), // Let's go people.
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
		name = "C13M4GetToVehicleReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[ismapc13m4_cutthroatcreek],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C13M4GetToVehicleReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockReplica", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SafeRoomStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
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
		name = "IntroEndReplica",
		criteria = 
		[
			[ConceptIntroEnd],
			[IsReplica],
			[FromIsReplica],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "LeavingSafeAreaReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
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
		name = "LeavingSafeRoomReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
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
		name = "FinaleTriggeredReplica",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsReplica],
			[IsTriggeredByReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinalVehicleSpottedReplica",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsReplica],
			[_auto_IsFinaleStarted],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinalVehicleArrivedReplica",
		criteria = 
		[
			[ConceptFinalVehicleArrived],
			[IsReplica],
			[_auto_HasSpottedVehicle],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Escape", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "L4D1PlayerNiceShotReplica",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotReplica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotFrancisReplica",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotFrancisReplica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisReplica",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotLouisReplica,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyReplica",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1PlayerNiceShotZoeyReplica,
			},
		],
	},
	{
		name = "C6M3GasPourReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[isC6M3_Port],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3GasPourReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "C6M1_IntotheparkNoHealthReplica",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1_IntotheparkNoHealthReplica,
			},
		],
	},
	{
		name = "C6M1Intro_01TeenGirl04Replica",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsReplica],
			[IsZoeyIntroActor],
			[IsNotSaidIntroScene],
			[MoreThan60],
			[LessThan100],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_01TeenGirl04Replica,
				followup = RThen("TeenGirl", "C6M1Intro_04a", null, -3.822), // Hey, hello there! You wanna let the bridge down for us?
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
		name = "C6M1Intro_04bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_04b],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_04bReplica,
				followup = RThen("TeenGirl", "C6M1Intro_04c", null, -2.342), // Y'all can't climb down there and save us a trip?
			},
		],
	},
	{
		name = "C6M1Intro_08aReplica",
		criteria = 
		[
			[ConceptC6M1Intro_08a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_08aReplica,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0), // Got it. We'll holla back at you when we get there.
			},
		],
	},
	{
		name = "C6M1Intro_13bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_13b],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_13bReplica,
				followup = RThen("Mechanic", "C6M1Intro_13c", null, -4.288), // You been killin' zombies for the better part of 2 days boy you can talk to a girl.
			},
		],
	},
	{
		name = "C6M1Intro_13eReplica",
		criteria = 
		[
			[ConceptC6M1Intro_13e],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_13eReplica,
				followup = RThen("Mechanic", "C6M1Intro_13f", null, -2.69), // Okay, the boy says thank you.
			},
		],
	},
	{
		name = "C6M1Intro_21aReplica",
		criteria = 
		[
			[ConceptC6M1Intro_21a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_21aReplica,
				followup = RThen("Replica", "C6M1Intro_21b", null, -2.005), // (to group) Tell me this boy ain't for real.
			},
		],
	},
	{
		name = "C6M1Intro_21bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_21b],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_21bReplica,
				followup = RThen("Biker", "C6M1Intro_21c", null, -2.472), // No. Can you lower the bridge?
			},
		],
	},
	{
		name = "C6M1Intro_21dReplica",
		criteria = 
		[
			[ConceptC6M1Intro_21d],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_21dReplica,
				followup = RThen("Biker", "C6M1Intro_21e", null, -5.235), // Shit, okay. Yes, we are vampires? All of us are vampires?
			},
		],
	},
	{
		name = "C6M1Intro_21gReplica",
		criteria = 
		[
			[ConceptC6M1Intro_21g],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1Intro_21gReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M1TakeSubMachineGun01Replica",
		criteria = 
		[
			[ConceptC6M1TakeSubMachineGun01],
			[IsReplica],
			[IsGamblerNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M1TakeSubMachineGun01Replica,
			},
		],
	},
	{
		name = "LeavingC6M1StartReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.LeavingC6M1StartReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "LeftC6M1Start", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M1_HistoricTourReplica",
		criteria = 
		[
			[ConceptWorldC6M1_HistoricTour],
			[IsReplica],
			[IsNotLeftC6M1Start],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M1_HistoricTourReplica,
				followup = RThen("Gambler", "HistoricTour01a", null, -4.418), // Historic Under-the-River Tour! This could be pretty interesting!
			},
		],
	},
	{
		name = "WorldC6M1_PostWedding01aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_PostWedding01a],
			[IsReplica],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M1_PostWedding01aReplica,
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn03aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M1_WeddingWarn03aReplica,
				followup = RThen("Producer", "WorldC6M1_WeddingWarn03b", null, -2.229), // Come on, Nick, not the time.
			},
		],
		applycontext =
		{
			c1 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "WorldC6M1_WeddingWarn04aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn04a],
			[IsReplica],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M1_WeddingWarn04aReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2_OpenGate1Replica",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M2_OpenGate1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2_OpenGate2Replica",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M2_OpenGate2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Said:OpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M2SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsReplica],
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
				func = Custom_Talker_Replica.C6M2SafeRoomReplica,
				followup = RThenAny("C6M2SafeRoom2", 3.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo01aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo01a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo01aReplica,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo05Replica",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsReplica],
			[IsZoeyIntroActor],
			[ZoeyGroup4],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo05Replica,
				followup = RThenAny("DLC1_C6M2_SafeRoomConvo06a", -6.504), // City of Rayford! They used to have a boiled peanut festival here. Good memories.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo09aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo09a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo09aReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo09b", null, -3.735), // Oh, come on, you aren't afraid of a little dirt are you?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo11Replica",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsReplica],
			[IsZoeyIntroActor],
			[ZoeyGroup4],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo11Replica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo12a", null, -6.163), // I heard all about this under-the-river tour, supposed to be pretty damn good. Real educational.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12Replica",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsReplica],
			[IsFrancisIntroActor],
			[FrancisGroup5],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo12Replica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo13a", null, -3.828), // Nick, tell me you ain't looking forward to this under-the-river tour.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12b],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo12bReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo12c", null, -2.273), // You damn right. Under a river.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12d],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo12dReplica,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13b],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo13bReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo13c", null, -5.477), // Man, Nick you got a find a way to cheer your ass up. We ain't got much to look forward to.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13d],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo13dReplica,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14d],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo14dReplica,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo14e", null, -3.766), // Oh. In my heart, I'm there already.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo15b],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo15bReplica,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo15c", null, -4.894), // Man, I keep hoping we find an open burger tank.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16a1Replica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16a1],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo16a1Replica,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo16b1", null, -4.595), // Ellis, you do know that eventually we're gonna have to leave that car behind. Right?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16e],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo16eReplica,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo16f", null, -3.567), // Boy, the Military ain't exactly going to strap it to the bottom of a helicopter.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18cReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18c],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo18cReplica,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo18d", null, -0.5), // Girl! What are you doing?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18e],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo18eReplica,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19Replica",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsReplica],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo19Replica,
				followup = RThenAny("DLC1_C6M2_SafeRoomConvo19a", -5.056), // Man, I just realized with all this runnin', climbin' and fightin', I ain't even had time to eat.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19b],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo19bReplica,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo19c", null, -8.355), // [happily] I bet I'm losin' some serious weight! [laughs proudly] Two more days, I'll be takin' my BELT in a notch.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19d],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M2_SafeRoomConvo19dReplica,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo19e", null, -1.762), // Man, I forgot about that.
			},
		],
	},
	{
		name = "WorldC6M2_InSewer101aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_InSewer101aReplica,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer102aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer102a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_InSewer102aReplica,
				followup = RThen("Gambler", "WorldC6M2_InSewer102b", null, -3.563), // Gotta keep your head above water, man.[laughs]
			},
		],
	},
	{
		name = "WorldC6M2_InSewer202aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer202a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_InSewer202aReplica,
			},
		],
	},
	{
		name = "WorldC6M2_InSewerLadder101aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewerLadder101a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_InSewerLadder101aReplica,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk101cReplica",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk101c],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_OnTourWalk101cReplica,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk103aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk103a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_OnTourWalk103aReplica,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo02b_Replica",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo02b_],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WorldC6M2_Tattoo02b_Replica,
				followup = RThen("Producer", "WorldC6M2_Tattoo02c>", null, -2.512), // Shit, it's allll south of the border.
			},
		],
	},
	{
		name = "C6M3_BridgeDownReplica",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_BridgeDownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_BridgeGettoCarReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[IsNotSaidGetToCar],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_BridgeGettoCarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorReplica",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsReplica],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_elevatorReplica,
			},
		],
		//then get back to the car.
		applycontext =
		{
			c1 = { context = "SaidC6M3Elevator", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_elevatorZoeyReplica",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsReplica],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
			[IsZoeyIntroActor],
			[IsNotVersus],
			[ZoeyGroup1],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_elevatorZoeyReplica,
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
		name = "C6M3_GivenItemBikerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorBiker],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_GivenItemBikerReplica,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirlReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorTeenGirl],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_GivenItemTeenGirlReplica,
			},
		],
	},
	{
		name = "C6M3SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsReplica],
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
				func = Custom_Talker_Replica.C6M3SafeRoomReplica,
				followup = RThenAny("C6M3SafeRoom2", 3.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02e],
			[IsReplica],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvo02eReplica,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03Replica",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsReplica],
			[IsNotSaidC6M3SafeRoom2],
			[IsZoeyIntroActor],
			[ZoeyGroup2],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvo03Replica,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo03a", null, -2.358), // Ellis. It's showtime, buddy.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04Replica",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsReplica],
			[IsNotSaidC6M3SafeRoom2],
			[IsZoeyIntroActor],
			[ZoeyGroup4],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvo04Replica,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo04a", null, -2.981), // Ellis, you ready to meet that Zoey girl again?
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08Replica",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsReplica],
			[IsNotSaidC6M3SafeRoom2],
			[IsFrancisIntroActor],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvo08Replica,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo08a", null, -3.801), // I don't trust that biker. He's probably long gone by now.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08b],
			[IsReplica],
			[IsInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.DLC1_C6M3_SafeRoomConvo08bReplica,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo08c", null, -3.689), // Minute we left, bet ya he stole the Jimmy Gibbs Jr.
			},
		],
	},
	{
		name = "IncapBounceReplica",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsReplica],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.IncapBounceReplica,
				followup = RThen("Biker", "InCapBounce2", null, 0.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "SaidInCapBounce", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_CansDoneReplica",
		criteria = 
		[
			[Conceptc6m3escapeready],
			[IsReplica],
			[IsC6M3_Port],
			[IsNotSaidc6m3escapeready],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_CansDoneReplica,
				followup = RThenAny("EmphaticArriveRun", -1.194), // Let's get to the car!
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
		name = "L4D1AlsoSpottedTankReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1AlsoSpottedTankReplica,
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
		name = "L4D1SpottedTankReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Isc6m3_port],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.L4D1SpottedTankReplica,
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
		name = "SurvivorSpottedFallenReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedFallenReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerWitchChasingC6M1Replica",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsReplica],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidReplicaWitchChasing],
			[IsSaidReplicaWitchAttacking],
			[isc6m1_riverbank],
		],
		//forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerWitchChasingC6M1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidReplicaWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkReplica", value = 1, duration = 2.0 },
		},
	},
	{
		name = "PlayerRemarkremark_MidnightRidersBusReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkremark_MidnightRidersBusReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_AcrossHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_AlleyBelowReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_AlleyIntoBuildingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_InAptsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_InAptsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_IntoTheStoreReplica,
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
		name = "PlayerRemarkWorldC6M1_PostWeddingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_PostWeddingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_SafeRoomAlleyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_ThroughBarReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_ThroughBarReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_UpHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_UpTheStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_UpTheStairs2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_WeddingWarnReplica,
				followup = RThen("Producer", "RemWorldC6M1_WeddingWarn01", null, -2.989), // Damn. This here wedding didn't end well.
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_WeddingWarn1Replica,
				followup = RThen("Producer", "RemWorldC6M1_WeddingWarn01", null, -2.989), // Damn. This here wedding didn't end well.
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
		name = "PlayerRemarkWorldC6M1_WeddingWarn2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_WeddingWarn2Replica,
				followup = RThen("Producer", "RemWorldC6M1_WeddingWarn01", null, -2.989), // Damn. This here wedding didn't end well.
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
		name = "PlayerRemarkWorldC6M1_WeddingWarn3Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M1_WeddingWarn3Replica,
				followup = RThen("Producer", "RemWorldC6M1_WeddingWarn01", null, -2.989), // Damn. This here wedding didn't end well.
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
		name = "PlayerRemarkWorldC6M2_AcrossPlankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear250],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_AcrossPlankReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_AfterGate1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_AfterGate2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_DownHereReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_DownIntoBuildingReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalLadderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_FinalLadderReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_FinalWaterReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_FinalWaterGoGoReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InJazzClubReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1000],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_InJazzClubReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_InSewer1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_InSewerLadder1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewerLadder1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_IntoConstructionReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_IntoPoolHallReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JukeBoxReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_JukeBoxReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_JumpDownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_JumpDownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OnTourWalk1],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OnTourWalk1Replica,
				followup = RThenAny("WorldC6M2_OnTourWalk101a", -2.374), // Man, this is a real...
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OnTourWalk2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OpenGate1Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_OpenGate2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_Phase2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_Phase2DownReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IntensityOver75],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_Phase2DownIntenseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_PostGate1xReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_PostGate1xReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_SafeRoomReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_SafeRoom],
			[IsNotSaidWorldC6M2_SafeRoom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_SafeRoomReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_SuitcaseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Suitcase],
			[IsNotSaidWorldC6M2_Suitcase],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_SuitcaseReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Suitcase", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_TourEntranceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_TourEntranceReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_UpCatWalkReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_UpStairsReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M2_UpStairs2Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_BridgeRunReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M3_BridgeRunReplica,
				followup = RThenAny("WorldC6M3_ByBridge01", -3.325), // Come on people, GET TO THE CAR! GET TO THE CAR!
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_BridgeRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldC6M3_ByBridgeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsSaidFinalVehicleArrived],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldC6M3_ByBridgeReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkWorldFootLockerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.PlayerRemarkWorldFootLockerReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C6M3_PourFinishedReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C6M3_PourFinishedReplica,
				followup = RThen("Manager", "L4D1_NiceJobPour", null, 0.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
	},
	{
		name = "SurvivorNearFinaleC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[Isc6m3_port],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorNearFinaleC6M3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorPickupGolfCLubReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[ReplicaNotPickedUpItem],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupGolfCLubReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "ReplicaPickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "SurvivorPickupM60Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[ReplicaNotPickedUpItem],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorPickupM60Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "ReplicaPickedUpItem", value = 1, duration = 30.0 },
		},
	},
	{
		name = "HistoricTour02aReplica",
		criteria = 
		[
			[ConceptHistoricTour02a],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.HistoricTour02aReplica,
				followup = RThen("Producer", "HistoricTour02b", null, -2.837), // Yeah, it's historic.
			},
		],
	},
	{
		name = "WeddingWitchDead01Replica",
		criteria = 
		[
			[ConceptWeddingWitchDead01],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WeddingWitchDead01Replica,
			},
		],
	},
	{
		name = "WeddingWitchDead02Replica",
		criteria = 
		[
			[ConceptWeddingWitchDead02],
			[IsReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.WeddingWitchDead02Replica,
			},
		],
	},
	{
		name = "Player_LostCallC6M3Replica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Player_LostCallC6M3Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedGolfClubReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGolfClubReplica,
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
		name = "SurvivorSpottedGolfClubAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedGolfClubAutoReplica,
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
		name = "SurvivorSpottedM60Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedM60Replica,
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
		name = "SurvivorSpottedM60AutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.SurvivorSpottedM60AutoReplica,
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
		name = "C3M1CallFerryReplica",
		criteria = 
		[
			[ConceptC3M1CallFerry],
			[PanicEventReplica],
			[IsNotSaidC3M1CallFerry2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M1CallFerryReplica,
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
		name = "C3M2OpenDoorReplica",
		criteria = 
		[
			[ConceptC3M2OpenDoor],
			[PanicEventReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C3M2OpenDoorReplica,
				followup = RThen("Replica", "C3M2OpenDoor2", { ReplicaActor = 1 }, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2OpenDoor", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.664 },
			c3 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c4 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "c5m4floatstartReplica",
		criteria = 
		[
			[Conceptc5m4floatstart],
			[PanicEventReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.c5m4floatstartReplica,
				followup = RThen("replica", "c5m4floatstart2", null, 0.0),
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
		name = "C1M2InsideGunShopReplica",
		criteria = 
		[
			[ConceptC1M2InsideGunShop],
			[PanicEventReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M2InsideGunShopReplica,
				followup = RThen("replica", "C1M2InsideGunShop2", null, 0.0), // Blank
			},
		],
	},
	{
		name = "C1M3AlarmOffOratorReplica",
		criteria = 
		[
			[ConceptC1M3AlarmOff],
			[PanicEventReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M3AlarmOffOratorReplica,
				followup = RThen("replica", "C1M3AlarmOff2", null, 0.0), // 
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "C1M3BrokeWindowOratorReplica",
		criteria = 
		[
			[ConceptC1M3BrokeWindow],
			[PanicEventReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C1M3BrokeWindowOratorReplica,
				followup = RThen("replica", "C1M3AlarmActive", null, 0.0), // 
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
		name = "HitCraneButtonReplica",
		criteria = 
		[
			[ConceptAirport02CraneStarted],
			[PanicEventReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.HitCraneButtonReplica,
				followup = RThen("Replica", "airport02_creshendoCrane", null, 0.01), // [BLANK]
			},
		],
	},
	{
		name = "Airport03FireStartedReplica",
		criteria = 
		[
			[ConceptAirport03FireStarted],
			[PanicEventReplica],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.Airport03FireStartedReplica,
				followup = RThen("Replica", "Airport03FireStartedX", null, 0.01), // [BLANK]
			},
		],
	},
	{
		name = "FinaleSceneTriggerZoeyReplica",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsReplica],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsZoeyIntroActor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.FinaleSceneTriggerZoeyReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 20.0 },
			c3 = { context = "SaidEllisBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndEllisBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "FinaleSceneTriggerFrancisReplica",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsReplica],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsFrancisIntroActor],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.FinaleSceneTriggerFrancisReplica,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 35.0 },
			c3 = { context = "SaidEllisBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndEllisBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
];

rr_ProcessRules(replica_soldier_rules);
