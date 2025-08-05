local trevor_philips_rules = 
[
	{
		name = "C3M1CallFerryTrevor",
		criteria = 
		[
			["concept", "C3M1CallFerry"],
			["whodidit", "Trevor"],
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
			["concept", "C3M2OpenDoor"],
			["whodidit", "Trevor"],
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
			["concept", "c5m4floatstart"],
			["whodidit", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["worldsaidc1m1insmoke", 1],
			["map", "c1m1_hotel"],
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
			["concept", "C1M3AlarmOff2"],
			["who", "Trevor"],
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
			["concept", "C1M3AlarmActive"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "Biker"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "Biker"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "Manager"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "Manager"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "TeenGirl"],
			[ChanceToFire70Percent],
			["introactor", "francis"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "TeenGirl"],
			[ChanceToFire70Percent],
			["introactor", "zoey"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "TeenGirl"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[ChanceToFire10Percent],
			[IsWorldTalkTrevor],
			["subject", "Coach"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[ChanceToFire10Percent],
			[IsWorldTalkTrevor],
			["subject", "Gambler"],
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerClose],
			[IsTalk],
			[IsTalkTrevor],
			[ChanceToFire10Percent],
			[IsWorldTalkTrevor],
			["subject", "Producer"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Trevor"],
			["deadcharacter", "Coach"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Trevor"],
			["deadcharacter", "Coach"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Trevor"],
			["deadcharacter", "Gambler"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Trevor"],
			["deadcharacter", "Gambler"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Trevor"],
			["deadcharacter", "Producer"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Trevor"],
			["deadcharacter", "Producer"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkTrevor],
			[NoKnowNames],
			["map", "c1m1_hotel"],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 3],
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
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 2],
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
			["concept", "C3M1FerryInTransit"],
			["who", "Trevor"],
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
			["concept", "c1m1_enter_elevator"],
			["who", "Trevor"],
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
			["concept", "c1m1_elevator_pushbutton"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2PreStoreAlarm"],
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
			["concept", "C1M2AlarmDoor2"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
			["world_auto_saidc1m2grabbedcola", 1],
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
			["concept", "C1M2FirstOutsideResponse"],
			["who", "Trevor"],
			["from", "orator"],
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
			["concept", "C1M2GunRoomDoorResponseGratitude"],
			["who", "Trevor"],
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
			["concept", "C1M2InsideGunShop2"],
			["who", "Trevor"],
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
			["concept", "C1M2InsideGunShop3"],
			["who", "Trevor"],
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
			["concept", "C1M2InsideGunShopPickupResponse"],
			["who", "Trevor"],
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
			["concept", "C1M2InsideGunShopPickupResponse2"],
			["who", "Trevor"],
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
			["concept", "c1m2gunshopkill"],
			["who", "Trevor"],
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
			["concept", "C3M1CallFerry2"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["trevoractor", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["worldc3m1ferry", 1],
			["incapacitated", 0],
			["incombat", 0],
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
			["concept", "C3M1FerryLaunched2"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSafeSpotAhead],
			["worldsaidc3m2village1", 1],
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
			["concept", "_C3M2BloodFarmers"],
			["who", "Trevor"],
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
			["concept", "C3M2OpenDoor2"],
			["who", "Trevor"],
			[IsTalkTrevor],
			["trevoractor", 1],
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
			["concept", "c5m4floatend2"],
			["who", "Trevor"],
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
			["concept", "c5m4floatstart2"],
			["who", "Trevor"],
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
			["concept", "introC1M1"],
			["who", "Trevor"],
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
			["concept", "introC1M1"],
			["who", "Trevor"],
			["numberofteamalive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
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
			["concept", "PlayerUsingColaBottles"],
			["who", "Trevor"],
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
			["concept", "RelaxedSigh"],
			["who", "Trevor"],
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
			["concept", "StayTogetherInsideReponse"],
			["who", "Trevor"],
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
			["concept", "UseAdrenaline"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FeedGator2"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingA01"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingB01"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingD03"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingE02"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingE04"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingG02"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingI02"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingM2"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingM4"],
			["who", "Trevor"],
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
			["concept", "WorldIntroC31"],
			["who", "Trevor"],
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
			["concept", "Award"],
			["awardname", "Sharing"],
			["coughing", 0],
			["subject", "Trevor"],
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
			["concept", "Award"],
			["awardname", "Rescuer"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerGivenItem"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "Producer"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "Coach"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "Gambler"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "Biker"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "TeenGirl"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "Manager"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "NamVet"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "Trevor"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "Trevor"],
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
			["concept", "ReviveMeInterrupted"],
			["who", "Trevor"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "Coach"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "Coach"],
			[ChanceToFire30Percent],
			["map", "c1m1_hotel"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "Gambler"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "Gambler"],
			[ChanceToFire30Percent],
			["map", "c1m1_hotel"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "Producer"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "Biker"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "Manager"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "NamVet"],
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["subject", "TeenGirl"],
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
			["concept", "SurvivorBotYouAreWelcome"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "SurvivorBotReassureComing"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "SurvivorBotYesReady"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "SurvivorBotReassureNearby"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Trevor"],
			[IsNotSaidLeavingSafeArea],
			["map", "c1m2_streets"],
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
			["concept", "C1M2SafeRooma2"],
			["who", "Trevor"],
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
			["concept", "C1M2SafeRoomc1"],
			["who", "Trevor"],
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
			["concept", "C1M2TankerAttack2"],
			["who", "Trevor"],
			["worldwhoputcola", "Trevor"],
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
			["concept", "c1m4escape"],
			["who", "Trevor"],
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
			["concept", "c1m4escapeTrevorCheck"],
			["who", "Trevor"],
			["incapacitated", 0],
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
			["concept", "c1m4escapeTrevorCheck"],
			["who", "Trevor"],
			["incapacitated", 1],
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
			["concept", "PlayerPourStarted"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "c1m4startelevator"],
			["who", "Trevor"],
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
			["concept", "PlayerPourStarted"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			["map", "c6m3_port"],
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
			["concept", "FinaleTriggered"],
			["who", "Trevor"],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
			["towin", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["map", "c2m2_fairgrounds"],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_teamnearcoaster", 1],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			["world_auto_coasterexpo", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "_C2M2_Riders02"],
			["who", "Trevor"],
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
			["concept", "_C2M2_Riders03"],
			["who", "Trevor"],
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
			["concept", "_C2M2_Riders04"],
			["who", "Trevor"],
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
			["concept", "_C2M2_Riders06"],
			["who", "Trevor"],
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
			["concept", "_C2M2_Riders07"],
			["who", "Trevor"],
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
			["concept", "C2M1Intro_400"],
			["who", "Trevor"],
			["worldsaidleavingsafearea", 1],
			["instartarea", 1],
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
			["concept", "C2M1Intro_401"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_402"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_403"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_404"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_405"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_406"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_407"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro_408"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "c2m3downhole"],
			["who", "Trevor"],
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
			["concept", "c2m3CoasterEnd"],
			["who", "Trevor"],
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
			["concept", "C2M3CoasterRunGo"],
			["who", "Trevor"],
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
			["concept", "c2m3CoasterStart"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C2M3SafeIntro006"],
			["who", "Trevor"],
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
			["concept", "C2M3SafeIntro010"],
			["who", "Trevor"],
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
			["concept", "C2M3SeeChopper"],
			["who", "Trevor"],
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
			["concept", "PlayerSpotWeapon"],
			["weaponname", "UpgradePack_Incendiary"],
			["who", "Trevor"],
			[IsTalk],
			["incombat", 0],
			["map", "c2m3_coaster"],
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
			["concept", "PlayerSpotWeapon"],
			["weaponname", "Katana"],
			["who", "Trevor"],
			[IsTalk],
			["incombat", 0],
			["map", "c2m3_coaster"],
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
			["concept", "C2M4ButtonPressed"],
			["who", "Trevor"],
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
			["concept", "C2M4Gate004"],
			["who", "Trevor"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M4Gate000"],
			["who", "Trevor"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargate", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargatenag", 1],
			["world_auto_neargate", 1],
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
			["concept", "C2M4GateOpenCallout"],
			["who", "Trevor"],
			["incapacitated", 0],
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
			["concept", "C2M4SeeChopper"],
			["who", "Trevor"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "C2M5_Button2Yell"],
			["who", "Trevor"],
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
			["concept", "C2M5_Button2Yell"],
			["who", "Trevor"],
			["worldcoachmadatriders", 1],
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
			["concept", "C2M5_Choppercoming"],
			["who", "Trevor"],
			["incapacitated", 0],
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
			["concept", "c2m5_intro003"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro005"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro008"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro009"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro011"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro012"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro015"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro016"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro020"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro025"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro019"],
			["who", "Trevor"],
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
			["concept", "c2m5_intro024"],
			["who", "Trevor"],
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
			["concept", "C2M5_PlanWorked"],
			["who", "Trevor"],
			[NotCoachMadAtRiders],
			["incapacitated", 0],
			["incombat", 0],
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
			["concept", "C2M5_PlanWorked"],
			["who", "Trevor"],
			["worldcoachmadatriders", 1],
			["incapacitated", 0],
			["incombat", 0],
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
			["concept", "c2m5Button1"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["incombat", 0],
			["map", "c2m5_concert"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			["world_auto_c2m5inarena", 1],
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
			["concept", "C2M5Microphone"],
			["who", "Trevor"],
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
				func = Custom_Talker_Trevor.C2M5SingingMechanic,
			},
		],
	},

	{
		name = "SurvivorReloadingC2M5Trevor",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			["map", "c2m5_concert"],
			[IsRocking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			["world_auto_concertlive", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[IsRocking],
			["map", "c2m5_concert"],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["map", "c2m5_concert"],
			[IsRocking],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["world_auto_concertlive", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["map", "c2m5_concert"],
			[IsRocking],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Trevor"],
			["map", "c2m5_concert"],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkTrevor],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
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
			["concept", "C2M5Microphone"],
			["who", "Trevor"],
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
			["concept", "C3M1FerryEnd2"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkTrevor],
			[IsSubjectNear200],
			["isproduceralive", 1],
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
			["concept", "WorldC3M1FerryCrossingJ3"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingk3"],
			["who", "Trevor"],
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
			["concept", "WorldC3M1FerryCrossingL3"],
			["who", "Trevor"],
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
			["concept", "c3m2disgust"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "C3M2SafeRooma2"],
			["who", "Trevor"],
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
			["concept", "C3M2SafeRoomb3"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c3m2_parachutist"],
			[IsNotSaidc3m2_parachutist],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c3m2_parachutist"],
			[IsNotSaidc3m2_parachutist],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "InfoRemC3M2Bathtub2"],
			["who", "Trevor"],
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
			["concept", "_C3M2Pirogue2"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C3M3SafeRoom2a2"],
			["who", "Trevor"],
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
			["concept", "C3M3SafeRoom2c3"],
			["who", "Trevor"],
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
			["concept", "C3M3SafeRoom2d2"],
			["who", "Trevor"],
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
			["concept", "InfoRemC3M3Bodies2"],
			["who", "Trevor"],
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
			["concept", "InfoRemC3M3LowerGatea"],
			["who", "Trevor"],
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
			["concept", "InfoRemC3M3Unsanitarya1"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "C3M4Button1A"],
			["who", "Trevor"],
			["from", "orator"],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C3M4ButtonPickUsUp"],
			["who", "Trevor"],
			["from", "orator"],
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
			["concept", "C3M4ButtonName"],
			["who", "Trevor"],
			["from", "orator"],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Trevor"],
			["from", "orator"],
			[IsEveryoneAlive],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Trevor"],
			["from", "orator"],
			[IsEveryoneNotAlive],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C3M4Button201"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C3M4Button202"],
			["from", "orator"],
			["world_auto_talkingtrevor", 1],
			["who", "Trevor"],
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
			["concept", "C3M4Button203"],
			["who", "Trevor"],
			["from", "orator"],
			["world_auto_talkingtrevor", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkTrevor],
			["map", "c3m4_plantation"],
			["world_auto_finale", 1],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c3m4_plantation"],
			[IsNotSpeakingWeight0],
			["world_auto_finale", 1],
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
			["concept", "C3M4GateBlow01"],
			["who", "Trevor"],
			["from", "orator"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			[_auto_NotTimerLockA],
			["world_auto_timera", 1],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incombat", 0],
			[IsWorldTalkTrevor],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			["world_auto_trevorinwitchville", 1],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			["isgambleralive", 1],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalkTrevor],
			["incombat", 0],
			[IsWorldTalkTrevor],
			[IsGamblerNear400],
			[ChanceToFire10Percent],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			["world_auto_trevorinwitchville", 1],
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
			["concept", "c4m2_elevator_top_button"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "C5M1_intro002"],
			["who", "Trevor"],
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
			["concept", "C5M1_intro004"],
			["who", "Trevor"],
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
			["concept", "C5M1_intro005"],
			["who", "Trevor"],
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
			["concept", "C5M1_intro007"],
			["who", "Trevor"],
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
			["concept", "C5M1_intro008"],
			["who", "Trevor"],
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
			["concept", "C5M1_intro009"],
			["who", "Trevor"],
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
			["concept", "C5M1Flyby01"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["map", "c5m2_park"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC502Horse"],
			[IsNotSaidWorldC502Horse],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC502Horse"],
			[IsNotSaidWorldC502Horse],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502Horse3"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C5M3AlarmFieldNags01"],
			["who", "Trevor"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_inalarmfield", 1],
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
			["concept", "C5M3AlarmFieldNags03"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C5M3Bodies01"],
			["who", "Trevor"],
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
			["concept", "C5M3Bodies02"],
			["who", "Trevor"],
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
			["concept", "C5M3FirstInAlarmField"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C5M3GraveNags01"],
			["who", "Trevor"],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "_C5M3GraveSmells"],
			["who", "Trevor"],
			["incombat", 0],
			["coughing", 0],
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
			["concept", "_C5M3SmallFavors"],
			["who", "Trevor"],
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
			["concept", "c5m3Jets2"],
			["who", "Trevor"],
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
			["concept", "C5M3Jets3"],
			["who", "Trevor"],
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
			["concept", "C5M3StopZombies"],
			["who", "Trevor"],
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
			["concept", "c5m3OnBridge"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard04"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard03"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "C5M3SeeGraveyard06"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "PanicEvent"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["subject", "Trevor"],
			["panictype", "CarAlarm"],
			["world_auto_inalarmfield", 1],
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
			["concept", "PanicEvent"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotTrevor],
			["panictype", "CarAlarm"],
			[ChanceToFire25Percent],
			["world_auto_inalarmfield", 1],
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
			["concept", "PanicEvent"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotTrevor],
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
			["concept", "PanicEvent"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotTrevor],
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
			["concept", "PanicEvent"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["subject", "Trevor"],
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
			["concept", "C5M3Sniper01"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M3BeenShot"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m3crashedheli"],
			[IsNotSaidc5m3crashedheli],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m3insewer"],
			[IsNotSaidc5m3insewer],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m3manhole"],
			[IsNotSaidc5m3manhole],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m3seegraveyard"],
			[IsNotSaidc5m3seegraveyard],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m3seegraveyard"],
			[IsNotSaidc5m3seegraveyard],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotAlone],
			["world_auto_bridgebomb", 1],
			[_auto_NotTimerLockA],
			[_auto_NotOffHighway],
			[IsNotSpeakingWeight0],
			["world_auto_c5m3trevorreacted", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m3upladder"],
			[IsNotSaidc5m3upladder],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m3upsteps"],
			[IsNotSaidc5m3upsteps],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M4BombExt"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "C5M4BombInt"],
			["who", "Trevor"],
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
			["concept", "C5M4BombIntA"],
			["who", "Trevor"],
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
			["concept", "C5M4BombInt"],
			["who", "Trevor"],
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
			["concept", "C5M4BombInt"],
			["who", "Trevor"],
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
			["concept", "C5M4BombInt"],
			["who", "Trevor"],
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
			["concept", "C5M4JetPlanes"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m4alley"],
			[IsNotSaidc5m4alley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M4PoolTable"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "C5M4PoolTable"],
			["who", "Trevor"],
			["coughing", 0],
			[IssuerClose],
			["isproduceralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m4inminifinale"],
			[IsNotSaidc5m4inminifinale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c5m4seebridge"],
			[IsNotSaidc5m4seebridge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C5M4TractorNag"],
			[IsNotSaidc5m4tractornag],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C5M4Tractor"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "C5M5_Button2"],
			["who", "Trevor"],
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
			["concept", "C5M5_GateDown"],
			["who", "Trevor"],
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
			["concept", "C5M5_Button2100"],
			["who", "Trevor"],
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
			["concept", "C5M5_Button2200"],
			["who", "Trevor"],
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
			["concept", "C5M5_Button2201"],
			["who", "Trevor"],
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
			["concept", "C5M5_Button2202"],
			["who", "Trevor"],
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
			["concept", "C5M5_Button2203"],
			["who", "Trevor"],
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
			["concept", "C5M5_Button2204"],
			["who", "Trevor"],
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
			["concept", "C5M5_Button2205"],
			["who", "Trevor"],
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
			["concept", "C5M5_Button2206"],
			["who", "Trevor"],
			["isproduceralive", 1],
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
			["concept", "C5M5_SurvivorConv01"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C5M5_SurvivorConv01"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_buzzardrunmentioned", 1],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C5M5_SurvivorConv02"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C5M5_SurvivorConv03"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C5M5_SurvivorConv04"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C5M5_SurvivorConv05"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingtrevor", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockTrevor],
			["world_auto_bridgenag", 1],
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
			["concept", "C5M5Button1"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C5M5Button1"],
			["who", "Trevor"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingtrevor", 1],
			["world_auto_buzzardrunmentioned", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_soldierchatter", 1],
			[_auto_NotButton1],
			["world_auto_radionag", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_buzzardrunmentioned", 1],
			["world_auto_soldierchatter", 1],
			[_auto_NotButton1],
			["world_auto_radionag", 1],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Trevor"],
			["map", "c5m5_bridge"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "Trevor"],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkTrevor],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Tank"],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c5m5_bridge"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "C5M5BridgeDestroyed2"],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsEveryoneAlive],
			["worldc5m5survivoroutro", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C5M5_saferoom002"],
			["who", "Trevor"],
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
			["concept", "C5M5_saferoom004"],
			["who", "Trevor"],
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
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C6M1Intro_01a"],
			["who", "Trevor"],
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
			["concept", "introC6M1"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_01c"],
			["who", "Trevor"],
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
			["concept", "introC6M1"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_02a"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_11a"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_11c"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_11c"],
			["who", "Trevor"],
			["isgambleralive", 1],
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
			["concept", "C6M1Intro_12b"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_13a"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_13c"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_13f"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_23b"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_23d"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_24c"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_24e"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_ConfirmObjective"],
			["who", "Trevor"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Trevor"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Trevor"],
			[IsNotAlone],
			[NoHasFirstAidKit],
			["map", "c6m1_riverbank"],
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
			["concept", "C6M1Start2"],
			["who", "Trevor"],
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
			["concept", "C6M1Start3"],
			["who", "Trevor"],
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
			["concept", "RemWorldC6M1_WeddingWarn02"],
			["who", "Trevor"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03a"],
			["who", "Trevor"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03b"],
			["who", "Trevor"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03c"],
			["who", "Trevor"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M1_WeddingWarn03d"],
			["who", "Trevor"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C6M2_OpenGate1"],
			["who", "Trevor"],
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
			["concept", "C6M2_OpenGate1b"],
			["who", "Trevor"],
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
			["concept", "C6M2_OpenGate1"],
			["who", "Trevor"],
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
			["concept", "C6M2_OpenGate2"],
			["who", "Trevor"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Trevor"],
			[IsNotSaidLeavingSafeArea],
			["map", "c6m2_bedlam"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo02a"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo03b"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo11a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo14b"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16b"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16d"],
			["who", "Trevor"],
			["from", "Producer"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16d"],
			["who", "Trevor"],
			["from", "Coach"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo17a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo18b"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19c"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19e"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19g"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo21b"],
			["who", "Trevor"],
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
			["concept", "WorldC6M2_FinalWater01b"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "WorldC6M2_InSewer101a"],
			["who", "Trevor"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_OnTourWalk102b"],
			["who", "Trevor"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC6M2_Tattoo03b"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C6M3_BridgeDown"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "SceneCancelled"],
			["who", "Trevor"],
			["map", "c6m3_port"],
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
			["concept", "c6m3_elevator"],
			["who", "Trevor"],
			["map", "c6m3_port"],
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
			["concept", "c6m3_elevator"],
			["who", "Trevor"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "Biker"],
			["map", "c6m3_port"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_port"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_port"],
			["introactor", "zoey"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo01a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo01c"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo02e"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo03a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo03c"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo04a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo04d"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo05a"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo06b"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo07a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo07c"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08c"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08d"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08e"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08f"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo09a"],
			["who", "Trevor"],
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
			["concept", "SurvivorIncapacitated"],
			["who", "Trevor"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
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
			["concept", "CallForRescue"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c1m2_streets"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c1m3_mall"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c1m4_atrium"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c2m2_fairgrounds"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c2m3_coaster"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c2m4_barns"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c2m5_concert"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c3m2_swamp"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c3m3_shantytown"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c3m4_plantation"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c4m2_sugarmill_a"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c4m3_sugarmill_b"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c4m4_milltown_b"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c5m2_park"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c5m3_cemetery"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c5m4_quarter"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c5m5_bridge"],
			[IsACoopMode],
			[ChanceToFire10Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[IsNotSpeaking],
			["map", "c6m2_bedlam"],
			[IsACoopMode],
			[ChanceToFire20Percent],
			[IsNotSrcGrp_TREVORSTORY],
			["world_auto_storywait", 1],
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
			["concept", "C6M2TrevorStoryStart1"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			[IsNotSpeaking],
			["map", "c6m3_port"],
			[IsACoopMode],
			[IsNotInStartArea],
			[ChanceToFire20Percent],
			["worldsaidfinaleexchange", 1],
			["worldendtrevorbridgestorystart", 1],
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
			["concept", "C6M3TrevorBridgeStory1"],
			["who", "Trevor"],
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
			["concept", "C6M3TrevorBridgeStory1a"],
			["who", "Trevor"],
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
			["concept", "TrevorStoryReac01"],
			["who", "Trevor"],
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
			["concept", "TrevorStoryReac01"],
			["who", "Trevor"],
			["map", "c1m4_atrium"],
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
			["concept", "c6m3_outro3"],
			["who", "Trevor"],
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
				func = Custom_Talker_Trevor.c6m3_outroMechanic,
			},
		],
	},

	{
		name = "c6m3_outroZoeyOutroTrevor",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "Trevor"],
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
				func = Custom_Talker_Trevor.c6m3_outroZoeyOutroMechanic,
				followup = RThen("gambler", "c6m3_outroL4D1011a", null, 0.1),
			},
		],
	},

	{
		name = "c6m3_outroRochelleOutroTrevor",
		criteria = 
		[
			["concept", "c6m3_outroL4D1012a"],
			["who", "Trevor"],
			["incapacitated", 0],
			["from", "Producer"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotPickedUpFirstAidKit],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "Adrenaline"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			["weaponname", "Adrenaline"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "Trevor"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
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
			["concept", "PlayerSpotAmmo"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "Defibrillator"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			["weaponname", "Defibrillator"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerFar400],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "PipeBomb"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			["weaponname", "PipeBomb"],
			[IsWorldTalkTrevor],
			["hasgrenade", 1],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "GrenadeLauncher"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			["weaponname", "GrenadeLauncher"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "FirstAidKit"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			["weaponname", "FirstAidKit"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "Molotov"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			["weaponname", "Molotov"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "PainPills"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerFar400],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Explosive"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Explosive"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Incendiary"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Incendiary"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			[IsNotSaidArmoredWarn],
			["map", "c5m1_waterfront"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			["map", "c1m2_streets"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			[IsNotSaidCedaWarn],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			[IsNotSaidClownWarn],
			["map", "c2m2_fairgrounds"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerIncoming"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "jimmy"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			[IsNotSaidMudmenWarn],
			["map", "c3m2_swamp"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["incombatmusic", 0],
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
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["incombatmusic", 1],
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
			["concept", "Fault"],
			["faultname", "FriendlyFire"],
			["who", "Trevor"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeExplosive],
			["onthirdstrike", 1],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["subject", "Coach"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["subject", "Coach"],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["subject", "Gambler"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["subject", "Producer"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["subject", "Producer"],
			[ChanceToFire50Percent],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			["incapacitated", 0],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Coach"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Gambler"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkTrevor],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Producer"],
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
			["concept", "SurvivorBotMovingToReviveFriend"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["incombat", 0],
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
			["concept", "PlayerToTheRescue"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerTaunt"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			[ChanceToFire40Percent],
			["team", "Survivor"],
			["map", "c4m1_milltown_a"],
			["worldsaidc4m1_nogas", 1],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incombat", 0],
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
			["concept", "TLK_IDLE"],
			[ChanceToFire60Percent],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_trevorincane", 1],
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
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "Trevor"],
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
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "Trevor"],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			["map", "c5m2_park"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			["world_auto_alarm", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerExertionMinor"],
			["who", "Trevor"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
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
			["concept", "PlayerExertionMinor"],
			["who", "Trevor"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
			[IsTalkTrevor],
			["map", "c6m1_riverbank"],
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
			["concept", "Fault"],
			["who", "Trevor"],
			["faultname", "WitchHarassment"],
			["map", "c6m1_riverbank"],
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
			["concept", "Fault"],
			["who", "Trevor"],
			["faultname", "WitchHarassment"],
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
			["concept", "WitchStartAttack"],
			["who", "Trevor"],
			["witch_aggro_on", "Trevor"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Critical"],
			["who", "Trevor"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			[IsNotSpeaking],
			["painlevel", "Incapacitated"],
			["who", "Trevor"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedTrevor],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Trevor"],
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Trevor"],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			["incombatmusic", 0],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			[IsNotZombiePresentTank],
			["incombatmusic", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Trevor"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkTrevor],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkTrevor],
			["map", "c4m2_sugarmill_a"],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			["world_auto_trevorinwitchville", 1],
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
			["concept", "PlayerHelp"],
			["who", "Trevor"],
			["coughing", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			["incapacitated", 1],
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
			["concept", "PlayerHelp"],
			["who", "Trevor"],
			["coughing", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			["incapacitated", 1],
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
			["concept", "PlayerHelp"],
			["who", "Trevor"],
			["coughing", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsIncappedLethargic],
			["incapacitated", 1],
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
			["concept", "C2M1DoneFalling"],
			["who", "Trevor"],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["coughing", 0],
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
			["concept", "C2M1DoneFalling"],
			["who", "Trevor"],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "C2M1Falling"],
			["who", "Trevor"],
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
			["concept", "c2m2CarouselEnd"],
			["who", "Trevor"],
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
			["concept", "c2m2CarouselStart"],
			["who", "Trevor"],
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
			["concept", "C3M3BridgeButton"],
			[IsNotSaidC3M3BridgeButton],
			["who", "Trevor"],
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
			["concept", "EndOfWavWindow5"],
			["who", "Trevor"],
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
			["concept", "ChainsawUsed"],
			[IsNotSaidChainSawUsed],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M1AroundFire"],
			[IsNotSaidC1M1AroundFire],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M1OverTable"],
			[IsNotSaidC1M1OverTable],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M1SearchRooms"],
			[IsNotSaidC1M1SearchRooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M1ThroughThisDoor"],
			[IsNotSaidC1M1ThroughThisDoor],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "RemarkWorldC1M2SpotGunStore"],
			[IsNotSaidRemarkWorldC1M2SpotGunStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3AlarmDoors"],
			[IsNotSaidC1M3AlarmDoors],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3CarefulWindows"],
			[IsNotSaidC1M3CarefulWindows],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3CEDAGone"],
			[IsNotSaidC1M3CEDAGone],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3DownHere"],
			[IsNotSaidC1M3DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3DownHere2"],
			[IsNotSaidC1M3DownHere2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3DownTheEscalator"],
			[IsNotSaidC1M3DownTheEscalator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3OverHere"],
			[IsNotSaidC1M3OverHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3SearchRooms"],
			[IsNotSaidC1M3SearchRooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3ThisWay"],
			[IsNotSaidC1M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3ThroughHere"],
			[IsNotSaidC1M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3TurnOffAlarm1"],
			[IsNotSaidC1M3TurnOffAlarm1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3TurnOffAlarm2"],
			[IsNotSaidC1M3TurnOffAlarm2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3TurnOffAlarm3"],
			[IsNotSaidC1M3TurnOffAlarm3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3UpEscalator1"],
			[IsNotSaidC1M3UpEscalator1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3UpEscalator2"],
			[IsNotSaidC1M3UpEscalator2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C1M3UpEscalator3"],
			[IsNotSaidC1M3UpEscalator3],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_busblock"],
			[IsNotSaidc2m1_busblock],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_checkrooms"],
			[IsNotSaidc2m1_checkrooms],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_cliff"],
			[IsNotSaidc2m1_cliff],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_downstairs"],
			[IsNotSaidc2m1_downstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_motelsign"],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_motelsign"],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_offramp"],
			[IsNotSaidc2m1_offramp],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_park"],
			[IsNotSaidc2m1_park],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_pool"],
			[IsNotSaidc2m1_pool],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_searchlights"],
			[IsNotSaidc2m1_searchlights],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_throughhere"],
			[IsNotSaidc2m1_throughhere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_throughmotel"],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_throughwindow"],
			[IsNotSaidc2m1_throughwindow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_uphill"],
			[IsNotSaidc2m1_uphill],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m1_upstairs"],
			[IsNotSaidc2m1_upstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m2_cottoncandy"],
			[IsNotSaidc2m2_cottoncandy],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m2_cottoncandy2"],
			[IsNotSaidc2m2_cottoncandy],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m2_entrancesign"],
			[IsNotSaidc2m2_entrancesign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_C2M2_CottonCandy01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m2_kiddieland"],
			[IsNotSaidc2m2_kiddieland],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m2_topofslide"],
			[IsNotSaidc2m2_topofslide],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_coasteroff"],
			[IsNotSaidc2m3_coasteroff],
			["coughing", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_coollight"],
			[IsNotSaidc2m3_coollight],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_coollight"],
			[IsNotSaidc2m3_coollight],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_hole"],
			[IsNotSaidc2m3_hole],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_overfence"],
			[IsNotSaidc2m3_overfence],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_screamingoak"],
			[IsNotSaidc2m3_screamingoak],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_swanpileup"],
			[IsNotSaidc2m3_swanpileup],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_swanroom"],
			[IsNotSaidc2m3_swanroom],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_tracks01"],
			[IsNotSaidc2m3_tracks01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_tracks02"],
			[IsNotSaidc2m3_tracks02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_tracks03"],
			[IsNotSaidc2m3_tracks03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_tracks04"],
			[IsNotSaidc2m3_tracks04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_tracks05"],
			[IsNotSaidc2m3_tracks05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_tracks06"],
			[IsNotSaidc2m3_tracks06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_tracks07"],
			[IsNotSaidc2m3_tracks07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_tracks08"],
			[IsNotSaidc2m3_tracks08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_vent"],
			[IsNotSaidc2m3_vent],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_water"],
			[IsNotSaidc2m3_water],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_water"],
			[IsNotSaidc2m3_water],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m3_wayblocked"],
			[IsNotSaidc2m3_wayblocked],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m4_barnentry"],
			[IsNotSaidc2m4_barnentry],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m4_bumpercars"],
			[IsNotSaidc2m4_bumpercars],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m4_pendoor"],
			[IsNotSaidc2m4_pendoor],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m4_moustachio"],
			[IsNotSaidc2m4_moustachio],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m4_stadium"],
			[IsNotSaidc2m4_stadium],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m4_upbarn"],
			[IsNotSaidc2m4_upbarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c2m5_button2"],
			[IsNotSaidc2m5_button2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3BridgeDown"],
			[IsNotSaidC3M3BridgeDown],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			["worldsaidc3m3bridgebutton", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M1NoSwimming"],
			[IsNotSaidC3M1NoSwimming],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c3m2_parachutist"],
			[IsNotSaidc3m2_parachutist],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M2OverTree"],
			[IsNotSaidC3M2OverTree],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M2PlaneCrash"],
			[IsNotSaidC3M2PlaneCrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M2PlaneDoorNag"],
			[IsNotSaidC3M2PlaneDoorNag],
			["coughing", 0],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["worldsaidc3m2planedoornag", 1],
			[IsNotSaidC3M2OpenDoor],
			["map", "c3m2_swamp"],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M2Road"],
			[IsNotSaidC3M2Road],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Trevor"],
			[IsNotSaidLeavingSafeArea],
			["map", "c3m2_swamp"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M2StartDry"],
			[IsNotSaidC3M2StartDry],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M2UnderWaterShack"],
			[IsNotSaidC3M2UnderWaterShack],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_c3m2underwatershack"],
			["who", "Trevor"],
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
				func = Custom_Talker_Trevor._C3M2UnderwaterShackMechanic,
			},
		],
	},

	{
		name = "PlayerRemarkC3M2Village1Trevor",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M2Village1"],
			[IsNotSaidC3M2Village1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3LowerGate"],
			[IsNotSaidC3M3BridgeButton],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3SearchHouses"],
			[IsNotSaidC3M3SearchHouses],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3Stairs"],
			[IsNotSaidC3M3Stairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3StayUpHere"],
			[IsNotSaidC3M3StayUpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3StayUpHere"],
			[IsNotSaidC3M3StayUpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3ThroughHere"],
			[IsNotSaidC3M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3ThroughThisHouse"],
			[IsNotSaidC3M3ThroughThisHouse],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3UpHere"],
			[IsNotSaidC3M3UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3UsePlanks"],
			[IsNotSaidC3M3UsePlanks],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3UsePlanks"],
			[IsNotSaidC3M3UsePlanks],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c3m4downroad"],
			[IsNotSaidc3m4downroad],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c3m4radio"],
			[IsNotSaidc3m4radio],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_C3M4_Radio"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c3m4scaffold"],
			[IsNotSaidc3m4scaffold],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c3m4shacks"],
			[IsNotSaidc3m4shacks],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m1_garagesale"],
			[IsNotSaidc4m1_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m1_nogas"],
			[IsNotSaidc4m1_nogas],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m1_throughhereA"],
			[IsNotSaidc4m1_throughhereA],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_gasinsidesign"],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_millentrance"],
			[IsNotSaidc4m2_millentrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_millentranceexit"],
			[IsNotSaidc4m2_millentranceexit],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_seegasstation"],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_streetblocked"],
			[IsNotSaidc4m2_streetblocked],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_upramp"],
			[IsNotSaidc4m2_upramp],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_upthestairs"],
			[IsNotSaidc4m2_upthestairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_useelevator"],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear300],
			["worldsaidc4m2_seegasstation", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_waterpool"],
			[IsNotSaidc4m2_waterpool],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m2_weather"],
			[IsNotSaidc4m2_weather],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_cane"],
			[IsNotSaidc4m3_cane],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_crosshere"],
			[IsNotSaidc4m3_crosshere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_downhere"],
			[IsNotSaidc4m3_downhere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_downstairs"],
			[IsNotSaidc4m3_downstairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_ducatelsign"],
			[IsNotSaidc4m3_ducatelsign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_elevator"],
			[IsNotSaidc4m3_elevator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_overtank"],
			[IsNotSaidc4m3_overtank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_rain"],
			[IsNotSaidc4m3_rain],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_thisway"],
			[IsNotSaidc4m3_thisway],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m3_uppipes"],
			[IsNotSaidc4m3_uppipes],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m4_garagesale"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m4_garagesale2"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m4_playground"],
			[IsNotSaidc4m4_playground],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m4_porchlight"],
			[IsNotSaidc4m4_porchlight],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m4_truckwreck"],
			[IsNotSaidc4m4_truckwreck],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m4_useroofs"],
			[IsNotSaidc4m4_useroofs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "pathc2m1_billboard"],
			[IsNotSaidpathc2m1_billboard],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "remark_caralarm"],
			[IsNotSaidremark_caralarm],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M1CedaMaps"],
			[IsNotSaidWorldC1M1CedaMaps],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M1DownHere"],
			[IsNotSaidWorldC1M1DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M1DownStairs"],
			[IsNotSaidWorldC1M1DownStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M1ElevatorBroken"],
			[IsNotSaidWorldC1M1ElevatorBroken],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M1FireSpreading"],
			[IsNotSaidWorldC1M1FireSpreading],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M1First"],
			[IsNotSaidWorldC1M1First],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M1Ledge"],
			[IsNotSaidWorldC1M1Ledge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M1StairsSign"],
			[IsNotSaidWorldC1M1StairsSign],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2Close"],
			[IsNotSaidWorldC1M2Close],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2DownStairs"],
			[IsNotSaidWorldC1M2DownStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2Abandoned"],
			[IsNotSaidWorldC1M2Abandoned],
			["coughing", 0],
			["incombat", 0],
			["intensity", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2Dumpster"],
			[IsNotSaidWorldC1M2Dumpster],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2GunStoreClose"],
			[IsNotSaidWorldC1M2GunStoreClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2InHere"],
			[IsNotSaidWorldC1M2InHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2JumpTruck"],
			[IsNotSaidWorldC1M2JumpTruck],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2MallSignHere"],
			[IsNotSaidWorldC1M2MallSignHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2MallThisWay"],
			[IsNotSaidWorldC1M2MallThisWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC1M2UpStairs"],
			[IsNotSaidWorldC1M2UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1AmmoUp"],
			[IsNotSaidWorldC3M1AmmoUp],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1CheckingHouses"],
			[IsNotSaidWorldC3M1CheckingHouses],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1FeedGator"],
			[IsNotSaidWorldC3M1FeedGator],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkTrevor],
			[IsSubjectNear200],
			["iscoachalive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkTrevor],
			[IsSubjectNear200],
			["isgambleralive", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1FerryNag"],
			[IsNotSaidWorldC3M1FerryNag],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_C3M1CrazyMilitants"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["worldsaidworldc3m1ferrynag", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1WeShouldGetBackUp"],
			[IsNotSaidWorldC3M1WeShouldGetBackUp],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1Litter"],
			[IsNotSaidWorldC3M1Litter],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1Litter"],
			[IsNotSaidWorldC3M1Litter],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1Path01"],
			[IsNotSaidWorldC3M1Path01],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1PlanksRight"],
			[IsNotSaidWorldC3M1PlanksRight],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1Stairs"],
			[IsNotSaidWorldC3M1Stairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1StayOn"],
			[IsNotSaidWorldC3M1StayOn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1Walkways"],
			[IsNotSaidWorldC3M1Walkways],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC3M1WhichWay"],
			[IsNotSaidWorldC3M1WhichWay],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502AlarmButton"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "WorldC502AlarmStopped"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "WorldC502AlarmStopped2"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC502Alley"],
			[IsNotSaidWorldC502Alley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC502BusStory"],
			[IsNotSaidWorldC502BusStory],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC502BusStory"],
			[IsNotSaidWorldC502BusStory],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502BusStory2b"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "WorldC502BusStory2c"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "WorldC502NotZombies2"],
			["who", "Trevor"],
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
			["concept", "WorldC502AlarmButtonRun"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "WorldSignReportUnusual2"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502OfficialInstructions"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502QuaratineZone"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC502Smell"],
			[IsNotSaidWorldC502Smell],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC502Smell"],
			[IsNotSaidWorldC502Smell],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502Smell2"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldC502SmellBath2"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_IntoThePark2"],
			[IsNotSaidWorldC6M1_IntoThePark2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			["introactor", "zoey"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			["zombiepresentwitch", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_InSewer2"],
			[IsNotSaidWorldC6M2_InSewer2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			["worldsaidworldc6m2_insewer1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "C2M1Falling"],
			["who", "Trevor"],
			["map", "c6m2_bedlam"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_OnTourWalk3"],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			[ExtraWeight10],
			[ChanceToFire10Percent],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M3_Bill"],
			["coughing", 0],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c6m3_port"],
			[IsNotSmartLookAuto],
			["subject", "None"],
			[IsManagerNear500],
			[IsWorldTalkTrevor],
			["world_auto_c6m3bill", 1],
			["world_auto_trevorc6m3bill", 1],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c6m3_port"],
			[IsNotSmartLookAuto],
			["subject", "None"],
			[IsManagerNear500],
			[IsWorldTalkTrevor],
			["world_auto_c6m3bill", 1],
			["world_auto_trevorc6m3bill", 1],
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
			["concept", "c6m3_loss"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "c6m3_loss2"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldSignColdBeer"],
			[IsNotSaidWorldSignColdBeer],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignPhotography2"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignReportSick2"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldSignC5AlarmWillSound"],
			[IsNotSaidWorldSignC5AlarmWillSound],
			["coughing", 0],
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
			["concept", "WorldSignC5AlarmWillSound3"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "WorldSignC5AlarmWillSound3d"],
			["who", "Trevor"],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "RespondAffirmative"],
			[IssuerMediumClose],
			["coughing", 0],
			["incombat", 0],
			["who", "Trevor"],
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
			["concept", "PlayerFollowMe"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHelp"],
			["who", "Trevor"],
			["coughing", 0],
			[IsTalk],
			["incapacitated", 0],
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
			["concept", "PlayerHurryUp"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHurryUp"],
			["who", "Trevor"],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSafeSpotAhead],
			["map", "c4m2_sugarmill_a"],
			[IsNotZombiePresentTank],
			[IsWorldTalkTrevor],
			["world_auto_trevorinwitchville", 1],
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
			["concept", "PlayerKillThatLight"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerLeadOn"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerMoveOn"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerWatchOutBehind"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerAskReady"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerImWithYou"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerLaugh"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerLostCall"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerNiceJob"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerAnswerLostCall"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerSorry"],
			["coughing", 0],
			[IsNotShotTeammateTrevor],
			["who", "Trevor"],
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
			["concept", "PlayerSorry"],
			["coughing", 0],
			["worldshotteammatetrevor", 1],
			["who", "Trevor"],
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
			["concept", "PlayerThanks"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerYellRun"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerYes"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["from", "Coach"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["from", "Coach"],
			[ChanceToFire30Percent],
			[IsWorldTalkTrevor],
			[TimeSinceGroupInCombat05],
			["map", "c1m1_hotel"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["from", "Gambler"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["from", "Gambler"],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["from", "Producer"],
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
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["from", "Producer"],
			[ChanceToFire30Percent],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			["inbattlefield", 1],
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
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			["instartarea", 1],
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
			["concept", "PlayerNegative"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PanicEvent"],
			["who", "Trevor"],
			["coughing", 0],
			[SubjectIsNotTrevor],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkTrevor],
			["panictype", "CarAlarm"],
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
			["concept", "PanicEvent"],
			["who", "Trevor"],
			["coughing", 0],
			["subject", "Trevor"],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkTrevor],
			["panictype", "CarAlarm"],
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
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardTank"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHurrah"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerWarnCareful"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsL4D1Alive],
			["map", "c6m3_port"],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["towin", 20],
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
			["concept", "GasPour20More"],
			["who", "Trevor"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["towin", 10],
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
			["concept", "GasPour10More"],
			["who", "Trevor"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["towin", 1],
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
			["concept", "GasPour1More"],
			["who", "Trevor"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["towin", 2],
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
			["concept", "GasPour2More"],
			["who", "Trevor"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["towin", 3],
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
			["concept", "GasPour3More"],
			["who", "Trevor"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["towin", 5],
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
			["concept", "GasPour5More"],
			["who", "Trevor"],
			["speaking", 1],
			["world_auto_gascountok", 1],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["gamemode", "scavenge"],
			["towin", 0],
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
			["concept", "PlayerPourStarted"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["gamemode", "scavenge"],
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
			["concept", "PlayerPourStarted"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["gamemode", "scavenge"],
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
			["concept", "PlayerPourStarted"],
			["who", "Trevor"],
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
			["concept", "PlayerEquippedScavengeItem"],
			["who", "Trevor"],
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
			["concept", "PlayerShotGasCan"],
			["who", "Trevor"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["gamemode", "scavenge"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c1m4_atrium"],
			["gamemode", "scavenge"],
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
			["concept", "commentjockey"],
			["who", "Trevor"],
			[IssuerCloseEnough],
			["incapacitated", 0],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedTrevor],
			["beingjockeyed", 0],
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
			["concept", "commentjockey"],
			["who", "Trevor"],
			[IssuerCloseEnough],
			["incapacitated", 0],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			[ChanceToFire25Percent],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedTrevor],
			["beingjockeyed", 0],
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
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c4m2_sugarmill_a"],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotComplainBlock],
			["iscoachalive", 1],
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
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "AlertGiveItemStopFirstAidA"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "BashWithItem"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["item", "FirstAidKit"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Coach"],
			[IsNotSaidCoachPounced],
			["who", "Trevor"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Coach"],
			[IsNotSaidCoachPounced],
			["who", "Trevor"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Gambler"],
			[IsNotSaidGamblerPounced],
			["who", "Trevor"],
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
			["concept", "EatPills"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Gambler"],
			[IsNotSaidGamblerPounced],
			["who", "Trevor"],
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
			["concept", "PlayerGetInsideCheckPoint"],
			["coughing", 0],
			["who", "Trevor"],
			["insafespot", 1],
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
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "Trevor"],
			["insafespot", 1],
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
			["concept", "PlayerGetInsideCheckPoint"],
			["map", "c2m2_fairgrounds"],
			["coughing", 0],
			["who", "Trevor"],
			["insafespot", 1],
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
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["grenadetype", "Molotov"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["grenadetype", "Molotov"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["grenadetype", "PipeBomb"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["grenadetype", "VomitJar"],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["grenadetype", "VomitJar"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["grenadetype", "VomitJar"],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerIncapacitated"],
			["who", "Trevor"],
			["map", "c1m2_streets"],
			["worldc1m2alarmsetoff", 2],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkTrevor],
			[IsUsingFirearm],
			[IsSubjectFar300],
			["map", "c1m1_hotel"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkTrevor],
			["activeweapon", "Melee"],
			["map", "c1m1_hotel"],
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
			["concept", "KillSteal"],
			["coughing", 0],
			["who", "Trevor"],
			[IssuerReallyClose],
			["worldtrevoralsowarn", 1],
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
			["concept", "InsistMine"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Spitter"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Spitter"],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c1m2_streets"],
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
			["concept", "KilledZombie"],
			["who", "Trevor"],
			["subjectisa", "Witch"],
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
			["concept", "KilledZombie"],
			["who", "Trevor"],
			["subjectisa", "Witch"],
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
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			["insafespot", 1],
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
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			["insafespot", 1],
			[IsNotAlone],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "Trevor"],
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "Trevor"],
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
			["concept", "RevivedByDefibrillator"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			[IsNotSuggestedHealth],
			["hasfirstaidkit", 1],
			["who", "Trevor"],
			["beinghealed", 0],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Trevor"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Trevor"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Trevor"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Coach"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Trevor"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Gambler"],
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
			["concept", "PlayerSuggestHealth"],
			["who", "Trevor"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Producer"],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c1m2_streets"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c1m2_streets"],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c1m3_mall"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c2m1_highway"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c5m4_quarter"],
			[IsNotAlone],
			["numberofteamdead", 0],
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
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
			["concept", "PlayerUsingDefibrillator"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardCharger],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardHunter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardJockey],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardJockey],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardCharger],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardHunter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Trevor"],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			["incombat", 0],
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Trevor"],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			["incombat", 0],
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
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "Player.C1WorseThanZombies"],
			["who", "Trevor"],
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
			["concept", "PlayerWarnMegaMob"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "WitchGettingAngry"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "introC3M1"],
			["who", "Trevor"],
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
			["concept", "introC5M1"],
			["who", "Trevor"],
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
			["concept", "PlayerVomitInFace"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "SurvivorCoughing"],
			["coughing", 1],
			["who", "Trevor"],
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
			["concept", "PlayerDeath"],
			["coughing", 1],
			["who", "Trevor"],
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
			["concept", "PlayerDeath"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkTrevor],
			["incapacitated", 0],
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
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkTrevor],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			["incapacitated", 0],
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
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c1m2_streets"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c1m3_mall"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c2m1_highway"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c2m2_fairgrounds"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c2m3_coaster"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c2m4_barns"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c3m1_plankcountry"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c3m2_swamp"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C3M3SafeHouseAhead"],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c4m1_milltown_a"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c4m2_sugarmill_a"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c4m3_sugarmill_b"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c4m4_milltown_b"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c5m2_park"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c5m3_cemetery"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c5m4_quarter"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c6m1_riverbank"],
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c6m2_bedlam"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c2m5_concert"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c3m4_plantation"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c4m5_milltown_escape"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c5m5_bridge"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c6m3_port"],
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
			["concept", "ScreamWhilePounced"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerGroundPoundedByTank"],
			["who", "Trevor"],
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
			["concept", "PlayerBackUp"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "PlayerEmphaticGo"],
			["who", "Trevor"],
			["coughing", 0],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Trevor"],
			["onthirdstrike", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerThisWay"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerWaitHere"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerLedgeHangEnd"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerLedgeHangMiddle"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerLedgeHangStart"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Trevor"],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Trevor"],
			[IsEveryoneAlive],
			[IsNotSaidSomeoneDied],
			["map", "c1m1_hotel"],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Trevor"],
			["numberofteamalive", 2],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsClosestSurvivorNear400],
			["numberofteamalive", 3],
			["incapacitated", 0],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["isproduceralive", 1],
			[IsProducerNear400],
			["numberofteamalive", 3],
			[ChanceToFire100Percent],
			["incapacitated", 0],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["worldsaidfaultfriendlyfire", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfirecoach", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfiregambler", 1],
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["worldsaidfaultfriendlyfire", 1],
			["worldsaidfaultfriendlyfireproducer", 1],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itempickedup", "SMG"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itempickedup", "PumpShotgun"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itempickedup", "Shotgun_Chrome"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itempickedup", "Smg_mp5"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
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
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSaidDeployUpgradePack_Explosive],
			["activeweapon", "UpgradePack_Explosive"],
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
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotSaidDeployUpgradePack_Incendiary],
			["activeweapon", "UpgradePack_Incendiary"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Adrenaline"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "AutoShotgun"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Shotgun_Spas"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "baseball_bat"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "shovel"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "chainsaw"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Knife"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "cricket_bat"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Pitchfork"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "CrowBar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Defibrillator"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "electric_guitar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "FireAxe"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "FirstAidKit"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidPickupFirstSMG],
			["worldsaidc1m1opendoor", 1],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "frying_pan"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "GolfClub"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "GrenadeLauncher"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "HuntingRifle"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Sniper_Military"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Sniper_scout"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Sniper_awp"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "IncendiaryAmmo"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Katana"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 0],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "m60"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Machete"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Magnum"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Molotov"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "PainPills"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "PipeBomb"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "PumpShotgun"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Shotgun_Chrome"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Rifle"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Rifle_Desert"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Rifle_AK47"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Rifle_sg552"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "SecondPistol"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "SMG"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Smg_silenced"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "Smg_mp5"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "tonfa"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "ExplosiveAmmo"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "UpgradePack_Explosive"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "UpgradePack_Incendiary"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "VomitJar"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "VomitJar"],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "Trevor"],
			["worldtrevorcrying", 1],
			["from", "Producer"],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["incombatmusic", 0],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["incombatmusic", 0],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["incombatmusic", 1],
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incombatmusic", 0],
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
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["incombatmusic", 0],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Trevor"],
			["incombatmusic", 1],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Trevor"],
			["incombatmusic", 1],
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Trevor"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
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
			["concept", "_C1M1_ElevatorHello"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello02c"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello03a"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello03e"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello03d"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello05b"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello05c"],
			["who", "Trevor"],
			["from", "Producer"],
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
			["concept", "_C1M1_ElevatorHello05c"],
			["who", "Trevor"],
			["from", "Coach"],
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
			["concept", "_C1M1_ElevatorHello05c"],
			["who", "Trevor"],
			["from", "Gambler"],
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
			["concept", "_C1M1_ElevatorHello07b"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello07d"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello07f"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello08a"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello08c"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello08e"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello09a"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello12a"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello13a"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator2"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator2a"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator2b"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator2c"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator3"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator3b"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator3c"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator3d"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator3e"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator5a"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator5a1"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevator5b"],
			["who", "Trevor"],
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
			["concept", "_c1m4startelevatorLast"],
			["who", "Trevor"],
			["worldelevatortimer", 1],
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
			["concept", "_c1m4startelevatorLast"],
			["who", "Trevor"],
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
			["concept", "_c2m1_searchlights01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_c2m1_searchlights04"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_C2M2_Bathroom01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_C2M2_CaroStart03"],
			["who", "Trevor"],
			["incapacitated", 0],
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
			["concept", "_C2M2_CaroStart04"],
			["who", "Trevor"],
			["incapacitated", 0],
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
			["concept", "_C2M2_Kiddie03"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_C2M2_Peanut01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_C2M2_Slide01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_C2M2_ThisTall02"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_C2M2_ThisTall02"],
			["who", "Trevor"],
			["incombat", 0],
			[IssuerClose],
			["from", "Gambler"],
			["worldtrevortalljoke", 1],
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
			["concept", "_C2M2_LikeTaters"],
			["who", "Trevor"],
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
			["concept", "_C2M2_Kiddie06"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_c2m3_cement01"],
			["who", "Trevor"],
			["incombat", 0],
			["incapacitated", 0],
			["coughing", 0],
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
			["concept", "_c2m3_coaster01"],
			["who", "Trevor"],
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
			["concept", "_c2m3_coaster03"],
			["who", "Trevor"],
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
			["concept", "_c2m3_coaster06"],
			["who", "Trevor"],
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
			["concept", "_c2m3_coaster07"],
			["who", "Trevor"],
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
			["concept", "_c2m3_coaster08"],
			["who", "Trevor"],
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
			["concept", "_c2m3_coollight01"],
			["who", "Trevor"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "_c2m3_howcool"],
			["who", "Trevor"],
			[ChanceToFire50Percent],
			["incombat", 0],
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
			["concept", "_C2M4_GateOpen001"],
			["who", "Trevor"],
			["incapacitated", 0],
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
			["concept", "_C4_BigStormHits01"],
			["who", "Trevor"],
			[_auto_NotC4TrevorInCover],
			["world_auto_timera", 1],
			["from", "orator"],
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
			["concept", "_C4_BigStormHits02"],
			["who", "Trevor"],
			["coughing", 0],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "_c4m1_rainresponse"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "introC4M1"],
			["who", "Trevor"],
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
			["concept", "_c4m1Intro05"],
			["who", "Trevor"],
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
			["concept", "_c4m1Intro07"],
			["who", "Trevor"],
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
			["concept", "_c4m1Intro08"],
			["who", "Trevor"],
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
			["concept", "_c4m1Intro12"],
			["who", "Trevor"],
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
			["concept", "_c4m1Intro16"],
			["who", "Trevor"],
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
			["concept", "_c4m2_caneyell01"],
			["who", "Trevor"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_trevorincane", 1],
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
			["concept", "_c4m2_ElevatorHere01"],
			["who", "Trevor"],
			["incapacitated", 0],
			["coughing", 0],
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
			["concept", "_c4m2_gasinside01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_c4m2_seestation01"],
			["who", "Trevor"],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			["incombat", 0],
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
			["concept", "_c4m2_seestation02"],
			["who", "Trevor"],
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
			["concept", "_c4m2_seestation02"],
			["who", "Trevor"],
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
			["concept", "_c4m2_streetblocked01"],
			["who", "Trevor"],
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
			["concept", "_c4m2_streetblocked01"],
			["who", "Trevor"],
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
			["concept", "_c4m2_streetblocked02"],
			["who", "Trevor"],
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
			["concept", "_c4m2_waterpool01"],
			["who", "Trevor"],
			[IsSubjectDistNear400],
			["incombat", 0],
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
			["concept", "_c4m2_Witchville05"],
			["who", "Trevor"],
			[IssuerClose],
			["incombat", 0],
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
			["concept", "_c4m3_rain02"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "_c4m3_startsafe02"],
			["who", "Trevor"],
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
			["concept", "_c4m3_startsafe03"],
			["who", "Trevor"],
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
			["concept", "_C4M4_FLOODED01"],
			["who", "Trevor"],
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
			["concept", "_C4M4_garagesale01"],
			["who", "Trevor"],
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
			["concept", "_C4M5_BoatComing01"],
			["who", "Trevor"],
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
			["concept", "_C4M5_Intro03"],
			["who", "Trevor"],
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
			["concept", "_C4M5_Intro04"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "c4m5_burgertank"],
			[IsNotSaidc4m5_burgertank],
			["coughing", 0],
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
			["concept", "_introc1m1"],
			["who", "Trevor"],
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
			["concept", "_introc1m1"],
			["who", "Trevor"],
			["numberofteamalive", 1],
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
			["concept", "_introc1m1"],
			["who", "Trevor"],
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
			["concept", "_introc1m1MovieIntro"],
			["who", "Trevor"],
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
			["concept", "_introc1m1a04"],
			["who", "Trevor"],
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
			["concept", "_introc1m1a05"],
			["who", "Trevor"],
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
			["concept", "_introc1m1b02"],
			["who", "Trevor"],
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
			["concept", "_introc1m1b03"],
			["who", "Trevor"],
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
			["concept", "_introc1m1last"],
			["who", "Trevor"],
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
			["concept", "_introc1m1last"],
			["who", "Trevor"],
			["from", "Coach"],
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
			["concept", "_introc1m1b05"],
			["who", "Trevor"],
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
			["concept", "_introc1m1b06"],
			["who", "Trevor"],
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
			["concept", "_introc1m1b08"],
			["who", "Trevor"],
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
			["concept", "_introc1m1firealert"],
			["who", "Trevor"],
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
			["concept", "BlankTesto"],
			["who", "Trevor"],
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
			["concept", "c1m1_elevator_door_open2"],
			["who", "Trevor"],
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
			["concept", "c1m1_elevator_ready2"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello2AliveName1"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello2AliveName2"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello2AliveExtra1"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello2AliveExtra2"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3AliveName1"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3AliveName1"],
			["from", "Producer"],
			[ChanceToFire100Percent],
			["worldrochelleelevatorintro", 1],
			[IsNotTrevorIntroduced],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["from", "Producer"],
			["worldrochelleelevatorintro", 1],
			[ChanceToFire100Percent],
			[IsNotTrevorIntroduced],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3WhoIsDead"],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsProducerNotAlive],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsCoachNotAlive],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsGamblerNotAlive],
			["who", "Trevor"],
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			["who", "Trevor"],
			["iscoachalive", 1],
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
			["concept", "C1M1Cough"],
			["who", "Trevor"],
			["map", "c1m1_hotel"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C1M2SafeRooma4"],
			["who", "Trevor"],
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
			["concept", "C1M2SafeRooma3"],
			["who", "Trevor"],
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
			["concept", "C1M3AlarmOffa"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C1M3SafeRoom2e"],
			["who", "Trevor"],
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
			["concept", "C1M4NearFinale03c"],
			["who", "Trevor"],
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
			["concept", "c1m4jimmyidea"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "C1M4SafeRoom2a1"],
			["who", "Trevor"],
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
			["concept", "C1M4SafeRoom2b1"],
			["who", "Trevor"],
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
			["concept", "C1M4SafeRoom2b3"],
			["who", "Trevor"],
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
			["concept", "C1M4SafeRoom2b4"],
			["who", "Trevor"],
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
			["concept", "C1M4SafeRoom2a5"],
			["who", "Trevor"],
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
			["concept", "C1M4SafeRoom2c1"],
			["who", "Trevor"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["map", "c1m4_atrium"],
			["who", "Trevor"],
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
			["concept", "C1M4FinaleStartResponse"],
			["who", "Trevor"],
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
			["concept", "introC2M1"],
			["who", "Trevor"],
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
			["concept", "C2M1Intro002"],
			["who", "Trevor"],
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
			["concept", "C2M1Intro003"],
			["who", "Trevor"],
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
			["concept", "C2M1Intro005"],
			["who", "Trevor"],
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
			["concept", "C2M1Intro008"],
			["who", "Trevor"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["instartarea", 1],
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
			["concept", "C2M1Intro009"],
			["who", "Trevor"],
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
			["concept", "C2M4PenSmell001"],
			["who", "Trevor"],
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
				func = Custom_Talker_Trevor.C2M4PenSmell001Mechanic,
			},
		],
	},

	{
		name = "C2M5_lipsync001Trevor",
		criteria = 
		[
			["concept", "C2M5_lipsync001"],
			["who", "Trevor"],
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
				func = Custom_Talker_Trevor.C2M5_lipsync001Mechanic,
			},
		],
	},

	{
		name = "C2M5_lipsync002Trevor",
		criteria = 
		[
			["concept", "C2M5_lipsync002"],
			["who", "Trevor"],
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
				func = Custom_Talker_Trevor.C2M5_lipsync002Mechanic,
			},
		],
	},

	{
		name = "C4EnterCoverTrevor",
		criteria = 
		[
			["concept", "C4EnterCover"],
			["who", "Trevor"],
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
			["concept", "C4ExitCover"],
			["who", "Trevor"],
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
			["concept", "C4FinaleStart"],
			["who", "Trevor"],
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
			["concept", "c4m1_nogas01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "c4m1_nogas10"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "c4m1_wreck01"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "c4m1_wreck02"],
			["who", "Trevor"],
			["incombat", 0],
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
			["concept", "GasPour20More"],
			["who", "Trevor"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour10More"],
			["who", "Trevor"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour1More"],
			["who", "Trevor"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour2More"],
			["who", "Trevor"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour3More"],
			["who", "Trevor"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "GasPour5More"],
			["who", "Trevor"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
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
			["concept", "Player.CoverMeC1R"],
			["who", "Trevor"],
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
			["concept", "Player.CoverMeC1RCoach1"],
			["who", "Trevor"],
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
			["concept", "Player.GooedBySpitterC1R"],
			["who", "Trevor"],
			["incapacitated", 0],
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
			["concept", "Player.KnowHunter"],
			["who", "Trevor"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "Player.KnowBoomer"],
			["who", "Trevor"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "Player.KnowCharger"],
			["who", "Trevor"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "Player.KnowJockey"],
			["who", "Trevor"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "C1M2TankInfo"],
			["who", "Trevor"],
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
			["concept", "Player.KnowSpitter"],
			["who", "Trevor"],
			[IssuerClose],
			["incapacitated", 0],
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Trevor"],
			["subjectisa", "Witch"],
			["oneshot", 1],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkTrevor],
			["map", "c6m1_riverbank"],
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
			["concept", "WeddingWitchDead02"],
			["who", "Trevor"],
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
			["concept", "WorldIntroC31a2"],
			["who", "Trevor"],
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
			["concept", "WorldIntroC31c1"],
			["who", "Trevor"],
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
			["concept", "WorldIntroC31d2"],
			["who", "Trevor"],
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
			["concept", "WorldIntroC31e2a"],
			["who", "Trevor"],
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
			["concept", "WorldIntroC3f2"],
			["who", "Trevor"],
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
			["concept", "WorldIntroC31g1"],
			["who", "Trevor"],
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
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotAlone],
			[IsWorldTalkTrevor],
			["map", "c1m1_hotel"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "chainsaw"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "chainsaw"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "cricket_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "cricket_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "crowbar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "crowbar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "electric_guitar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "electric_guitar"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Katana"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Katana"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "LaserSights"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "LaserSights"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 1],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Machete"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Machete"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "magnum"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "magnum"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SecondPistol"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SecondPistol"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "tonfa"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "tonfa"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "AutoShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "AutoShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "PumpShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "PumpShotgun"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_chrome"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_spas"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_spas"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SMG"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SMG"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_silenced"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_silenced"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_mp5"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_mp5"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "HuntingRifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "HuntingRifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_AK47"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_AK47"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_desert"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_desert"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_sg552"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_sg552"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_military"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_military"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_scout"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_scout"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_awp"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_awp"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "baseball_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "baseball_bat"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "frying_pan"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "frying_pan"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "fireaxe"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "fireaxe"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shovel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shovel"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Pitchfork"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Pitchfork"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["weaponname", "Knife"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Knife"],
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
			["concept", "PlayerSpotOtherWeapon"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerSpotPistol"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerSpotShotgun"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			["world_auto_tracksok", 1],
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
			["concept", "C2M3Chopper001"],
			["who", "Trevor"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "TeenGirl"],
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["subject", "TeenGirl"],
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
			["concept", "introC13M1"],
			["who", "Trevor"],
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
			["concept", "C13M1Intro2"],
			["who", "Trevor"],
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
			["concept", "C13M1Intro3"],
			["who", "Trevor"],
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
			["concept", "C13M1IntroLast"],
			["who", "Trevor"],
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
			["concept", "C13M1IntroLocationLast"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M1Uphill"],
			[IsNotRemarkedC13M1UpHill],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M1DownHere"],
			[IsNotRemarkedC13M1DownHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M1ThroughHere"],
			[IsNotRemarkedC13M1ThroughHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M1ThroughWindow"],
			[IsNotRemarkedC13M1ThroughWindow],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M1UpSteps"],
			[IsNotRemarkedC13M1UpSteps],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M1CrossHere"],
			[IsNotRemarkedC13M1CrossHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M1PreBunkerOpen"],
			[IsNotRemarkedC13M1PreBunkerOpen],
			["incombat", 0],
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
			["concept", "C13M1OpeningBunker"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M2Uphill"],
			[IsNotRemarkedC13M2UpHill],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M2DownHere"],
			[IsNotRemarkedC13M2DownHere],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M2UpLadder"],
			[IsNotRemarkedC13M2UpLadder],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M2UpStairs"],
			[IsNotRemarkedC13M2UpStairs],
			["incombat", 0],
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
			["concept", "C13M2TankApproaching"],
			["who", "Trevor"],
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
			["concept", "C13M2BarrelsIgnited"],
			["who", "Trevor"],
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
			["concept", "C13M2Barrels1"],
			["who", "Trevor"],
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
			["concept", "C13M2Barrels2"],
			["who", "Trevor"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "C13M3DownHere"],
			[IsNotRemarkedC13M3DownHere],
			["incombat", 0],
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
			["concept", "C13M3ApproachingTanker"],
			["who", "Trevor"],
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
			["concept", "C13M3Tanker1"],
			["who", "Trevor"],
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
			["concept", "C13M3Tanker2"],
			["who", "Trevor"],
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
			["concept", "C13M3Tanker3"],
			["who", "Trevor"],
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
			["concept", "C13M3OnScaffold"],
			["who", "Trevor"],
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
			["concept", "C13M3Airstrike"],
			["who", "Trevor"],
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
			["concept", "C13M3Airstrike2"],
			["who", "Trevor"],
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
			["concept", "C13M4Button1"],
			["who", "Trevor"],
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
			["concept", "FinaleTriggered"],
			["who", "Trevor"],
			["map", "c13m4_cutthroatcreek"],
			["triggeredby", "Trevor"],
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
			["concept", "C13M4FinaleStart2"],
			["who", "Trevor"],
			["world_auto_talkingtrevor", 1],
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
			["concept", "C13M4DownCreek"],
			["who", "Trevor"],
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
			["concept", "C13M4InSmoke"],
			["who", "Trevor"],
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
			["concept", "C13M4NoticedHelicopter"],
			["who", "Trevor"],
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
			["concept", "C13M4AlmostThere"],
			["who", "Trevor"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "Trevor"],
			["map", "c13m4_cutthroatcreek"],
			["world_auto_finale", 1],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "IntroEnd"],
			["who", "Trevor"],
			["from", "Trevor"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Trevor"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Trevor"],
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
			["concept", "FinaleTriggered"],
			["who", "Trevor"],
			["triggeredby", "Trevor"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "Trevor"],
			["world_auto_finale", 1],
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
			["concept", "FinalVehicleArrived"],
			["who", "Trevor"],
			["world_auto_finale", 2],
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
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "Biker"],
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
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "Manager"],
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
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "Trevor"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["subject", "TeenGirl"],
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
			["concept", "PlayerPourStarted"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsNotScavenge],
			["map", "c6m3_port"],
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
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_01a"],
			["who", "Trevor"],
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
			["concept", "introC6M1"],
			["who", "Trevor"],
			["introactor", "francis"],
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
			["concept", "C6M1Intro_01c"],
			["who", "Trevor"],
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
			["concept", "introC6M1"],
			["who", "Trevor"],
			["introactor", "zoey"],
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
			["concept", "C6M1Intro_02a"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_11a"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_11c"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_12b"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_13a"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_13c"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_13f"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_23b"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_23d"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_24c"],
			["who", "Trevor"],
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
			["concept", "C6M1Intro_24e"],
			["who", "Trevor"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Trevor"],
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
			["concept", "RemWorldC6M1_WeddingWarn02"],
			["who", "Trevor"],
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
			["concept", "WorldC6M1_WeddingWarn03a"],
			["who", "Trevor"],
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
			["concept", "C6M2_OpenGate1"],
			["who", "Trevor"],
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
			["concept", "C6M2_OpenGate1b"],
			["who", "Trevor"],
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
			["concept", "C6M2_OpenGate1"],
			["who", "Trevor"],
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
			["concept", "C6M2_OpenGate2"],
			["who", "Trevor"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Trevor"],
			[IsNotSaidC6M2LeavingSafeRoom],
			["map", "c6m2_bedlam"],
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
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo02a"],
			["who", "Trevor"],
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
			["concept", "C6M2SafeRoom2"],
			["who", "Trevor"],
			["introactor", "francis"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo03b"],
			["who", "Trevor"],
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
			["concept", "C6M2SafeRoom2"],
			["who", "Trevor"],
			["introactor", "zoey"],
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
			["concept", "C6M2SafeRoom2"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo11a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo14b"],
			["who", "Trevor"],
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
			["concept", "C6M2SafeRoom2"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16b"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16b1"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16d"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo16f"],
			["who", "Trevor"],
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
			["concept", "C6M2SafeRoom2"],
			["who", "Trevor"],
			["introactor", "zoey"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo17a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo18b"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19a"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19c"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo19e"],
			["who", "Trevor"],
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
			["concept", "C6M2SafeRoom2"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M2_SafeRoomConvo21b"],
			["who", "Trevor"],
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
			["concept", "WorldC6M2_FinalWater01b"],
			["who", "Trevor"],
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
			["concept", "WorldC6M2_InSewer101a"],
			["who", "Trevor"],
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
			["concept", "WorldC6M2_OnTourWalk102b"],
			["who", "Trevor"],
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
			["concept", "WorldC6M2_Tattoo03b>"],
			["who", "Trevor"],
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
			["concept", "C6M3_BridgeDown"],
			["who", "Trevor"],
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Trevor"],
			[IsNotSaidGetToCar],
			["map", "c6m3_port"],
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
			["concept", "SceneCancelled"],
			["who", "Trevor"],
			[IsNotSaidC6M3Elevator],
			["map", "c6m3_port"],
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
			["concept", "SceneCancelled"],
			["who", "Trevor"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "Biker"],
			["map", "c6m3_portheavy"],
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
			["concept", "PlayerPickup"],
			["who", "Trevor"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_portheavy"],
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
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo01a"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo01c"],
			["who", "Trevor"],
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
			["concept", "DLC1_C6M3_SafeRoomConvo02e"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo03a"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo03c"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo04a"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo04d"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo05a"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "C6M3SafeRoom2"],
			["who", "Trevor"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "francis"],
			[FrancisGroup4],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo06b"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo07a"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo07c"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08a"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08c"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08d"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08e"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo08f"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "DLC1_C6M3_SafeRoomConvo09a"],
			["who", "Trevor"],
			["instartarea", 1],
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
			["concept", "SurvivorIncapacitated"],
			["who", "Trevor"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
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
			["concept", "c6m3escapeready"],
			["who", "Trevor"],
			["map", "c6m3_port"],
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
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c6m3_port"],
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "Trevor"],
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
			["concept", "PlayerExertionMinor"],
			["who", "Trevor"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidTrevorWitchChasing],
			["saidwitchattacking", 1],
			["map", "c6m1_riverbank"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_Intothepark"],
			[IsNotSaidWorldC6M1_Intothepark],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_IntoThePark2"],
			[IsNotSaidWorldC6M1_IntoThePark2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			["introactor", "zoey"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear600],
			["introactor", "zoey"],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_InSewer2"],
			[IsNotSaidWorldC6M2_InSewer2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			["worldsaidworldc6m2_insewer1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_OnTourWalk3"],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_SafeRoom"],
			[IsNotSaidWorldC6M2_SafeRoom],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "TLK_REMARK"],
			["who", "Trevor"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
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
			["concept", "PlayerPourFinished"],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsWorldTalkTrevor],
			["map", "c6m3_port"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Trevor"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkTrevor],
			["incapacitated", 0],
			[IsWorldTalkTrevor],
			["map", "c6m3_port"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "GolfClub"],
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Trevor"],
			["itempickedup", "m60"],
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
			["concept", "WeddingWitchDead04"],
			["who", "Trevor"],
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
			["concept", "TLK_IDLE"],
			["who", "Trevor"],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			["map", "c6m3_port"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Trevor"],
			[IsTalk],
			[IsTalkTrevor],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
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
			["concept", "C1M2InsideGunShop"],
			["whodidit", "Trevor"],
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
			["concept", "C1M3AlarmOff"],
			["whodidit", "Trevor"],
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
			["concept", "C1M3BrokeWindow"],
			["whodidit", "Trevor"],
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
			["concept", "Airport02CraneStarted"],
			["whodidit", "Trevor"],
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
			["concept", "Airport03FireStarted"],
			["whodidit", "Trevor"],
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
			["concept", "C6M3Stairs"],
			["who", "Trevor"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "zoey"],
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
			["concept", "C6M3Stairs"],
			["who", "Trevor"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "francis"],
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
