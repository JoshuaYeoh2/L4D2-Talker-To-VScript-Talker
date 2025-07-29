local csgo_sas_rules = 
[
	{
		name = "C3M1CallFerry_CSGO_SAS",
		criteria = 
		[
			["concept", "C3M1CallFerry"],
			["whodidit", "CSGO_SAS"],
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
			["concept", "C3M2OpenDoor"],
			["whodidit", "CSGO_SAS"],
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
			["concept", "c5m4floatstart"],
			["whodidit", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["worldsaidc1m1insmoke", 1],
			["map", "c1m1_hotel"],
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
			["concept", "C1M3AlarmOff2"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M3AlarmActive"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "Biker"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "Biker"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "Manager"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "Manager"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "TeenGirl"],
			[ChanceToFire70Percent],
			["introactor", "francis"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "TeenGirl"],
			[ChanceToFire70Percent],
			["introactor", "zoey"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "TeenGirl"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ChanceToFire10Percent],
			[IsWorldTalkCsgo_sas],
			["subject", "Coach"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ChanceToFire10Percent],
			[IsWorldTalkCsgo_sas],
			["subject", "Gambler"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCsgo_sas],
			[ChanceToFire10Percent],
			[IsWorldTalkCsgo_sas],
			["subject", "Producer"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["deadcharacter", "Coach"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["deadcharacter", "Coach"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["deadcharacter", "Gambler"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["deadcharacter", "Gambler"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["deadcharacter", "Producer"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["deadcharacter", "Producer"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCsgo_sas],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 3],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 2],
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
			["concept", "C3M1FerryInTransit"],
			["who", "CSGO_SAS"],
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
			["concept", "c1m1_enter_elevator"],
			["who", "CSGO_SAS"],
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
			["concept", "c1m1_elevator_pushbutton"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2PreStoreAlarm"],
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
			["concept", "C1M2AlarmDoor2"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2StoreAlarm"],
			["worldc1m2alarmsetoff", 1],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saidc1m2grabbedcola", 1],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
			["world_auto_saidc1m2grabbedcola", 1],
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
			["concept", "C1M2FirstOutsideResponse"],
			["who", "CSGO_SAS"],
			["from", "orator"],
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
			["concept", "C1M2GunRoomDoorResponseGratitude"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M2InsideGunShop2"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M2InsideGunShop3"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M2InsideGunShopPickupResponse"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M2InsideGunShopPickupResponse2"],
			["who", "CSGO_SAS"],
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
			["concept", "c1m2gunshopkill"],
			["who", "CSGO_SAS"],
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
			["concept", "C3M1CallFerry2"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["csgo_sasactor", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["worldc3m1ferry", 1],
			["incapacitated", 0],
			["incombat", 0],
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
			["concept", "C3M1FerryLaunched2"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			["worldsaidc3m2village1", 1],
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
			["concept", "_C3M2BloodFarmers"],
			["who", "CSGO_SAS"],
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
			["concept", "C3M2OpenDoor2"],
			["who", "CSGO_SAS"],
			[IsTalkCsgo_sas],
			["csgo_sasactor", 1],
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
			["concept", "c5m4floatend2"],
			["who", "CSGO_SAS"],
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
			["concept", "c5m4floatstart2"],
			["who", "CSGO_SAS"],
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
			["concept", "introC1M1"],
			["who", "CSGO_SAS"],
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
			["concept", "introC1M1"],
			["who", "CSGO_SAS"],
			["numberofteamalive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerUsingColaBottles"],
			["who", "CSGO_SAS"],
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
			["concept", "RelaxedSigh"],
			["who", "CSGO_SAS"],
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
			["concept", "StayTogetherInsideReponse"],
			["who", "CSGO_SAS"],
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
			["concept", "UseAdrenaline"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FeedGator2"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingA01"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingB01"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingD03"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingE02"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingE04"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingG02"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingI02"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingM2"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingM4"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldIntroC31"],
			["who", "CSGO_SAS"],
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
			["concept", "Award"],
			["awardname", "Sharing"],
			["coughing", 0],
			["subject", "CSGO_SAS"],
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
			["concept", "Award"],
			["awardname", "Rescuer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGivenItem"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "Producer"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "Coach"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "Gambler"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "Biker"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "TeenGirl"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "Manager"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "NamVet"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "CSGO_SAS"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "CSGO_SAS"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "CSGO_SAS"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "Coach"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "Coach"],
			[ChanceToFire30Percent],
			["map", "c1m1_hotel"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "Gambler"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "Gambler"],
			[ChanceToFire30Percent],
			["map", "c1m1_hotel"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "Producer"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "Biker"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "Manager"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "NamVet"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subject", "TeenGirl"],
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
			["concept", "SurvivorBotYouAreWelcome"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorBotReassureComing"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorBotYesReady"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorBotReassureNearby"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "CSGO_SAS"],
			[IsNotSaidLeavingSafeArea],
			["map", "c1m2_streets"],
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
			["concept", "C1M2SafeRooma2"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M2SafeRoomc1"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M2TankerAttack2"],
			["who", "CSGO_SAS"],
			["worldwhoputcola", "CSGO_SAS"],
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
			["concept", "c1m4escape"],
			["who", "CSGO_SAS"],
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
			["concept", "c1m4escapeCsgo_sasCheck"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
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
			["concept", "c1m4escapeCsgo_sasCheck"],
			["who", "CSGO_SAS"],
			["incapacitated", 1],
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
			["concept", "PlayerPourStarted"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
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
			["concept", "c1m4startelevator"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerPourStarted"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			["map", "c6m3_port"],
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
			["concept", "FinaleTriggered"],
			["who", "CSGO_SAS"],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
			["towin", 0],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["map", "c2m2_fairgrounds"],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_teamnearcoaster", 1],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			["world_auto_coasterexpo", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["concept", "_C2M2_Riders02"],
			["who", "CSGO_SAS"],
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
			["concept", "_C2M2_Riders03"],
			["who", "CSGO_SAS"],
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
			["concept", "_C2M2_Riders04"],
			["who", "CSGO_SAS"],
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
			["concept", "_C2M2_Riders06"],
			["who", "CSGO_SAS"],
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
			["concept", "_C2M2_Riders07"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M1Intro_400"],
			["who", "CSGO_SAS"],
			["worldsaidleavingsafearea", 1],
			["instartarea", 1],
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
			["concept", "C2M1Intro_401"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_402"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_403"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_404"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_405"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_406"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_407"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_408"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "c2m3downhole"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m3CoasterEnd"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M3CoasterRunGo"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m3CoasterStart"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			["world_auto_saferoomstart", 1],
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
			["concept", "C2M3SafeIntro006"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M3SafeIntro010"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M3SeeChopper"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerSpotWeapon"],
			["weaponname", "UpgradePack_Incendiary"],
			["who", "CSGO_SAS"],
			[IsTalk],
			["incombat", 0],
			["map", "c2m3_coaster"],
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
			["concept", "PlayerSpotWeapon"],
			["weaponname", "Katana"],
			["who", "CSGO_SAS"],
			[IsTalk],
			["incombat", 0],
			["map", "c2m3_coaster"],
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
			["concept", "C2M4ButtonPressed"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M4Gate004"],
			["who", "CSGO_SAS"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M4Gate000"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargate", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargatenag", 1],
			["world_auto_neargate", 1],
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
			["concept", "C2M4GateOpenCallout"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
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
			["concept", "C2M4SeeChopper"],
			["who", "CSGO_SAS"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M5_Button2Yell"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M5_Button2Yell"],
			["who", "CSGO_SAS"],
			["worldcoachmadatriders", 1],
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
			["concept", "C2M5_Choppercoming"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
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
			["concept", "c2m5_intro003"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro005"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro008"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro009"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro011"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro012"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro015"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro016"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro020"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro025"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro019"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m5_intro024"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M5_PlanWorked"],
			["who", "CSGO_SAS"],
			[NotCoachMadAtRiders],
			["incapacitated", 0],
			["incombat", 0],
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
			["concept", "C2M5_PlanWorked"],
			["who", "CSGO_SAS"],
			["worldcoachmadatriders", 1],
			["incapacitated", 0],
			["incombat", 0],
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
			["concept", "c2m5Button1"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["map", "c2m5_concert"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			["world_auto_c2m5inarena", 1],
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
			["concept", "C2M5Microphone"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["map", "c2m5_concert"],
			[TimeSinceGroupInCombat02],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
			["world_auto_button1", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			["map", "c2m5_concert"],
			[IsRocking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			["world_auto_concertlive", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[IsRocking],
			["map", "c2m5_concert"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["map", "c2m5_concert"],
			[IsRocking],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["world_auto_concertlive", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["map", "c2m5_concert"],
			[IsRocking],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "CSGO_SAS"],
			["map", "c2m5_concert"],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkCsgo_sas],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
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
			["concept", "C2M5Microphone"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["map", "c2m5_concert"],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_escape", 1],
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
			["concept", "C3M1FerryEnd2"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			["isproduceralive", 1],
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
			["concept", "WorldC3M1FerryCrossingJ3"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingk3"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC3M1FerryCrossingL3"],
			["who", "CSGO_SAS"],
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
			["concept", "c3m2disgust"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "C3M2SafeRooma2"],
			["who", "CSGO_SAS"],
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
			["concept", "C3M2SafeRoomb3"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c3m2_parachutist"],
			[IsNotSaidc3m2_parachutist],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c3m2_parachutist"],
			[IsNotSaidc3m2_parachutist],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "InfoRemC3M2Bathtub2"],
			["who", "CSGO_SAS"],
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
			["concept", "_C3M2Pirogue2"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["map", "c3m3_shantytown"],
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
			["concept", "C3M3SafeRoom2a2"],
			["who", "CSGO_SAS"],
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
			["concept", "C3M3SafeRoom2c3"],
			["who", "CSGO_SAS"],
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
			["concept", "C3M3SafeRoom2d2"],
			["who", "CSGO_SAS"],
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
			["concept", "InfoRemC3M3Bodies2"],
			["who", "CSGO_SAS"],
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
			["concept", "InfoRemC3M3LowerGatea"],
			["who", "CSGO_SAS"],
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
			["concept", "InfoRemC3M3Unsanitarya1"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["map", "c3m4_plantation"],
			["incapacitated", 0],
			[IsRunning],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["map", "c3m4_plantation"],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
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
			["concept", "C3M4Button1A"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C3M4ButtonPickUsUp"],
			["who", "CSGO_SAS"],
			["from", "orator"],
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
			["concept", "C3M4ButtonName"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[IsEveryoneAlive],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[IsEveryoneNotAlive],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C3M4Button201"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C3M4Button202"],
			["from", "orator"],
			["world_auto_talkingcsgo_sas", 1],
			["who", "CSGO_SAS"],
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
			["concept", "C3M4Button203"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkCsgo_sas],
			["map", "c3m4_plantation"],
			["world_auto_finale", 1],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c3m4_plantation"],
			[IsNotSpeakingWeight0],
			["world_auto_finale", 1],
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
			["concept", "C3M4GateBlow01"],
			["who", "CSGO_SAS"],
			["from", "orator"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			[_auto_NotTimerLockA],
			["world_auto_timera", 1],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incombat", 0],
			[IsWorldTalkCsgo_sas],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			["world_auto_csgo_sasinwitchville", 1],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			["isgambleralive", 1],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalkCsgo_sas],
			["incombat", 0],
			[IsWorldTalkCsgo_sas],
			[IsGamblerNear400],
			[ChanceToFire10Percent],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			["world_auto_csgo_sasinwitchville", 1],
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
			["concept", "c4m2_elevator_top_button"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
			["map", "c4m5_milltown_escape"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M1_intro002"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M1_intro004"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M1_intro005"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M1_intro007"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M1_intro008"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M1_intro009"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M1Flyby01"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["map", "c5m2_park"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC502Horse"],
			[IsNotSaidWorldC502Horse],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC502Horse"],
			[IsNotSaidWorldC502Horse],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502Horse3"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M3AlarmFieldNags01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_inalarmfield", 1],
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
			["concept", "C5M3AlarmFieldNags03"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["incombat", 0],
			["coughing", 0],
			[IsTalk],
			[ChanceToFire10Percent],
			["isgambleralive", 1],
			["world_auto_inalarmfield", 1],
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
			["concept", "C5M3Bodies01"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M3Bodies02"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M3FirstInAlarmField"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["isgambleralive", 1],
			["world_auto_offhighway", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["isgambleralive", 1],
			[IsGamblerNear400],
			["world_auto_offhighway", 1],
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
			["concept", "C5M3GraveNags01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "_C5M3GraveSmells"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "_C5M3SmallFavors"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["incombat", 0],
			[IssuerClose],
			["coughing", 0],
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
			["concept", "c5m3Jets2"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M3Jets3"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M3StopZombies"],
			["who", "CSGO_SAS"],
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
			["concept", "c5m3OnBridge"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard04"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard03"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard06"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "PanicEvent"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["subject", "CSGO_SAS"],
			["panictype", "CarAlarm"],
			["world_auto_inalarmfield", 1],
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
			["concept", "PanicEvent"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotCsgo_sas],
			["panictype", "CarAlarm"],
			[ChanceToFire25Percent],
			["world_auto_inalarmfield", 1],
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
			["concept", "PanicEvent"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotCsgo_sas],
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
			["concept", "PanicEvent"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotCsgo_sas],
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
			["concept", "PanicEvent"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["subject", "CSGO_SAS"],
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
			["concept", "C5M3Sniper01"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M3BeenShot"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m3crashedheli"],
			[IsNotSaidc5m3crashedheli],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m3insewer"],
			[IsNotSaidc5m3insewer],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m3safezone"],
			["incombat", 0],
			[IsSubjectNear150],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m3manhole"],
			[IsNotSaidc5m3manhole],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m3seegraveyard"],
			[IsNotSaidc5m3seegraveyard],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m3seegraveyard"],
			[IsNotSaidc5m3seegraveyard],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotAlone],
			["world_auto_bridgebomb", 1],
			[_auto_NotTimerLockA],
			[_auto_NotOffHighway],
			[IsNotSpeakingWeight0],
			["world_auto_c5m3csgo_sasreacted", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m3upladder"],
			[IsNotSaidc5m3upladder],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m3upsteps"],
			[IsNotSaidc5m3upsteps],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M4BombExt"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "C5M4BombInt"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M4BombIntA"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M4BombInt"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M4BombInt"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M4BombInt"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M4JetPlanes"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m4alley"],
			[IsNotSaidc5m4alley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M4PoolTable"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "C5M4PoolTable"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			[IssuerClose],
			["isproduceralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m4inminifinale"],
			[IsNotSaidc5m4inminifinale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c5m4seebridge"],
			[IsNotSaidc5m4seebridge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C5M4TractorNag"],
			[IsNotSaidc5m4tractornag],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M4Tractor"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "C5M5_Button2"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_GateDown"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_Button2100"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_Button2200"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_Button2201"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_Button2202"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_Button2203"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_Button2204"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_Button2205"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_Button2206"],
			["who", "CSGO_SAS"],
			["isproduceralive", 1],
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
			["concept", "C5M5_SurvivorConv01"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C5M5_SurvivorConv01"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_buzzardrunmentioned", 1],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C5M5_SurvivorConv02"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C5M5_SurvivorConv03"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C5M5_SurvivorConv04"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C5M5_SurvivorConv05"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCsgo_sas],
			["world_auto_bridgenag", 1],
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
			["concept", "C5M5Button1"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C5M5Button1"],
			["who", "CSGO_SAS"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcsgo_sas", 1],
			["world_auto_buzzardrunmentioned", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_soldierchatter", 1],
			[_auto_NotButton1],
			["world_auto_radionag", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_buzzardrunmentioned", 1],
			["world_auto_soldierchatter", 1],
			[_auto_NotButton1],
			["world_auto_radionag", 1],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "CSGO_SAS"],
			["map", "c5m5_bridge"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "CSGO_SAS"],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkCsgo_sas],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Tank"],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c5m5_bridge"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
			["map", "c5m5_bridge"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
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
			["concept", "C5M5BridgeDestroyed2"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsEveryoneAlive],
			["worldc5m5survivoroutro", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_saferoom002"],
			["who", "CSGO_SAS"],
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
			["concept", "C5M5_saferoom004"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C6M1Intro_01a"],
			["who", "CSGO_SAS"],
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
			["concept", "introC6M1"],
			["who", "CSGO_SAS"],
			["introactor", "francis"],
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
			["concept", "C6M1Intro_01c"],
			["who", "CSGO_SAS"],
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
			["concept", "introC6M1"],
			["who", "CSGO_SAS"],
			["introactor", "zoey"],
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
			["concept", "C6M1Intro_02a"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_11a"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_11c"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_11c"],
			["who", "CSGO_SAS"],
			["isgambleralive", 1],
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
			["concept", "C6M1Intro_12b"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_13a"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_13c"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_13f"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_23b"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_23d"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_24c"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_24e"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_ConfirmObjective"],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[NoHasFirstAidKit],
			["map", "c6m1_riverbank"],
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
			["concept", "C6M1Start2"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Start3"],
			["who", "CSGO_SAS"],
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
			["concept", "RemWorldC6M1_WeddingWarn02"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03a"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03b"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03c"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03d"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C6M2_OpenGate1"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M2_OpenGate1b"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M2_OpenGate1"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M2_OpenGate2"],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "CSGO_SAS"],
			[IsNotSaidLeavingSafeArea],
			["map", "c6m2_bedlam"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo02a"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["isproduceralive", 1],
			[ChanceToFire50Percent],
			["world_auto_saferoomstart", 1],
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
			["concept", "DLC1_C6M2_SafeRoomConvo03b"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["introactor", "zoey"],
			["isproduceralive", 1],
			[ChanceToFire50Percent],
			["world_auto_saferoomstart", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo11a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo14b"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16b"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16d"],
			["who", "CSGO_SAS"],
			["from", "Producer"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16d"],
			["who", "CSGO_SAS"],
			["from", "Coach"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo17a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo18b"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19c"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19e"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19g"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo21b"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC6M2_FinalWater01b"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "WorldC6M2_InSewer101a"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_OnTourWalk102b"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_Tattoo03b"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C6M3_BridgeDown"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
			["map", "c6m3_port"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "SceneCancelled"],
			["who", "CSGO_SAS"],
			["map", "c6m3_port"],
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
			["concept", "c6m3_elevator"],
			["who", "CSGO_SAS"],
			["map", "c6m3_port"],
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
			["concept", "c6m3_elevator"],
			["who", "CSGO_SAS"],
			["map", "c6m3_port"],
			[IsNotSaidC6M3Elevator],
			["introactor", "zoey"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "Biker"],
			["map", "c6m3_port"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_port"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_port"],
			["introactor", "zoey"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo01a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo01c"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo02e"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo03a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo03c"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo04a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo04d"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo05a"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["map", "c6m3_port"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["introactor", "francis"],
			["isproduceralive", 1],
			["world_auto_saferoomstart", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo06b"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo07a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo07c"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08c"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08d"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08e"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08f"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo09a"],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorIncapacitated"],
			["who", "CSGO_SAS"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
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
			["concept", "CallForRescue"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c1m2_streets"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c1m3_mall"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c1m4_atrium"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c2m2_fairgrounds"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c2m3_coaster"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c2m4_barns"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c2m5_concert"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c3m2_swamp"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c3m3_shantytown"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c3m4_plantation"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c4m2_sugarmill_a"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c4m3_sugarmill_b"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c4m4_milltown_b"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c5m2_park"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c5m3_cemetery"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c5m4_quarter"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c5m5_bridge"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c6m2_bedlam"],
			[IsACoopMode],
			[ChanceToFire20Percent],
			[IsNotSrcGrp_CSGO_SASSTORY],
			["world_auto_storywait", 1],
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
			["concept", "C6M2Csgo_sasStoryStart1"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			["map", "c6m3_port"],
			[IsACoopMode],
			[IsNotInStartArea],
			[ChanceToFire20Percent],
			["worldsaidfinaleexchange", 1],
			["worldendcsgo_sasbridgestorystart", 1],
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
			["concept", "C6M3Csgo_sasBridgeStory1"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M3Csgo_sasBridgeStory1a"],
			["who", "CSGO_SAS"],
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
			["concept", "Csgo_sasStoryReac01"],
			["who", "CSGO_SAS"],
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
			["concept", "Csgo_sasStoryReac01"],
			["who", "CSGO_SAS"],
			["map", "c1m4_atrium"],
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
			["concept", "c6m3_outro3"],
			["who", "CSGO_SAS"],
			["map", "c6m3_port"],
			[IsNotVersus],
			["incapacitated", 0],
			[ChanceToFire100Percent],
			["from", "Biker"],
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
			["concept", "c6m3_outro3"],
			["who", "CSGO_SAS"],
			["map", "c6m3_port"],
			["introactor", "zoey"],
			[IsNotVersus],
			["incapacitated", 0],
			[ChanceToFire100Percent],
			["from", "Biker"],
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
			["concept", "c6m3_outroL4D1012a"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			["from", "Producer"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotPickedUpFirstAidKit],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "Adrenaline"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			["weaponname", "Adrenaline"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
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
			["concept", "PlayerSpotAmmo"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "Defibrillator"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			["weaponname", "Defibrillator"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerFar400],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "PipeBomb"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			["weaponname", "PipeBomb"],
			[IsWorldTalkCsgo_sas],
			["hasgrenade", 1],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "GrenadeLauncher"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			["weaponname", "GrenadeLauncher"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "FirstAidKit"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			["weaponname", "FirstAidKit"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "Molotov"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			["weaponname", "Molotov"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "PainPills"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerFar400],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Explosive"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Explosive"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Incendiary"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Incendiary"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			[IsNotSaidArmoredWarn],
			["map", "c5m1_waterfront"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			[IsNotSaidCedaWarn],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			[IsNotSaidClownWarn],
			["map", "c2m2_fairgrounds"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerIncoming"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "jimmy"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			[IsNotSaidMudmenWarn],
			["map", "c3m2_swamp"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incombatmusic", 0],
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
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incombatmusic", 1],
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
			["concept", "Fault"],
			["faultname", "FriendlyFire"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeExplosive],
			["onthirdstrike", 1],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subject", "Coach"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subject", "Coach"],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subject", "Gambler"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subject", "Producer"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subject", "Producer"],
			[ChanceToFire50Percent],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			["incapacitated", 0],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Coach"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Gambler"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Producer"],
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
			["concept", "SurvivorBotMovingToReviveFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incombat", 0],
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
			["concept", "PlayerToTheRescue"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerTaunt"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			[ChanceToFire40Percent],
			["team", "Survivor"],
			["map", "c4m1_milltown_a"],
			["worldsaidc4m1_nogas", 1],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			[ChanceToFire60Percent],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_csgo_sasincane", 1],
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
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			["map", "c5m2_park"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			["world_auto_alarm", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerExertionMinor"],
			["who", "CSGO_SAS"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
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
			["concept", "PlayerExertionMinor"],
			["who", "CSGO_SAS"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
			[IsTalkCsgo_sas],
			["map", "c6m1_riverbank"],
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
			["concept", "Fault"],
			["who", "CSGO_SAS"],
			["faultname", "WitchHarassment"],
			["map", "c6m1_riverbank"],
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
			["concept", "Fault"],
			["who", "CSGO_SAS"],
			["faultname", "WitchHarassment"],
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
			["concept", "WitchStartAttack"],
			["who", "CSGO_SAS"],
			["witch_aggro_on", "CSGO_SAS"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Critical"],
			["who", "CSGO_SAS"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			[IsNotSpeaking],
			["painlevel", "Incapacitated"],
			["who", "CSGO_SAS"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "CSGO_SAS"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			["incombatmusic", 0],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			[IsNotZombiePresentTank],
			["incombatmusic", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCsgo_sas],
			["map", "c4m2_sugarmill_a"],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			["world_auto_csgo_sasinwitchville", 1],
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
			["concept", "PlayerHelp"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			["incapacitated", 1],
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
			["concept", "PlayerHelp"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			["incapacitated", 1],
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
			["concept", "PlayerHelp"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsIncappedLethargic],
			["incapacitated", 1],
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
			["concept", "C2M1DoneFalling"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["coughing", 0],
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
			["concept", "C2M1DoneFalling"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["coughing", 0],
			["iscoachalive", 1],
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
			["concept", "C2M1Falling"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m2CarouselEnd"],
			["who", "CSGO_SAS"],
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
			["concept", "c2m2CarouselStart"],
			["who", "CSGO_SAS"],
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
			["concept", "C3M3BridgeButton"],
			[IsNotSaidC3M3BridgeButton],
			["who", "CSGO_SAS"],
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
			["concept", "EndOfWavWindow5"],
			["who", "CSGO_SAS"],
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
			["concept", "ChainsawUsed"],
			[IsNotSaidChainSawUsed],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M1AroundFire"],
			[IsNotSaidC1M1AroundFire],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M1OverTable"],
			[IsNotSaidC1M1OverTable],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M1SearchRooms"],
			[IsNotSaidC1M1SearchRooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M1ThroughThisDoor"],
			[IsNotSaidC1M1ThroughThisDoor],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "RemarkWorldC1M2SpotGunStore"],
			[IsNotSaidRemarkWorldC1M2SpotGunStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3AlarmDoors"],
			[IsNotSaidC1M3AlarmDoors],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3CarefulWindows"],
			[IsNotSaidC1M3CarefulWindows],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3CEDAGone"],
			[IsNotSaidC1M3CEDAGone],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3DownHere"],
			[IsNotSaidC1M3DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3DownHere2"],
			[IsNotSaidC1M3DownHere2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3DownTheEscalator"],
			[IsNotSaidC1M3DownTheEscalator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3OverHere"],
			[IsNotSaidC1M3OverHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3SearchRooms"],
			[IsNotSaidC1M3SearchRooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3ThisWay"],
			[IsNotSaidC1M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3ThroughHere"],
			[IsNotSaidC1M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3TurnOffAlarm1"],
			[IsNotSaidC1M3TurnOffAlarm1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3TurnOffAlarm2"],
			[IsNotSaidC1M3TurnOffAlarm2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3TurnOffAlarm3"],
			[IsNotSaidC1M3TurnOffAlarm3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3UpEscalator1"],
			[IsNotSaidC1M3UpEscalator1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3UpEscalator2"],
			[IsNotSaidC1M3UpEscalator2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C1M3UpEscalator3"],
			[IsNotSaidC1M3UpEscalator3],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_busblock"],
			[IsNotSaidc2m1_busblock],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_checkrooms"],
			[IsNotSaidc2m1_checkrooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_cliff"],
			[IsNotSaidc2m1_cliff],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_downstairs"],
			[IsNotSaidc2m1_downstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_motelsign"],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_motelsign"],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_offramp"],
			[IsNotSaidc2m1_offramp],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_park"],
			[IsNotSaidc2m1_park],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_pool"],
			[IsNotSaidc2m1_pool],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_searchlights"],
			[IsNotSaidc2m1_searchlights],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_throughhere"],
			[IsNotSaidc2m1_throughhere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_throughmotel"],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_throughwindow"],
			[IsNotSaidc2m1_throughwindow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_uphill"],
			[IsNotSaidc2m1_uphill],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m1_upstairs"],
			[IsNotSaidc2m1_upstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m2_cottoncandy"],
			[IsNotSaidc2m2_cottoncandy],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m2_cottoncandy2"],
			[IsNotSaidc2m2_cottoncandy],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m2_entrancesign"],
			[IsNotSaidc2m2_entrancesign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_C2M2_CottonCandy01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m2_kiddieland"],
			[IsNotSaidc2m2_kiddieland],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m2_topofslide"],
			[IsNotSaidc2m2_topofslide],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_coasteroff"],
			[IsNotSaidc2m3_coasteroff],
			["coughing", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_coollight"],
			[IsNotSaidc2m3_coollight],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_coollight"],
			[IsNotSaidc2m3_coollight],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			[IsGamblerNear200],
			["isgambleralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_hole"],
			[IsNotSaidc2m3_hole],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_overfence"],
			[IsNotSaidc2m3_overfence],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_screamingoak"],
			[IsNotSaidc2m3_screamingoak],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_swanpileup"],
			[IsNotSaidc2m3_swanpileup],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_swanroom"],
			[IsNotSaidc2m3_swanroom],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_tracks01"],
			[IsNotSaidc2m3_tracks01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_tracks02"],
			[IsNotSaidc2m3_tracks02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_tracks03"],
			[IsNotSaidc2m3_tracks03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_tracks04"],
			[IsNotSaidc2m3_tracks04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_tracks05"],
			[IsNotSaidc2m3_tracks05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_tracks06"],
			[IsNotSaidc2m3_tracks06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_tracks07"],
			[IsNotSaidc2m3_tracks07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_tracks08"],
			[IsNotSaidc2m3_tracks08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_vent"],
			[IsNotSaidc2m3_vent],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_water"],
			[IsNotSaidc2m3_water],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_water"],
			[IsNotSaidc2m3_water],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m3_wayblocked"],
			[IsNotSaidc2m3_wayblocked],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m4_barnentry"],
			[IsNotSaidc2m4_barnentry],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m4_bumpercars"],
			[IsNotSaidc2m4_bumpercars],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m4_pendoor"],
			[IsNotSaidc2m4_pendoor],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m4_moustachio"],
			[IsNotSaidc2m4_moustachio],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m4_stadium"],
			[IsNotSaidc2m4_stadium],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m4_upbarn"],
			[IsNotSaidc2m4_upbarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c2m5_button2"],
			[IsNotSaidc2m5_button2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3BridgeDown"],
			[IsNotSaidC3M3BridgeDown],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			["worldsaidc3m3bridgebutton", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M1NoSwimming"],
			[IsNotSaidC3M1NoSwimming],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c3m2_parachutist"],
			[IsNotSaidc3m2_parachutist],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M2OverTree"],
			[IsNotSaidC3M2OverTree],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M2PlaneCrash"],
			[IsNotSaidC3M2PlaneCrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M2PlaneDoorNag"],
			[IsNotSaidC3M2PlaneDoorNag],
			["coughing", 0],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["worldsaidc3m2planedoornag", 1],
			[IsNotSaidC3M2OpenDoor],
			["map", "c3m2_swamp"],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M2Road"],
			[IsNotSaidC3M2Road],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "CSGO_SAS"],
			[IsNotSaidLeavingSafeArea],
			["map", "c3m2_swamp"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M2StartDry"],
			[IsNotSaidC3M2StartDry],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M2UnderWaterShack"],
			[IsNotSaidC3M2UnderWaterShack],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_c3m2underwatershack"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M2Village1"],
			[IsNotSaidC3M2Village1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3LowerGate"],
			[IsNotSaidC3M3BridgeButton],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3SearchHouses"],
			[IsNotSaidC3M3SearchHouses],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3Stairs"],
			[IsNotSaidC3M3Stairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3StayUpHere"],
			[IsNotSaidC3M3StayUpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3StayUpHere"],
			[IsNotSaidC3M3StayUpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3ThroughHere"],
			[IsNotSaidC3M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3ThroughThisHouse"],
			[IsNotSaidC3M3ThroughThisHouse],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3UpHere"],
			[IsNotSaidC3M3UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3UsePlanks"],
			[IsNotSaidC3M3UsePlanks],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3UsePlanks"],
			[IsNotSaidC3M3UsePlanks],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c3m4downroad"],
			[IsNotSaidc3m4downroad],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c3m4radio"],
			[IsNotSaidc3m4radio],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_C3M4_Radio"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c3m4scaffold"],
			[IsNotSaidc3m4scaffold],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c3m4shacks"],
			[IsNotSaidc3m4shacks],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m1_garagesale"],
			[IsNotSaidc4m1_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m1_nogas"],
			[IsNotSaidc4m1_nogas],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m1_throughhereA"],
			[IsNotSaidc4m1_throughhereA],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_gasinsidesign"],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_millentrance"],
			[IsNotSaidc4m2_millentrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_millentranceexit"],
			[IsNotSaidc4m2_millentranceexit],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_seegasstation"],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_streetblocked"],
			[IsNotSaidc4m2_streetblocked],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_upramp"],
			[IsNotSaidc4m2_upramp],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_upthestairs"],
			[IsNotSaidc4m2_upthestairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_useelevator"],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear300],
			["worldsaidc4m2_seegasstation", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_waterpool"],
			[IsNotSaidc4m2_waterpool],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m2_weather"],
			[IsNotSaidc4m2_weather],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_cane"],
			[IsNotSaidc4m3_cane],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_crosshere"],
			[IsNotSaidc4m3_crosshere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_downhere"],
			[IsNotSaidc4m3_downhere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_downstairs"],
			[IsNotSaidc4m3_downstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_ducatelsign"],
			[IsNotSaidc4m3_ducatelsign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_elevator"],
			[IsNotSaidc4m3_elevator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_overtank"],
			[IsNotSaidc4m3_overtank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_rain"],
			[IsNotSaidc4m3_rain],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_thisway"],
			[IsNotSaidc4m3_thisway],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m3_uppipes"],
			[IsNotSaidc4m3_uppipes],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m4_flooded"],
			["incombat", 0],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m4_garagesale"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m4_garagesale2"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m4_playground"],
			[IsNotSaidc4m4_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m4_porchlight"],
			[IsNotSaidc4m4_porchlight],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m4_truckwreck"],
			[IsNotSaidc4m4_truckwreck],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m4_useroofs"],
			[IsNotSaidc4m4_useroofs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "pathc2m1_billboard"],
			[IsNotSaidpathc2m1_billboard],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "remark_caralarm"],
			[IsNotSaidremark_caralarm],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M1CedaMaps"],
			[IsNotSaidWorldC1M1CedaMaps],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M1DownHere"],
			[IsNotSaidWorldC1M1DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M1DownStairs"],
			[IsNotSaidWorldC1M1DownStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M1ElevatorBroken"],
			[IsNotSaidWorldC1M1ElevatorBroken],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M1FireSpreading"],
			[IsNotSaidWorldC1M1FireSpreading],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M1First"],
			[IsNotSaidWorldC1M1First],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M1Ledge"],
			[IsNotSaidWorldC1M1Ledge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M1StairsSign"],
			[IsNotSaidWorldC1M1StairsSign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2Close"],
			[IsNotSaidWorldC1M2Close],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2DownStairs"],
			[IsNotSaidWorldC1M2DownStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2Abandoned"],
			[IsNotSaidWorldC1M2Abandoned],
			["coughing", 0],
			["incombat", 0],
			["intensity", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2Dumpster"],
			[IsNotSaidWorldC1M2Dumpster],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2GunStoreClose"],
			[IsNotSaidWorldC1M2GunStoreClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2InHere"],
			[IsNotSaidWorldC1M2InHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2JumpTruck"],
			[IsNotSaidWorldC1M2JumpTruck],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2MallSignHere"],
			[IsNotSaidWorldC1M2MallSignHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2MallThisWay"],
			[IsNotSaidWorldC1M2MallThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC1M2UpStairs"],
			[IsNotSaidWorldC1M2UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1AmmoUp"],
			[IsNotSaidWorldC3M1AmmoUp],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1CheckingHouses"],
			[IsNotSaidWorldC3M1CheckingHouses],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1FeedGator"],
			[IsNotSaidWorldC3M1FeedGator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			["iscoachalive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkCsgo_sas],
			[IsSubjectNear200],
			["isgambleralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1FerryNag"],
			[IsNotSaidWorldC3M1FerryNag],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_C3M1CrazyMilitants"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["worldsaidworldc3m1ferrynag", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1WeShouldGetBackUp"],
			[IsNotSaidWorldC3M1WeShouldGetBackUp],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1Litter"],
			[IsNotSaidWorldC3M1Litter],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1Litter"],
			[IsNotSaidWorldC3M1Litter],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1Path01"],
			[IsNotSaidWorldC3M1Path01],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1PlanksRight"],
			[IsNotSaidWorldC3M1PlanksRight],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1Stairs"],
			[IsNotSaidWorldC3M1Stairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1StayOn"],
			[IsNotSaidWorldC3M1StayOn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1Walkways"],
			[IsNotSaidWorldC3M1Walkways],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC3M1WhichWay"],
			[IsNotSaidWorldC3M1WhichWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502AlarmButton"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "WorldC502AlarmStopped"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "WorldC502AlarmStopped2"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC502Alley"],
			[IsNotSaidWorldC502Alley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC502BusStory"],
			[IsNotSaidWorldC502BusStory],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC502BusStory"],
			[IsNotSaidWorldC502BusStory],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502BusStory2b"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "WorldC502BusStory2c"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "WorldC502NotZombies2"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC502AlarmButtonRun"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "WorldSignReportUnusual2"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502OfficialInstructions"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502QuaratineZone"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC502Smell"],
			[IsNotSaidWorldC502Smell],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC502Smell"],
			[IsNotSaidWorldC502Smell],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502Smell2"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502SmellBath2"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_IntoThePark2"],
			[IsNotSaidWorldC6M1_IntoThePark2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			["introactor", "zoey"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			["introactor", "zoey"],
			[ChanceToFire20Percent],
			["iscoachalive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			["zombiepresentwitch", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_InSewer2"],
			[IsNotSaidWorldC6M2_InSewer2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			["worldsaidworldc6m2_insewer1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C2M1Falling"],
			["who", "CSGO_SAS"],
			["map", "c6m2_bedlam"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_OnTourWalk3"],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			[ExtraWeight10],
			[ChanceToFire10Percent],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			["introactor", "francis"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_c6m3bridgedown", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear500],
			["introactor", "zoey"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_c6m3bridgedown", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M3_Bill"],
			["coughing", 0],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c6m3_port"],
			[IsNotSmartLookAuto],
			["subject", "None"],
			[IsManagerNear500],
			[IsWorldTalkCsgo_sas],
			["world_auto_c6m3bill", 1],
			["world_auto_csgo_sasc6m3bill", 1],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c6m3_port"],
			[IsNotSmartLookAuto],
			["subject", "None"],
			[IsManagerNear500],
			[IsWorldTalkCsgo_sas],
			["world_auto_c6m3bill", 1],
			["world_auto_csgo_sasc6m3bill", 1],
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
			["concept", "c6m3_loss"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "c6m3_loss2"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldSignColdBeer"],
			[IsNotSaidWorldSignColdBeer],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignPhotography2"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignReportSick2"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldSignC5AlarmWillSound"],
			[IsNotSaidWorldSignC5AlarmWillSound],
			["coughing", 0],
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
			["concept", "WorldSignC5AlarmWillSound3"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignC5AlarmWillSound3d"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "RespondAffirmative"],
			[IssuerMediumClose],
			["coughing", 0],
			["incombat", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerFollowMe"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHelp"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			[IsTalk],
			["incapacitated", 0],
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
			["concept", "PlayerHurryUp"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHurryUp"],
			["who", "CSGO_SAS"],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSafeSpotAhead],
			["map", "c4m2_sugarmill_a"],
			[IsNotZombiePresentTank],
			[IsWorldTalkCsgo_sas],
			["world_auto_csgo_sasinwitchville", 1],
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
			["concept", "PlayerKillThatLight"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLeadOn"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerMoveOn"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerWatchOutBehind"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerAskReady"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerImWithYou"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLaugh"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLostCall"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerNiceJob"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerAnswerLostCall"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerSorry"],
			["coughing", 0],
			[IsNotShotTeammateCsgo_sas],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerSorry"],
			["coughing", 0],
			["worldshotteammatecsgo_sas", 1],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerThanks"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerYellRun"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerYes"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["from", "Coach"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["from", "Coach"],
			[ChanceToFire30Percent],
			[IsWorldTalkCsgo_sas],
			[TimeSinceGroupInCombat05],
			["map", "c1m1_hotel"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["from", "Gambler"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["from", "Gambler"],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["from", "Producer"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["from", "Producer"],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			["inbattlefield", 1],
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
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			["instartarea", 1],
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
			["concept", "PlayerNegative"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PanicEvent"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			[SubjectIsNotCsgo_sas],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkCsgo_sas],
			["panictype", "CarAlarm"],
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
			["concept", "PanicEvent"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			["subject", "CSGO_SAS"],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkCsgo_sas],
			["panictype", "CarAlarm"],
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
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardTank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHurrah"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerWarnCareful"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsL4D1Alive],
			["map", "c6m3_port"],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["towin", 20],
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
			["concept", "GasPour20More"],
			["who", "CSGO_SAS"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["towin", 10],
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
			["concept", "GasPour10More"],
			["who", "CSGO_SAS"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["towin", 1],
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
			["concept", "GasPour1More"],
			["who", "CSGO_SAS"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["towin", 2],
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
			["concept", "GasPour2More"],
			["who", "CSGO_SAS"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["towin", 3],
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
			["concept", "GasPour3More"],
			["who", "CSGO_SAS"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["towin", 5],
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
			["concept", "GasPour5More"],
			["who", "CSGO_SAS"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["gamemode", "scavenge"],
			["towin", 0],
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
			["concept", "PlayerPourStarted"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["gamemode", "scavenge"],
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
			["concept", "PlayerPourStarted"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["gamemode", "scavenge"],
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
			["concept", "PlayerPourStarted"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerEquippedScavengeItem"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerShotGasCan"],
			["who", "CSGO_SAS"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["gamemode", "scavenge"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c1m4_atrium"],
			["gamemode", "scavenge"],
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
			["concept", "commentjockey"],
			["who", "CSGO_SAS"],
			[IssuerCloseEnough],
			["incapacitated", 0],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedCsgo_sas],
			["beingjockeyed", 0],
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
			["concept", "commentjockey"],
			["who", "CSGO_SAS"],
			[IssuerCloseEnough],
			["incapacitated", 0],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			[ChanceToFire25Percent],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedCsgo_sas],
			["beingjockeyed", 0],
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
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c4m2_sugarmill_a"],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotComplainBlock],
			["iscoachalive", 1],
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
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "AlertGiveItemStopFirstAidA"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "BashWithItem"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["item", "FirstAidKit"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Coach"],
			[IsNotSaidCoachPounced],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Coach"],
			[IsNotSaidCoachPounced],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Gambler"],
			[IsNotSaidGamblerPounced],
			["who", "CSGO_SAS"],
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
			["concept", "EatPills"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Gambler"],
			[IsNotSaidGamblerPounced],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGetInsideCheckPoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["insafespot", 1],
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
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["insafespot", 1],
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
			["concept", "PlayerGetInsideCheckPoint"],
			["map", "c2m2_fairgrounds"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["insafespot", 1],
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
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["grenadetype", "Molotov"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["grenadetype", "Molotov"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["grenadetype", "PipeBomb"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["grenadetype", "VomitJar"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["grenadetype", "VomitJar"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["grenadetype", "VomitJar"],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerIncapacitated"],
			["who", "CSGO_SAS"],
			["map", "c1m2_streets"],
			["worldc1m2alarmsetoff", 2],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsUsingFirearm],
			[IsSubjectFar300],
			["map", "c1m1_hotel"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkCsgo_sas],
			["activeweapon", "Melee"],
			["map", "c1m1_hotel"],
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
			["concept", "KillSteal"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IssuerReallyClose],
			["worldcsgo_sasalsowarn", 1],
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
			["concept", "InsistMine"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Spitter"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Spitter"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c1m2_streets"],
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
			["concept", "KilledZombie"],
			["who", "CSGO_SAS"],
			["subjectisa", "Witch"],
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
			["concept", "KilledZombie"],
			["who", "CSGO_SAS"],
			["subjectisa", "Witch"],
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
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["insafespot", 1],
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
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["insafespot", 1],
			[IsNotAlone],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "CSGO_SAS"],
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
			["concept", "RevivedByDefibrillator"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			[IsNotSuggestedHealth],
			["hasfirstaidkit", 1],
			["who", "CSGO_SAS"],
			["beinghealed", 0],
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
			["concept", "PlayerSuggestHealth"],
			["who", "CSGO_SAS"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerSuggestHealth"],
			["who", "CSGO_SAS"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "CSGO_SAS"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Coach"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "CSGO_SAS"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Gambler"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "CSGO_SAS"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Producer"],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c1m2_streets"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c1m2_streets"],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c1m3_mall"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c2m1_highway"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c5m4_quarter"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m2_bedlam"],
			["introactor", "zoey"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerUsingDefibrillator"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardCharger],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardHunter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardJockey],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardJockey],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardCharger],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardHunter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "CSGO_SAS"],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "CSGO_SAS"],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			["incombat", 0],
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
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "Player.C1WorseThanZombies"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerWarnMegaMob"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "WitchGettingAngry"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "introC3M1"],
			["who", "CSGO_SAS"],
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
			["concept", "introC5M1"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerVomitInFace"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorCoughing"],
			["coughing", 1],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerDeath"],
			["coughing", 1],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerDeath"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkCsgo_sas],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			["incapacitated", 0],
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
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c1m2_streets"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c1m3_mall"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c2m1_highway"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c2m2_fairgrounds"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c2m3_coaster"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c2m4_barns"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c3m1_plankcountry"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c3m2_swamp"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C3M3SafeHouseAhead"],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c4m1_milltown_a"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c4m2_sugarmill_a"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c4m3_sugarmill_b"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c4m4_milltown_b"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c5m2_park"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c5m3_cemetery"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c5m4_quarter"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c6m1_riverbank"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c6m2_bedlam"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c2m5_concert"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c3m4_plantation"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c4m5_milltown_escape"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c5m5_bridge"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c6m3_port"],
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
			["concept", "ScreamWhilePounced"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGroundPoundedByTank"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerBackUp"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "PlayerEmphaticGo"],
			["who", "CSGO_SAS"],
			["coughing", 0],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["onthirdstrike", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerThisWay"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerWaitHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLedgeHangEnd"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLedgeHangMiddle"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLedgeHangStart"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "CSGO_SAS"],
			[IsEveryoneAlive],
			[IsNotSaidSomeoneDied],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "CSGO_SAS"],
			["numberofteamalive", 2],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsClosestSurvivorNear400],
			["numberofteamalive", 3],
			["incapacitated", 0],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["isproduceralive", 1],
			[IsProducerNear400],
			["numberofteamalive", 3],
			[ChanceToFire100Percent],
			["incapacitated", 0],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["worldsaidfaultfriendlyfire", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfirecoach", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfiregambler", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfireproducer", 1],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itempickedup", "SMG"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itempickedup", "PumpShotgun"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itempickedup", "Shotgun_Chrome"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itempickedup", "Smg_mp5"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSaidDeployUpgradePack_Explosive],
			["activeweapon", "UpgradePack_Explosive"],
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
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotSaidDeployUpgradePack_Incendiary],
			["activeweapon", "UpgradePack_Incendiary"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Adrenaline"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "AutoShotgun"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Shotgun_Spas"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "baseball_bat"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "shovel"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "chainsaw"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Knife"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "cricket_bat"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Pitchfork"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "CrowBar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Defibrillator"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "electric_guitar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "FireAxe"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "FirstAidKit"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidPickupFirstSMG],
			["worldsaidc1m1opendoor", 1],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "frying_pan"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "GolfClub"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "GrenadeLauncher"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			[IsTalk],
			["worldsaidc1m2insidegunshop", 1],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "HuntingRifle"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Sniper_Military"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Sniper_scout"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Sniper_awp"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "IncendiaryAmmo"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Katana"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 0],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "m60"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Machete"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Magnum"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Molotov"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "PainPills"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "PipeBomb"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "PumpShotgun"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Shotgun_Chrome"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Rifle"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Rifle_Desert"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Rifle_AK47"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Rifle_sg552"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "SecondPistol"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "SMG"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Smg_silenced"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "Smg_mp5"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "tonfa"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "ExplosiveAmmo"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "UpgradePack_Explosive"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "UpgradePack_Incendiary"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "VomitJar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "VomitJar"],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["worldcsgo_sascrying", 1],
			["from", "Producer"],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incombatmusic", 0],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incombatmusic", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incombatmusic", 1],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incombatmusic", 0],
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
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["incombatmusic", 0],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["incombatmusic", 1],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["incombatmusic", 1],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "_C1M1_ElevatorHello"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello02c"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello03a"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello03e"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello03d"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello05b"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello05c"],
			["who", "CSGO_SAS"],
			["from", "Producer"],
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
			["concept", "_C1M1_ElevatorHello05c"],
			["who", "CSGO_SAS"],
			["from", "Coach"],
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
			["concept", "_C1M1_ElevatorHello05c"],
			["who", "CSGO_SAS"],
			["from", "Gambler"],
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
			["concept", "_C1M1_ElevatorHello07b"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello07d"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello07f"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello08a"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello08c"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello08e"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello09a"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello12a"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello13a"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator2"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator2a"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator2b"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator2c"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator3"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator3b"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator3c"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator3d"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator3e"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator5a"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator5a1"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevator5b"],
			["who", "CSGO_SAS"],
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
			["concept", "_c1m4startelevatorLast"],
			["who", "CSGO_SAS"],
			["worldelevatortimer", 1],
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
			["concept", "_c1m4startelevatorLast"],
			["who", "CSGO_SAS"],
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
			["concept", "_c2m1_searchlights01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_c2m1_searchlights04"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_C2M2_Bathroom01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_C2M2_CaroStart03"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
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
			["concept", "_C2M2_CaroStart04"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
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
			["concept", "_C2M2_Kiddie03"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_C2M2_Peanut01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_C2M2_Slide01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_C2M2_ThisTall02"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_C2M2_ThisTall02"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			[IssuerClose],
			["from", "Gambler"],
			["worldcsgo_sastalljoke", 1],
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
			["concept", "_C2M2_LikeTaters"],
			["who", "CSGO_SAS"],
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
			["concept", "_C2M2_Kiddie06"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_c2m3_cement01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["incapacitated", 0],
			["coughing", 0],
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
			["concept", "_c2m3_coaster01"],
			["who", "CSGO_SAS"],
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
			["concept", "_c2m3_coaster03"],
			["who", "CSGO_SAS"],
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
			["concept", "_c2m3_coaster06"],
			["who", "CSGO_SAS"],
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
			["concept", "_c2m3_coaster07"],
			["who", "CSGO_SAS"],
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
			["concept", "_c2m3_coaster08"],
			["who", "CSGO_SAS"],
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
			["concept", "_c2m3_coollight01"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_c2m3_howcool"],
			["who", "CSGO_SAS"],
			[ChanceToFire50Percent],
			["incombat", 0],
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
			["concept", "_C2M4_GateOpen001"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
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
			["concept", "_C4_BigStormHits01"],
			["who", "CSGO_SAS"],
			[_auto_NotC4Csgo_sasInCover],
			["world_auto_timera", 1],
			["from", "orator"],
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
			["concept", "_C4_BigStormHits02"],
			["who", "CSGO_SAS"],
			["coughing", 0],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "_c4m1_rainresponse"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "introC4M1"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m1Intro05"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m1Intro07"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m1Intro08"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m1Intro12"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m1Intro16"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m2_caneyell01"],
			["who", "CSGO_SAS"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_csgo_sasincane", 1],
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
			["concept", "_c4m2_ElevatorHere01"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
			["coughing", 0],
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
			["concept", "_c4m2_gasinside01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_c4m2_seestation01"],
			["who", "CSGO_SAS"],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			["incombat", 0],
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
			["concept", "_c4m2_seestation02"],
			["who", "CSGO_SAS"],
			[IsSubjectDistNear400],
			[IsNotSaidActivatedC4M2Elevator],
			["from", "Gambler"],
			["incombat", 0],
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
			["concept", "_c4m2_seestation02"],
			["who", "CSGO_SAS"],
			[IsSubjectDistNear400],
			[IsNotSaidActivatedC4M2Elevator],
			["from", "Producer"],
			["incombat", 0],
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
			["concept", "_c4m2_streetblocked01"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m2_streetblocked01"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m2_streetblocked02"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m2_waterpool01"],
			["who", "CSGO_SAS"],
			[IsSubjectDistNear400],
			["incombat", 0],
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
			["concept", "_c4m2_Witchville05"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["incombat", 0],
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
			["concept", "_c4m3_rain02"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "_c4m3_startsafe02"],
			["who", "CSGO_SAS"],
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
			["concept", "_c4m3_startsafe03"],
			["who", "CSGO_SAS"],
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
			["concept", "_C4M4_FLOODED01"],
			["who", "CSGO_SAS"],
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
			["concept", "_C4M4_garagesale01"],
			["who", "CSGO_SAS"],
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
			["concept", "_C4M5_BoatComing01"],
			["who", "CSGO_SAS"],
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
			["concept", "_C4M5_Intro03"],
			["who", "CSGO_SAS"],
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
			["concept", "_C4M5_Intro04"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "c4m5_burgertank"],
			[IsNotSaidc4m5_burgertank],
			["coughing", 0],
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
			["concept", "_introc1m1"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1"],
			["who", "CSGO_SAS"],
			["numberofteamalive", 1],
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
			["concept", "_introc1m1"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1MovieIntro"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1a04"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1a05"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1b02"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1b03"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1last"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1last"],
			["who", "CSGO_SAS"],
			["from", "Coach"],
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
			["concept", "_introc1m1b05"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1b06"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1b08"],
			["who", "CSGO_SAS"],
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
			["concept", "_introc1m1firealert"],
			["who", "CSGO_SAS"],
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
			["concept", "BlankTesto"],
			["who", "CSGO_SAS"],
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
			["concept", "c1m1_elevator_door_open2"],
			["who", "CSGO_SAS"],
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
			["concept", "c1m1_elevator_ready2"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello2AliveName1"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello2AliveName2"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello2AliveExtra1"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello2AliveExtra2"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3AliveName1"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3AliveName1"],
			["from", "Producer"],
			[ChanceToFire100Percent],
			["worldrochelleelevatorintro", 1],
			[IsNotCsgo_sasIntroduced],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["from", "Producer"],
			["worldrochelleelevatorintro", 1],
			[ChanceToFire100Percent],
			[IsNotCsgo_sasIntroduced],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3WhoIsDead"],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsProducerNotAlive],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsCoachNotAlive],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsGamblerNotAlive],
			["who", "CSGO_SAS"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			["who", "CSGO_SAS"],
			["iscoachalive", 1],
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
			["concept", "C1M1Cough"],
			["who", "CSGO_SAS"],
			["map", "c1m1_hotel"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["map", "c1m2_streets"],
			["instartarea", 1],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
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
			["concept", "C1M2SafeRooma4"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M2SafeRooma3"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M3AlarmOffa"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M3SafeRoom2e"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M4NearFinale03c"],
			["who", "CSGO_SAS"],
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
			["concept", "c1m4jimmyidea"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c1m4_atrium"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			["world_auto_saferoomstart", 1],
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
			["concept", "C1M4SafeRoom2a1"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M4SafeRoom2b1"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M4SafeRoom2b3"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M4SafeRoom2b4"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M4SafeRoom2a5"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M4SafeRoom2c1"],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["map", "c1m4_atrium"],
			["who", "CSGO_SAS"],
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
			["concept", "C1M4FinaleStartResponse"],
			["who", "CSGO_SAS"],
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
			["concept", "introC2M1"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M1Intro002"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M1Intro003"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M1Intro005"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M1Intro008"],
			["who", "CSGO_SAS"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro009"],
			["who", "CSGO_SAS"],
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
			["concept", "C2M4PenSmell001"],
			["who", "CSGO_SAS"],
			[IsTalk],
			["incombat", 0],
			[IsGamblerNear400],
			["coughing", 0],
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
			["concept", "C2M5_lipsync001"],
			["who", "CSGO_SAS"],
			[TimeSinceGroupInCombat02],
			["incombat", 0],
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
			["concept", "C2M5_lipsync002"],
			["who", "CSGO_SAS"],
			[TimeSinceGroupInCombat02],
			["incombat", 0],
			[IsNotSpeaking],
			["iscoachalive", 1],
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
			["concept", "C4EnterCover"],
			["who", "CSGO_SAS"],
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
			["concept", "C4ExitCover"],
			["who", "CSGO_SAS"],
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
			["concept", "C4FinaleStart"],
			["who", "CSGO_SAS"],
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
			["concept", "c4m1_nogas01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "c4m1_nogas10"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "c4m1_wreck01"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "c4m1_wreck02"],
			["who", "CSGO_SAS"],
			["incombat", 0],
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
			["concept", "GasPour20More"],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour10More"],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour1More"],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour2More"],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour3More"],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour5More"],
			["who", "CSGO_SAS"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "Player.CoverMeC1R"],
			["who", "CSGO_SAS"],
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
			["concept", "Player.CoverMeC1RCoach1"],
			["who", "CSGO_SAS"],
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
			["concept", "Player.GooedBySpitterC1R"],
			["who", "CSGO_SAS"],
			["incapacitated", 0],
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
			["concept", "Player.KnowHunter"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "Player.KnowBoomer"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "Player.KnowCharger"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "Player.KnowJockey"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "C1M2TankInfo"],
			["who", "CSGO_SAS"],
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
			["concept", "Player.KnowSpitter"],
			["who", "CSGO_SAS"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["subjectisa", "Witch"],
			["oneshot", 1],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkCsgo_sas],
			["map", "c6m1_riverbank"],
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
			["concept", "WeddingWitchDead02"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldIntroC31a2"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldIntroC31c1"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldIntroC31d2"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldIntroC31e2a"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldIntroC3f2"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldIntroC31g1"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotAlone],
			[IsWorldTalkCsgo_sas],
			["map", "c1m1_hotel"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[IsClosestSurvivorFar3000],
			[IsNotAlone],
			[IsNotSaidPlayerLostCall],
			["map", "c6m3_port"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "chainsaw"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "chainsaw"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "cricket_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "cricket_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "crowbar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "crowbar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "electric_guitar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "electric_guitar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Katana"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Katana"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "LaserSights"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "LaserSights"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 1],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Machete"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Machete"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "magnum"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "magnum"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SecondPistol"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SecondPistol"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "tonfa"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "tonfa"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "AutoShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "AutoShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "PumpShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "PumpShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_chrome"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_spas"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_spas"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SMG"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SMG"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_silenced"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_silenced"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_mp5"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_mp5"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "HuntingRifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "HuntingRifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_AK47"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_AK47"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_desert"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_desert"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_sg552"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_sg552"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_military"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_military"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_scout"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_scout"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_awp"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_awp"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "baseball_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "baseball_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "frying_pan"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "frying_pan"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "fireaxe"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "fireaxe"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shovel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shovel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Pitchfork"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Pitchfork"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["weaponname", "Knife"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Knife"],
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
			["concept", "PlayerSpotOtherWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerSpotPistol"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerSpotShotgun"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			["world_auto_tracksok", 1],
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
			["concept", "C2M3Chopper001"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "TeenGirl"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["subject", "TeenGirl"],
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
			["concept", "introC13M1"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M1Intro2"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M1Intro3"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M1IntroLast"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M1IntroLocationLast"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M1Uphill"],
			[IsNotRemarkedC13M1UpHill],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M1DownHere"],
			[IsNotRemarkedC13M1DownHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M1ThroughHere"],
			[IsNotRemarkedC13M1ThroughHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M1ThroughWindow"],
			[IsNotRemarkedC13M1ThroughWindow],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M1UpSteps"],
			[IsNotRemarkedC13M1UpSteps],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M1CrossHere"],
			[IsNotRemarkedC13M1CrossHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M1PreBunkerOpen"],
			[IsNotRemarkedC13M1PreBunkerOpen],
			["incombat", 0],
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
			["concept", "C13M1OpeningBunker"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M2Uphill"],
			[IsNotRemarkedC13M2UpHill],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M2DownHere"],
			[IsNotRemarkedC13M2DownHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M2UpLadder"],
			[IsNotRemarkedC13M2UpLadder],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M2UpStairs"],
			[IsNotRemarkedC13M2UpStairs],
			["incombat", 0],
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
			["concept", "C13M2TankApproaching"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M2BarrelsIgnited"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M2Barrels1"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M2Barrels2"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "C13M3DownHere"],
			[IsNotRemarkedC13M3DownHere],
			["incombat", 0],
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
			["concept", "C13M3ApproachingTanker"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M3Tanker1"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M3Tanker2"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M3Tanker3"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M3OnScaffold"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M3Airstrike"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M3Airstrike2"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M4Button1"],
			["who", "CSGO_SAS"],
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
			["concept", "FinaleTriggered"],
			["who", "CSGO_SAS"],
			["map", "c13m4_cutthroatcreek"],
			["triggeredby", "CSGO_SAS"],
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
			["concept", "C13M4FinaleStart2"],
			["who", "CSGO_SAS"],
			["world_auto_talkingcsgo_sas", 1],
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
			["concept", "C13M4DownCreek"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M4InSmoke"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M4NoticedHelicopter"],
			["who", "CSGO_SAS"],
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
			["concept", "C13M4AlmostThere"],
			["who", "CSGO_SAS"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "CSGO_SAS"],
			["map", "c13m4_cutthroatcreek"],
			["world_auto_finale", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
			["map", "c13m4_cutthroatcreek"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
			["map", "c13m4_cutthroatcreek"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "IntroEnd"],
			["who", "CSGO_SAS"],
			["from", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "CSGO_SAS"],
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
			["concept", "FinaleTriggered"],
			["who", "CSGO_SAS"],
			["triggeredby", "CSGO_SAS"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "CSGO_SAS"],
			["world_auto_finale", 1],
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
			["concept", "FinalVehicleArrived"],
			["who", "CSGO_SAS"],
			["world_auto_finale", 2],
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
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "Biker"],
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
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "Manager"],
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
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["subject", "TeenGirl"],
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
			["concept", "PlayerPourStarted"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsNotScavenge],
			["map", "c6m3_port"],
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
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_01a"],
			["who", "CSGO_SAS"],
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
			["concept", "introC6M1"],
			["who", "CSGO_SAS"],
			["introactor", "francis"],
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
			["concept", "C6M1Intro_01c"],
			["who", "CSGO_SAS"],
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
			["concept", "introC6M1"],
			["who", "CSGO_SAS"],
			["introactor", "zoey"],
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
			["concept", "C6M1Intro_02a"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_11a"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_11c"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_12b"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_13a"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_13c"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_13f"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_23b"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_23d"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_24c"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M1Intro_24e"],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "CSGO_SAS"],
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
			["concept", "RemWorldC6M1_WeddingWarn02"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC6M1_WeddingWarn03a"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M2_OpenGate1"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M2_OpenGate1b"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M2_OpenGate1"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M2_OpenGate2"],
			["who", "CSGO_SAS"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "CSGO_SAS"],
			[IsNotSaidC6M2LeavingSafeRoom],
			["map", "c6m2_bedlam"],
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
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo02a"],
			["who", "CSGO_SAS"],
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
			["who", "CSGO_SAS"],
			["introactor", "francis"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo03b"],
			["who", "CSGO_SAS"],
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
			["who", "CSGO_SAS"],
			["introactor", "zoey"],
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
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo11a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo14b"],
			["who", "CSGO_SAS"],
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
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16b"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16b1"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16d"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16f"],
			["who", "CSGO_SAS"],
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
			["who", "CSGO_SAS"],
			["introactor", "zoey"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo17a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo18b"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19a"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19c"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19e"],
			["who", "CSGO_SAS"],
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
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo21b"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC6M2_FinalWater01b"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC6M2_InSewer101a"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC6M2_OnTourWalk102b"],
			["who", "CSGO_SAS"],
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
			["concept", "WorldC6M2_Tattoo03b>"],
			["who", "CSGO_SAS"],
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
			["concept", "C6M3_BridgeDown"],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "CSGO_SAS"],
			[IsNotSaidGetToCar],
			["map", "c6m3_port"],
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
			["concept", "SceneCancelled"],
			["who", "CSGO_SAS"],
			[IsNotSaidC6M3Elevator],
			["map", "c6m3_port"],
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
			["concept", "SceneCancelled"],
			["who", "CSGO_SAS"],
			[IsNotSaidC6M3Elevator],
			["map", "c6m3_port"],
			["introactor", "zoey"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "Biker"],
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
			["concept", "PlayerPickup"],
			["who", "CSGO_SAS"],
			["itemdonor", "TeenGirl"],
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
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo01a"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo01c"],
			["who", "CSGO_SAS"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo02e"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo03a"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo03c"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo04a"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo04d"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo05a"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["who", "CSGO_SAS"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "francis"],
			[FrancisGroup4],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo06b"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo07a"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo07c"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08a"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08c"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08d"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08e"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08f"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo09a"],
			["who", "CSGO_SAS"],
			["instartarea", 1],
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
			["concept", "SurvivorIncapacitated"],
			["who", "CSGO_SAS"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
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
			["concept", "c6m3escapeready"],
			["who", "CSGO_SAS"],
			["map", "c6m3_port"],
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
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "CSGO_SAS"],
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
			["concept", "PlayerExertionMinor"],
			["who", "CSGO_SAS"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidCsgo_sasWitchChasing],
			["saidwitchattacking", 1],
			["map", "c6m1_riverbank"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_Intothepark"],
			[IsNotSaidWorldC6M1_Intothepark],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_IntoThePark2"],
			[IsNotSaidWorldC6M1_IntoThePark2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			["introactor", "zoey"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear600],
			["introactor", "zoey"],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_InSewer2"],
			[IsNotSaidWorldC6M2_InSewer2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			["worldsaidworldc6m2_insewer1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_OnTourWalk3"],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_SafeRoom"],
			[IsNotSaidWorldC6M2_SafeRoom],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "CSGO_SAS"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "PlayerPourFinished"],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsWorldTalkCsgo_sas],
			["map", "c6m3_port"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCsgo_sas],
			["incapacitated", 0],
			[IsWorldTalkCsgo_sas],
			["map", "c6m3_port"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "GolfClub"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			["itempickedup", "m60"],
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
			["concept", "WeddingWitchDead04"],
			["who", "CSGO_SAS"],
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
			["concept", "TLK_IDLE"],
			["who", "CSGO_SAS"],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			["map", "c6m3_port"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "CSGO_SAS"],
			[IsTalk],
			[IsTalkCsgo_sas],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
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
			["concept", "C1M2InsideGunShop"],
			["whodidit", "CSGO_SAS"],
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
			["concept", "C1M3AlarmOff"],
			["whodidit", "CSGO_SAS"],
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
			["concept", "C1M3BrokeWindow"],
			["whodidit", "CSGO_SAS"],
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
			["concept", "Airport02CraneStarted"],
			["whodidit", "CSGO_SAS"],
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
			["concept", "Airport03FireStarted"],
			["whodidit", "CSGO_SAS"],
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
			["concept", "C6M3Stairs"],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "zoey"],
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
			["concept", "C6M3Stairs"],
			["who", "CSGO_SAS"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "francis"],
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
