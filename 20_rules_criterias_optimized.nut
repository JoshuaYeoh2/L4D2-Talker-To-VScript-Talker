local replica_soldier_rules = 
[
	{
		name = "C1M1InSmokeReplica",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["worldsaidc1m1insmoke", 1],
			["map", "c1m1_hotel"],
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
			["concept", "C1M3AlarmOff2"],
			["who", "Replica"],
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
			["concept", "C1M3AlarmActive"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c4m3_sugarmill_b"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			["world_auto_saferoomstart", 1],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Biker"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			["map", "c6m3_port"],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Biker"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Manager"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			["map", "c6m3_port"],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Manager"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "TeenGirl"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			["map", "c6m3_port"],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "TeenGirl"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			["subject", "Gambler"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			["subject", "Mechanic"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Replica"],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			["subject", "Producer"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Replica"],
			["deadcharacter", "Gambler"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Replica"],
			["deadcharacter", "Gambler"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Replica"],
			["deadcharacter", "Mechanic"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Replica"],
			["deadcharacter", "Mechanic"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Replica"],
			["deadcharacter", "Producer"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Replica"],
			["deadcharacter", "Producer"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 3],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 3],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 2],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 2],
			["isproduceralive", 1],
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
			["concept", "C3M1FerryInTransit"],
			["who", "Replica"],
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
			["concept", "c1m1_enter_elevator"],
			["who", "Replica"],
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
			["concept", "c1m1_elevator_pushbutton"],
			["who", "Replica"],
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
			["concept", "C1M1ElevatorRules"],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2PreStoreAlarm"],
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
			["concept", "C1M2AlarmDoor2"],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2StoreAlarm"],
			["worldc1m2alarmsetoff", 1],
			[IsSubjectNear300],
			["activeweapon", "ColaBottles"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saidc1m2grabbedcola", 1],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
			["world_auto_saidc1m2grabbedcola", 1],
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
			["concept", "C1M2FirstOutsideResponse"],
			["who", "Replica"],
			["from", "orator"],
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
			["concept", "C1M2FirstOutsideResponse3a"],
			["who", "Replica"],
			["from", "orator"],
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
			["concept", "C1M2FirstOutsideResponse8a"],
			["who", "Replica"],
			["from", "orator"],
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
			["concept", "C1M2FirstOutsideResponse8b"],
			["who", "Replica"],
			["from", "Gambler"],
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
			["concept", "C1M2InsideGunShop2"],
			["who", "Replica"],
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
			["concept", "C3M1CallFerry2"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["replicaactor", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["worldc3m1ferry", 1],
			["incapacitated", 0],
			["incombat", 0],
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
			["concept", "C3M1FerryLaunched2"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSafeSpotAhead],
			["worldsaidc3m2village1", 1],
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
			["concept", "C3M2OpenDoor2"],
			["who", "Replica"],
			[IsTalkReplica],
			["replicaactor", 1],
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
			["concept", "c5m4floatstart2"],
			["who", "Replica"],
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
			["concept", "replicareplicaes"],
			["who", "Replica"],
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
			["concept", "replicareplicaes"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			["from", "Gambler"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
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
			["concept", "replicareplicaes"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			["from", "Mechanic"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
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
			["concept", "replicareplicaes"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			["from", "Producer"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
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
			["concept", "introC1M1"],
			["who", "Replica"],
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
			["concept", "introC1M1"],
			["who", "Replica"],
			[IsNotSaidCXM1Intro],
			["numberofteamalive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2DeliverCola"],
			["worldc1m2alarmsetoff", 2],
			[IsSubjectNear300],
			["activeweapon", "ColaBottles"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saidc1m2grabbedcola", 1],
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
			["concept", "PlayerUsingColaBottles"],
			["who", "Replica"],
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
			["concept", "RelaxedSigh"],
			["who", "Replica"],
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
			["concept", "StayTogetherInsideReponse"],
			["who", "Replica"],
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
			["concept", "UseAdrenaline"],
			["who", "Replica"],
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
			["concept", "WorldC3M1FerryCrossingA01"],
			["who", "Replica"],
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
			["concept", "WorldC3M1FerryCrossingD01"],
			["who", "Replica"],
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
			["concept", "WorldC3M1FerryCrossingD02"],
			["who", "Replica"],
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
			["concept", "_C3M1CrazyMilitants"],
			["who", "Replica"],
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
			["concept", "WorldC3M1FerryCrossingG01"],
			["who", "Replica"],
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
			["concept", "WorldC3M1FerryCrossingG03"],
			["who", "Replica"],
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
			["concept", "WorldC3M1FerryCrossingI03"],
			["who", "Replica"],
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
			["concept", "WorldC3M1FerryCrossingM5"],
			["who", "Replica"],
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
			["concept", "WorldC3M1Walkways2"],
			["who", "Replica"],
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
			["concept", "WorldIntroC31"],
			["who", "Replica"],
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
			["concept", "Award"],
			["awardname", "Sharing"],
			["coughing", 0],
			["subject", "Replica"],
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
			["concept", "Award"],
			["awardname", "Rescuer"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerGivenItem"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "Producer"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "Mechanic"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "Gambler"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "Biker"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "TeenGirl"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "Manager"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "NamVet"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "Replica"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "Replica"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "Replica"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Replica"],
			["subject", "Gambler"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Replica"],
			["subject", "Mechanic"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Replica"],
			["subject", "Producer"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Replica"],
			["subject", "Biker"],
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
			["concept", "YouWelcome"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorBotYouAreWelcome"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorBotReassureComing"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorBotReassureNearby"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorBotYesReady"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Replica"],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c1m2_streets"],
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
			["concept", "C1M2SafeRoomb2"],
			["who", "Replica"],
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
			["concept", "C1M2TankerAttack2"],
			["who", "Replica"],
			["worldwhoputcola", "Replica"],
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
			["concept", "c1m4escape"],
			["who", "Replica"],
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
			["concept", "c1m4escape"],
			["who", "Replica"],
			[NotSaidOutro],
			["ismechanicalive", 1],
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
			["concept", "c1m4escapeEllisCheckSuccess"],
			["who", "Replica"],
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
			["concept", "c1m4escapeEllisCheckFail"],
			["who", "Replica"],
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
			["concept", "PlayerPourStarted"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c1m4_atrium"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
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
			["concept", "c1m4startelevator"],
			["who", "Replica"],
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
			["concept", "PlayerPourStarted"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			["map", "c6m3_port"],
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
			["concept", "PlayerPourStarted"],
			["who", "Replica"],
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
			["concept", "FinaleTriggered"],
			["who", "Replica"],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
			["towin", 0],
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
			["concept", "_C2M2Entrance"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["map", "c2m2_fairgrounds"],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_teamnearcoaster", 1],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			["world_auto_coasterexpo", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c2m2_fairgrounds"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			["world_auto_saferoomstart", 1],
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
			["concept", "_C2M2_Riders01"],
			["who", "Replica"],
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
			["concept", "_C2M2_Riders04"],
			["who", "Replica"],
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
			["concept", "_C2M2_Riders05"],
			["who", "Replica"],
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
			["concept", "_C2M2_Riders07"],
			["who", "Replica"],
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
			["concept", "_C2M2_Slide01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "c2m3downhole"],
			["who", "Replica"],
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
			["concept", "c2m3CoasterEnd"],
			["who", "Replica"],
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
			["concept", "C2M3CoasterRunGo"],
			["who", "Replica"],
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
			["concept", "c2m3CoasterStart"],
			["who", "Replica"],
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
			["concept", "C2M3SeeChopper"],
			["who", "Replica"],
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
			["concept", "C2M4ButtonPressed"],
			["who", "Replica"],
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
			["concept", "C2M4Gate000"],
			["who", "Replica"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargate", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargatenag", 1],
			["world_auto_neargate", 1],
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
			["concept", "C2M4GateOpenCallout"],
			["who", "Replica"],
			["incapacitated", 0],
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
			["concept", "C2M4SeeChopper"],
			["who", "Replica"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M4Gate001"],
			["who", "Replica"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M4Gate002"],
			["who", "Replica"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M4Gate003"],
			["who", "Replica"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M4Gate003"],
			["who", "Replica"],
			[IsTalk],
			["incombat", 0],
			["ismechanicalive", 1],
			[ChanceToFire100Percent],
			["coughing", 0],
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
			["concept", "C2M4Gate005"],
			["who", "Replica"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M5_Button2Yell"],
			["who", "Replica"],
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
			["concept", "C2M5_Button2Yell"],
			["who", "Replica"],
			[IsNotSpeaking],
			["worldreplicamadatriders", 1],
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
			["concept", "C2M5_Choppercoming"],
			["who", "Replica"],
			["incapacitated", 0],
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
			["concept", "C2M5_PlanWorked"],
			["who", "Replica"],
			["incapacitated", 0],
			[NotReplicaMadAtRiders],
			["incombat", 0],
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
			["concept", "C2M5_PlanWorked"],
			["who", "Replica"],
			["incapacitated", 0],
			["worldreplicamadatriders", 1],
			["incombat", 0],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c2m5_concert"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c2m5_concert"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c2m5_concert"],
			["coughing", 0],
			["incapacitated", 0],
			[IsTalk],
			["isgambleralive", 1],
			[IsGamblerNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			[ChanceToFire10Percent],
			[NickOCD],
			["world_auto_escape", 1],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			["map", "c2m5_concert"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["inrescuevehicle", 1],
			["subject", "Gambler"],
			[IsGamblerNear800],
			[IsWorldTalkReplica],
			[NickOCD],
			["world_auto_escape", 1],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			["map", "c2m5_concert"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["inrescuevehicle", 1],
			["subject", "Gambler"],
			[IsGamblerNear800],
			[IsWorldTalkReplica],
			[NickOCD],
			["world_auto_escape", 1],
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
			["concept", "c2m5Button1"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["map", "c2m5_concert"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			["world_auto_c2m5inarena", 1],
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
			["concept", "C2M5Microphone"],
			["who", "Replica"],
			["incombat", 0],
			["map", "c2m5_concert"],
			[TimeSinceGroupInCombat02],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[NotReplicaMadAtRiders],
			[_auto_NotButton2],
			["world_auto_button1", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			[IsNotZombiePresentTank],
			[IsRocking],
			["map", "c2m5_concert"],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[NotReplicaMadAtRiders],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			["world_auto_concertlive", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			[IsNotZombiePresentTank],
			[IsRocking],
			["map", "c2m5_concert"],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[NotReplicaMadAtRiders],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			[IsRocking],
			["map", "c2m5_concert"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			["world_auto_concertlive", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			[IsRocking],
			["map", "c2m5_concert"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
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
			["concept", "C2M5ConcertTankResponse"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c2m5_concert"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			["world_auto_saferoomstart", 1],
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
			["concept", "c2m5_intro001"],
			["who", "Replica"],
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
			["concept", "c2m5_intro002"],
			["who", "Replica"],
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
			["concept", "c2m5_intro003"],
			["who", "Replica"],
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
			["concept", "c2m5_intro006"],
			["who", "Replica"],
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
			["concept", "c2m5_intro007"],
			["who", "Replica"],
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
			["concept", "c2m5_intro008"],
			["who", "Replica"],
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
			["concept", "c2m5_intro010"],
			["who", "Replica"],
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
			["concept", "c2m5_intro012"],
			["who", "Replica"],
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
			["concept", "c2m5_intro014"],
			["who", "Replica"],
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
			["concept", "c2m5_intro018"],
			["who", "Replica"],
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
			["concept", "c2m5_intro016"],
			["who", "Replica"],
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
			["concept", "c2m5_intro020"],
			["who", "Replica"],
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
			["concept", "c2m5_intro025"],
			["who", "Replica"],
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
			["concept", "c2m5_intro017"],
			["who", "Replica"],
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
			["concept", "C2M5ChopperOCD"],
			["who", "Replica"],
			["incapacitated", 0],
			["inrescuevehicle", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "C2M3SafeIntro010"],
			["who", "Replica"],
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
			["concept", "C2M3SafeIntro011"],
			["who", "Replica"],
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
			["concept", "C3M1FerryEnd2"],
			["who", "Replica"],
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
			["concept", "c3m2disgust"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "InfoRemc3m2_parachutist2"],
			["who", "Replica"],
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
			["concept", "C3M3SafeRoom2b2"],
			["who", "Replica"],
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
			["concept", "C3M3SafeRoom2c2"],
			["who", "Replica"],
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
			["concept", "C3M3SafeRoom2c3"],
			["who", "Replica"],
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
			["concept", "InfoRemC3M3LowerGatea"],
			["who", "Replica"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c3m4_plantation"],
			["coughing", 0],
			["incapacitated", 0],
			[IsRunning],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c3m4_plantation"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
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
			["concept", "C3M4Button1A"],
			["who", "Replica"],
			["from", "orator"],
			["world_auto_talkingreplica", 1],
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
			["concept", "C3M4Button1B"],
			["who", "Replica"],
			["from", "Replica"],
			["world_auto_talkingreplica", 1],
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
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Replica"],
			["from", "orator"],
			[IsEveryoneAlive],
			["world_auto_talkingreplica", 1],
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
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Replica"],
			["from", "orator"],
			["numberofteamalive", 3],
			["world_auto_talkingreplica", 1],
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
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Replica"],
			["from", "orator"],
			["numberofteamalive", 2],
			["world_auto_talkingreplica", 1],
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
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Replica"],
			["from", "orator"],
			["numberofteamalive", 1],
			["world_auto_talkingreplica", 1],
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
			["concept", "C3M4ButtonAnswerEllis"],
			["who", "Replica"],
			["from", "Mechanic"],
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
			["concept", "C3M4Button201"],
			["who", "Replica"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingreplica", 1],
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
			["concept", "C3M4Button202"],
			["from", "orator"],
			["world_auto_talkingreplica", 1],
			["who", "Replica"],
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
			["concept", "C3M4GateBlow01"],
			["who", "Replica"],
			["from", "orator"],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			["map", "c4m2_sugarmill_a"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			[_auto_NotTimerLockA],
			["world_auto_timera", 1],
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
			["concept", "introC4M1"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro03"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro04"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro05"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro06"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro07"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro09"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro11"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro14"],
			["who", "Replica"],
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
			["concept", "_c4m1Intro16"],
			["who", "Replica"],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			["incombat", 0],
			[IsWorldTalkReplica],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			["world_auto_replicainwitchville", 1],
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
			["concept", "c4m2_elevator_top_button"],
			["who", "Replica"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c4m5_milltown_escape"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
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
			["concept", "_C4M5_BoatComing01"],
			["who", "Replica"],
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
			["concept", "C4FinaleStart"],
			["who", "Replica"],
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
			["concept", "_C4M5_FinaleStart01"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c4m5_milltown_escape"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "_C4M5_Intro03"],
			["who", "Replica"],
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
			["concept", "_C4M5_Intro04"],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m5_burgertank"],
			[IsNotSaidc4m5_burgertank],
			["coughing", 0],
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
			["concept", "C5M1_intro002"],
			["who", "Replica"],
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
			["concept", "C5M1_intro004"],
			["who", "Replica"],
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
			["concept", "C5M1_intro005"],
			["who", "Replica"],
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
			["concept", "C5M1_intro008"],
			["who", "Replica"],
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
			["concept", "C5M1Flyby01"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M1Flyby03"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M2_signcontagious01"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["map", "c5m2_park"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			["world_auto_alarm", 1],
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
			["concept", "C5M2Freeway01"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m2busstation"],
			[IsNotSaidc5m2busstation],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_dooropen", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m2park"],
			[IsNotSaidc5m2park],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["incombat", 0],
			["coughing", 0],
			[IsTalk],
			["world_auto_inalarmfield", 1],
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
			["concept", "C5M3Bodies01"],
			["who", "Replica"],
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
			["concept", "C5M3Bodies03"],
			["who", "Replica"],
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
			["concept", "C5M3FirstInAlarmField"],
			["who", "Replica"],
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
			["concept", "C5M3Freeway01"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["incombat", 0],
			["coughing", 0],
			[IsTalk],
			[ChanceToFire10Percent],
			[IsNotAlone],
			[TimeSinceGroupInCombat02],
			[IsNotSaidSafeSpotAhead],
			["world_auto_offhighway", 1],
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
			["concept", "c5m3Jets2"],
			["who", "Replica"],
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
			["concept", "c5m3OnBridge"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard02"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard03"],
			["who", "Replica"],
			[IssuerClose],
			["incombat", 0],
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
			["concept", "PanicEvent"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["subject", "Replica"],
			["panictype", "CarAlarm"],
			["world_auto_inalarmfield", 1],
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
			["concept", "PanicEvent"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotReplica],
			["panictype", "CarAlarm"],
			[ChanceToFire25Percent],
			[_auto_ShotSecondCar],
			["world_auto_inalarmfield", 1],
			["world_auto_alarmfieldon", 1],
			[_auto_NotTimerLockA],
			[AutoShotcarIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.C5M3ShootCar2Replica,
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
		name = "C5M3ShootCar3Replica",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotReplica],
			["panictype", "CarAlarm"],
			[ChanceToFire25Percent],
			[IsNotSpeaking],
			["world_auto_inalarmfield", 1],
			["world_auto_alarmfieldon", 1],
			["world_auto_shotcar", 1],
			[_auto_NotTimerLockA],
			[AutoShotcarIncrease],
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
			//: _auto_ShotCar:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3ShootCar3EllisReplica",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["subject", "Mechanic"],
			["panictype", "CarAlarm"],
			[ChanceToFire25Percent],
			[IsNotSpeaking],
			["world_auto_inalarmfield", 1],
			["world_auto_alarmfieldon", 1],
			["world_auto_shotcar", 1],
			[_auto_NotTimerLockA],
			[AutoShotcarIncrease],
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
			//: _auto_ShotCar:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M3Sniper01Replica",
		criteria = 
		[
			["concept", "C5M3Sniper01"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3bodies"],
			["incombat", 0],
			[IsSubjectNear100],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3crashedheli"],
			[IsNotSaidc5m3crashedheli],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3freeway"],
			[IsNotSaidc5m3freeway],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3insewer"],
			[IsNotSaidc5m3insewer],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3manhole"],
			[IsNotSaidc5m3manhole],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3manhole"],
			[IsNotSaidc5m3manhole],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["isgambleralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3offhighway"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3seegraveyard"],
			[IsNotSaidc5m3seegraveyard],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotAlone],
			["world_auto_bridgebomb", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3sewercomment"],
			[IsNotSaidc5m3sewercomment],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			["isgambleralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3sewercomment"],
			[IsNotSaidc5m3sewercomment],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			["isgambleralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3sniper"],
			[IsNotSaidc5m3sniper],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3upladder"],
			[IsNotSaidc5m3upladder],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3upsteps"],
			[IsNotSaidc5m3upsteps],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m3warzone"],
			[IsNotSaidc5m3warzone],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M4BombExt"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "C5M4BombInt"],
			["who", "Replica"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NoAirstrikes],
			[AutoAirstrikeIncrease],
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
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt01AReplica",
		criteria = 
		[
			["concept", "C5M4BombIntA"],
			["who", "Replica"],
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
			["concept", "C5M4BombInt"],
			["who", "Replica"],
			["incombat", 0],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			["world_auto_airstrike", 1],
			[AutoAirstrikeIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt03Replica",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Replica"],
			["incombat", 0],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			["world_auto_airstrike", 2],
			[AutoAirstrikeIncrease],
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
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombIntManyReplica",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Replica"],
			["incombat", 0],
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
				func = Custom_Talker_Replica.C5M4BombInt03Replica,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.312 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerRemarkc5m4inminifinaleReplica",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m4inminifinale"],
			[IsNotSaidc5m4inminifinale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m4seebridge"],
			[IsNotSaidc5m4seebridge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Replica"],
			[IsNotSaidLeavingSafeArea],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["map", "c1m2_streets"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["map", "c1m3_mall"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["map", "c2m5_concert"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["map", "c3m2_swamp"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["map", "c4m3_sugarmill_b"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["map", "c4m4_milltown_b"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["map", "c5m2_park"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisInterrupt"],
			["who", "Replica"],
			["map", "c5m5_bridge"],
			["world_auto_tellingstory", 1],
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
			["concept", "EllisStoryReac01"],
			["who", "Replica"],
			["map", "c3m2_swamp"],
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
			["concept", "C5M5_Button2"],
			["who", "Replica"],
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
			["concept", "C5M5_GateDown"],
			["who", "Replica"],
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
			["concept", "C5M5_SurvivorConv01"],
			["who", "Replica"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingreplica", 1],
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
			["concept", "C5M5_SurvivorConv02"],
			["who", "Replica"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingreplica", 1],
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
			["concept", "C5M5_SurvivorConv03"],
			["who", "Replica"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingreplica", 1],
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
			["concept", "C5M5_SurvivorConv04"],
			["who", "Replica"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingreplica", 1],
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
			["concept", "C5M5_SurvivorConv05"],
			["who", "Replica"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingreplica", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			["world_auto_bridgenag", 1],
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
			["concept", "C5M5Button1"],
			["who", "Replica"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingreplica", 1],
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
			["concept", "C5M5Button1"],
			["who", "Replica"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
			["world_auto_talkingreplica", 1],
			["world_auto_buzzardrunmentioned", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["map", "c5m5_bridge"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsTalk],
			[_auto_NotRadioNag],
			["world_auto_soldierchatter", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_soldierchatter", 1],
			[_auto_NotButton1],
			["world_auto_radionag", 1],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Replica"],
			["map", "c5m5_bridge"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "Replica"],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c5m5_bridge"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c5m5_bridge"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[ChanceToFire10Percent],
			["world_auto_escape", 1],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["map", "c5m5_bridge"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInRescueVehicle],
			[IsNotSpeakingWeight0],
			["world_auto_escape", 1],
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
			["concept", "C5M5BridgeDestroyed2"],
			["who", "Replica"],
			["incapacitated", 0],
			[IsEveryoneAlive],
			["worldc5m5survivoroutro", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["map", "c5m5_bridge"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "C5M5_saferoom002"],
			["who", "Replica"],
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
			["concept", "C5M5_saferoom004"],
			["who", "Replica"],
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
			["concept", "C5M5_saferoom005"],
			["who", "Replica"],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			["map", "c5m5_bridge"],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			["map", "c5m5_bridge"],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			["map", "c5m5_bridge"],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Producer"],
			["map", "c5m5_bridge"],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Producer"],
			["map", "c5m5_bridge"],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Producer"],
			["map", "c5m5_bridge"],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Tank"],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c5m5_bridge"],
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
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "introC6M1"],
			["who", "Replica"],
			["introactor", "zoey"],
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
			["concept", "C6M1Intro_04b"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_08a"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_13b"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_13e"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_20a"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_20b"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_20d"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_20g"],
			["who", "Replica"],
			["worldc6m1_replicaisavampire", 1],
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
			["concept", "C6M1Intro_ConfirmObjective"],
			["who", "Replica"],
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
			["concept", "C6M1TakeSubMachineGun01"],
			["who", "Replica"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Replica"],
			[IsNotAlone],
			["hasfirstaidkit", 1],
			["map", "c6m1_riverbank"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Replica"],
			[IsNotAlone],
			[NoHasFirstAidKit],
			["map", "c6m1_riverbank"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_HistoricTour"],
			[IsNotSaidWorldC6M1_HistoricTour],
			["worldremarkworldc6m1_historictour", 1],
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
			["concept", "WorldC6M1_PostWedding01a"],
			["who", "Replica"],
			[IsSubjectDistNear800],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03a"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn04a"],
			["who", "Replica"],
			[IsSubjectDistNear800],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C6M2_OpenGate1"],
			["who", "Replica"],
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
			["concept", "C6M2_OpenGate2"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo01a"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo09a"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["isgambleralive", 1],
			[ChanceToFire50Percent],
			["world_auto_saferoomstart", 1],
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
			["concept", "DLC1_C6M2_SafeRoomConvo12b"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo12d"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo13b"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo13d"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo14d"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo15b"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16a"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16c"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo18c"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo18e"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19b"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19d"],
			["who", "Replica"],
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
			["concept", "WorldC6M2_InSewer101a"],
			["who", "Replica"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_InSewer102a"],
			["who", "Replica"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_InSewer202a"],
			["who", "Replica"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_InSewerLadder101a"],
			["who", "Replica"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_OnTourWalk101c"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_OnTourWalk103a"],
			["who", "Replica"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_Tattoo02b"],
			["who", "Replica"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C6M3_BridgeDown"],
			["who", "Replica"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c6m3_port"],
			["coughing", 0],
			["incapacitated", 0],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "SceneCancelled"],
			["who", "Replica"],
			["map", "c6m3_port"],
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
			["concept", "c6m3_elevator"],
			["who", "Replica"],
			["map", "c6m3_port"],
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
			["concept", "c6m3_elevator"],
			["who", "Replica"],
			["map", "c6m3_port"],
			["introactor", "zoey"],
			["ismechanicalive", 1],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "Biker"],
			["map", "c6m3_port"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_port"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo02e"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["map", "c6m3_port"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["introactor", "zoey"],
			[IsEveryoneAlive],
			["world_auto_saferoomstart", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["map", "c6m3_port"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["introactor", "francis"],
			["world_auto_saferoomstart", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08b"],
			["who", "Replica"],
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
			["concept", "SurvivorIncapacitated"],
			["who", "Replica"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
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
			["concept", "CallForRescue"],
			["who", "Replica"],
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
			["concept", "c6m3_outro3"],
			["who", "Replica"],
			["map", "c6m3_port"],
			[IsNotVersus],
			["incapacitated", 0],
			[ChanceToFire100Percent],
			["from", "Biker"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotPickedUpFirstAidKit],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "Adrenaline"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			["weaponname", "Adrenaline"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "Replica"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
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
			["concept", "PlayerSpotAmmo"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "Defibrillator"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			["weaponname", "Defibrillator"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerFar400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "PipeBomb"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			["weaponname", "PipeBomb"],
			[IsWorldTalkReplica],
			["hasgrenade", 1],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "GrenadeLauncher"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			["weaponname", "GrenadeLauncher"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "FirstAidKit"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			["weaponname", "FirstAidKit"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicFar400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "Molotov"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			["weaponname", "Molotov"],
			[IsWorldTalkReplica],
			["hasmolotov", 1],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "PainPills"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			["haspainpills", 1],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerFar400],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Explosive"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Explosive"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Incendiary"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Incendiary"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			[IsNotSaidArmoredWarn],
			["map", "c5m1_waterfront"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			[IsNotSaidCedaWarn],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawclownsIncrease],
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
			//: SawClowns:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedFallenReplica",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			[IsNotSaidClownWarn],
			["map", "c2m2_fairgrounds"],
			[IsNotSpeakingWeight0],
			[SawclownsIncrease],
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
			//: SawClowns:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedHunterReplica",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerIncoming"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "jimmy"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawmudmenIncrease],
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
			//: SawMudMen:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedMudmenC3M2Replica",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawmudmenIncrease],
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
			//: SawMudMen:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedSmokerReplica",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[IsNotSaidWitchStartAttack],
			["isproduceralive", 1],
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
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incombatmusic", 0],
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
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incombatmusic", 0],
			[IsWorldTalkReplica],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incombatmusic", 1],
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
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "Fault"],
			["faultname", "FriendlyFire"],
			["who", "Replica"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["onthirdstrike", 0],
			[IsNotZombiePresentTank],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkReplica],
			["onthirdstrike", 1],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkReplica],
			["subject", "Gambler"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkReplica],
			["subject", "Mechanic"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkReplica],
			["subject", "Mechanic"],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkReplica],
			["subject", "Producer"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkReplica],
			["subject", "Producer"],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			["onthirdstrike", 0],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkReplica],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			["incapacitated", 0],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkReplica],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			["incapacitated", 0],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkReplica],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Gambler"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkReplica],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Mechanic"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkReplica],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Producer"],
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
			["concept", "SurvivorBotMovingToReviveFriend"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incombat", 0],
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
			["concept", "PlayerToTheRescue"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerTaunt"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			[ChanceToFire40Percent],
			["team", "Survivor"],
			["map", "c4m1_milltown_a"],
			["worldsaidc4m1_nogas", 1],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			[ChanceToFire60Percent],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_replicaincane", 1],
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
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "Replica"],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			["map", "c5m2_park"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			["world_auto_alarm", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerExertionMinor"],
			["who", "Replica"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
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
			["concept", "PlayerExertionMinor"],
			["who", "Replica"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
			[IsTalkReplica],
			["map", "c6m1_riverbank"],
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
			["concept", "Fault"],
			["who", "Replica"],
			["faultname", "WitchHarassment"],
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
			["concept", "Fault"],
			["who", "Replica"],
			["faultname", "WitchHarassment"],
			["map", "c6m1_riverbank"],
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
			["concept", "WitchStartAttack"],
			["who", "Replica"],
			["witch_aggro_on", "Replica"],
			[WitchaggroIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorCriticalHurtReplica",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Critical"],
			["who", "Replica"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			[IsNotSpeaking],
			["painlevel", "Incapacitated"],
			["who", "Replica"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Replica"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Replica"],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			["incombatmusic", 0],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			["incombatmusic", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Replica"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			["map", "c4m2_sugarmill_a"],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			["world_auto_replicainwitchville", 1],
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
			["concept", "PlayerHelp"],
			["who", "Replica"],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 1],
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
			["concept", "PlayerHelp"],
			["who", "Replica"],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 1],
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
			["concept", "PlayerHelp"],
			["who", "Replica"],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 1],
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
			["concept", "FriendNeedsHelp"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "Replica"],
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
			["concept", "C2M1Falling"],
			["who", "Replica"],
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
			["concept", "c2m2CarouselEnd"],
			["who", "Replica"],
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
			["concept", "c2m2CarouselStart"],
			["who", "Replica"],
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
			["concept", "C3M3BridgeButton"],
			[IsNotSaidC3M3BridgeButton],
			["who", "Replica"],
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
			["concept", "EndOfWavWindow5"],
			["who", "Replica"],
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
			["concept", "ChainsawUsed"],
			[IsNotSaidChainSawUsed],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M1OverTable"],
			[IsNotSaidC1M1OverTable],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M1SearchRooms"],
			[IsNotSaidC1M1SearchRooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M1ThroughThisDoor"],
			[IsNotSaidC1M1ThroughThisDoor],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "RemarkWorldC1M2SpotGunStore"],
			[IsNotSaidRemarkWorldC1M2SpotGunStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3AlarmDoors"],
			[IsNotSaidC1M3AlarmDoors],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3CarefulWindows"],
			[IsNotSaidC1M3CarefulWindows],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3CEDAGone"],
			[IsNotSaidC1M3CEDAGone],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3DiscoPants"],
			[IsNotSaidC1M3DiscoPants],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3DownHere"],
			[IsNotSaidC1M3DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3DownHere2"],
			[IsNotSaidC1M3DownHere2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3DownTheEscalator"],
			[IsNotSaidC1M3DownTheEscalator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3FoodCourtNotOkay"],
			[IsNotSaidC1M3FoodCourtNotOkay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3FoodCourtOkay"],
			[IsNotSaidC1M3FoodCourtOkay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3OverHere"],
			[IsNotSaidC1M3OverHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3SearchRooms"],
			[IsNotSaidC1M3SearchRooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3ThisWay"],
			[IsNotSaidC1M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3ThroughHere"],
			[IsNotSaidC1M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3TurnOffAlarm1"],
			[IsNotSaidC1M3TurnOffAlarm1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3TurnOffAlarm2"],
			[IsNotSaidC1M3TurnOffAlarm2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3TurnOffAlarm3"],
			[IsNotSaidC1M3TurnOffAlarm3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3UpEscalator1"],
			[IsNotSaidC1M3UpEscalator1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3UpEscalator2"],
			[IsNotSaidC1M3UpEscalator2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C1M3UpEscalator3"],
			[IsNotSaidC1M3UpEscalator3],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_campsite"],
			[IsNotSaidc2m1_campsite],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_checkrooms"],
			[IsNotSaidc2m1_checkrooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_cliff"],
			[IsNotSaidc2m1_cliff],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_downstairs"],
			[IsNotSaidc2m1_downstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_bridgeout"],
			[IsNotSaidc2m1_bridgeout],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_followriver"],
			[IsNotSaidc2m1_followriver],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_motelsign"],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_motelsign"],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_offramp"],
			[IsNotSaidc2m1_offramp],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_park"],
			[IsNotSaidc2m1_park],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_searchlights"],
			[IsNotSaidc2m1_searchlights],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_searchlights"],
			[IsNotSaidc2m1_searchlights],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			["isgambleralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_throughhere"],
			[IsNotSaidc2m1_throughhere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_throughmotel"],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_throughwindow"],
			[IsNotSaidc2m1_throughwindow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_uphill"],
			[IsNotSaidc2m1_uphill],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m1_upstairs"],
			[IsNotSaidc2m1_upstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_burgers"],
			[IsNotSaidc2m2_burgers],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_candymachine"],
			[IsNotSaidc2m2_candymachine],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_carouselbutton"],
			[IsNotSaidc2m2_carouselbutton],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_cobbler"],
			[IsNotSaidc2m2_cobbler],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_cottoncandy"],
			[IsNotSaidc2m2_cottoncandy],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_cottoncandy2"],
			[IsNotSaidc2m2_cottoncandy],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_entrancesign"],
			[IsNotSaidc2m2_entrancesign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_lilpeanut"],
			[IsNotSaidc2m2_lilpeanut],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_ladder"],
			[IsNotSaidc2m2_ladder],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_favoriteride"],
			[IsNotSaidc2m2_favoriteride],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_kettlekorn"],
			[IsNotSaidc2m2_kettlekorn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_miscfood"],
			[IsNotSaidc2m2_miscfood],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_C2M2_Okra"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_steake"],
			[IsNotSaidc2m2_steake],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_thistall"],
			[IsNotSaidc2m2_thistall],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_thistall"],
			[IsNotSaidc2m2_thistall],
			[ChanceToFire40Percent],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			["ismechanicalive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m2_topofslide"],
			[IsNotSaidc2m2_topofslide],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_coasteroff"],
			[IsNotSaidc2m3_coasteroff],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_coollight"],
			[IsNotSaidc2m3_coollight],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_freshair"],
			[IsNotSaidc2m3_freshair],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_freshair"],
			[IsNotSaidc2m3_freshair],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_hole"],
			[IsNotSaidc2m3_hole],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_longesttunnel"],
			[IsNotSaidc2m3_longesttunnel],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_longesttunnel"],
			[IsNotSaidc2m3_longesttunnel],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_overfence"],
			[IsNotSaidc2m3_overfence],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_rubble"],
			[IsNotSaidc2m3_rubble],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_teamnearcoaster", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_swanroom"],
			[IsNotSaidc2m3_swanroom],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_tracks01"],
			[IsNotSaidc2m3_tracks01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_tracks02"],
			[IsNotSaidc2m3_tracks02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_tracks03"],
			[IsNotSaidc2m3_tracks03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_tracks04"],
			[IsNotSaidc2m3_tracks04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_tracks05"],
			[IsNotSaidc2m3_tracks05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_tracks06"],
			[IsNotSaidc2m3_tracks06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_tracks07"],
			[IsNotSaidc2m3_tracks07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_tracks08"],
			[IsNotSaidc2m3_tracks08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_water"],
			[IsNotSaidc2m3_water],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_water"],
			[IsNotSaidc2m3_water],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m3_wayblocked"],
			[IsNotSaidc2m3_wayblocked],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m4_barnentry"],
			[IsNotSaidc2m4_barnentry],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m4_bumpercars"],
			[IsNotSaidc2m4_bumpercars],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m4_pendoor"],
			[IsNotSaidc2m4_pendoor],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m4_stadium"],
			[IsNotSaidc2m4_stadium],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m4_upbarn"],
			[IsNotSaidc2m4_upbarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c2m5_button2"],
			[IsNotSaidc2m5_button2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear75],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_button1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3BridgeDown"],
			[IsNotSaidC3M3BridgeDown],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			["worldsaidc3m3bridgebutton", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M2PlaneCrash"],
			[IsNotSaidC3M2PlaneCrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M2PlaneCrash"],
			[IsNotSaidC3M2PlaneCrash],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear600],
			["isgambleralive", 1],
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
			["concept", "_C3M2Pirogue"],
			["who", "Replica"],
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
			["concept", "_C3M2Pirogue2"],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M2PlaneDoorNag"],
			[IsNotSaidC3M2PlaneDoorNag],
			["coughing", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			["worldsaidc3m2planedoornag", 1],
			["map", "c3m2_swamp"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M2SickOfSwamp"],
			[IsNotSaidC3M2SickOfSwamp],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M2Village1"],
			[IsNotSaidC3M2Village1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M2WhereAreWe"],
			[IsNotSaidC3M2WhereAreWe],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M2WhereAreWe"],
			[IsNotSaidC3M2WhereAreWe],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3LowerGate"],
			[IsNotSaidC3M3BridgeButton],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3SearchHouses"],
			[IsNotSaidC3M3SearchHouses],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3StayUpHere"],
			[IsNotSaidC3M3StayUpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3StayUpHere"],
			[IsNotSaidC3M3StayUpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3ThroughHere"],
			[IsNotSaidC3M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3ThroughThisHouse"],
			[IsNotSaidC3M3ThroughThisHouse],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3UpHere"],
			[IsNotSaidC3M3UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c3m4downroad"],
			[IsNotSaidc3m4downroad],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c3m4radio"],
			[IsNotSaidc3m4radio],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c3m4scaffold"],
			[IsNotSaidc3m4scaffold],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c3m4shacks"],
			[IsNotSaidc3m4shacks],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m1_garagesale"],
			[IsNotSaidc4m1_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m1_InBurgerTank"],
			[IsNotSaidc4m1_InBurgerTank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m1_nogas"],
			[IsNotSaidc4m1_nogas],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m1_throughhereA"],
			[IsNotSaidc4m1_throughhereA],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_gasinsidesign"],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_millentrance"],
			[IsNotSaidc4m2_millentrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_millentranceexit"],
			[IsNotSaidc4m2_millentranceexit],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_seegasstation"],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_streetblocked"],
			[IsNotSaidc4m2_streetblocked],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_upramp"],
			[IsNotSaidc4m2_upramp],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_upthestairs"],
			[IsNotSaidc4m2_upthestairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_useelevator"],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			["worldsaidc4m2_seegasstation", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_waterpool"],
			[IsNotSaidc4m2_waterpool],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m2_weather"],
			[IsNotSaidc4m2_weather],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_cane"],
			[IsNotSaidc4m3_cane],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_crosshere"],
			[IsNotSaidc4m3_crosshere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_downhere"],
			[IsNotSaidc4m3_downhere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_downstairs"],
			[IsNotSaidc4m3_downstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_ducatelsign"],
			[IsNotSaidc4m3_ducatelsign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_elevator"],
			[IsNotSaidc4m3_elevator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_flooded"],
			[IsNotSaidc4m3_flooded],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_flooded2"],
			[IsNotSaidc4m3_flooded2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_overtank"],
			[IsNotSaidc4m3_overtank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_rain"],
			[IsNotSaidc4m3_rain],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_thisway"],
			[IsNotSaidc4m3_thisway],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m3_uppipes"],
			[IsNotSaidc4m3_uppipes],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m4_flooded"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsSubjectNear150],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m4_garagesale"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m4_garagesale2"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m4_playground"],
			[IsNotSaidc4m4_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m4_porchlight"],
			[IsNotSaidc4m4_porchlight],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m4_truckwreck"],
			[IsNotSaidc4m4_truckwreck],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c4m4_useroofs"],
			[IsNotSaidc4m4_useroofs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "pathc2m1_billboard"],
			[IsNotSaidpathc2m1_billboard],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1CedaMaps"],
			[IsNotSaidWorldC1M1CedaMaps],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1KnowBoomer"],
			[IsNotSaidWorldC1M1KnowBoomer],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1DownHere"],
			[IsNotSaidWorldC1M1DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1DownStairs"],
			[IsNotSaidWorldC1M1DownStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1ElevatorBroken"],
			[IsNotSaidWorldC1M1ElevatorBroken],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1FireRoom"],
			[IsNotSaidWorldC1M1FireRoom],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1FireSpreading"],
			[IsNotSaidWorldC1M1FireSpreading],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1First"],
			[IsNotSaidWorldC1M1First],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1Ledge"],
			[IsNotSaidWorldC1M1Ledge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M1StairsSign"],
			[IsNotSaidWorldC1M1StairsSign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2Close"],
			[IsNotSaidWorldC1M2Close],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2DownStairs"],
			[IsNotSaidWorldC1M2DownStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2Abandoned"],
			[IsNotSaidWorldC1M2Abandoned],
			["coughing", 0],
			["incombat", 0],
			["intensity", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2Dumpster"],
			[IsNotSaidWorldC1M2Dumpster],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2GunStoreClose"],
			[IsNotSaidWorldC1M2GunStoreClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2InHere"],
			[IsNotSaidWorldC1M2InHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2JumpTruck"],
			[IsNotSaidWorldC1M2JumpTruck],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2MallSignHere"],
			[IsNotSaidWorldC1M2MallSignHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2MallThisWay"],
			[IsNotSaidWorldC1M2MallThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC1M2UpStairs"],
			[IsNotSaidWorldC1M2UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC3M1FeedGator"],
			[IsNotSaidWorldC3M1FeedGator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC3M1FerryNag"],
			[IsNotSaidWorldC3M1FerryNag],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["worldsaidworldc3m1ferrynag", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC3M1Path01"],
			[IsNotSaidWorldC3M1Path01],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC3M1StayOn"],
			[IsNotSaidWorldC3M1StayOn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502AlarmButton"],
			["who", "Replica"],
			["coughing", 0],
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
			["concept", "WorldC502AlarmStopped"],
			["who", "Replica"],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC502Alley"],
			[IsNotSaidWorldC502Alley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502NotZombies2"],
			["who", "Replica"],
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
			["concept", "WorldC502NotZombies3b"],
			["who", "Replica"],
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
			["concept", "WorldC502Smell2"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["worldreplicacake", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			["zombiepresentwitch", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_InSewer1"],
			[IsNotSaidWorldC6M2_InSewer1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_InSewer1"],
			[IsNotSaidWorldC6M2_InSewer1],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["isgambleralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C2M1Falling"],
			["who", "Replica"],
			["map", "c6m2_bedlam"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OnTourWalk1"],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			["worldsaidopenedgate1blameellis", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_Suitcase"],
			[IsNotSaidWorldC6M2_Suitcase],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_c6m3bridgedown", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M3_Bill"],
			["coughing", 0],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["map", "c6m3_port"],
			["subject", "TeenGirl"],
			[IsTeenGirlNear400],
			[IsWorldTalkReplica],
			["world_auto_c6m3bill", 1],
			["world_auto_replicac6m3bill", 1],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["map", "c6m3_port"],
			["subject", "Biker"],
			[IsBikerNear400],
			[IsWorldTalkReplica],
			["world_auto_c6m3bill", 1],
			["world_auto_replicac6m3bill", 1],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["map", "c6m3_port"],
			["subject", "TeenGirl"],
			[IsTeenGirlNear400],
			[IsWorldTalkReplica],
			["world_auto_c6m3bill", 1],
			["world_auto_replicac6m3bill", 1],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["map", "c6m3_port"],
			["subject", "Biker"],
			[IsBikerNear400],
			[IsWorldTalkReplica],
			["world_auto_c6m3bill", 1],
			["world_auto_replicac6m3bill", 1],
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
			["concept", "c6m3_loss"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "c6m3_loss2"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignContagious"],
			[IsNotSaidWorldSignContagious],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignContagious"],
			[IsNotSaidWorldSignContagious],
			["incombat", 0],
			[IsSubjectNear100],
			["isproduceralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignContagious"],
			[IsNotSaidWorldSignContagious],
			["incombat", 0],
			[IsSubjectNear100],
			["ismechanicalive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignDeadlyForce"],
			[IsNotSaidWorldSignDeadlyForce],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignDeadlyForce2"],
			["who", "Replica"],
			[IsNotSaidWorldSignDeadlyForce2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502OfficialInstructions"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502BarricadeHomes"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignFormLine"],
			[IsNotSaidWorldSignFormLine],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignPhotography"],
			[IsNotSaidWorldSignPhotography],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignPhotography"],
			[IsNotSaidWorldSignPhotography],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignReportSick"],
			[IsNotSaidWorldSignReportSick],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignReportSick"],
			[IsNotSaidWorldSignReportSick],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignReportUnusual"],
			[IsNotSaidWorldSignReportUnusual],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignRestrictedArea"],
			[IsNotSaidWorldSignRestrictedArea],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignsInfectedDetected"],
			[IsNotSaidWorldSignsInfectedDetected],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignStayInGroup"],
			[IsNotSaidWorldSignStayInGroup],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignStayInGroup"],
			[IsNotSaidWorldSignStayInGroup],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignStayInGroup2"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignWhereIsCEDA"],
			[IsNotSaidWorldSignWhereIsCEDA],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignWhereIsCEDA"],
			[IsNotSaidWorldSignWhereIsCEDA],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			["isproduceralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignWhereIsCEDA"],
			[IsNotSaidWorldSignWhereIsCEDA],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			["ismechanicalive", 1],
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
			["concept", "WorldSignWhereIsCEDA2"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldSignC5AlarmWillSound"],
			[IsNotSaidWorldSignC5AlarmWillSound],
			["coughing", 0],
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
			["concept", "WorldSignC5AlarmWillSound3"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "RespondAffirmative"],
			[IssuerMediumClose],
			["coughing", 0],
			["incombat", 0],
			["who", "Replica"],
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
			["concept", "PlayerFollowMe"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHelp"],
			["who", "Replica"],
			["coughing", 0],
			["incapacitated", 0],
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
			["concept", "PlayerHurryUp"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHurryUp"],
			["who", "Replica"],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c4m2_sugarmill_a"],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[IsWorldTalkReplica],
			["world_auto_replicainwitchville", 1],
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
			["concept", "PlayerKillThatLight"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerLeadOn"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerMoveOn"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerWatchOutBehind"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerAskReady"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerImWithYou"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerLaugh"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerLostCall"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerNiceJob"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subject", "Mechanic"],
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
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subject", "Producer"],
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
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subject", "TeenGirl"],
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
			["concept", "PlayerAnswerLostCall"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "KillStealCalledOut"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerSorry"],
			["coughing", 0],
			[IsNotShotTeammateReplica],
			["who", "Replica"],
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
			["concept", "PlayerSorry"],
			["coughing", 0],
			["worldshotteammatereplica", 1],
			["who", "Replica"],
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
			["concept", "PlayerThanks"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerYellRun"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerYes"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "NickC1Attitude"],
			["coughing", 0],
			[IsNotSpeaking],
			["from", "Gambler"],
			["who", "Replica"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			["from", "Gambler"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			["from", "Gambler"],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			["from", "Mechanic"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			["from", "Mechanic"],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			["from", "Producer"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			["from", "Producer"],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			["inbattlefield", 1],
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
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			["instartarea", 1],
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
			["concept", "PlayerNegative"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PanicEvent"],
			["who", "Replica"],
			["coughing", 0],
			[SubjectIsNotReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotc5m3_cemetery],
			["panictype", "CarAlarm"],
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
			["concept", "PanicEvent"],
			["who", "Replica"],
			["coughing", 0],
			["subject", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotc5m3_cemetery],
			["panictype", "CarAlarm"],
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
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardTank"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHurrah"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerWarnCareful"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsL4D1Alive],
			["map", "c6m3_port"],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["towin", 20],
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
			["concept", "GasPour20More"],
			["who", "Replica"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["towin", 10],
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
			["concept", "GasPour10More"],
			["who", "Replica"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["towin", 1],
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
			["concept", "GasPour1More"],
			["who", "Replica"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["towin", 2],
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
			["concept", "GasPour2More"],
			["who", "Replica"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["towin", 3],
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
			["concept", "GasPour3More"],
			["who", "Replica"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["towin", 5],
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
			["concept", "GasPour5More"],
			["who", "Replica"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["gamemode", "scavenge"],
			["towin", 0],
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
			["concept", "PlayerPourStarted"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["numberofteamalive", 1],
			[IsWorldTalkReplica],
			["gamemode", "scavenge"],
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
			["concept", "PlayerPourStarted"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["numberofteamalive", 1],
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
			["concept", "PlayerPourStarted"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsWorldTalkReplica],
			["gamemode", "scavenge"],
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
			["concept", "PlayerEquippedScavengeItem"],
			["who", "Replica"],
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
			["concept", "PlayerShotGasCan"],
			["who", "Replica"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["gamemode", "scavenge"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c1m4_atrium"],
			["gamemode", "scavenge"],
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
			["concept", "commentjockey"],
			["who", "Replica"],
			[IssuerCloseEnough],
			["incapacitated", 0],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			[ChanceToFire25Percent],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedReplica],
			["beingjockeyed", 0],
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
			["concept", "commentjockey"],
			["who", "Replica"],
			[IssuerCloseEnough],
			["incapacitated", 0],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedReplica],
			["beingjockeyed", 0],
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
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c4m2_sugarmill_a"],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerGoingToDie"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Replica"],
			["onthirdstrike", 1],
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
			["concept", "PlayerGoingToDie"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Replica"],
			["onthirdstrike", 1],
			["map", "c5m5_bridge"],
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
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "AlertGiveItemStopFirstAidA"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "BashWithItem"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["item", "FirstAidKit"],
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
			["concept", "EatPills"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Gambler"],
			[IsNotSaidGamblerPounced],
			["who", "Replica"],
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
			["concept", "PlayerGetInsideCheckPoint"],
			["coughing", 0],
			["who", "Replica"],
			["insafespot", 1],
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
			["concept", "PlayerGetInsideCheckPoint"],
			["map", "c2m2_fairgrounds"],
			["coughing", 0],
			["who", "Replica"],
			["insafespot", 1],
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
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["grenadetype", "Molotov"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["grenadetype", "PipeBomb"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["grenadetype", "VomitJar"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["grenadetype", "VomitJar"],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerIncapacitated"],
			["who", "Replica"],
			["map", "c1m2_streets"],
			["worldc1m2alarmsetoff", 2],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkReplica],
			[IsUsingFirearm],
			["map", "c1m1_hotel"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkReplica],
			["activeweapon", "Melee"],
			["map", "c1m1_hotel"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			["subjectisa", "Jockey"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidJockeyEasterEgg],
			["randomnum", 1],
			["map", "c2m4_barns"],
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
			["concept", "C2M4JockeyEasterEgg"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "RightfulKiller"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsSubjectFar300],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			["worldellisalsowarn", 1],
			[ChanceToFire5Percent],
			[IsRocking],
			[IsNotAlone],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c1m2_streets"],
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
			["concept", "KilledZombie"],
			["who", "Replica"],
			["subjectisa", "Witch"],
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
			["concept", "KilledZombie"],
			["who", "Replica"],
			["subjectisa", "Witch"],
			[IsWitchAggro],
			[WitchaggroDecrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Replica.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:--1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerLockTheDoorCheckPointReplica",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			["insafespot", 1],
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
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			["insafespot", 1],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Mechanic"],
			[IsNotSaidMechanicPounced],
			["who", "Replica"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Mechanic"],
			[IsNotSaidMechanicPounced],
			["who", "Replica"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Gambler"],
			[IsNotSaidGamblerPounced],
			["who", "Replica"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "Replica"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["worldknownames", 1],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c1m2_streets"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "RevivedByDefibrillator"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "Replica"],
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
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "Replica"],
			["subject", "Producer"],
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
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "Replica"],
			["subject", "TeenGirl"],
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
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "Replica"],
			["insafespot", 1],
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
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[IsNotSuggestedHealth],
			["hasfirstaidkit", 1],
			["incapacitated", 0],
			["who", "Replica"],
			["beinghealed", 0],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Replica"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat20],
			["incapacitated", 0],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Replica"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Replica"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Gambler"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Replica"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Mechanic"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Replica"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Producer"],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["numberofteamalive", 1],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c1m2_streets"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c1m3_mall"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c5m4_quarter"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m2_bedlam"],
			["numberofteamdead", 0],
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
			["concept", "PlayerUsingDefibrillator"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Replica"],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Replica"],
			[IsNotWarnHeardCharger],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Replica"],
			[IsNotWarnHeardWitch],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			["incombat", 0],
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
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotWarnHeardWitch],
			["incombat", 0],
			[IsClosestSurvivorNear1200],
			["isproduceralive", 1],
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
			["concept", "PlayerWarnMegaMob"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "WitchGettingAngry"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "WorldSignsInfectedDetected2"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignsStayTogether2"],
			["who", "Replica"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "introC3M1"],
			["who", "Replica"],
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
			["concept", "introC5M1"],
			["who", "Replica"],
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
			["concept", "WorldIntroC513"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "WorldSignColdBeer2"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "WorldSignHurricane2"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerVomitInFace"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorCoughing"],
			["coughing", 1],
			["who", "Replica"],
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
			["concept", "PlayerDeath"],
			["coughing", 1],
			["who", "Replica"],
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
			["concept", "PlayerDeath"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkReplica],
			["incapacitated", 0],
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
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			["incapacitated", 0],
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
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c1m2_streets"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c1m3_mall"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c2m1_highway"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c2m2_fairgrounds"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c2m4_barns"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c3m1_plankcountry"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c3m2_swamp"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C3M3SafeHouseAhead"],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c4m1_milltown_a"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c4m2_sugarmill_a"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c4m3_sugarmill_b"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c4m4_milltown_b"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c5m2_park"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c5m4_quarter"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c6m1_riverbank"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			["map", "c6m2_bedlam"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c2m5_concert"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c3m4_plantation"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c4m5_milltown_escape"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c5m5_bridge"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c6m3_port"],
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
			["concept", "ScreamWhilePounced"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerGroundPoundedByTank"],
			["who", "Replica"],
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
			["concept", "PlayerGroundPoundedByTank"],
			["who", "Replica"],
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
			["concept", "PlayerBackUp"],
			["who", "Replica"],
			["coughing", 0],
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
			["concept", "PlayerEmphaticGo"],
			["who", "Replica"],
			["coughing", 0],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Replica"],
			["onthirdstrike", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerThisWay"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerWaitHere"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerLedgeHangEnd"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerLedgeHangMiddle"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerLedgeHangStart"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Replica"],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Replica"],
			[IsNotSaidSomeoneDied],
			["numberofteamalive", 2],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsClosestSurvivorNear400],
			["numberofteamalive", 3],
			["incapacitated", 0],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["worldsaidfaultfriendlyfire", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfiremechanic", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfireproducer", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfireteengirl", 1],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itempickedup", "SMG"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itempickedup", "PumpShotgun"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itempickedup", "Shotgun_Chrome"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itempickedup", "Smg_mp5"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSaidDeployUpgradePack_Explosive],
			["activeweapon", "UpgradePack_Explosive"],
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
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSaidDeployUpgradePack_Incendiary],
			["activeweapon", "UpgradePack_Incendiary"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Adrenaline"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "AutoShotgun"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Shotgun_Spas"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "chainsaw"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "cricket_bat"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "cricket_bat"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "shovel"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Knife"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "CrowBar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Defibrillator"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "electric_guitar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "FirstAidKit"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidPickupFirstSMG],
			["worldsaidc1m1opendoor", 1],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "GolfClub"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "GrenadeLauncher"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "HuntingRifle"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Sniper_Military"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Sniper_scout"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Sniper_awp"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "IncendiaryAmmo"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "IncendiaryAmmo"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Katana"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			[ChanceToFire50Percent],
			["botisavailable", 0],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "m60"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Machete"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Magnum"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Pitchfork"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Molotov"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "PainPills"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "PipeBomb"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "PumpShotgun"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "shotgun_chrome"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Rifle"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Rifle_Desert"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Rifle_AK47"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Rifle_sg552"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "SecondPistol"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "SMG"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "Smg_silenced"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "tonfa"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "UpgradePack_Explosive"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "UpgradePack_Incendiary"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "VomitJar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "VomitJar"],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incombatmusic", 0],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incombatmusic", 0],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incombatmusic", 1],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["incombatmusic", 1],
			["subject", "Mechanic"],
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
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incombatmusic", 0],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["worldshotteammatereplica", 1],
			[IsWorldTalkReplica],
			["incombatmusic", 0],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["worldshotteammatereplica", 1],
			[IsWorldTalkReplica],
			["incombatmusic", 0],
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
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Replica"],
			["from", "Gambler"],
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
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Replica"],
			["from", "Mechanic"],
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
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Replica"],
			["from", "Producer"],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["incombatmusic", 0],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Replica"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Replica"],
			["incombatmusic", 1],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Replica"],
			["incombatmusic", 1],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Replica"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "_C1M1_ElevatorHello"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello01a"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello01c"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello01d"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello02b"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHelloAllAliveExtra1"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello03b"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello03c"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello05c"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello07d"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello07g"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello09a"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello10a"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello10b"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello12b"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello12c"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello13a"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello13b"],
			["who", "Replica"],
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
			["concept", "_c1m4startelevator5a"],
			["who", "Replica"],
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
			["concept", "_c1m4startelevatorLast"],
			["who", "Replica"],
			["worldelevatortimer", 1],
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
			["concept", "_c1m4startelevatorLast"],
			["who", "Replica"],
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
			["concept", "_C2M1_Fall01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_C2M1_Fall02"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_C2M1_Fall04"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_c2m1_searchlights01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_c2m1_searchlights02"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_c2m1_searchlights03"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_C2M1abandoned01"],
			["who", "Replica"],
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
			["concept", "_C2M1Billboard"],
			["who", "Replica"],
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
			["concept", "_C2M2_Bathroom01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_C2M2_CaroStart03"],
			["who", "Replica"],
			["incapacitated", 0],
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
			["concept", "_C2M2_CottonCandy01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_C2M2_Kiddie01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_C2M2_SeeSafehouse01"],
			["who", "Replica"],
			["incapacitated", 0],
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
			["concept", "_c2m3_coaster01"],
			["who", "Replica"],
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
			["concept", "_c2m3_coaster05"],
			["who", "Replica"],
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
			["concept", "_c2m3_coaster08"],
			["who", "Replica"],
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
			["concept", "_c2m3_freshair01"],
			["who", "Replica"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_c2m3_hole01"],
			["who", "Replica"],
			[IssuerReallyClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_C2M4_GateOpen001"],
			["who", "Replica"],
			["incapacitated", 0],
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
			["concept", "_C4_BigStormHits01"],
			["who", "Replica"],
			[_auto_NotC4ReplicaInCover],
			["world_auto_timera", 1],
			["from", "orator"],
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
			["concept", "_C4_BigStormHits02"],
			["who", "Replica"],
			["coughing", 0],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "_c4m1_rainresponse"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_c4m2_caneyell01"],
			["who", "Replica"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_replicaincane", 1],
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
			["concept", "_c4m2_ElevatorHere01"],
			["who", "Replica"],
			["incapacitated", 0],
			["coughing", 0],
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
			["concept", "_c4m2_gasinside01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_c4m2_seestation01"],
			["who", "Replica"],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			["incombat", 0],
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
			["concept", "_c4m2_streetblocked01"],
			["who", "Replica"],
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
			["concept", "_c4m2_streetblocked01"],
			["who", "Replica"],
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
			["concept", "_c4m2_streetblocked02"],
			["who", "Replica"],
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
			["concept", "_c4m2_waterpool02"],
			["who", "Replica"],
			[IsSubjectDistNear400],
			["incombat", 0],
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
			["concept", "_c4m2_Witchville05"],
			["who", "Replica"],
			[IssuerClose],
			["incombat", 0],
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
			["concept", "_C4M3_FLOODED01"],
			["who", "Replica"],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "_c4m3_rain01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "_c4m3_startsafe02"],
			["who", "Replica"],
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
			["concept", "_c4m3_startsafe03"],
			["who", "Replica"],
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
			["concept", "_introc1m1MovieIntro"],
			["who", "Replica"],
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
			["concept", "_introc1m1a03"],
			["who", "Replica"],
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
			["concept", "_introc1m1a03"],
			["who", "Replica"],
			["numberofteamalive", 1],
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
			["concept", "_introc1m1a05"],
			["who", "Replica"],
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
			["concept", "_introc1m1b01"],
			["who", "Replica"],
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
			["concept", "_introc1m1b04"],
			["who", "Replica"],
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
			["concept", "_introc1m1b06"],
			["who", "Replica"],
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
			["concept", "_introc1m1b08"],
			["who", "Replica"],
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
			["concept", "_introc1m1b09"],
			["who", "Replica"],
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
			["concept", "_introc1m1c01"],
			["who", "Replica"],
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
			["concept", "_introc1m1c02"],
			["who", "Replica"],
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
			["concept", "_introc1m1lastweapons"],
			["who", "Replica"],
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
			["concept", "BlankTesto"],
			["who", "Replica"],
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
			["concept", "c1m1_elevator_door_open2"],
			["who", "Replica"],
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
			["concept", "c1m1_elevator_ready2"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello2AliveName1"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello2AliveName2"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello2AliveExtra1"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello2AliveExtra2"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello2AliveExtra2"],
			["who", "Replica"],
			["from", "Gambler"],
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
			["concept", "_C1M1_ElevatorHello3AliveName1"],
			["from", "Producer"],
			[ChanceToFire100Percent],
			["worldrochelleelevatorintro", 1],
			[IsNotReplicaIntroduced],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["from", "Producer"],
			[ChanceToFire100Percent],
			["worldrochelleelevatorintro", 1],
			[IsNotReplicaIntroduced],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello3AliveName1"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello3WhoIsDead"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			["who", "Replica"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead2"],
			["who", "Replica"],
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
			["concept", "C1M1Cough"],
			["who", "Replica"],
			["map", "c1m1_hotel"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["map", "c1m2_streets"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "C1M3AlarmOffa"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c1m3_mall"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			["world_auto_saferoomstart", 1],
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
			["concept", "C1M3SafeRoom2c"],
			["who", "Replica"],
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
			["concept", "C1M3SafeRoom2d"],
			["who", "Replica"],
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
			["concept", "C1M4NearFinale03a"],
			["who", "Replica"],
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
			["concept", "c1m4jimmyidea"],
			["who", "Replica"],
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
			["concept", "c1m4jimmyidea"],
			["who", "Replica"],
			["isgambleralive", 1],
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
			["concept", "C1M4SafeRoom2a1"],
			["who", "Replica"],
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
			["concept", "C1M4SafeRoom2a3"],
			["who", "Replica"],
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
			["concept", "C1M4SafeRoom2b5"],
			["who", "Replica"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["map", "c1m4_atrium"],
			["who", "Replica"],
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
			["concept", "C2M1DoneFalling"],
			["who", "Replica"],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["coughing", 0],
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
			["concept", "C2M1Intro002"],
			["who", "Replica"],
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
			["concept", "C2M1Intro009"],
			["who", "Replica"],
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
			["concept", "C2M1Intro010"],
			["who", "Replica"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Replica"],
			[IsNotSaidLeavingSafeArea],
			["map", "c2m1_highway"],
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
			["concept", "C2M1Intro_400"],
			["who", "Replica"],
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
			["concept", "C2M4PenSmell001"],
			["who", "Replica"],
			[IsTalk],
			["incombat", 0],
			["isgambleralive", 1],
			[IsGamblerNear400],
			["coughing", 0],
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
			["concept", "_C2M4_Ribs"],
			["who", "Replica"],
			[IsTalk],
			["incombat", 0],
			["isgambleralive", 1],
			[IsGamblerNear400],
			["coughing", 0],
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
			["concept", "C2M5_lipsync001"],
			["who", "Replica"],
			[TimeSinceGroupInCombat02],
			["incombat", 0],
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
			["concept", "C4EnterCover"],
			["who", "Replica"],
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
			["concept", "C4ExitCover"],
			["who", "Replica"],
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
			["concept", "c4m1_InBurgerTank01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "c4m1_nogas01"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "c4m1_nogas03"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "c4m1_nogas06"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "c4m1_nogas07"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "c4m1_nogas10"],
			["who", "Replica"],
			["incombat", 0],
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
			["concept", "GasPour20More"],
			["who", "Replica"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour10More"],
			["who", "Replica"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour1More"],
			["who", "Replica"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour2More"],
			["who", "Replica"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour3More"],
			["who", "Replica"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour5More"],
			["who", "Replica"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "HistoricTour02a"],
			["who", "Replica"],
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
			["concept", "Player.CoverMeC1RReplica2"],
			["who", "Replica"],
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
			["concept", "Player.KnowHunter"],
			["who", "Replica"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "Player.TakeBatR"],
			["who", "Replica"],
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
			["concept", "Player.TakeVomitJarC1a"],
			["who", "Replica"],
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
			["concept", "C1M2TankInfo"],
			["who", "Replica"],
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
			["concept", "PlayerShotGasCan"],
			["who", "Replica"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
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
		name = "PlayerCr0wnedBrideReplica",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Replica"],
			["subjectisa", "Witch"],
			["oneshot", 1],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkReplica],
			["map", "c6m1_riverbank"],
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
			["concept", "WeddingWitchDead01"],
			["who", "Replica"],
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
			["concept", "WeddingWitchDead02"],
			["who", "Replica"],
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
			["concept", "WorldIntroC31a2"],
			["who", "Replica"],
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
			["concept", "WorldIntroC31e3"],
			["who", "Replica"],
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
			["concept", "WorldIntroC3e1"],
			["who", "Replica"],
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
			["concept", "WorldIntroC3f1"],
			["who", "Replica"],
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
			["concept", "WorldIntroC31g2"],
			["who", "Replica"],
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
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsWorldTalkReplica],
			["map", "c1m1_hotel"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[IsClosestSurvivorFar3000],
			[IsNotAlone],
			[IsNotSaidPlayerLostCall],
			["map", "c6m3_port"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "chainsaw"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "chainsaw"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "cricket_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "cricket_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "crowbar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "crowbar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "electric_guitar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "electric_guitar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Katana"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Katana"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "LaserSights"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "LaserSights"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 1],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Machete"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Machete"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "magnum"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "magnum"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "tonfa"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "tonfa"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SecondPistol"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SecondPistol"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "AutoShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "AutoShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "HuntingRifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "HuntingRifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "PumpShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "PumpShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_AK47"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_AK47"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_desert"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_desert"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_sg552"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_sg552"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_chrome"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_chrome"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_spas"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_spas"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SMG"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SMG"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_silenced"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_silenced"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_mp5"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_mp5"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_military"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_military"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_scout"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_scout"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_awp"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_awp"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "baseball_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "baseball_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "frying_pan"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "frying_pan"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "fireaxe"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "fireaxe"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shovel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shovel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Pitchfork"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Pitchfork"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["weaponname", "Knife"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Knife"],
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
			["concept", "PlayerSpotPistol"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerSpotShotgun"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerSpotOtherWeapon"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			["world_auto_tracksok", 1],
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
			["concept", "C2M3Chopper001"],
			["who", "Replica"],
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
			["concept", "AskWhat"],
			["who", "Replica"],
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
			["concept", "introC13M1"],
			["who", "Replica"],
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
			["concept", "C13M1Intro2"],
			["who", "Replica"],
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
			["concept", "C13M1Intro2Ellis"],
			["who", "Replica"],
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
			["concept", "C13M1Intro3"],
			["who", "Replica"],
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
			["concept", "C13M1IntroLast"],
			["who", "Replica"],
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
			["concept", "C13M1IntroLocationLast"],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M1Uphill"],
			[IsNotRemarkedC13M1UpHill],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M1DownHere"],
			[IsNotRemarkedC13M1DownHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M1ThroughHere"],
			[IsNotRemarkedC13M1ThroughHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M1ThroughWindow"],
			[IsNotRemarkedC13M1ThroughWindow],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M1UpSteps"],
			[IsNotRemarkedC13M1UpSteps],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M1CrossHere"],
			[IsNotRemarkedC13M1CrossHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M1PreBunkerOpen"],
			[IsNotRemarkedC13M1PreBunkerOpen],
			["incombat", 0],
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
			["concept", "C13M1OpeningBunker"],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M2Uphill"],
			[IsNotRemarkedC13M2UpHill],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M2DownHere"],
			[IsNotRemarkedC13M2DownHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M2UpLadder"],
			[IsNotRemarkedC13M2UpLadder],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M2UpStairs"],
			[IsNotRemarkedC13M2UpStairs],
			["incombat", 0],
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
			["concept", "C13M2TankApproaching"],
			["who", "Replica"],
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
			["concept", "C13M2BarrelsIgnited"],
			["who", "Replica"],
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
			["concept", "C13M2Barrels1"],
			["who", "Replica"],
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
			["concept", "C13M2Barrels2"],
			["who", "Replica"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "C13M3DownHere"],
			[IsNotRemarkedC13M3DownHere],
			["incombat", 0],
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
			["concept", "C13M3ApproachingTanker"],
			["who", "Replica"],
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
			["concept", "C13M3Tanker1"],
			["who", "Replica"],
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
			["concept", "C13M3Tanker2"],
			["who", "Replica"],
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
			["concept", "C13M3Tanker3"],
			["who", "Replica"],
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
			["concept", "C13M3OnScaffold"],
			["who", "Replica"],
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
			["concept", "C13M3Airstrike"],
			["who", "Replica"],
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
			["concept", "C13M3Airstrike2"],
			["who", "Replica"],
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
			["concept", "C13M4Button1"],
			["who", "Replica"],
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
			["concept", "FinaleTriggered"],
			["who", "Replica"],
			["map", "c13m4_cutthroatcreek"],
			["triggeredby", "Replica"],
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
			["concept", "C13M4FinaleStart2"],
			["who", "Replica"],
			["world_auto_talkingreplica", 1],
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
			["concept", "C13M4DownCreek"],
			["who", "Replica"],
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
			["concept", "C13M4InSmoke"],
			["who", "Replica"],
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
			["concept", "C13M4NoticedHelicopter"],
			["who", "Replica"],
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
			["concept", "C13M4AlmostThere"],
			["who", "Replica"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "Replica"],
			["map", "c13m4_cutthroatcreek"],
			["world_auto_finale", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			["map", "c13m4_cutthroatcreek"],
			["coughing", 0],
			["incapacitated", 0],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			["instartarea", 1],
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
			["concept", "IntroEnd"],
			["who", "Replica"],
			["from", "Replica"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Replica"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Replica"],
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
			["concept", "FinaleTriggered"],
			["who", "Replica"],
			["triggeredby", "Replica"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "Replica"],
			["world_auto_finale", 1],
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
			["concept", "FinalVehicleArrived"],
			["who", "Replica"],
			["world_auto_finale", 2],
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
			["coughing", 0],
			["who", "Replica"],
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
			["coughing", 0],
			["who", "Replica"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Biker"],
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
			["coughing", 0],
			["who", "Replica"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "Manager"],
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
			["coughing", 0],
			["who", "Replica"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["subject", "TeenGirl"],
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
			["concept", "PlayerPourStarted"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			["map", "c6m3_port"],
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
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "Replica"],
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
			["concept", "introC6M1"],
			["who", "Replica"],
			["introactor", "zoey"],
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
			["concept", "C6M1Intro_04b"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_08a"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_13b"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_13e"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_21a"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_21b"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_21d"],
			["who", "Replica"],
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
			["concept", "C6M1Intro_21g"],
			["who", "Replica"],
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
			["concept", "C6M1TakeSubMachineGun01"],
			["who", "Replica"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Replica"],
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
			["who", "Replica"],
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
			["concept", "WorldC6M1_PostWedding01a"],
			["who", "Replica"],
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
			["concept", "WorldC6M1_WeddingWarn03a"],
			["who", "Replica"],
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
			["concept", "WorldC6M1_WeddingWarn04a"],
			["who", "Replica"],
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
			["concept", "C6M2_OpenGate1"],
			["who", "Replica"],
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
			["concept", "C6M2_OpenGate2"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "Replica"],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M2_SafeRoomConvo01a"],
			["who", "Replica"],
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
			["who", "Replica"],
			["introactor", "zoey"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo09a"],
			["who", "Replica"],
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
			["who", "Replica"],
			["introactor", "zoey"],
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
			["who", "Replica"],
			["introactor", "francis"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo12b"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo12d"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo13b"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo13d"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo14d"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo15b"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16a1"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16e"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo18c"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo18e"],
			["who", "Replica"],
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
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19b"],
			["who", "Replica"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19d"],
			["who", "Replica"],
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
			["concept", "WorldC6M2_InSewer101a"],
			["who", "Replica"],
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
			["concept", "WorldC6M2_InSewer102a"],
			["who", "Replica"],
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
			["concept", "WorldC6M2_InSewer202a"],
			["who", "Replica"],
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
			["concept", "WorldC6M2_InSewerLadder101a"],
			["who", "Replica"],
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
			["concept", "WorldC6M2_OnTourWalk101c"],
			["who", "Replica"],
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
			["concept", "WorldC6M2_OnTourWalk103a"],
			["who", "Replica"],
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
			["concept", "WorldC6M2_Tattoo02b>"],
			["who", "Replica"],
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
			["concept", "C6M3_BridgeDown"],
			["who", "Replica"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Replica"],
			[IsNotSaidGetToCar],
			["map", "c6m3_port"],
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
			["concept", "SceneCancelled"],
			["who", "Replica"],
			[IsNotSaidC6M3Elevator],
			["map", "c6m3_port"],
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
			["concept", "SceneCancelled"],
			["who", "Replica"],
			[IsNotSaidC6M3Elevator],
			["map", "c6m3_port"],
			["introactor", "zoey"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "Biker"],
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
			["concept", "PlayerPickup"],
			["who", "Replica"],
			["itemdonor", "TeenGirl"],
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
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "Replica"],
			["map", "c6m3_port"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo02e"],
			["who", "Replica"],
			["instartarea", 1],
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
			["who", "Replica"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "zoey"],
			[ZoeyGroup2],
			["instartarea", 1],
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
			["who", "Replica"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "zoey"],
			[ZoeyGroup4],
			["instartarea", 1],
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
			["who", "Replica"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "francis"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08b"],
			["who", "Replica"],
			["instartarea", 1],
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
			["concept", "SurvivorIncapacitated"],
			["who", "Replica"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
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
			["concept", "c6m3escapeready"],
			["who", "Replica"],
			["map", "c6m3_port"],
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
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "Replica"],
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
			["concept", "PlayerExertionMinor"],
			["who", "Replica"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidReplicaWitchChasing],
			["saidwitchattacking", 1],
			["map", "c6m1_riverbank"],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_InSewer1"],
			[IsNotSaidWorldC6M2_InSewer1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OnTourWalk1"],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_SafeRoom"],
			[IsNotSaidWorldC6M2_SafeRoom],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_Suitcase"],
			[IsNotSaidWorldC6M2_Suitcase],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Replica"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "PlayerPourFinished"],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			["map", "c6m3_port"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Replica"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkReplica],
			["incapacitated", 0],
			[IsWorldTalkReplica],
			["map", "c6m3_port"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "GolfClub"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Replica"],
			["itempickedup", "m60"],
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
			["concept", "HistoricTour02a"],
			["who", "Replica"],
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
			["concept", "WeddingWitchDead01"],
			["who", "Replica"],
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
			["concept", "WeddingWitchDead02"],
			["who", "Replica"],
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
			["concept", "TLK_IDLE"],
			["who", "Replica"],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			["map", "c6m3_port"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Replica"],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
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
			["concept", "C3M1CallFerry"],
			["whodidit", "Replica"],
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
			["concept", "C3M2OpenDoor"],
			["whodidit", "Replica"],
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
			["concept", "c5m4floatstart"],
			["whodidit", "Replica"],
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
			["concept", "C1M2InsideGunShop"],
			["whodidit", "Replica"],
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
			["concept", "C1M3AlarmOff"],
			["whodidit", "Replica"],
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
			["concept", "C1M3BrokeWindow"],
			["whodidit", "Replica"],
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
			["concept", "Airport02CraneStarted"],
			["whodidit", "Replica"],
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
			["concept", "Airport03FireStarted"],
			["whodidit", "Replica"],
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
			["concept", "C6M3Stairs"],
			["who", "Replica"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "zoey"],
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
			["concept", "C6M3Stairs"],
			["who", "Replica"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "francis"],
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
