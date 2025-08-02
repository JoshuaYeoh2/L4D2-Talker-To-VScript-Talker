local sheva_alomar_rules = 
[
	{
		name = "C3M1CallFerrySheva",
		criteria = 
		[
			["concept", "C3M1CallFerry"],
			["whodidit", "Sheva"],
			[IsNotSaidC3M1CallFerry2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M1CallFerryProducer,
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
		name = "C3M2OpenDoorSheva",
		criteria = 
		[
			["concept", "C3M2OpenDoor"],
			["whodidit", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M2OpenDoorProducer,
				followup = RThen("Sheva", "C3M2OpenDoor2", { ShevaActor = 1 }, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2OpenDoor", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.406 },
			c3 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c4 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c5m4floatstartSheva",
		criteria = 
		[
			["concept", "c5m4floatstart"],
			["whodidit", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c5m4floatstartProducer,
				followup = RThen("sheva", "c5m4floatstart2", null, 0.0),
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
		name = "C1M2InsideGunShopSheva",
		criteria = 
		[
			["concept", "C1M2InsideGunShop"],
			["whodidit", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2InsideGunShopProducer,
				followup = RThen("sheva", "C1M2InsideGunShop2", null, 0.0),
			},
		],
	},

	{
		name = "C1M3AlarmOffOratorSheva",
		criteria = 
		[
			["concept", "C1M3AlarmOff"],
			["whodidit", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M3AlarmOffOratorProducer,
				followup = RThen("sheva", "C1M3AlarmOff2", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M3BrokeWindowOratorSheva",
		criteria = 
		[
			["concept", "C1M3BrokeWindow"],
			["whodidit", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M3BrokeWindowOratorProducer,
				followup = RThen("sheva", "C1M3AlarmActive", null, 0.0),
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
		name = "C1M1InSmokeSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["worldsaidc1m1insmoke", 1],
			["map", "c1m1_hotel"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M1InSmokeProducer,
				followup = RThenAny("C1M1Cough", -2.638),
			},
		],
	},

	{
		name = "C1M3AlarmOffSheva",
		criteria = 
		[
			["concept", "C1M3AlarmOff2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M3AlarmOffProducer,
				followup = RThenAny("C1M3AlarmOffa", 0.5),
			},
		],
	},

	{
		name = "C1M3AlarmActiveSheva",
		criteria = 
		[
			["concept", "C1M3AlarmActive"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M3AlarmActiveProducer,
			},
		],
	},

	{
		name = "C4M3SaferoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C4M3SaferoomProducer,
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
		name = "L4D1PlayerNiceShotFrancisC6M3Sheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkSheva],
			["map", "c6m3_port"],
			[IsWorldTalkSheva],
			["subject", "Biker"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1PlayerNiceShotFrancisC6M3Producer,
			},
		],
	},

	{
		name = "PlayerNiceShotFrancisSheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["subject", "Biker"],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNiceShotFrancisProducer,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotLouisC6M3Sheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkSheva],
			["map", "c6m3_port"],
			[IsWorldTalkSheva],
			["subject", "Manager"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1PlayerNiceShotLouisC6M3Producer,
			},
		],
	},

	{
		name = "PlayerNiceShotLouisSheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["subject", "Manager"],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1PlayerNiceShotLouisC6M3Producer,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotZoeyC6M3Sheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkSheva],
			["map", "c6m3_port"],
			[IsWorldTalkSheva],
			["subject", "TeenGirl"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1PlayerNiceShotZoeyC6M3Producer,
			},
		],
	},

	{
		name = "PlayerNiceShotZoeySheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["subject", "TeenGirl"],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNiceShotZoeyProducer,
			},
		],
	},

	{
		name = "PlayerNiceShotSheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNiceShotProducer,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotSheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[SubjectIsNotGambler],
			[SubjectIsNotMechanic],
			[SubjectIsNotCoach],
			[IsTalk],
			[IsTalkSheva],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNiceShotProducer,
			},
		],
	},

	{
		name = "PlayerNiceShotCoachSheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[ChanceToFire10Percent],
			[IsWorldTalkSheva],
			["subject", "Coach"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNiceShotCoachProducer,
			},
		],
	},

	{
		name = "PlayerNiceShotMechanicSheva",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[ChanceToFire10Percent],
			["subject", "Mechanic"],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNiceShotMechanicProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorMournCoachSheva",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Sheva"],
			["deadcharacter", "Coach"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorMournCoachProducer,
			},
		],
	},

	{
		name = "SurvivorMournGamblerSheva",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Sheva"],
			["deadcharacter", "Gambler"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorMournGamblerProducer,
			},
		],
	},

	{
		name = "SurvivorMournGamblerC1Sheva",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Sheva"],
			["deadcharacter", "Gambler"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkSheva],
			[NoKnowNames],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorMournGamblerC1Producer,
			},
		],
	},

	{
		name = "SurvivorMournMechanicSheva",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Sheva"],
			["deadcharacter", "Mechanic"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorMournMechanicProducer,
			},
		],
	},

	{
		name = "SurvivorMournMechanicC1Sheva",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Sheva"],
			["deadcharacter", "Mechanic"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkSheva],
			[NoKnowNames],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorMournMechanicC1Producer,
			},
		],
	},

	{
		name = "C3M1FerryInTransitSheva",
		criteria = 
		[
			["concept", "C3M1FerryInTransit"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidC3M1FerryInTransit],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M1FerryInTransitProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryInTransit", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Playerc1m1_enter_elevatorSheva",
		criteria = 
		[
			["concept", "c1m1_enter_elevator"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidc1m1_enter_elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.Playerc1m1_enter_elevatorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_enter_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Playerc1m1_elevator_pushbuttonSheva",
		criteria = 
		[
			["concept", "c1m1_elevator_pushbutton"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidc1m1_elevator_pushbutton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.Playerc1m1_elevator_pushbuttonProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc1m1_elevator_pushbutton", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M2PreAlarmDoorSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2PreStoreAlarm"],
			[IsNotSaidWorldC1M2PreStoreAlarm],
			[IsNotSaidC1M2AlarmSetoff],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M2PreAlarmDoorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2PreStoreAlarm", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M2AlarmDoor2Sheva",
		criteria = 
		[
			["concept", "C1M2AlarmDoor2"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2AlarmDoor2Producer,
				followup = RThen("orator", "C1M2StoreAlarm", null, 0.3),
			},
		],
	},

	{
		name = "PlayerRemarkC1M2PostAlarmDoorSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.PlayerRemarkC1M2PostAlarmDoorProducer,
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
		name = "PlayerC1M2GrabbingColaSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
			[_auto_NotSaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC1M2GrabbingColaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2GrabbingCola2", value = 1, duration = 5.0 },
			c2 = { context = "_auto_SaidC1M2GrabbedCola", value = 1, duration = 0.0 },
			c3 = { context = "Talk", value = 1, duration = 2.279 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC1M2GrabbingCola2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
			["world_auto_saidc1m2grabbedcola", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC1M2GrabbingCola2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M2GrabbingCola2", value = 1, duration = 5.0 },
			c2 = { context = "_auto_SaidC1M2GrabbedCola", value = 1, duration = 0.0 },
			c3 = { context = "Talk", value = 1, duration = 2.279 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC1M2FirstOutsideResponseSheva",
		criteria = 
		[
			["concept", "C1M2FirstOutsideResponse"],
			["who", "Sheva"],
			["from", "orator"],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC1M2FirstOutsideResponseProducer,
				followup = RThen("orator", "C1M2FirstOutsideResponse5", null, -5.962),
			},
		],
	},

	{
		name = "PlayerC1M2FirstOutsideResponse8aSheva",
		criteria = 
		[
			["concept", "C1M2FirstOutsideResponse8a"],
			["who", "Sheva"],
			["from", "orator"],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC1M2FirstOutsideResponse8aProducer,
				followup = RThen("orator", "C1M2FirstOutsideResponse8d", null, 0.0),
			},
		],
	},

	{
		name = "C1M2GunRoomDoorResponseGodSheva",
		criteria = 
		[
			["concept", "C1M2GunRoomDoorResponseGod"],
			["who", "Sheva"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2GunRoomDoorResponseGodProducer,
			},
		],
	},

	{
		name = "C1M2GunRoomDoorResponseGratitudeSheva",
		criteria = 
		[
			["concept", "C1M2GunRoomDoorResponseGratitude"],
			["who", "Sheva"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2GunRoomDoorResponseGratitudeProducer,
			},
		],
	},

	{
		name = "PlayerC1M2InsideGunShop2Sheva",
		criteria = 
		[
			["concept", "C1M2InsideGunShop2"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidC1M2InsideGunShop],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC1M2InsideGunShop2Producer,
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
		name = "PlayerC1M2InsideGunShop2EllisSheva",
		criteria = 
		[
			["concept", "C1M2InsideGunShop2"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["ismechanicalive", 1],
			[IsMechanicNear800],
			[ChanceToFire20Percent],
			[IsNotSaidC1M2InsideGunShop],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC1M2InsideGunShop2EllisProducer,
				followup = RThen("Mechanic", "C1M2InsideGunShop3", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.0 },
			c2 = { context = "SaidC1M2InsideGunShop", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC3M1CallFerry2Sheva",
		criteria = 
		[
			["concept", "C3M1CallFerry2"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["shevaactor", 1],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC3M1CallFerry2Producer,
				followup = RThenAny("C3M1FerryInTransit", 25.0),
			},
		],
	},

	{
		name = "PlayerC3M1FerryLandedIdleSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["worldc3m1ferry", 1],
			["incapacitated", 0],
			["incombat", 0],
			[IsNotAlone],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC3M1FerryLandedIdleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC3M1FerryLaunched2aSheva",
		criteria = 
		[
			["concept", "C3M1FerryLaunched2"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC3M1FerryLaunched2aProducer,
			},
		],
	},

	{
		name = "PlayerC3M2ComingHomeSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSafeSpotAhead],
			["worldsaidc3m2village1", 1],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC3M2ComingHomeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC3M2ComingHomeEllisSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSafeSpotAhead],
			["worldsaidc3m2village1", 1],
			[IsWorldTalkSheva],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			[ChanceToFire10Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC3M2ComingHomeEllisProducer,
				followup = RThen("Mechanic", "_C3M2BloodFarmers", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.894 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerC3M2OpenDoor2Sheva",
		criteria = 
		[
			["concept", "C3M2OpenDoor2"],
			["who", "Sheva"],
			[IsTalkSheva],
			["shevaactor", 1],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerC3M2OpenDoor2Producer,
			},
		],
	},

	{
		name = "Playerc5m4floatstart2Sheva",
		criteria = 
		[
			["concept", "c5m4floatstart2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.Playerc5m4floatstart2Producer,
			},
		],
	},

	{
		name = "PlayerintroC1M1Sheva",
		criteria = 
		[
			["concept", "introC1M1"],
			["who", "Sheva"],
			[IsNotAlone],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerintroC1M1Producer,
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
		name = "PlayerintroC1M1AloneSheva",
		criteria = 
		[
			["concept", "introC1M1"],
			["who", "Sheva"],
			["numberofteamalive", 1],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerintroC1M1AloneProducer,
				followup = RThen("self", "_introc1m1a02", null, 4.0),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WhitakerC1M2DeliverColaSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.WhitakerC1M2DeliverColaProducer,
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
		name = "PlayerPlayerUsingColaBottlesSheva",
		criteria = 
		[
			["concept", "PlayerUsingColaBottles"],
			["who", "Sheva"],
			[IsNotSaidPlayerUsingColaBottles],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerUsingColaBottles", value = 1, duration = 20.0 },
			c2 = { context = "WhoPutCola", value = "Sheva", duration = 35 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRelaxedSighSheva",
		criteria = 
		[
			["concept", "RelaxedSigh"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRelaxedSighProducer,
			},
		],
	},

	{
		name = "PlayerStayTogetherInsideReponseSheva",
		criteria = 
		[
			["concept", "StayTogetherInsideReponse"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidStayTogetherInsideReponse],
			[IsNotHealthySlow],
			[IsNotInSafeSpot],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerStayTogetherInsideReponseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidStayTogetherInsideReponse", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerUseAdrenalineSheva",
		criteria = 
		[
			["concept", "UseAdrenaline"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerUseAdrenalineProducer,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingB02Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingB02"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldC3M1FerryCrossingB02Producer,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingC02Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingC02"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldC3M1FerryCrossingC02Producer,
				followup = RThen("gambler", "WorldC3M1FerryCrossingC03", null, -0.883),
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingC04Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingC04"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldC3M1FerryCrossingC04Producer,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingD04Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingD04"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldC3M1FerryCrossingD04Producer,
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingE01Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingE01"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldC3M1FerryCrossingE01Producer,
				followup = RThen("mechanic", "WorldC3M1FerryCrossingE02", null, -4.768),
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingE03Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingE03"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldC3M1FerryCrossingE03Producer,
				followup = RThen("mechanic", "WorldC3M1FerryCrossingE04", null, -1.747),
			},
		],
	},

	{
		name = "PlayerWorldC3M1FerryCrossingN2Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingN2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldC3M1FerryCrossingN2Producer,
				followup = RThen("mechanic", "_C3M1CrazyMilitants", null, 0.1),
			},
		],
	},

	{
		name = "ThanksGotItemSheva",
		criteria = 
		[
			["concept", "Award"],
			["awardname", "Sharing"],
			["coughing", 0],
			["subject", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
	},

	{
		name = "PlayerGivenItemSheva",
		criteria = 
		[
			["concept", "PlayerGivenItem"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGivenItemProducer,
			},
		],
	},

	{
		name = "RescuedSurvivorSheva",
		criteria = 
		[
			["concept", "Award"],
			["awardname", "Rescuer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.RescuedSurvivorProducer,
			},
		],
	},

	{
		name = "ItemDonorCoachSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "Coach"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ItemDonorCoachProducer,
				followup = RThen("coach", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorMechanicSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "Mechanic"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ItemDonorMechanicProducer,
				followup = RThen("mechanic", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorBikerSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "Biker"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ItemDonorBikerProducer,
				followup = RThen("biker", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorTeenGirlSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "TeenGirl"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ItemDonorTeenGirlProducer,
				followup = RThen("teengirl", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorManagerSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "Manager"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ItemDonorManagerProducer,
				followup = RThen("manager", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorNamVetSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "NamVet"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ItemDonorNamVetProducer,
				followup = RThen("namvet", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ReviveMeInterruptedMinorSheva",
		criteria = 
		[
			["concept", "ReviveMeInterrupted"],
			["who", "Sheva"],
			[IsIncappedStarted],
			[IsIncappedStarted2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveMeInterruptedMinorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ReviveMeInterruptedMajorSheva",
		criteria = 
		[
			["concept", "ReviveMeInterrupted"],
			["who", "Sheva"],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveMeInterruptedMajorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ReviveMeInterruptedCriticalSheva",
		criteria = 
		[
			["concept", "ReviveMeInterrupted"],
			["who", "Sheva"],
			[IsIncappedLethargic],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveMeInterruptedCriticalProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ReviveThanksSheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksProducer,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksCoachSheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "Coach"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksCoachProducer,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksCoachC1Sheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "Coach"],
			[ChanceToFire30Percent],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksCoachC1Producer,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksGamblerSheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "Gambler"],
			[ChanceToFire5Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksGamblerProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksNickC1KnownSheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "Gambler"],
			[ChanceToFire5Percent],
			["map", "c1m1_hotel"],
			["worldknownames", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksGamblerProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksMechanicSheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "Mechanic"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksMechanicProducer,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksMechanicC1KnownSheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "Coach"],
			[ChanceToFire30Percent],
			["map", "c1m1_hotel"],
			["worldknownames", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksMechanicProducer,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksBikerSheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "Biker"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksBikerProducer,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksTeenGirlSheva",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "TeenGirl"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ReviveThanksTeenGirlProducer,
				followup = RThen("subject", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "BotPlayer_YourWelcomeSheva",
		criteria = 
		[
			["concept", "SurvivorBotYouAreWelcome"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.BotPlayer_YourWelcomeProducer,
			},
		],
	},

	{
		name = "BotReassureComingSheva",
		criteria = 
		[
			["concept", "SurvivorBotReassureComing"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.BotReassureComingProducer,
			},
		],
	},

	{
		name = "BotYesReadySheva",
		criteria = 
		[
			["concept", "SurvivorBotYesReady"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.BotReassureComingProducer,
			},
		],
	},

	{
		name = "BotReassureNearbySheva",
		criteria = 
		[
			["concept", "SurvivorBotReassureNearby"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.BotReassureNearbyProducer,
			},
		],
	},

	{
		name = "C1M2LeavingSafeRoomSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Sheva"],
			[IsNotSaidLeavingSafeArea],
			["map", "c1m2_streets"],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2LeavingSafeRoomProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.298 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M2SafeRooma1Sheva",
		criteria = 
		[
			["concept", "C1M2SafeRooma1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2SafeRooma1Producer,
				followup = RThen("mechanic", "C1M2SafeRooma2", null, -2.843),
			},
		],
	},

	{
		name = "C1M2SafeRooma2Sheva",
		criteria = 
		[
			["concept", "C1M2SafeRooma2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2SafeRooma2Producer,
				followup = RThen("mechanic", "C1M2SafeRooma3", null, 0.1),
			},
		],
	},

	{
		name = "C1M2SafeRooma3Sheva",
		criteria = 
		[
			["concept", "C1M2SafeRooma3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2SafeRooma3Producer,
				followup = RThen("mechanic", "C1M2SafeRooma2", null, 0.1),
			},
		],
	},

	{
		name = "C1M2SafeRooma4Sheva",
		criteria = 
		[
			["concept", "C1M2SafeRooma4"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2SafeRooma4Producer,
				followup = RThen("mechanic", "C1M2SafeRooma2", null, 0.1),
			},
		],
	},

	{
		name = "C1M2SafeRoomb3Sheva",
		criteria = 
		[
			["concept", "C1M2SafeRoomb3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2SafeRoomb3Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C1M2SafeRoomd2Sheva",
		criteria = 
		[
			["concept", "C1M2SafeRoomd2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2SafeRoomd2Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C1M2SafeRoomd2aSheva",
		criteria = 
		[
			["concept", "C1M2SafeRoomd2a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2SafeRoomd2aProducer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C1M2TankerAttackSheva",
		criteria = 
		[
			["concept", "C1M2TankerAttack2"],
			["who", "Sheva"],
			["worldwhoputcola", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2TankerAttackProducer,
				followup = RThen("orator", "C1M2GoodLuckGettingToTheMall", null, 3.0),
			},
		],
	},

	{
		name = "c1m4escapeSheva",
		criteria = 
		[
			["concept", "c1m4escape"],
			["who", "Sheva"],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c1m4escapeProducer,
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
		name = "c1m4escapeEllisSheva",
		criteria = 
		[
			["concept", "c1m4escape"],
			["who", "Sheva"],
			["ismechanicalive", 1],
			[ChanceToFire50Percent],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c1m4escapeEllisProducer,
				followup = RThen("mechanic", "c1m4escapeEllisCheck", null, 0.0),
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
		name = "c1m4escapeEllisSuccessSheva",
		criteria = 
		[
			["concept", "c1m4escapeEllisCheckSuccess"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c1m4escapeEllisSuccessProducer,
			},
		],
	},

	{
		name = "c1m4escapeEllisFailSheva",
		criteria = 
		[
			["concept", "c1m4escapeEllisCheckFail"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c1m4escapeProducer,
			},
		],
	},

	{
		name = "C1M4GasPourSheva",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M4GasPourProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "C1M4PlayerGetToRescueVehicleSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M4PlayerGetToRescueVehicleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c1m4startelevatorSheva",
		criteria = 
		[
			["concept", "c1m4startelevator"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c1m4startelevatorProducer,
				followup = RThen("mechanic", "_c1m4startelevator2c", null, -2.333),
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
		name = "C6M3GasPourSheva",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			["map", "c6m3_port"],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3GasPourProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "FinaleStartC1M4Sheva",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["who", "Sheva"],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m4_atrium"],
			[IsNotScavenge],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.FinaleStartC1M4Producer,
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
		name = "GasPourDoneC1M4Sheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
			["towin", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPourDoneC1M4Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_Riders03Sheva",
		criteria = 
		[
			["concept", "_C2M2_Riders03"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_Riders03Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_C2M2_Riders06Sheva",
		criteria = 
		[
			["concept", "_C2M2_Riders06"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_Riders06Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_C2M2_Riders07Sheva",
		criteria = 
		[
			["concept", "_C2M2_Riders07"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_Riders07Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C2M2CarouselIdleSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["map", "c2m2_fairgrounds"],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M2CarouselIdleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 13.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c2m3_DownHoleSheva",
		criteria = 
		[
			["concept", "c2m3downhole"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c2m3_DownHoleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_DownHole", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c2m3CoasterEndSheva",
		criteria = 
		[
			["concept", "c2m3CoasterEnd"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c2m3CoasterEndProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3CoasterRunGoSheva",
		criteria = 
		[
			["concept", "C2M3CoasterRunGo"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M3CoasterRunGoProducer,
			},
		],
	},

	{
		name = "C2M3CoasterStartSheva",
		criteria = 
		[
			["concept", "c2m3CoasterStart"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M3CoasterStartProducer,
				followup = RThen("mechanic", "_c2m3_howcool", null, 1.0),
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
		name = "c2m3SeeChopperSheva",
		criteria = 
		[
			["concept", "C2M3SeeChopper"],
			["who", "Sheva"],
			[IsTalk],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c2m3SeeChopperProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_OutOfTunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M4ButtonPressedSheva",
		criteria = 
		[
			["concept", "C2M4ButtonPressed"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M4ButtonPressedProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ButtonPressed", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M4Gate000Sheva",
		criteria = 
		[
			["concept", "C2M4Gate000"],
			["who", "Sheva"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargate", 1],
			[_auto_NotNearGateNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M4Gate000Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.726 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockSheva", value = 1, duration = 23.0 },
			c4 = { context = "_auto_NearGateNag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M4GateIdleSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargatenag", 1],
			["world_auto_neargate", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M4GateIdleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.854 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c3 = { context = "_auto_TimerLockSheva", value = 1, duration = 23.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M4GateOpenCalloutSheva",
		criteria = 
		[
			["concept", "C2M4GateOpenCallout"],
			["who", "Sheva"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M4GateOpenCalloutProducer,
				followup = RThenAny("_C2M4_GateOpen001", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.878 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c2m4SeeChopperSheva",
		criteria = 
		[
			["concept", "C2M4SeeChopper"],
			["who", "Sheva"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c2m4SeeChopperProducer,
			},
		],
	},

	{
		name = "C2M5_ChoppercomingSheva",
		criteria = 
		[
			["concept", "C2M5_Choppercoming"],
			["who", "Sheva"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5_ChoppercomingProducer,
				followup = RThenAny("C2M5_PlanWorked", 0.01),
			},
		],
	},

	{
		name = "c2m5_intro003Sheva",
		criteria = 
		[
			["concept", "c2m5_intro003"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c2m5_intro003Producer,
				followup = RThen("gambler", "c2m5_intro004", null, 0.1),
			},
		],
	},

	{
		name = "c2m5_intro019Sheva",
		criteria = 
		[
			["concept", "c2m5_intro019"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c2m5_intro019Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "SurvivorReloadingC2M5Sheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsRocking],
			[IsNotZombiePresentTank],
			["map", "c2m5_concert"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			["world_auto_concertlive", 1],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorReloadingC2M5Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorReloadingC2M5RockedOutSheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsRocking],
			[IsNotZombiePresentTank],
			["map", "c2m5_concert"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
	},

	{
		name = "SurvivorVocalizeLookOutC2M5Sheva",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeLookOutC2M5Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RockingOut", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorVocalizeLookOutC2M5RockedOutSheva",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
	},

	{
		name = "C2M5ReloadingTankSheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkSheva],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5ReloadingTankProducer,
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
		name = "PlayerKillTankConfirmationC2M5Sheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillTankConfirmationC2M5Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5_PlanWorkedSheva",
		criteria = 
		[
			["concept", "C2M5_PlanWorked"],
			["who", "Sheva"],
			[NotCoachMadAtRiders],
			["incapacitated", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5_PlanWorkedProducer,
			},
		],
	},

	{
		name = "C2M5_PlanWorkedCoachMadSheva",
		criteria = 
		[
			["concept", "C2M5_PlanWorked"],
			["who", "Sheva"],
			["worldcoachmadatriders", 1],
			["incapacitated", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5_PlanWorkedProducer,
			},
		],
	},

	{
		name = "C2M5_PlanWorkedbSheva",
		criteria = 
		[
			["concept", "C2M5_PlanWorked"],
			["who", "Sheva"],
			["iscoachalive", 1],
			[ChanceToFire20Percent],
			["incapacitated", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5_PlanWorkedbProducer,
			},
		],
	},

	{
		name = "C2M5Button1Sheva",
		criteria = 
		[
			["concept", "c2m5Button1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5Button1Producer,
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
		name = "C2M5ChopperNagSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5ChopperNagProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5InChopperNagSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5InChopperNagProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5InArenaNagSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["incombat", 0],
			["map", "c2m5_concert"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			["world_auto_c2m5inarena", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5InArenaNagProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 34.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M5_Button2YellSheva",
		criteria = 
		[
			["concept", "C2M5_Button2Yell"],
			["who", "Sheva"],
			[NotCoachMadAtRiders],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5_Button2YellProducer,
			},
		],
	},

	{
		name = "C2M5_Button2YellCoachMadSheva",
		criteria = 
		[
			["concept", "C2M5_Button2Yell"],
			["who", "Sheva"],
			["worldcoachmadatriders", 1],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5_Button2YellProducer,
			},
		],
	},

	{
		name = "C2M5_ChoppercomingSheva",
		criteria = 
		[
			["concept", "C2M5_Choppercoming"],
			["who", "Sheva"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M5_ChoppercomingProducer,
				followup = RThenAny("C2M5_PlanWorked", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ConcertLive", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3SaferoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C2M3SaferoomProducer,
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
		name = "C2M3SafeIntro005Sheva",
		criteria = 
		[
			["concept", "C2M3SafeIntro005"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M3SafeIntro005Producer,
				followup = RThen("gambler", "C2M3SafeIntro009", null, 0.3),
			},
		],
	},

	{
		name = "C2M3SafeIntro006Sheva",
		criteria = 
		[
			["concept", "C2M3SafeIntro006"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M3SafeIntro006Producer,
				followup = RThen("gambler", "C2M3SafeIntro009", null, 0.3),
			},
		],
	},

	{
		name = "C2M3SafeIntro009Sheva",
		criteria = 
		[
			["concept", "C2M3SafeIntro009"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M3SafeIntro009Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C2M3SafeIntro010Sheva",
		criteria = 
		[
			["concept", "C2M3SafeIntro010"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M3SafeIntro010Producer,
				followup = RThen("mechanic", "C2M3SafeIntro010", null, 0.3),
			},
		],
	},

	{
		name = "C3M1FerryEnd2Sheva",
		criteria = 
		[
			["concept", "C3M1FerryEnd2"],
			["who", "Sheva"],
			[IsNotSaidC3M1FerryEnd],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M1FerryEnd2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1FerryEnd", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WorldC3M1FerryCrossingJ2Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingJ2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC3M1FerryCrossingJ2Producer,
				followup = RThen("mechanic", "WorldC3M1FerryCrossingJ3", null, -1.986),
			},
		],
	},

	{
		name = "WorldC3M1FerryCrossingk2Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingk2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC3M1FerryCrossingk2Producer,
				followup = RThen("mechanic", "WorldC3M1FerryCrossingk3", null, -1.703),
			},
		],
	},

	{
		name = "WorldC3M1FerryCrossingL2Sheva",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingL2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC3M1FerryCrossingL2Producer,
				followup = RThen("mechanic", "WorldC3M1FerryCrossingL3", null, 0.1),
			},
		],
	},

	{
		name = "C3M2DisgustSheva",
		criteria = 
		[
			["concept", "c3m2disgust"],
			["who", "Sheva"],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M2DisgustProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.098 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M2SafeRoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["incombat", 0],
			["map", "c3m2_swamp"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			["world_auto_saferoomstart", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M2SafeRoomProducer,
				followup = RThen("mechanic", "C3M2SafeRooma2", null, 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M2SafeRoom2Sheva",
		criteria = 
		[
			["concept", "C3M2SafeRoom2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M2SafeRoom2Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C3M2SafeRoom2dSheva",
		criteria = 
		[
			["concept", "C3M2SafeRoom2d"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M2SafeRoom2dProducer,
				followup = RThen("gambler", "C3M2SafeRoom3d", null, -3.763),
			},
		],
	},

	{
		name = "InfoRemC3M2Bathtub3Sheva",
		criteria = 
		[
			["concept", "InfoRemC3M2Bathtub3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.InfoRemC3M2Bathtub3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.934 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C3M2PirogueSheva",
		criteria = 
		[
			["concept", "_C3M2Pirogue"],
			["who", "Sheva"],
			[ChanceToFire40Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C3M2PirogueProducer,
				followup = RThen("mechanic", "_C3M2Pirogue2", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.25 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C3M2Pirogue2Sheva",
		criteria = 
		[
			["concept", "_C3M2Pirogue2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C3M2Pirogue2Producer,
				followup = RThen("coach", "_C3M2Pirogue2", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.25 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M3SafeRoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C3M3SafeRoomProducer,
				followup = RThen("mechanic", "C3M3SafeRoom2a2", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M3SafeRoom2a3Sheva",
		criteria = 
		[
			["concept", "C3M3SafeRoom2a3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M3SafeRoom2a3Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C3M3SafeRoom2c2Sheva",
		criteria = 
		[
			["concept", "C3M3SafeRoom2c2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M3SafeRoom2c2Producer,
				followup = RThen("mechanic", "C3M3SafeRoom2c3", null, 0.05),
			},
		],
	},

	{
		name = "C3M3SafeRoom2e2Sheva",
		criteria = 
		[
			["concept", "C3M3SafeRoom2e2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M3SafeRoom2e2Producer,
				followup = RThen("coach", "C3M3SafeRoom2b2", null, 0.05),
			},
		],
	},

	{
		name = "InfoRemC3M3Bodies2Sheva",
		criteria = 
		[
			["concept", "InfoRemC3M3Bodies2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.InfoRemC3M3Bodies2Producer,
			},
		],
	},

	{
		name = "InfoRemC3M3Bodies3Sheva",
		criteria = 
		[
			["concept", "InfoRemC3M3Bodies3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.InfoRemC3M3Bodies3Producer,
			},
		],
	},

	{
		name = "InfoRemC3M3LowerGateaSheva",
		criteria = 
		[
			["concept", "InfoRemC3M3LowerGatea"],
			["who", "Sheva"],
			[IsNotSaidC3M3BridgeButton],
			[IntensityUnder25],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.InfoRemC3M3LowerGateaProducer,
			},
		],
	},

	{
		name = "C3M4BoatNagsSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M4BoatNagsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4InBoatNagsSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M4InBoatNagsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4Button1ASheva",
		criteria = 
		[
			["concept", "C3M4Button1A"],
			["who", "Sheva"],
			["from", "orator"],
			["world_auto_talkingsheva", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M4Button1AProducer,
				followup = RThen("orator", "C3M4Button101", null, 0.3),
			},
		],
	},

	{
		name = "C3M4ButtonNameSheva",
		criteria = 
		[
			["concept", "C3M4ButtonName"],
			["who", "Sheva"],
			["from", "orator"],
			["world_auto_talkingsheva", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M4ButtonNameProducer,
				followup = RThen("orator", "C3M4ButtonHowMany", null, 0.1),
			},
		],
	},

	{
		name = "C3M4ButtonHowManyAnswerSheva",
		criteria = 
		[
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Sheva"],
			["from", "orator"],
			["world_auto_talkingsheva", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M4ButtonHowManyAnswerProducer,
				followup = RThen("orator", "C3M4Button102", null, 0.1),
			},
		],
	},

	{
		name = "C3M4Button201Sheva",
		criteria = 
		[
			["concept", "C3M4Button201"],
			["who", "Sheva"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingsheva", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M4Button201Producer,
				followup = RThen("orator", "C3M4Button202", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.737 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4Button202Sheva",
		criteria = 
		[
			["concept", "C3M4Button202"],
			["from", "orator"],
			["world_auto_talkingsheva", 1],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M4Button202Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.424 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M4GateBlow01Sheva",
		criteria = 
		[
			["concept", "C3M4GateBlow01"],
			["who", "Sheva"],
			["from", "orator"],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M4GateBlow01Producer,
				followup = RThen("orator", "C3M4GateBlow02", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4StormBlindIdleSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			[_auto_NotTimerLockA],
			["world_auto_timera", 1],
			[_auto_NotC4ShevaInCover],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4StormBlindIdleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerA", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M2IdleWitchville01Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			["incombat", 0],
			[IsWorldTalkSheva],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			["world_auto_shevainwitchville", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4M2IdleWitchville01Producer,
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
		name = "C4M2PushedButtonSheva",
		criteria = 
		[
			["concept", "c4m2_elevator_top_button"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4M2PushedButtonProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidActivatedC4M2Elevator", value = 1, duration = 0.0 },
			c2 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c3 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M5BoatNagsSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4M5BoatNagsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M5InBoatNagsSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4M5InBoatNagsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M1_intro002Sheva",
		criteria = 
		[
			["concept", "C5M1_intro002"],
			["who", "Sheva"],
			["numberofteamalive", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M1_intro002Producer,
				followup = RThen("orator", "C5M1_intro003", null, 0.01),
			},
		],
	},

	{
		name = "C5M1_intro004Sheva",
		criteria = 
		[
			["concept", "C5M1_intro004"],
			["who", "Sheva"],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M1_intro004Producer,
				followup = RThenAny("C5M1_intro005", 0.01),
			},
		],
	},

	{
		name = "C5M1_intro005Sheva",
		criteria = 
		[
			["concept", "C5M1_intro005"],
			["who", "Sheva"],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M1_intro005Producer,
				followup = RThen("Mechanic", "C5M1_intro009", null, 0.01),
			},
		],
	},

	{
		name = "C5M1_intro010Sheva",
		criteria = 
		[
			["concept", "C5M1_intro010"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M1_intro010Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C5M1Flyby01Sheva",
		criteria = 
		[
			["concept", "C5M1Flyby01"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M1Flyby01Producer,
				followup = RThenAny("C5M1Flyby02", 0.1),
			},
		],
	},

	{
		name = "C5M1Flyby02Sheva",
		criteria = 
		[
			["concept", "C5M1Flyby02"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M1Flyby02Producer,
			},
		],
	},

	{
		name = "C5M2_signcontagious01Sheva",
		criteria = 
		[
			["concept", "C5M2_signcontagious01"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M2_signcontagious01Producer,
			},
		],
	},

	{
		name = "C5M2AlarmNagSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["map", "c5m2_park"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			["world_auto_alarm", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M2AlarmNagProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 13.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m2parkSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c5m2park"],
			[IsNotSaidc5m2park],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc5m2parkProducer,
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
		name = "C5M3AlarmFieldNagsSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C5M3AlarmFieldNagsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.508 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3FirstInAlarmSheva",
		criteria = 
		[
			["concept", "C5M3FirstInAlarmField"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M3FirstInAlarmProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.382 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3GraveNagsSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C5M3GraveNagsProducer,
			},
		],
	},

	{
		name = "C5M3Jets2Sheva",
		criteria = 
		[
			["concept", "c5m3Jets2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M3Jets2Producer,
				followup = RThen("self", "C5M3Jets3", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.098 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3Jets3Sheva",
		criteria = 
		[
			["concept", "C5M3Jets3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M3Jets3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.098 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3OnBridgeSheva",
		criteria = 
		[
			["concept", "c5m3OnBridge"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.546 },
			c2 = { context = "_auto_AlarmFieldOn", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3SeeGraveyard01Sheva",
		criteria = 
		[
			["concept", "C5M3SeeGraveyard01"],
			["who", "Sheva"],
			[IssuerClose],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M3SeeGraveyard01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.855 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3ShootCarSheva",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["subject", "Sheva"],
			["panictype", "CarAlarm"],
			["world_auto_inalarmfield", 1],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M3ShootCarProducer,
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
		name = "C5M3ShootCar2Sheva",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotSheva],
			["panictype", "CarAlarm"],
			[ChanceToFire25Percent],
			["world_auto_inalarmfield", 1],
			[_auto_ShotSecondCar],
			["world_auto_alarmfieldon", 1],
			[_auto_NotTimerLockA],
			[AutoShotcarIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M3ShootCar2Producer,
			},
		],
		applycontext =
		{
			//: _auto_ShotCar:++1:None:None requires criteria function!
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M3ShootCar3Sheva",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotSheva],
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
				func = Custom_Talker_Sheva.C5M3ShootCar3Producer,
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
		name = "C5M3Sniper01Sheva",
		criteria = 
		[
			["concept", "C5M3Sniper01"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M3Sniper01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3bodiesSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.PlayerRemarkc5m3bodiesProducer,
				followup = RThenAny("WorldC502NotZombies3", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m2peopleSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc5m2peopleProducer,
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
		name = "AUTOBLANK_PlayerRemarkc5m2peopleSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m2people", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC502NotZombies2Sheva",
		criteria = 
		[
			["concept", "WorldC502NotZombies2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC502NotZombies2Producer,
				followup = RThen("mechanic", "WorldC502NotZombies2", null, 0.1),
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502NotZombies3bSheva",
		criteria = 
		[
			["concept", "WorldC502NotZombies3b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC502NotZombies3bProducer,
				followup = RThen("coach", "WorldC502NotZombies3b", null, 0.1),
			},
		],
	},

	{
		name = "PlayerRemarkc5m3insewerSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c5m3insewer"],
			[IsNotSaidc5m3insewer],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc5m3insewerProducer,
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
		name = "PlayerRemarkc5m3offhighwaySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.PlayerRemarkc5m3offhighwayProducer,
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
		name = "PlayerRemarkc5m3upladderSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c5m3upladder"],
			[IsNotSaidc5m3upladder],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc5m3upladderProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upladder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m3upstepsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c5m3upsteps"],
			[IsNotSaidc5m3upsteps],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc5m3upstepsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc5m3upsteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombExtSheva",
		criteria = 
		[
			["concept", "C5M4BombExt"],
			["who", "Sheva"],
			["incombat", 0],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M4BombExtProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.203 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombInt01Sheva",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NoAirstrikes],
			[AutoAirstrikeIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M4BombInt01Producer,
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
		name = "C5M4BombInt01ASheva",
		criteria = 
		[
			["concept", "C5M4BombIntA"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M4BombInt01AProducer,
			},
		],
	},

	{
		name = "C5M4BombInt02Sheva",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C5M4BombInt02Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.203 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombInt03Sheva",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C5M4BombInt03Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.93 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M4BombIntManySheva",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C5M4BombInt03Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.93 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc5m4inminifinaleSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c5m4inminifinale"],
			[IsNotSaidc5m4inminifinale],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc5m4inminifinaleProducer,
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
		name = "PlayerRemarkc5m4seebridgeSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c5m4seebridge"],
			[IsNotSaidc5m4seebridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc5m4seebridgeProducer,
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
		name = "EllisStoryInterruptSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Sheva"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptProducer,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.756 },
			c2 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c3 = { context = "_auto_DidInterrupt", value = 1, duration = 0.0 },
			c4 = { context = "_auto_TellingStory", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "EllisStoryInterruptGenericSheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptGenericProducer,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01),
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
		name = "EllisStoryInterruptC1M2Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c1m2_streets"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptC1M2Producer,
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
		name = "EllisStoryInterruptC1M3Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c1m3_mall"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptGenericProducer,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01),
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
		name = "EllisStoryInterruptC2M5Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c2m5_concert"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptGenericProducer,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01),
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
		name = "EllisStoryInterruptC3M2Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c3m2_swamp"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptC3M2Producer,
				followup = RThen("Mechanic", "PlayerYes", null, 0.1),
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
		name = "EllisStoryInterruptC4M3Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c4m3_sugarmill_b"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptGenericProducer,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01),
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
		name = "EllisStoryInterruptC4M4Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c4m4_milltown_b"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptGenericProducer,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01),
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
		name = "EllisStoryInterruptC5M2Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c5m2_park"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptGenericProducer,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01),
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
		name = "EllisStoryInterruptC5M5Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c5m5_bridge"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptGenericProducer,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01),
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
		name = "EllisStoryInterruptC6M3Sheva",
		criteria = 
		[
			["concept", "EllisInterrupt"],
			["who", "Sheva"],
			["map", "c6m3_port"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
			[IsNotSaidC6M3Elevator],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryInterruptC6M3Producer,
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
		name = "EllisStoryReac01Sheva",
		criteria = 
		[
			["concept", "EllisStoryReac01"],
			["who", "Sheva"],
			["map", "c3m2_swamp"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EllisStoryReac01Producer,
			},
		],
	},

	{
		name = "C5M5_Button2Sheva",
		criteria = 
		[
			["concept", "C5M5_Button2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_Button2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BridgeNag", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5_GateDownSheva",
		criteria = 
		[
			["concept", "C5M5_GateDown"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_GateDownProducer,
			},
		],
	},

	{
		name = "C5M5_Button2207Sheva",
		criteria = 
		[
			["concept", "C5M5_Button2207"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_Button2207Producer,
			},
		],
	},

	{
		name = "C5M5_SurvivorConv01Sheva",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv01"],
			["who", "Sheva"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingsheva", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_SurvivorConv01Producer,
				followup = RThen("orator", "C5M5_Soldier1Conv03", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv02Sheva",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv02"],
			["who", "Sheva"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingsheva", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_SurvivorConv02Producer,
				followup = RThen("orator", "C5M5_Soldier1Conv04", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv03Sheva",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv03"],
			["who", "Sheva"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingsheva", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_SurvivorConv03Producer,
				followup = RThen("orator", "C5M5_Soldier1Conv05", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv04Sheva",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv04"],
			["who", "Sheva"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingsheva", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_SurvivorConv04Producer,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_SurvivorConv05Sheva",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv05"],
			["who", "Sheva"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingsheva", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_SurvivorConv04Producer,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01),
			},
		],
	},

	{
		name = "C5M5_LowerTheBridgeSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			["world_auto_bridgenag", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_LowerTheBridgeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 30.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5Button1Sheva",
		criteria = 
		[
			["concept", "C5M5Button1"],
			["who", "Sheva"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingsheva", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5Button1Producer,
				followup = RThen("Orator", "C5M5_Soldier1Conv01", null, 0.01),
			},
		],
	},

	{
		name = "C5M5Button1BuzzardRunSheva",
		criteria = 
		[
			["concept", "C5M5Button1"],
			["who", "Sheva"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingsheva", 1],
			[_auto_NotButton2],
			["world_auto_buzzardrunmentioned", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5Button1BuzzardRunProducer,
				followup = RThen("Orator", "C5M5_Soldier1Conv01", null, 0.01),
			},
		],
	},

	{
		name = "C5M5HearSoldiersSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[_auto_NotRadioNag],
			[AutoIsNotSurvival],
			["world_auto_soldierchatter", 1],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5HearSoldiersProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_RadioNag", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c3 = { context = "_auto_TimerLockSheva", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5HearSoldiersNagSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_soldierchatter", 1],
			[_auto_NotButton1],
			["world_auto_radionag", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5HearSoldiersNagProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5LeaveSafeSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Sheva"],
			["map", "c5m5_bridge"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5LeaveSafeProducer,
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
		name = "C5M5RescueStartSheva",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "Sheva"],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5RescueStartProducer,
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
		name = "C5M5RunToHeliSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5RunToHeliProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C5M5BridgeDestroyed2Sheva",
		criteria = 
		[
			["concept", "C5M5BridgeDestroyed2"],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsEveryoneAlive],
			["worldc5m5survivoroutro", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5BridgeDestroyed2Producer,
			},
		],
	},

	{
		name = "PlayerKillTankConfirmationC5M5Sheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Tank"],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c5m5_bridge"],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillTankConfirmationC5M5Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "C5M5_saferoom004Sheva",
		criteria = 
		[
			["concept", "C5M5_saferoom004"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C5M5_saferoom004Producer,
			},
		],
	},

	{
		name = "C6M1_IntotheparkNoHealthSheva",
		criteria = 
		[
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1_IntotheparkNoHealthProducer,
			},
		],
	},

	{
		name = "C6M1Intro_01Biker03Sheva",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C6M1Intro_01Biker03Producer,
				followup = RThen("Biker", "C6M1Intro_06a", null, -2.023),
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
		name = "C6M1Intro_01TeenGirl03Sheva",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C6M1Intro_01TeenGirl03Producer,
				followup = RThen("TeenGirl", "C6M1Intro_03a", null, -3.225),
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
		name = "C6M1Intro_05aSheva",
		criteria = 
		[
			["concept", "C6M1Intro_05a"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_05aProducer,
				followup = RThen("Biker", "C6M1Intro_05b", null, -2.451),
			},
		],
	},

	{
		name = "C6M1Intro_05cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_05c"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_05cProducer,
				followup = RThen("Biker", "C6M1Intro_05d", null, -1.958),
			},
		],
	},

	{
		name = "C6M1Intro_05eSheva",
		criteria = 
		[
			["concept", "C6M1Intro_05e"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_05eProducer,
				followup = RThenAny("WorldC6M1_HistoricTour", -1.874),
			},
		],
	},

	{
		name = "C6M1Intro_06bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_06b"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_06bProducer,
				followup = RThen("Biker", "C6M1Intro_06c", null, -2.236),
			},
		],
	},

	{
		name = "C6M1Intro_06dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_06d"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_06dProducer,
				followup = RThen("Biker", "C6M1Intro_06e", null, -0.709),
			},
		],
	},

	{
		name = "C6M1Intro_07bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_07b"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_07bProducer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C6M1Intro_07cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_07c"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_07cProducer,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
	},

	{
		name = "C6M1Intro_09eSheva",
		criteria = 
		[
			["concept", "C6M1Intro_09e"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_09eProducer,
				followup = RThen("Sheva", "C6M1Intro_09f", null, -2.022),
			},
		],
	},

	{
		name = "C6M1Intro_09fSheva",
		criteria = 
		[
			["concept", "C6M1Intro_09f"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_09fProducer,
				followup = RThen("Biker", "C6M1Intro_09g", null, -1.643),
			},
		],
	},

	{
		name = "C6M1Intro_10bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_10b"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_10bProducer,
				followup = RThen("Biker", "C6M1Intro_10c", null, -4.931),
			},
		],
	},

	{
		name = "C6M1Intro_10dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_10d"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_10dProducer,
				followup = RThen("Sheva", "C6M1Intro_10e", null, -2.369),
			},
		],
	},

	{
		name = "C6M1Intro_10eSheva",
		criteria = 
		[
			["concept", "C6M1Intro_10e"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_10eProducer,
			},
		],
	},

	{
		name = "C6M1Intro_12aSheva",
		criteria = 
		[
			["concept", "C6M1Intro_12a"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_12aProducer,
				followup = RThen("Mechanic", "C6M1Intro_12b", null, -2.341),
			},
		],
	},

	{
		name = "C6M1Intro_12cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_12c"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_12cProducer,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
	},

	{
		name = "C6M1Intro_14dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_14d"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_14dProducer,
			},
		],
	},

	{
		name = "C6M1Intro_15cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_15c"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_15cProducer,
				followup = RThen("TeenGirl", "C6M1Intro_15d", null, -2.339),
			},
		],
	},

	{
		name = "C6M1Intro_17bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_17b"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_17bProducer,
				followup = RThen("TeenGirl", "C6M1Intro_17c", null, -4.79),
			},
		],
	},

	{
		name = "C6M1Intro_17dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_17d"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_17dProducer,
			},
		],
	},

	{
		name = "C6M1Intro_18bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_18b"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_18bProducer,
				followup = RThen("Biker", "C6M1Intro_18c", null, -2.243),
			},
		],
	},

	{
		name = "C6M1Intro_18dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_18d"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_18dProducer,
				followup = RThen("Biker", "C6M1Intro_18e", null, -2.015),
			},
		],
	},

	{
		name = "C6M1Intro_19bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_19b"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_19bProducer,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
	},

	{
		name = "C6M1Intro_20aSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20a"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20aProducer,
				followup = RThen("Sheva", "C6M1Intro_20b", null, -0.951),
			},
		],
	},

	{
		name = "C6M1Intro_20bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20b"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20bProducer,
				followup = RThen("Biker", "C6M1Intro_20c", null, -2.037),
			},
		],
	},

	{
		name = "C6M1Intro_20dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20d"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20dProducer,
				followup = RThen("Biker", "C6M1Intro_20e", null, -4.9),
			},
		],
		applycontext =
		{
			c1 = { context = "C6M1_ShevaIsAVampire", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_20fSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20f"],
			["who", "Sheva"],
			["worldc6m1_shevaisavampire", 1],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20fProducer,
				followup = RThen("biker", "C6M1Intro_20f", null, 0.1),
			},
		],
	},

	{
		name = "C6M1Intro_20gSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20g"],
			["who", "Sheva"],
			["worldc6m1_shevaisavampire", 1],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20gProducer,
			},
		],
	},

	{
		name = "C6M1Intro_22aSheva",
		criteria = 
		[
			["concept", "C6M1Intro_22a"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_22aProducer,
				followup = RThen("TeenGirl", "C6M1Intro_22b", null, -3.403),
			},
		],
	},

	{
		name = "C6M1Intro_22cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_22c"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_22cProducer,
				followup = RThen("TeenGirl", "C6M1Intro_22d", null, -2.93),
			},
		],
	},

	{
		name = "C6M1Intro_22fSheva",
		criteria = 
		[
			["concept", "C6M1Intro_22f"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_22fProducer,
				followup = RThen("TeenGirl", "C6M1Intro_22g", null, -3.037),
			},
		],
	},

	{
		name = "C6M1Intro_22hSheva",
		criteria = 
		[
			["concept", "C6M1Intro_22h"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_22hProducer,
			},
		],
	},

	{
		name = "C6M1Intro_24bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_24b"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_24bProducer,
				followup = RThen("mechanic", "C6M1Intro_24c", null, 0.1),
			},
		],
	},

	{
		name = "C6M1Intro_ConfirmObjectiveSheva",
		criteria = 
		[
			["concept", "C6M1Intro_ConfirmObjective"],
			["who", "Sheva"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_ConfirmObjectiveProducer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "LeavingC6M1StartSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.LeavingC6M1StartProducer,
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
		name = "LeavingC6M1StartNoHealthSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Sheva"],
			[IsNotAlone],
			[NoHasFirstAidKit],
			["map", "c6m1_riverbank"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.LeavingC6M1StartNoHealthProducer,
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
		name = "C6M1Start1Sheva",
		criteria = 
		[
			["concept", "C6M1Start1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Start1Producer,
				followup = RThen("mechanic", "C6M1Start2", null, 0.1),
			},
		],
	},

	{
		name = "RemWorldC6M1_WeddingWarn01Sheva",
		criteria = 
		[
			["concept", "RemWorldC6M1_WeddingWarn01"],
			["who", "Sheva"],
			[IsSubjectDistNear800],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.RemWorldC6M1_WeddingWarn01Producer,
			},
		],
	},

	{
		name = "WorldC6M1_HistoricTourSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_HistoricTour"],
			[IsNotSaidWorldC6M1_HistoricTour],
			["worldremarkworldc6m1_historictour", 1],
			[IsSubjectNear800],
			[IsTalk],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M1_HistoricTourProducer,
				followup = RThen("Coach", "HistoricTour02a", null, -3.829),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WorldC6M1_PostWedding02aSheva",
		criteria = 
		[
			["concept", "WorldC6M1_PostWedding02a"],
			["who", "Sheva"],
			[IsSubjectDistNear800],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M1_PostWedding02aProducer,
			},
		],
	},

	{
		name = "WorldC6M1_WeddingWarn03aSheva",
		criteria = 
		[
			["concept", "WorldC6M1_WeddingWarn03a"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M1_WeddingWarn03aProducer,
			},
		],
	},

	{
		name = "WorldC6M1_WeddingWarn03bSheva",
		criteria = 
		[
			["concept", "WorldC6M1_WeddingWarn03b"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M1_WeddingWarn03bProducer,
			},
		],
	},

	{
		name = "WorldC6M1_WeddingWarn03cSheva",
		criteria = 
		[
			["concept", "WorldC6M1_WeddingWarn03c"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M1_WeddingWarn03bProducer,
			},
		],
	},

	{
		name = "C6M2_OpenGate1Sheva",
		criteria = 
		[
			["concept", "C6M2_OpenGate1"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M2_OpenGate1Producer,
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
		name = "C6M2_OpenGate2Sheva",
		criteria = 
		[
			["concept", "C6M2_OpenGate2"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M2_OpenGate2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo01aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo01a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo01aProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo01b", null, -2.711),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo03a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo03aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo03b", null, -2.886),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03aZoeySheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo03a"],
			["who", "Sheva"],
			["introactor", "zoey"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo03aZoeyProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo03b", null, -2.886),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo03c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo03cProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo06aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo06a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo06aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvoFrancisStartSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["incombat", 0],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["introactor", "francis"],
			["isgambleralive", 1],
			[ChanceToFire50Percent],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvoFrancisStartProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo08a", null, -1.679),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo07aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo07a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo07aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo08bProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo08c", null, -1.262),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08dSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08d"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo08dProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo08e", null, -0.977),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08fSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08f"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo08fProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo10aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo10a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo10aProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo10b", null, -2.753),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo10cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo10c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo10cProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo10d", null, -3.678),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo14a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo14aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo14b", null, -5.157),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo14c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo14cProducer,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo14d", null, -3.757),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14eSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo14e"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo14eProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo14f", null, -0.987),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo15aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo15a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo15aProducer,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo15b", null, -3.064),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvoStartSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["incombat", 0],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvoStartProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo17a", null, -10.043),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo16a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo16aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo16b", null, -5.036),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo16c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo16cProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo16d", null, -3.803),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo17bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo17b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo17bProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo18a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo18aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo18b", null, -2.626),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18dSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo18d"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo18dProducer,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo18e", null, -1.428),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo19a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo19aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19fSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo19f"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo19fProducer,
				followup = RThen("mechanic", "DLC1_C6M2_SafeRoomConvo19g", null, 0.1),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo20aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo20a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo20aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo21aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo21a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo21aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo21b", null, -3.574),
			},
		],
	},

	{
		name = "WorldC6M2_InSewer101aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer101a"],
			["who", "Sheva"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_InSewer101aProducer,
				followup = RThen("Sheva", "WorldC6M2_InSewer101b", null, -2.388),
			},
		],
	},

	{
		name = "WorldC6M2_InSewer101bSheva",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer101b"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_InSewer101bProducer,
				followup = RThen("Gambler", "WorldC6M2_InSewer202a", null, 0.1),
			},
		],
	},

	{
		name = "WorldC6M2_InSewer202aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer202a"],
			["who", "Sheva"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_InSewer202aProducer,
			},
		],
	},

	{
		name = "WorldC6M2_OnTourWalk101aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk101a"],
			["who", "Sheva"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_OnTourWalk101aProducer,
				followup = RThen("Sheva", "WorldC6M2_OnTourWalk101b", null, -0.85),
			},
		],
	},

	{
		name = "WorldC6M2_OnTourWalk101bSheva",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk101b"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_OnTourWalk101bProducer,
			},
		],
	},

	{
		name = "WorldC6M2_OnTourWalk102bSheva",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk102b"],
			["who", "Sheva"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_OnTourWalk102bProducer,
			},
		],
	},

	{
		name = "WorldC6M2_Phase201aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_Phase201a"],
			["who", "Sheva"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Phase201aProducer,
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo01aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo01a"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Tattoo01aProducer,
				followup = RThen("Gambler", "WorldC6M2_Tattoo01b", null, -2.084),
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo02aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo02a"],
			["who", "Sheva"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Tattoo02aProducer,
				followup = RThen("Coach", "WorldC6M2_Tattoo02b", null, -0.489),
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo02cSheva",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo02c"],
			["who", "Sheva"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Tattoo02cProducer,
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo02dSheva",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo02d"],
			["who", "Sheva"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Tattoo02dProducer,
			},
		],
	},

	{
		name = "WorldC6M2_TourEntrance01aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_TourEntrance01a"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_TourEntrance01aProducer,
			},
		],
	},

	{
		name = "C6M3_BridgeDownSheva",
		criteria = 
		[
			["concept", "C6M3_BridgeDown"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_BridgeDownProducer,
			},
		],
	},

	{
		name = "C6M3_BridgeGettoCarSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_BridgeGettoCarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_elevatorCancelSheva",
		criteria = 
		[
			["concept", "SceneCancelled"],
			["who", "Sheva"],
			["map", "c6m3_port"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
	},

	{
		name = "C6M3_elevatorSheva",
		criteria = 
		[
			["concept", "c6m3_elevator"],
			["who", "Sheva"],
			["map", "c6m3_port"],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_elevatorProducer,
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
		name = "C6M3_GivenItemBikerSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "Biker"],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_GivenItemBikerProducer,
			},
		],
	},

	{
		name = "C6M3_GivenItemBikerIntroSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "Biker"],
			["map", "c6m3_port"],
			["introactor", "francis"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_GivenItemBikerIntroProducer,
			},
		],
	},

	{
		name = "C6M3_GivenItemTeenGirlSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_GivenItemTeenGirlProducer,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvoFrancisStartSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["incombat", 0],
			["map", "c6m3_port"],
			["instartarea", 1],
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
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvoFrancisStartProducer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo01a", null, -1.26),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo01b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo01bProducer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo01c", null, -0.926),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02a1Sheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo02a1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo02a1Producer,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo02b", null, -0.76),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo02c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo02cProducer,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo02d", null, -1.258),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo04b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo04bProducer,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo04c", null, -2.568),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04dSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo04d"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo04dProducer,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo05cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo05c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo05cProducer,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo05d", null, -1.309),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo06aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo06a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo06aProducer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo06b", null, -3.045),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvoZoeyStartSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["incombat", 0],
			["map", "c6m3_port"],
			["instartarea", 1],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["introactor", "zoey"],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvoZoeyStartProducer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo07a", null, -3.413),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo07b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo07bProducer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo07c", null, -4.242),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08gSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo08g"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo08gProducer,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo09bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo09b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo09bProducer,
			},
		],
	},

	{
		name = "IncapBounceSheva",
		criteria = 
		[
			["concept", "SurvivorIncapacitated"],
			["who", "Sheva"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.IncapBounceProducer,
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
		name = "PlayerCallForRescueSheva",
		criteria = 
		[
			["concept", "CallForRescue"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[HasNotCalledForRescue],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCallForRescueProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForRescue", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c6m3_outroSheva",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.c6m3_outroProducer,
				followup = RThen("Mechanic", "c6m3_outroL4D1012a", null, 0.1),
			},
		],
	},

	{
		name = "SurvivorSpotFirstWeaponsSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSpeaking],
			[IsWorldTalkSheva],
			[IsNotPickedUpFirstAidKit],
			["map", "c1m1_hotel"],
			[IsNotSaidFirstWeapon],
			[IsNotSaidWorldC1M1First],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpotFirstWeaponsProducer,
				followup = RThen("gambler", "Player.WhinyNick", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFirstWeapon", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAdrenalineSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "Adrenaline"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedAdrenalineProducer,
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
		name = "SurvivorSpottedAdrenalineAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			["weaponname", "Adrenaline"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedAdrenalineProducer,
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
		name = "SurvivorSpottedAmmoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedAmmoProducer,
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
		name = "SurvivorSpottedAmmoAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAmmo],
			[IsNotSaidSpot],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedAmmoProducer,
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
		name = "SurvivorSpottedAmmo2Sheva",
		criteria = 
		[
			["concept", "PlayerSpotAmmo"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedAmmo2Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachCloseSheva",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedCoachCloseProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachClose2Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedCoachCloseProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachClose2C1Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedCoachClose2C1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachCloseC1Sheva",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedCoachClose2C1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachFarSheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachFar400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedCoachFarProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedCoachFarC1Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachFar400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedCoachFarC1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedDefibrillatorSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "Defibrillator"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedDefibrillatorProducer,
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
		name = "SurvivorSpottedDefibrillatorAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			["weaponname", "Defibrillator"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedDefibrillatorProducer,
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
		name = "SurvivorSpottedGamblerCloseSheva",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGamblerCloseProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerClose2Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGamblerCloseProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerClose2C1Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGamblerClose2C1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerCloseC1Sheva",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerNear400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGamblerClose2C1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerFarSheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerFar400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGamblerFarProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedGamblerFarC1Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Gambler"],
			[IsGamblerFar400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGamblerFarC1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedGrenadeSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "PipeBomb"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGrenadeProducer,
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
		name = "SurvivorSpottedGrenadeAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			["weaponname", "PipeBomb"],
			[IsWorldTalkSheva],
			["hasgrenade", 1],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGrenadeProducer,
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
		name = "SurvivorSpottedGrenadeLauncherC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "GrenadeLauncher"],
			[C1M1orC1M2],
			[IsWorldTalkSheva],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGrenadeLauncherC1M2Producer,
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
		name = "SurvivorSpottedGrenadeLauncherAutoC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[C1M1orC1M2],
			[IsNotSaidSpot],
			["weaponname", "GrenadeLauncher"],
			[IsWorldTalkSheva],
			[IsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGrenadeLauncherC1M2Producer,
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
		name = "SurvivorSpottedGrenadeLauncherSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "GrenadeLauncher"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGrenadeLauncherProducer,
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
		name = "SurvivorSpottedGrenadeLauncherAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			["weaponname", "GrenadeLauncher"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGrenadeLauncherProducer,
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
		name = "SurvivorSpottedHealthSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "FirstAidKit"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHealthProducer,
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
		name = "SurvivorSpottedHealthAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			["weaponname", "FirstAidKit"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHealthProducer,
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
		name = "SurvivorSpottedMechanicCloseSheva",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMechanicCloseProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedMechanicClose2Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMechanicCloseProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedMechanicClose2C1Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMechanicClose2C1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedMechanicCloseC1Sheva",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMechanicClose2C1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedMechanicFarSheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicFar400],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMechanicFarProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedMechanicFarC1Sheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicFar400],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMechanicFarC1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedMolotovSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "Molotov"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMolotovProducer,
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
		name = "SurvivorSpottedMolotovAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			["weaponname", "Molotov"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMolotovProducer,
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
		name = "SurvivorSpottedPillsSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "PainPills"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedPillsProducer,
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
		name = "SurvivorSpottedPillsAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedPillsProducer,
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
		name = "SurvivorSpottedPillsAutoNoHasPillsSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[NoHasPainPills],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
			[ChanceToFire10Percent],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedPillsAutoNoHasPillsProducer,
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
		name = "SurvivorSpottedUpPack_ExplosiveSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Explosive"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedUpPack_ExplosiveProducer,
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
		name = "SurvivorSpottedUpPack_ExplosiveAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Explosive"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedUpPack_ExplosiveProducer,
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
		name = "SurvivorSpottedUpPack_IncendiarySheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Incendiary"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedUpPack_IncendiaryProducer,
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
		name = "SurvivorSpottedUpPack_IncendiAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Incendiary"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedUpPack_IncendiaryProducer,
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
		name = "SurvivorSpottedVomitJarSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedVomitJarProducer,
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
		name = "SurvivorSpottedVomitJarAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedVomitJarProducer,
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
		name = "SurvivorSpottedVomitJarAutoC1Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedVomitJarAutoC1Producer,
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
		name = "SurvivorSpottedVomitJarC1Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedVomitJarAutoC1Producer,
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
		name = "SurvivorSpottedWorldCloseSheva",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWorldCloseProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedArmoredC5M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c5m1_waterfront"],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedArmoredC5M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedArmoredSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedArmoredProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidArmoredWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedBoomerSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedBoomerProducer,
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
		name = "SurvivorSpottedBoomerAlsoSheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedBoomerProducer,
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
		name = "SurvivorSpottedBoomer2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedBoomerProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedBoomerC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedBoomerC1M1Producer,
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
		name = "SurvivorSpottedBoomerAlsoC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedBoomerC1M1Producer,
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
		name = "SurvivorSpottedBoomer2C1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedBoomerC1M1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedBoomerC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowBoomer],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedBoomerC1M2Producer,
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
		name = "SurvivorSpottedBoomerAlsoC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedBoomerC1M1Producer,
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
		name = "SurvivorSpottedCedaSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidCedaWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedCedaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedCedaC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidCedaWarn],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedCedaC1M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCedaWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChargerSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChargerProducer,
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
		name = "SurvivorSpottedChargerAlsoSheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChargerProducer,
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
		name = "SurvivorSpottedCharger2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChargerProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedChargerC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChargerC1M1Producer,
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
		name = "SurvivorSpottedChargerAlsoC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChargerC1M1Producer,
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
		name = "SurvivorSpottedCharger2C1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChargerC1M1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedChargerC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowCharger],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChargerC1M2Producer,
				followup = RThenAny("Player.KnowCharger", 0.1),
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
		name = "SurvivorSpottedChargerAlsoC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChargerC1M1Producer,
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
		name = "SurvivorSpottedClownSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawclownsIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedClownProducer,
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
		name = "SurvivorSpottedClownC2M2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidClownWarn],
			["map", "c2m2_fairgrounds"],
			[IsNotSpeakingWeight0],
			[SawclownsIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedClownC2M2Producer,
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
		name = "SurvivorSpottedFallenSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedFallenProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHunterSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHunterProducer,
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
		name = "SurvivorSpottedHunterAlsoSheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHunterProducer,
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
		name = "SurvivorSpottedHunter2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHunterProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedHunterC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHunterC1M1Producer,
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
		name = "SurvivorSpottedHunterAlsoC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHunterC1M1Producer,
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
		name = "SurvivorSpottedHunter2C1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHunterC1M1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedHunterC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowHunter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHunterC1M2Producer,
				followup = RThenAny("Player.KnowHunter", 0.1),
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
		name = "SurvivorSpottedHunterAlsoC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedHunterC1M1Producer,
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
		name = "SurvivorSpottedInfectedSheva",
		criteria = 
		[
			["concept", "PlayerIncoming"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedInfectedProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedJimmySheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "jimmy"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidJimmyWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJimmyProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidJimmyWarn", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedJockeySheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJockeyProducer,
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
		name = "SurvivorSpottedJockeyAlsoSheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJockeyProducer,
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
		name = "SurvivorSpottedJockey2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJockeyProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedJockeyC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJockeyC1M1Producer,
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
		name = "SurvivorSpottedJockeyAlsoC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJockeyC1M1Producer,
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
		name = "SurvivorSpottedJockey2C1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJockeyC1M1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedJockeyC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowJockey],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJockeyC1M2Producer,
				followup = RThenAny("Player.KnowJockey", 0.1),
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
		name = "SurvivorSpottedJockeyAlsoC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedJockeyC1M1Producer,
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
		name = "SurvivorSpottedMudmenSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMudmenProducer,
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
		name = "SurvivorSpottedMudmenFirstSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidMudmenWarn],
			["map", "c3m2_swamp"],
			[IsNotSpeakingWeight0],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMudmenFirstProducer,
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
		name = "SurvivorSpottedSmokerSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSmokerProducer,
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
		name = "SurvivorSpottedSmokerAlsoSheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSmokerProducer,
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
		name = "SurvivorSpottedSmoker2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSmokerProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedSmokerC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSmokerC1M1Producer,
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
		name = "SurvivorSpottedSmokerAlsoC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSmokerC1M1Producer,
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
		name = "SurvivorSpottedSmoker2C1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSmokerC1M1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedSmokerC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowSmoker],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSmokerC1M2Producer,
				followup = RThenAny("Player.KnowSmoker", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmokerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "KnowSmoker", value = 1, duration = 0.0 },
			c4 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSmokerAlsoC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSmokerC1M1Producer,
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
		name = "SurvivorSpottedSpitterSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSpitterProducer,
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
		name = "SurvivorSpottedSpitterAlsoSheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSpitterProducer,
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
		name = "SurvivorSpottedSpitter2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSpitterProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedSpitterC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSpitterC1M1Producer,
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
		name = "SurvivorSpottedSpitterAlsoC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSpitterC1M1Producer,
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
		name = "SurvivorSpottedSpitter2C1M1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSpitterC1M1Producer,
			},
		],
	},

	{
		name = "SurvivorSpottedSpitterC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowSpitter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSpitterC1M2Producer,
				followup = RThenAny("Player.KnowSpitter", 0.1),
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
		name = "SurvivorSpottedSpitterAlsoC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSpitterC1M1Producer,
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
		name = "SurvivorSpottedTankSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedTankProducer,
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
		name = "SurvivorSpottedTank2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedTankProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedTankC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedTankC1Producer,
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
		name = "SurvivorSpottedTank2C1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedTankC1Producer,
			},
		],
	},

	{
		name = "L4D1SpottedTankSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
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
				func = Custom_Talker_Sheva.L4D1SpottedTankProducer,
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
		name = "L4D1SpottedTank2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m3_port"],
			["incapacitated", 0],
			[IsNotVersus],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1SpottedTankProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedWitchSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWitchProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWitch2Sheva",
		criteria = 
		[
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWitchProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedWitchC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWitchC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWitch2C1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWitch2C1Producer,
			},
		],
	},

	{
		name = "PlayerAlertGiveItemSheva",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["incombatmusic", 0],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAlertGiveItemProducer,
			},
		],
	},

	{
		name = "PlayerAlertGiveItemC1Sheva",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["incombatmusic", 0],
			[IsWorldTalkSheva],
			[NoKnowNames],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAlertGiveItemC1Producer,
			},
		],
	},

	{
		name = "PlayerAlertGiveItemCombatSheva",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["incombatmusic", 1],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAlertGiveItemCombatProducer,
			},
		],
	},

	{
		name = "PlayerAlertGiveItemTankSheva",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAlertGiveItemCombatProducer,
			},
		],
	},

	{
		name = "PlayerFaultFriendlyFireSheva",
		criteria = 
		[
			["concept", "Fault"],
			["faultname", "FriendlyFire"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFaultFriendlyFire", value = 1, duration = 0.1 },
			c2 = { context = "SaidFaultFriendlyFireSheva", value = 1, duration = 0.1 },
			c3 = { context = "ShotTeammateSheva", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerFriendlyFireSheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFire2Sheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			["onthirdstrike", 1],
			["friendlyfire", 1],
			["incapacitated", 0],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFire2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireC1Sheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[NoKnowNames],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireFromGamblerC1Sheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkSheva],
			["subject", "Gambler"],
			[ChanceToFire50Percent],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireFromGamblerC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireNoBulletSheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireNoBulletProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireNoBulletC1Sheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireNoBulletC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireTankSheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkSheva],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireTankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireTankCoachSheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkSheva],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Coach"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireTankCoachProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireTankGamblerSheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkSheva],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Gambler"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireTankGamblerProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerFriendlyFireTankMechanicSheva",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkSheva],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["subject", "Mechanic"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFriendlyFireTankMechanicProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerToTheRescueSheva",
		criteria = 
		[
			["concept", "SurvivorBotMovingToReviveFriend"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["incombat", 0],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerToTheRescueProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRescueComing", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerToTheRescueRosSheva",
		criteria = 
		[
			["concept", "PlayerToTheRescue"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerToTheRescueRosProducer,
			},
		],
	},

	{
		name = "SurvivorTauntResponseSheva",
		criteria = 
		[
			["concept", "PlayerTaunt"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorTauntResponseProducer,
			},
		],
	},

	{
		name = "C4M1IdleComment01Sheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[ChanceToFire40Percent],
			["team", "Survivor"],
			["map", "c4m1_milltown_a"],
			["worldsaidc4m1_nogas", 1],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			["incombat", 0],
			[IsWorldTalkSheva],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotNoGasGate],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4M1IdleComment01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.088 },
			c2 = { context = "_auto_NoGasGate", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M2IdleCommentCane01Sheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[ChanceToFire60Percent],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_shevaincane", 1],
			[_auto_NotCaneYellGated],
			[_auto_NotLastSurvivorTalkedSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4M2IdleCommentCane01Producer,
				followup = RThenAny("_c4m2_caneyell01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_CaneYellGated", value = 1, duration = 10.0 },
			c2 = { context = "_auto_LastSurvivorTalkedSheva", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerChokeResponseSheva",
		criteria = 
		[
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerChokeResponseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerChokeResponseC1Sheva",
		criteria = 
		[
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerChokeResponseC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReloadingC502RunSheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			["map", "c5m2_park"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			["world_auto_alarm", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReloadingC502RunProducer,
			},
		],
	},

	{
		name = "PlayerReloadingTankSheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReloadingTankProducer,
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
		name = "PlayerReloadingTankC1Sheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReloadingTankC1Producer,
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
		name = "PlayerWitchChasingSheva",
		criteria = 
		[
			["concept", "PlayerExertionMinor"],
			["who", "Sheva"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
			[IsTalkSheva],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWitchChasingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 5.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerWitchChasingC6M1Sheva",
		criteria = 
		[
			["concept", "PlayerExertionMinor"],
			["who", "Sheva"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
			[IsTalkSheva],
			["map", "c6m1_riverbank"],
			[IsWitchAggro],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWitchChasingC6M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerWitchStartAttackSheva",
		criteria = 
		[
			["concept", "Fault"],
			["who", "Sheva"],
			["faultname", "WitchHarassment"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWitchStartAttackProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},

	{
		name = "PlayerWitchStartAttackC6M1Sheva",
		criteria = 
		[
			["concept", "Fault"],
			["who", "Sheva"],
			["faultname", "WitchHarassment"],
			["map", "c6m1_riverbank"],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWitchStartAttackC6M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},

	{
		name = "WitchAggroSheva",
		criteria = 
		[
			["concept", "WitchStartAttack"],
			["who", "Sheva"],
			["witch_aggro_on", "Sheva"],
			[WitchaggroIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorCriticalHurtSheva",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Critical"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsNotJockey],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorCriticalHurtProducer,
			},
		],
	},

	{
		name = "SurvivorIncapacitatedHurtSheva",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			[IsNotSpeaking],
			["painlevel", "Incapacitated"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorIncapacitatedHurtProducer,
			},
		],
	},

	{
		name = "SurvivorJockeyHurtMajorSheva",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			["beingjockeyed", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorJockeyHurtMajorProducer,
				followup = RThen("all", "commentjockey", null, -3.462),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedSheva", value = 1, duration = 6.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMinorSheva",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			["beingjockeyed", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorJockeyHurtMajorProducer,
				followup = RThen("all", "commentjockey", null, -3.462),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedSheva", value = 1, duration = 6.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMajorC1Sheva",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorJockeyHurtMajorC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedSheva", value = 1, duration = 6.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMinorC1Sheva",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorJockeyHurtMajorC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedSheva", value = 1, duration = 6.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorMajorHurtSheva",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsNotJockey],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorMajorHurtProducer,
			},
		],
	},

	{
		name = "SurvivorMinorHurtSheva",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsNotJockey],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorMinorHurtProducer,
			},
		],
	},

	{
		name = "SurvivorReloadingSheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			["incombatmusic", 0],
			[_auto_NotShevaInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorReloadingProducer,
			},
		],
	},

	{
		name = "SurvivorReloadingIntenseSheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			["incombatmusic", 1],
			[_auto_NotShevaInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorReloadingIntenseProducer,
			},
		],
	},

	{
		name = "SurvivorReloadingC4M2Sheva",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Sheva"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			[ChanceToFire50Percent],
			["map", "c4m2_sugarmill_a"],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			["world_auto_shevainwitchville", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorReloadingC4M2Producer,
			},
		],
	},

	{
		name = "PlayerHelpIncappedSheva",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "Sheva"],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			["incapacitated", 1],
			[NotCalledForHelpRecently],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHelpIncappedProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 7.5 },
		},
	},

	{
		name = "PlayerHelpIncappedBleedingSheva",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "Sheva"],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			["incapacitated", 1],
			[NotCalledForHelpRecently],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHelpIncappedBleedingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 15.0 },
		},
	},

	{
		name = "PlayerHelpIncappedLethargicSheva",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "Sheva"],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsIncappedLethargic],
			["incapacitated", 1],
			[NotCalledForHelpRecently],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHelpIncappedLethargicProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 30.0 },
		},
	},

	{
		name = "C2M1DoneFallingSheva",
		criteria = 
		[
			["concept", "C2M1DoneFalling"],
			["who", "Sheva"],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["coughing", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDoneFalling],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M1DoneFallingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.229 },
			c2 = { context = "_auto_DoneFalling", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1FallingSheva",
		criteria = 
		[
			["concept", "C2M1Falling"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M1FallingProducer,
				followup = RThen("self", "EndOfWavWindow5", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.036 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M2CarouselOffSheva",
		criteria = 
		[
			["concept", "c2m2CarouselEnd"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M2CarouselOffProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.88 },
			c2 = { context = "_auto_Alarm", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M2CarouselOnSheva",
		criteria = 
		[
			["concept", "c2m2CarouselStart"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M2CarouselOnProducer,
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
		name = "C3M3BridgeButtonSheva",
		criteria = 
		[
			["concept", "C3M3BridgeButton"],
			[IsNotSaidC3M3BridgeButton],
			["who", "Sheva"],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C3M3BridgeButtonProducer,
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
		name = "EndOfWavWindow5Sheva",
		criteria = 
		[
			["concept", "EndOfWavWindow5"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.EndOfWavWindow5Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_ShevaWavWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerChainSawUsedSheva",
		criteria = 
		[
			["concept", "ChainsawUsed"],
			[IsNotSaidChainSawUsed],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IntensityOver25],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerChainSawUsedProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChainSawUsed", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M1AroundFireSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M1AroundFire"],
			[IsNotSaidC1M1AroundFire],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M1AroundFireProducer,
				followup = RThenAny("C1M1Cough", -1.293),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1AroundFire", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M1OverTableSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M1OverTable"],
			[IsNotSaidC1M1OverTable],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M1OverTableProducer,
				followup = RThenAny("C1M1Cough", -1.111),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OverTable", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M1SearchRoomsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M1SearchRooms"],
			[IsNotSaidC1M1SearchRooms],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M1SearchRoomsProducer,
				followup = RThenAny("C1M1Cough", -2.695),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1SearchRooms", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M1ThroughThisDoorSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M1ThroughThisDoor"],
			[IsNotSaidC1M1ThroughThisDoor],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M1ThroughThisDoorProducer,
				followup = RThenAny("C1M1Cough", -0.677),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1ThroughThisDoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3AlarmDoorsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3AlarmDoors"],
			[IsNotSaidC1M3AlarmDoors],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3AlarmDoorsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3AlarmDoors", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3CarefulWindowsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3CarefulWindows"],
			[IsNotSaidC1M3CarefulWindows],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3AlarmDoorsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CarefulWindows", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3CEDAGoneSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3CEDAGone"],
			[IsNotSaidC1M3CEDAGone],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3CEDAGoneProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3CEDAGone", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3DownHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3DownHere"],
			[IsNotSaidC1M3DownHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3DownHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3DownHere2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3DownHere2"],
			[IsNotSaidC1M3DownHere2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3DownHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownHere2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3DownTheEscalatorSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3DownTheEscalator"],
			[IsNotSaidC1M3DownTheEscalator],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3DownTheEscalatorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3DownTheEscalator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3OverHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3OverHere"],
			[IsNotSaidC1M3OverHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3OverHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3OverHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3SearchRoomsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3SearchRooms"],
			[IsNotSaidC1M3SearchRooms],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3SearchRoomsProducer,
				followup = RThenAny("C1M1Cough", -2.695),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3SearchRooms", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3ThisWaySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3ThisWay"],
			[IsNotSaidC1M3ThisWay],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3ThisWayProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3ThroughHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3ThroughHere"],
			[IsNotSaidC1M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3ThroughHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3TurnOffAlarm1"],
			[IsNotSaidC1M3TurnOffAlarm1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3TurnOffAlarm1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3TurnOffAlarm2"],
			[IsNotSaidC1M3TurnOffAlarm2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3TurnOffAlarm2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm3Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3TurnOffAlarm3"],
			[IsNotSaidC1M3TurnOffAlarm3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3TurnOffAlarm3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3TurnOffAlarm3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3UpEscalator1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3UpEscalator1"],
			[IsNotSaidC1M3UpEscalator1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3UpEscalator1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3UpEscalator2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3UpEscalator2"],
			[IsNotSaidC1M3UpEscalator2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3UpEscalator1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC1M3UpEscalator3Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C1M3UpEscalator3"],
			[IsNotSaidC1M3UpEscalator3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M3UpEscalator1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M3UpEscalator3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_carwreckageSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_carwreckage"],
			[IsNotSaidc2m1_carwreckage],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_carwreckageProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_carwreckage", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.007 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_checkroomsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_checkrooms"],
			[IsNotSaidc2m1_checkrooms],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_checkroomsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_checkrooms", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.616 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_cliffSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_cliff"],
			[IsNotSaidc2m1_cliff],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_cliffProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_cliff", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.824 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_downstairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_downstairs"],
			[IsNotSaidc2m1_downstairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_downstairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_downstairs", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.789 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_hillcomplainSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_hillcomplain"],
			[IsNotSaidc2m1_hillcomplain],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[ChanceToFire10Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_hillcomplainProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_hillcomplain", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.294 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkc2m1_hillcomplainSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_hillcomplain"],
			[IsNotSaidc2m1_hillcomplain],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_hillcomplain", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_offrampSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_offramp"],
			[IsNotSaidc2m1_offramp],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_offrampProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_offramp", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.168 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_parkSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_park"],
			[IsNotSaidc2m1_park],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_parkProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_park", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.982 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_poolSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_pool"],
			[IsNotSaidc2m1_pool],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_poolProducer,
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
		name = "PlayerRemarkc2m1_searchlightsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_searchlights"],
			[IsNotSaidc2m1_searchlights],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
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
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_searchlightsProducer,
				followup = RThenAny("_c2m1_searchlights01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_searchlights", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.241 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_searchlightsEllisSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_searchlights"],
			[IsNotSaidc2m1_searchlights],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectFar100],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_searchlightsEllisProducer,
				followup = RThen("mechanic", "_c2m1_searchlights04", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_searchlights", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.241 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_throughhereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_throughhere"],
			[IsNotSaidc2m1_throughhere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_throughhereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughhere", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.858 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_throughmotelSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_throughmotel"],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_throughmotelProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughmotel", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.616 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_throughwindowSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_throughwindow"],
			[IsNotSaidc2m1_throughwindow],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_throughwindowProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_throughwindow", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.911 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_uphillSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_uphill"],
			[IsNotSaidc2m1_uphill],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_uphillProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_uphill", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.074 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m1_upstairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m1_upstairs"],
			[IsNotSaidc2m1_upstairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_upstairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m1_upstairs", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.252 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_entrancesignSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m2_entrancesign"],
			[IsNotSaidc2m2_entrancesign],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m2_entrancesignProducer,
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
		name = "PlayerRemarkc2m2_lilpeanutSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m2_lilpeanut"],
			[IsNotSaidc2m2_lilpeanut],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m2_lilpeanutProducer,
				followup = RThen("mechanic", "_C2M2_Peanut01", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_lilpeanut", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_miscfoodSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m2_miscfood"],
			[IsNotSaidc2m2_miscfood],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotCoachFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m2_miscfoodProducer,
				followup = RThen("Gambler", "_C2M2_LikeTaters", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_miscfood", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.5 },
			c3 = { context = "_auto_CoachFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_topofslideSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m2_topofslide"],
			[IsNotSaidc2m2_topofslide],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m2_topofslideProducer,
				followup = RThenAny("_C2M2_Slide01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_topofslide", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_womensroomSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m2_womensroom"],
			[IsNotSaidc2m2_womensroom],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[IsClosestSurvivorNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m2_womensroomProducer,
				followup = RThenAny("_C2M2_Bathroom01", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_womensroom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_coasteroffSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_coasteroff"],
			[IsNotSaidc2m3_coasteroff],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
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
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_coasteroffProducer,
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
		name = "PlayerRemarkc2m3_holeSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_hole"],
			[IsNotSaidc2m3_hole],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_holeProducer,
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
		name = "PlayerRemarkc2m3_longesttunnelSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_longesttunnel"],
			[IsNotSaidc2m3_longesttunnel],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			["isgambleralive", 1],
			[TimeSinceGroupInCombat04],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_longesttunnelProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_longesttunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkc2m3_longesttunnelSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_longesttunnel"],
			[IsNotSaidc2m3_longesttunnel],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			["isgambleralive", 1],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_longesttunnel", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_overfenceSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_overfence"],
			[IsNotSaidc2m3_overfence],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_overfenceProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_overfence", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_swanroomSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_swanroom"],
			[IsNotSaidc2m3_swanroom],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_swanroomProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_swanroom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m3_tracks01Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_tracks01"],
			[IsNotSaidc2m3_tracks01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_tracks01Producer,
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
		name = "PlayerRemarkc2m3_tracks02Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_tracks02"],
			[IsNotSaidc2m3_tracks02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_tracks01Producer,
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
		name = "PlayerRemarkc2m3_tracks03Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_tracks03"],
			[IsNotSaidc2m3_tracks03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_tracks01Producer,
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
		name = "PlayerRemarkc2m3_tracks04Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_tracks04"],
			[IsNotSaidc2m3_tracks04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_tracks01Producer,
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
		name = "PlayerRemarkc2m3_tracks05Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_tracks05"],
			[IsNotSaidc2m3_tracks05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_tracks01Producer,
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
		name = "PlayerRemarkc2m3_tracks06Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_tracks06"],
			[IsNotSaidc2m3_tracks06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_tracks01Producer,
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
		name = "PlayerRemarkc2m3_tracks07Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_tracks07"],
			[IsNotSaidc2m3_tracks07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_tracks01Producer,
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
		name = "PlayerRemarkc2m3_tracks08Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_tracks08"],
			[IsNotSaidc2m3_tracks08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_tracks01Producer,
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
		name = "PlayerRemarkc2m3_ventSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m3_vent"],
			[IsNotSaidc2m3_vent],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_ventProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m3_vent", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_barnentrySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m4_barnentry"],
			[IsNotSaidc2m4_barnentry],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m4_barnentryProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_barnentry", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_bumpercarsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m4_bumpercars"],
			[IsNotSaidc2m4_bumpercars],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m4_bumpercarsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_bumpercars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_pendoorSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m4_pendoor"],
			[IsNotSaidc2m4_pendoor],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m4_pendoorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_pendoor", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m4_upbarnSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m4_upbarn"],
			[IsNotSaidc2m4_upbarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m4_upbarnProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m4_upbarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m5_button2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m5_button2"],
			[IsNotSaidc2m5_button2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
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
				func = Custom_Talker_Sheva.PlayerRemarkc2m5_button2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m5_button2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3BridgeDownSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3BridgeDown"],
			[IsNotSaidC3M3BridgeDown],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			["worldsaidc3m3bridgebutton", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3BridgeDownProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3BridgeDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M1NoSwimmingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M1NoSwimming"],
			[IsNotSaidC3M1NoSwimming],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M1NoSwimmingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M1NoSwimming", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2BathtubSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2Bathtub"],
			[IsNotSaidC3M2Bathtub],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2BathtubProducer,
				followup = RThen("mechanic", "InfoRemC3M2Bathtub2", null, -4.301),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2Bathtub", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.401 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m2_overtreeSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2OverTree"],
			[IsNotSaidC3M2OverTree],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc3m2_overtreeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2OverTree", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2PlaneCrashSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2PlaneCrash"],
			[IsNotSaidC3M2PlaneCrash],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear600],
			[IsNotSaidC3M2PlaneDoorNag],
			[IsWorldTalkSheva],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2PlaneCrashProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneCrash", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.691 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2PlaneDoorNagSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2PlaneDoorNag"],
			[IsNotSaidC3M2PlaneDoorNag],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear500],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2PlaneDoorNagProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2PlaneDoorNag", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
			c3 = { context = "Talk", value = 1, duration = 4.099 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2PlaneDoorNagaSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			["worldsaidc3m2planedoornag", 1],
			["map", "c3m2_swamp"],
			[IsNotSaidC3M2OpenDoor],
			[IsNotZombiePresentTank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2PlaneDoorNagaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 40.0 },
			c3 = { context = "Talk", value = 1, duration = 1.652 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2RoadSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2Road"],
			[IsNotSaidC3M2Road],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2RoadProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2Road", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.265 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2SickOfSwampSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2SickOfSwamp"],
			[IsNotSaidC3M2SickOfSwamp],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2SickOfSwampProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2SickOfSwamp", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.45 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C3M2LeavingSafeRoomSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Sheva"],
			[IsNotSaidLeavingSafeArea],
			["map", "c3m2_swamp"],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2StartProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 3.298 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2StartDrySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2StartDry"],
			[IsNotSaidC3M2StartDry],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear200],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2StartDryProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2StartDry", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.261 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2UnderWaterShackSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2UnderWaterShack"],
			[IsNotSaidC3M2UnderWaterShack],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2UnderWaterShackProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2UnderWaterShack", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.25 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2UnderWaterShackEllisSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2UnderWaterShack"],
			[IsNotSaidC3M2UnderWaterShack],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2UnderWaterShackEllisProducer,
				followup = RThen("mechanic", "_C3M2UnderwaterShack", null, 0.5),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2UnderWaterShack", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.25 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2Village1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2Village1"],
			[IsNotSaidC3M2Village1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear800],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2Village1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2Village1", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 2.647 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M2WhereAreWeSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2WhereAreWe"],
			[IsNotSaidC3M2WhereAreWe],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire30Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M2WhereAreWeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2WhereAreWe", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.066 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M2WhereAreWeSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M2WhereAreWe"],
			[IsNotSaidC3M2WhereAreWe],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M2WhereAreWe", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3BodiesSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3Bodies"],
			[IsNotSaidC3M3Bodies],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3BodiesProducer,
				followup = RThen("mechanic", "InfoRemC3M3Bodies2", null, -4.955),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3Bodies", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3LowerGateSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3LowerGate"],
			[IsNotSaidC3M3BridgeButton],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3LowerGateProducer,
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
		name = "PlayerRemarkC3M3MoreShacksSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3MoreShacks"],
			[IsNotSaidC3M3MoreShacks],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3MoreShacksProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3MoreShacks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3MoreShacksSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3MoreShacks"],
			[IsNotSaidC3M3MoreShacks],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3MoreShacks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3SearchHousesSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3SearchHouses"],
			[IsNotSaidC3M3SearchHouses],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3SearchHousesProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3SearchHouses", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3StairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3Stairs"],
			[IsNotSaidC3M3Stairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3StairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3Stairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3StayUpHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3StayUpHere"],
			[IsNotSaidC3M3StayUpHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3StayUpHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3StayUpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3StayUpHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3StayUpHere"],
			[IsNotSaidC3M3StayUpHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3StayUpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3ThisWaySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3ThisWayProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3ThisWaySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThisWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3ThroughHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3ThroughHere"],
			[IsNotSaidC3M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3ThroughHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3ThroughThisHouseSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3ThroughThisHouse"],
			[IsNotSaidC3M3ThroughThisHouse],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3ThroughThisHouseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3ThroughThisHouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3UpHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3UpHere"],
			[IsNotSaidC3M3UpHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear100],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3UpHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3UsePlanksSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3UsePlanks"],
			[IsNotSaidC3M3UsePlanks],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC3M3UsePlanksProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UsePlanks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3UsePlanksSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3UsePlanks"],
			[IsNotSaidC3M3UsePlanks],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC3M3UsePlanks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m4downroadSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c3m4downroad"],
			[IsNotSaidc3m4downroad],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc3m4downroadProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4downroad", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m4outhouseSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c3m4outhouse"],
			[IsNotSaidc3m4outhouse],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc3m4outhouseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4outhouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkc3m4outhouseSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c3m4outhouse"],
			[IsNotSaidc3m4outhouse],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[ChanceToFire20Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4outhouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m4radioSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c3m4radio"],
			[IsNotSaidc3m4radio],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc3m4radioProducer,
				followup = RThen("Mechanic", "_C3M4_Radio", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4radio", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 1.207 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc3m4scaffoldSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c3m4scaffold"],
			[IsNotSaidc3m4scaffold],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc3m4scaffoldProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc3m4scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_carcrashSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear500],
			[IsWorldTalkSheva],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m1_carcrashProducer,
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
		name = "AUTOBLANK_PlayerRemarkc4m1_carcrashSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_carcrash", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_garagesaleSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m1_garagesale"],
			[IsNotSaidc4m1_garagesale],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear400],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m1_garagesaleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_nogasSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m1_nogas"],
			[IsNotSaidc4m1_nogas],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m1_nogasProducer,
				followup = RThenAny("c4m1_nogas10", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_nogas", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 4.303 },
			c3 = { context = "_auto_NoGasGate", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_playgroundfarSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear1000],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m1_playgroundfarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_playgroundnearSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m1_playgroundnearProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m1_throughhereASheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m1_throughhereA"],
			[IsNotSaidc4m1_throughhereA],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear400],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m1_throughhereAProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_throughhereA", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m2_gasinsidesignSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_gasinsidesign"],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear350],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_gasinsidesignProducer,
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
		name = "PlayerRemarkc4m2_millentranceSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_millentrance"],
			[IsNotSaidc4m2_millentrance],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_millentranceProducer,
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
		name = "PlayerRemarkc4m2_millentranceexitSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_millentranceexit"],
			[IsNotSaidc4m2_millentranceexit],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_millentranceexitProducer,
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
		name = "PlayerRemarkc4m2_seegasstationSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_seegasstation"],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_seegasstationProducer,
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
		name = "PlayerRemarkc4m2_streetblockedSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_streetblocked"],
			[IsNotSaidc4m2_streetblocked],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_streetblockedProducer,
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
		name = "PlayerRemarkc4m2_uprampSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_upramp"],
			[IsNotSaidc4m2_upramp],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_uprampProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upramp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m2_upthestairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_upthestairs"],
			[IsNotSaidc4m2_upthestairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_upthestairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_upthestairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m2_useelevatorSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_useelevator"],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			["worldsaidc4m2_seegasstation", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_useelevatorProducer,
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
		name = "PlayerRemarkc4m2_waterpoolSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_waterpool"],
			[IsNotSaidc4m2_waterpool],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_waterpoolProducer,
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
		name = "PlayerRemarkc4m2_weatherSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m2_weather"],
			[IsNotSaidc4m2_weather],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_weatherProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m2_weather", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_caneSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_cane"],
			[IsNotSaidc4m3_cane],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_caneProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_cane", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_crosshereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_crosshere"],
			[IsNotSaidc4m3_crosshere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_crosshereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_crosshere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_downhereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_downhere"],
			[IsNotSaidc4m3_downhere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_downhereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downhere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_downstairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_downstairs"],
			[IsNotSaidc4m3_downstairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_downstairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_downstairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_ducatelsignSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_ducatelsign"],
			[IsNotSaidc4m3_ducatelsign],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_ducatelsignProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_ducatelsign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_elevatorSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_elevator"],
			[IsNotSaidc4m3_elevator],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_elevatorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_elevator", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_floodedSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_flooded"],
			[IsNotSaidc4m3_flooded],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_floodedProducer,
				followup = RThen("coach", "_C4M3_FLOODED01", null, 0.2),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_flooded", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_overtankSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_overtank"],
			[IsNotSaidc4m3_overtank],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_overtankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_overtank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_rainSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_rain"],
			[IsNotSaidc4m3_rain],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_rainProducer,
				followup = RThen("Mechanic", "_c4m3_rain02", null, 0.02),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_rain", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_thiswayaSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_thisway"],
			[IsNotSaidc4m3_thisway],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_millentranceexitProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_thisway", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m3_uppipesSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m3_uppipes"],
			[IsNotSaidc4m3_uppipes],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_uppipesProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m3_uppipes", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_floodedSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.PlayerRemarkc4m4_floodedProducer,
				followup = RThenAny("_C4M4_FLOODED01", 0.5),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_garagesaleSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m4_garagesale"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m4_garagesaleProducer,
				followup = RThenAny("_C4M4_garagesale01", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_garagesale2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m4_garagesale2"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m4_garagesaleProducer,
				followup = RThenAny("_C4M4_garagesale01", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_garagesale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_playgroundSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m4_playground"],
			[IsNotSaidc4m4_playground],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m4_playgroundProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_playground", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_porchlightSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m4_porchlight"],
			[IsNotSaidc4m4_porchlight],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m4_porchlightProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_porchlight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_truckwreckSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m4_truckwreck"],
			[IsNotSaidc4m4_truckwreck],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m4_truckwreckProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_truckwreck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc4m4_useroofsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m4_useroofs"],
			[IsNotSaidc4m4_useroofs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m4_useroofsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m4_useroofs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkpathc2m1_abandonedcarsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "pathc2m1_abandonedcars"],
			[IsNotSaidpathc2m1_abandonedcars],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[ChanceToFire60Percent],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkpathc2m1_abandonedcarsProducer,
				followup = RThen("Coach", "_C2M1abandoned01", null, 0.02),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidpathc2m1_abandonedcars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkpathc2m1_abandonedcarsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "pathc2m1_abandonedcars"],
			[IsNotSaidpathc2m1_abandonedcars],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidpathc2m1_abandonedcars", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkpathc2m1_billboardSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "pathc2m1_billboard"],
			[IsNotSaidpathc2m1_billboard],
			["coughing", 0],
			["incombat", 0],
			[IsTalkSheva],
			[IsSubjectNear1000],
			[IsWorldTalkSheva],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkpathc2m1_billboardProducer,
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
		name = "PlayerRemarkremark_MidnightRidersBusSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear1500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkremark_MidnightRidersBusProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1CedaMapsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M1CedaMaps"],
			[IsNotSaidWorldC1M1CedaMaps],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M1CedaMapsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1CedaMaps", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 6.617 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M1WeAreScrewedSheva",
		criteria = 
		[
			["concept", "C1M1WeAreScrewed"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M1WeAreScrewedProducer,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC1M1DownHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M1DownHere"],
			[IsNotSaidWorldC1M1DownHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M1DownHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1DownStairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M1DownStairs"],
			[IsNotSaidWorldC1M1DownStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M1DownStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1ElevatorBrokenSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M1ElevatorBroken"],
			[IsNotSaidWorldC1M1ElevatorBroken],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M1ElevatorBrokenProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1ElevatorBroken", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1FireSpreadingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M1FireSpreading"],
			[IsNotSaidWorldC1M1FireSpreading],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M1FireSpreadingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1FireSpreading", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1FirstSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M1First"],
			[IsNotSaidWorldC1M1First],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M1FirstProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1First", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1LedgeSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M1Ledge"],
			[IsNotSaidWorldC1M1Ledge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M1LedgeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1Ledge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2CloseSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2Close"],
			[IsNotSaidWorldC1M2Close],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2CloseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Close", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M1StairsSignSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M1StairsSign"],
			[IsNotSaidWorldC1M1StairsSign],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M1StairsSignProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M1StairsSign", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2DownStairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2DownStairs"],
			[IsNotSaidWorldC1M2DownStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[TimeSinceGroupInCombat05],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2DownStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2DownStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2AbandonedSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2Abandoned"],
			[IsNotSaidWorldC1M2Abandoned],
			["coughing", 0],
			["incombat", 0],
			["intensity", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2AbandonedProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Abandoned", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2DumpsterSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2Dumpster"],
			[IsNotSaidWorldC1M2Dumpster],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2DumpsterProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2Dumpster", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2InHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2InHere"],
			[IsNotSaidWorldC1M2InHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2InHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2InHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2JumpTruckSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2JumpTruck"],
			[IsNotSaidWorldC1M2JumpTruck],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2JumpTruckProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2JumpTruck", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2MallSignHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2MallSignHere"],
			[IsNotSaidWorldC1M2MallSignHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2MallSignHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2MallSignHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC1M2UpStairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC1M2UpStairs"],
			[IsNotSaidWorldC1M2UpStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2UpStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC1M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1CheckingHousesSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1CheckingHouses"],
			[IsNotSaidWorldC3M1CheckingHouses],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear200],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1CheckingHousesProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1CheckingHouses", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkSheva],
			[IsSubjectNear200],
			[IsWorldTalkSheva],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1FerryCrossingProducer,
				followup = RThenAny("WorldC3M1FerryCrossingA01", -4.11),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryCrossing", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingEllisSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkSheva],
			[IsSubjectNear200],
			["ismechanicalive", 1],
			[IsWorldTalkSheva],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1FerryCrossingEllisProducer,
				followup = RThen("mechanic", "WorldC3M1FerryCrossingB01", null, -2.025),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryCrossing", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingNickSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1FerryCrossing"],
			[IsNotSaidWorldC3M1FerryCrossing],
			["coughing", 0],
			["incombat", 0],
			[IsTalkSheva],
			[IsSubjectNear200],
			["isgambleralive", 1],
			[IsWorldTalkSheva],
			[ChanceToFire25Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		// 	forceweight 3
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1FerryCrossingNickProducer,
				followup = RThen("gambler", "WorldC3M1FerryCrossingC01", null, -3.171),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1FerryCrossing", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1FerryNagSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1FerryNag"],
			[IsNotSaidWorldC3M1FerryNag],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear600],
			[IsNotSaidC3M1CallFerry2],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1FerryNagProducer,
				followup = RThen("mechanic", "WorldIntroC3f2", null, 0.1),
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
		name = "PlayerRemarkWorldC3M1FerryNagaSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear600],
			["worldsaidworldc3m1ferrynag", 1],
			[IsNotSaidC3M1CallFerry2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1FerryNagaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 20.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 40.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1GetBackUpSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1WeShouldGetBackUp"],
			[IsNotSaidWorldC3M1WeShouldGetBackUp],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1GetBackUpProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1WeShouldGetBackUp", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1Path01Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1Path01"],
			[IsNotSaidWorldC3M1Path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear400],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1Path01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1PlanksRightSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1PlanksRight"],
			[IsNotSaidWorldC3M1PlanksRight],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1PlanksRightProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1PlanksRight", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1WalkwaysSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1Walkways"],
			[IsNotSaidWorldC3M1Walkways],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear600],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1WalkwaysProducer,
				followup = RThen("coach", "WorldC3M1Walkways2", null, -1.209),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1Walkways", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC3M1WhichWaySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC3M1WhichWay"],
			[IsNotSaidWorldC3M1WhichWay],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear400],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC3M1WhichWayProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC3M1WhichWay", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC502AlarmButtonSheva",
		criteria = 
		[
			["concept", "WorldC502AlarmButton"],
			["who", "Sheva"],
			["coughing", 0],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC502AlarmButtonProducer,
				followup = RThenAny("WorldC502AlarmButtonRun", 0.1),
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502AlarmStoppedSheva",
		criteria = 
		[
			["concept", "WorldC502AlarmStopped"],
			["who", "Sheva"],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC502AlarmStoppedProducer,
				followup = RThenAny("WorldC502AlarmStopped2", 0.3),
			},
		],
	},

	{
		name = "PlayerRemarkWorldC502AlleySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC502Alley"],
			[IsNotSaidWorldC502Alley],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC502AlleyProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC52Alley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC502SmellSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC502Smell"],
			[IsNotSaidWorldC502Smell],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[ChanceToFire50Percent],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC502SmellProducer,
				followup = RThenAny("WorldC502Smell2", -2.701),
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
		name = "AUTOBLANK_PlayerRemarkWorldC502SmellSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC502Smell"],
			[IsNotSaidWorldC502Smell],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear600],
			[IsNotSaidSmell],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._PlayerInfoRemarkableBlankProducer,
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
		name = "PlayerRemarkWorldC6M1_AcrossHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_AcrossHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_AlleyBelowProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_AlleyIntoBuildingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_InAptsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_InAptsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_IntoTheStoreProducer,
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
		name = "PlayerRemarkWorldC6M1_PostWeddingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_PostWeddingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_SafeRoomAlleyProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_ThroughBarSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_ThroughBarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_UpHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_UpTheStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_UpTheStairs2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["zombiepresentwitch", 1],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_WeddingWarnProducer,
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
		name = "PlayerRemarkWorldC6M1_WeddingWarnAngelSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			["zombiepresentwitch", 1],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			["worldellisinlovec6m1", 1],
			["introactor", "zoey"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_WeddingWarnAngelProducer,
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
		name = "PlayerRemarkWorldC6M2_AcrossPlankSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_AcrossPlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_AfterGate1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_AfterGate2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGateNickSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			["isgambleralive", 1],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_AfterGateNickProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_DownHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_DownHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_DownIntoBuildingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalLadderSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_FinalLadderProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_FinalWaterProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_FinalWaterGoGoProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InJazzClubSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_InJazzClubProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_InSewer1"],
			[IsNotSaidWorldC6M2_InSewer1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_InSewer1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_InSewer2"],
			[IsNotSaidWorldC6M2_InSewer2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			["isgambleralive", 1],
			[IsGamblerNear400],
			["worldsaidworldc6m2_insewer1", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_InSewer2Producer,
				followup = RThen("Gambler", "WorldC6M2_InSewer201a", null, -2.052),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_InSewerLadder1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewerLadder1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_IntoConstructionProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_IntoPoolHallProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_JukeBoxSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_JukeBoxProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_JumpDownSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_JumpDownProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2FallingSheva",
		criteria = 
		[
			["concept", "C2M1Falling"],
			["who", "Sheva"],
			["map", "c6m2_bedlam"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_OnTourWalk1"],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_OnTourWalk1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_OnTourWalk2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_OnTourWalk3"],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_OnTourWalk3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_OpenGate1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_Phase2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_Phase2DownProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IntensityOver75],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_Phase2DownIntenseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_PostGate1xSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_PostGate1xProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_SuitcaseSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_Suitcase"],
			[IsNotSaidWorldC6M2_Suitcase],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_SuitcaseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Suitcase", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_TourEntranceSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_TourEntranceProducer,
				followup = RThen("Sheva", "WorldC6M2_TourEntrance01a", null, -1.841),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_UpCatWalkProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_UpStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_UpStairs2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_BridgeRunSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M3_BridgeRunProducer,
				followup = RThenAny("WorldC6M3_ByBridge01", -0.909),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_BridgeRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			["world_auto_c6m3bridgedown", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M3_ByBridgeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeFrancisSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			["introactor", "francis"],
			["world_auto_c6m3bridgedown", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M3_ByBridgeFrancisProducer,
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
		name = "PlayerRemarkWorldFootLockerSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldFootLockerProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldSignColdBeerSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldSignColdBeer"],
			[IsNotSaidWorldSignColdBeer],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldSignColdBeerProducer,
				followup = RThenAny("WorldSignHurricane2", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignColdBeer", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldSignHurricaneSheva",
		criteria = 
		[
			["concept", "WorldSignHurricane3"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldSignHurricaneProducer,
			},
		],
	},

	{
		name = "PlayerRemarkWorldSignReportSick3Sheva",
		criteria = 
		[
			["concept", "WorldSignReportSick3"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IssuerClose],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldSignReportSick3Producer,
			},
		],
	},

	{
		name = "PlayerRemarkWorldSignWhereIsCEDA2Sheva",
		criteria = 
		[
			["concept", "WorldSignWhereIsCEDA2"],
			["who", "Sheva"],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IssuerClose],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldSignWhereIsCEDA2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.799 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldSignArmYourselfSheva",
		criteria = 
		[
			["concept", "WorldC502ArmYourself"],
			["who", "Sheva"],
			["coughing", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldSignArmYourselfProducer,
			},
		],
	},

	{
		name = "PlayerWorldSignC5AlarmWillSoundSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldSignC5AlarmWillSound"],
			[IsNotSaidWorldSignC5AlarmWillSound],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear200],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldSignC5AlarmWillSoundProducer,
				followup = RThen("coach", "WorldSignC5AlarmWillSound3", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldSignC5AlarmWillSound", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RespondAffirmativeSheva",
		criteria = 
		[
			["concept", "RespondAffirmative"],
			[IssuerMediumClose],
			["coughing", 0],
			["incombat", 0],
			["who", "Sheva"],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.RespondAffirmativeProducer,
			},
		],
	},

	{
		name = "PlayerFollowMeSheva",
		criteria = 
		[
			["concept", "PlayerFollowMe"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerFollowMeProducer,
			},
		],
	},

	{
		name = "PlayerHelpSheva",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "Sheva"],
			["coughing", 0],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHelpProducer,
			},
		],
	},

	{
		name = "PlayerHurryUpSheva",
		criteria = 
		[
			["concept", "PlayerHurryUp"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHurryUpProducer,
			},
		],
	},

	{
		name = "PlayerHurryUpC4M2Sheva",
		criteria = 
		[
			["concept", "PlayerHurryUp"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["map", "c4m2_sugarmill_a"],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[IsWorldTalkSheva],
			["world_auto_shevainwitchville", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHurryUpC4M2Producer,
			},
		],
	},

	{
		name = "PlayerKillThatLightSheva",
		criteria = 
		[
			["concept", "PlayerKillThatLight"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillThatLightProducer,
			},
		],
	},

	{
		name = "PlayerLeadOnSheva",
		criteria = 
		[
			["concept", "PlayerLeadOn"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLeadOnProducer,
			},
		],
	},

	{
		name = "PlayerMoveOnSheva",
		criteria = 
		[
			["concept", "PlayerMoveOn"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerMoveOnProducer,
			},
		],
	},

	{
		name = "PlayerStayTogetherSheva",
		criteria = 
		[
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerStayTogetherProducer,
			},
		],
	},

	{
		name = "PlayerWatchOutBehindSheva",
		criteria = 
		[
			["concept", "PlayerWatchOutBehind"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWatchOutBehindProducer,
			},
		],
	},

	{
		name = "PlayerAskReadySheva",
		criteria = 
		[
			["concept", "PlayerAskReady"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAskReadyProducer,
			},
		],
	},

	{
		name = "PlayerImWithYouSheva",
		criteria = 
		[
			["concept", "PlayerImWithYou"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerImWithYouProducer,
			},
		],
	},

	{
		name = "PlayerLaughSheva",
		criteria = 
		[
			["concept", "PlayerLaugh"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLaughProducer,
			},
		],
	},

	{
		name = "PlayerLostCallSheva",
		criteria = 
		[
			["concept", "PlayerLostCall"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLostCallProducer,
			},
		],
	},

	{
		name = "PlayerNiceJobResponseSheva",
		criteria = 
		[
			["concept", "PlayerNiceJob"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNiceJobResponseProducer,
			},
		],
	},

	{
		name = "PlayerNoSheva",
		criteria = 
		[
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNoProducer,
			},
		],
	},

	{
		name = "PlayerAnswerLostCallSheva",
		criteria = 
		[
			["concept", "PlayerAnswerLostCall"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAnswerLostCallProducer,
			},
		],
	},

	{
		name = "KillStealCalledOutSheva",
		criteria = 
		[
			["concept", "KillStealCalledOut"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.KillStealCalledOutProducer,
			},
		],
	},

	{
		name = "PlayerSorrySheva",
		criteria = 
		[
			["concept", "PlayerSorry"],
			["coughing", 0],
			[IsNotShotTeammateSheva],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerSorryProducer,
			},
		],
	},

	{
		name = "PlayerSorryFFSheva",
		criteria = 
		[
			["concept", "PlayerSorry"],
			["coughing", 0],
			["worldshotteammatesheva", 1],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerSorryFFProducer,
			},
		],
	},

	{
		name = "PlayerThanksSheva",
		criteria = 
		[
			["concept", "PlayerThanks"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerThanksProducer,
			},
		],
	},

	{
		name = "PlayerYellRunSheva",
		criteria = 
		[
			["concept", "PlayerYellRun"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerYellRunProducer,
			},
		],
	},

	{
		name = "PlayerYesSheva",
		criteria = 
		[
			["concept", "PlayerYes"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerYesProducer,
			},
		],
	},

	{
		name = "PlayerYouAreWelcomeSheva",
		criteria = 
		[
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerYouAreWelcomeProducer,
			},
		],
	},

	{
		name = "YouAreWelcomeSheva",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerYouAreWelcomeProducer,
			},
		],
	},

	{
		name = "YouAreWelcomeCoachSheva",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["from", "Coach"],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.YouAreWelcomeCoachProducer,
			},
		],
	},

	{
		name = "YouAreWelcomeCoachC1Sheva",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["from", "Coach"],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.YouAreWelcomeCoachC1Producer,
			},
		],
	},

	{
		name = "YouAreWelcomeGamblerC1Sheva",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["from", "Gambler"],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.YouAreWelcomeGamblerC1Producer,
			},
		],
	},

	{
		name = "YouAreWelcomeMechanicC1Sheva",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["from", "Mechanic"],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.YouAreWelcomeMechanicC1Producer,
			},
		],
	},

	{
		name = "BotAttentionBattleSheva",
		criteria = 
		[
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			["inbattlefield", 1],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.BotAttentionBattleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "BotNoteHumanAttentionSheva",
		criteria = 
		[
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			["instartarea", 1],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.BotNoteHumanAttentionProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerNegativeSheva",
		criteria = 
		[
			["concept", "PlayerNegative"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerNegativeProducer,
			},
		],
	},

	{
		name = "PlayerShootCarNotSheva",
		criteria = 
		[
			["concept", "PanicEvent"],
			["coughing", 0],
			["who", "Sheva"],
			[SubjectIsNotSheva],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkSheva],
			["panictype", "CarAlarm"],
			[ChanceToFire40Percent],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerShootCarNotProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerShootCarSheva",
		criteria = 
		[
			["concept", "PanicEvent"],
			["coughing", 0],
			["who", "Sheva"],
			["subject", "Sheva"],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkSheva],
			["panictype", "CarAlarm"],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerShootCarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerHeardBoomerSheva",
		criteria = 
		[
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardBoomerProducer,
			},
		],
	},

	{
		name = "PlayerHeardHunterSheva",
		criteria = 
		[
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardHunterProducer,
			},
		],
	},

	{
		name = "PlayerHeardSmokerSheva",
		criteria = 
		[
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardSmokerProducer,
			},
		],
	},

	{
		name = "PlayerHeardChargerSheva",
		criteria = 
		[
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardChargerProducer,
			},
		],
	},

	{
		name = "PlayerHeardSpitterSheva",
		criteria = 
		[
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardSpitterProducer,
			},
		],
	},

	{
		name = "PlayerHeardJockeySheva",
		criteria = 
		[
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardJockeyProducer,
			},
		],
	},

	{
		name = "PlayerHeardBoomerC1Sheva",
		criteria = 
		[
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowBoomer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
			},
		],
	},

	{
		name = "PlayerHeardHunterC1Sheva",
		criteria = 
		[
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowHunter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
			},
		],
	},

	{
		name = "PlayerHeardSmokerC1Sheva",
		criteria = 
		[
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowSmoker],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
			},
		],
	},

	{
		name = "PlayerHeardChargerC1Sheva",
		criteria = 
		[
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowCharger],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
			},
		],
	},

	{
		name = "PlayerHeardSpitterC1Sheva",
		criteria = 
		[
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowSpitter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
			},
		],
	},

	{
		name = "PlayerHeardJockeyC1Sheva",
		criteria = 
		[
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardJockeyC1Producer,
			},
		],
	},

	{
		name = "PlayerHeardTankSheva",
		criteria = 
		[
			["concept", "PlayerHeardTank"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardTankProducer,
			},
		],
	},

	{
		name = "PlayerHeardWitchSheva",
		criteria = 
		[
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHeardWitchProducer,
			},
		],
	},

	{
		name = "PlayerHurrahSheva",
		criteria = 
		[
			["concept", "PlayerHurrah"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHurrahProducer,
			},
		],
	},

	{
		name = "PlayerWarnCarefulSheva",
		criteria = 
		[
			["concept", "PlayerWarnCareful"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnCarefulProducer,
			},
		],
	},

	{
		name = "SurvivorSpottedWorldFarSheva",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWorldFarProducer,
			},
		],
	},

	{
		name = "C6M3_PourFinishedSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsL4D1Alive],
			["map", "c6m3_port"],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_PourFinishedProducer,
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
		name = "GasPour20MoreSCSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["towin", 20],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour20MoreSCProducer,
				followup = RThen("self", "GasPour20More", null, 0.01),
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
		name = "GasPour20MoreWaitSheva",
		criteria = 
		[
			["concept", "GasPour20More"],
			["who", "Sheva"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour20MoreWaitProducer,
				followup = RThen("self", "GasPour20More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour10MoreSCSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["towin", 10],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour10MoreSCProducer,
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
		name = "GasPour10MoreWaitSheva",
		criteria = 
		[
			["concept", "GasPour10More"],
			["who", "Sheva"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour10MoreWaitProducer,
				followup = RThen("self", "GasPour10More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour1MoreSCSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["towin", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour1MoreSCProducer,
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
		name = "GasPour1MoreWaitSheva",
		criteria = 
		[
			["concept", "GasPour1More"],
			["who", "Sheva"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour1MoreWaitProducer,
				followup = RThen("self", "GasPour1More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour2MoreSCSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["towin", 2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour2MoreSCProducer,
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
		name = "GasPour2MoreWaitSheva",
		criteria = 
		[
			["concept", "GasPour2More"],
			["who", "Sheva"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour2MoreWaitProducer,
				followup = RThen("self", "GasPour2More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour3MoreSCSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["towin", 3],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour3MoreSCProducer,
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
		name = "GasPour3MoreWaitSheva",
		criteria = 
		[
			["concept", "GasPour3More"],
			["who", "Sheva"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour3MoreWaitProducer,
				followup = RThen("self", "GasPour3More", null, 0.1),
			},
		],
	},

	{
		name = "GasPour5MoreSCSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["towin", 5],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour5MoreSCProducer,
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
		name = "GasPour5MoreWaitSheva",
		criteria = 
		[
			["concept", "GasPour5More"],
			["who", "Sheva"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour5MoreWaitProducer,
				followup = RThen("self", "GasPour5More", null, 0.1),
			},
		],
	},

	{
		name = "GasPourDoneSCSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["gamemode", "scavenge"],
			["towin", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPourDoneSCProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPourSCSheva",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotAlone],
			[IsWorldTalkSheva],
			["gamemode", "scavenge"],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPourSCProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "GasPourSCAloneSheva",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "Sheva"],
			["numberofteamalive", 1],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["gamemode", "scavenge"],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPourSCAloneProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "GrabbingGasSCSheva",
		criteria = 
		[
			["concept", "PlayerEquippedScavengeItem"],
			["who", "Sheva"],
			[IsTalk],
			[IsNotAlone],
			[IsClosestSurvivorNear500],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[NotSaidGrabbingCan],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GrabbingGasSCProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGrabbingCan", value = 1, duration = 8.0 },
		},
	},

	{
		name = "PlayerShotGasCanSheva",
		criteria = 
		[
			["concept", "PlayerShotGasCan"],
			["who", "Sheva"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerShotGasCanProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerShotGasCan", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ScavengeStartSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["gamemode", "scavenge"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.ScavengeStartProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ScavengeStartC1M4Sheva",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["map", "c1m4_atrium"],
			[IsWorldTalkSheva],
			["gamemode", "scavenge"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.FinaleStartC1M4Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCommentJockeySheva",
		criteria = 
		[
			["concept", "commentjockey"],
			["who", "Sheva"],
			[IssuerCloseEnough],
			[FromIsNotTeenGirl],
			["incapacitated", 0],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedSheva],
			["beingjockeyed", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCommentJockeyProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M2LockTheDoorCheckPointSheva",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c4m2_sugarmill_a"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4M2LockTheDoorCheckPointProducer,
			},
		],
	},

	{
		name = "GoingToDieCoachCoachSheva",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotComplainBlock],
			["iscoachalive", 1],
			[IsCoachNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GoingToDieCoachCoachProducer,
				followup = RThen("coach", "coachcoaches", null, 0.5),
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "PlayerAlertGiveItemStopSheva",
		criteria = 
		[
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAlertGiveItemStopProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerAlertGiveItemStopAnFirstAidSheva",
		criteria = 
		[
			["concept", "AlertGiveItemStopFirstAidA"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[NoHasFirstAidKit],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAlertGiveItemStopAnFirstAidProducer,
				followup = RThen("subject", "AlertGiveItemStop", null, 0.0),
			},
		],
	},

	{
		name = "PlayerAlertGiveItemStopC1Sheva",
		criteria = 
		[
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAlertGiveItemStopC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStop", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerAlertGiveItemStopQnFirstAidSheva",
		criteria = 
		[
			["concept", "BashWithItem"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["item", "FirstAidKit"],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerAlertGiveItemStopQnFirstAidProducer,
				followup = RThen("subject", "AlertGiveItemStopFirstAidA", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAlertGiveItemStopFirstAid", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerPouncedSheva",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			[SubjectIsNotTeenGirl],
			[IsNotSaidPlayerPounced],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerPouncedProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCoachPouncedSheva",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Coach"],
			[IsNotSaidCoachPounced],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCoachPouncedProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCoachPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCoachPouncedC1Sheva",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Coach"],
			[IsNotSaidCoachPounced],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCoachPouncedC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCoachPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGamblerPouncedC1Sheva",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Gambler"],
			[IsNotSaidGamblerPounced],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCoachPouncedC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGamblerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerMechanicPouncedC1Sheva",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Mechanic"],
			[IsNotSaidMechanicPounced],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCoachPouncedC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidMechanicPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerEatPillsSheva",
		criteria = 
		[
			["concept", "EatPills"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerEatPillsProducer,
			},
		],
	},

	{
		name = "PlayerGamblerPouncedSheva",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire90Percent],
			["coughing", 0],
			["subject", "Gambler"],
			[IsNotSaidGamblerPounced],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGamblerPouncedProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGamblerPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGetInsideCheckPointSheva",
		criteria = 
		[
			["concept", "PlayerGetInsideCheckPoint"],
			["coughing", 0],
			["who", "Sheva"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkSheva],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGetInsideCheckPointProducer,
				followup = RThenAny("StayTogetherInsideReponse", -1.498),
			},
		],
	},

	{
		name = "PlayerStayTogetherSaferoomSheva",
		criteria = 
		[
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "Sheva"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkSheva],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerStayTogetherSaferoomProducer,
			},
		],
	},

	{
		name = "PlayerGrabbedByJockeySheva",
		criteria = 
		[
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGrabbedByJockeyProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedSheva", value = 1, duration = 6.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGrabbedByJockeyC1Sheva",
		criteria = 
		[
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGrabbedByJockeyC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedSheva", value = 1, duration = 6.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGrenadeMolotovSheva",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["grenadetype", "Molotov"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGrenadeMolotovProducer,
				followup = RThenAny("GrenadeCareful", -1.119),
			},
		],
	},

	{
		name = "PlayerGrenadeMolotovTankSheva",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["grenadetype", "Molotov"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGrenadeMolotovTankProducer,
			},
		],
	},

	{
		name = "PlayerGrenadePipeBombSheva",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["grenadetype", "PipeBomb"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGrenadePipeBombProducer,
				followup = RThenAny("GrenadeCareful", -0.642),
			},
		],
	},

	{
		name = "PlayerGrenadeVomitJarSheva",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["grenadetype", "VomitJar"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGrenadeVomitJarProducer,
				followup = RThenAny("GrenadeCareful", -1.702),
			},
		],
	},

	{
		name = "PlayerGrenadeVomitJarC1Sheva",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["grenadetype", "VomitJar"],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGrenadeVomitJarC1Producer,
				followup = RThenAny("GrenadeCareful", -1.702),
			},
		],
	},

	{
		name = "PlayerIncapacitatedInitialSheva",
		criteria = 
		[
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerIncapacitatedInitialProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerIncapacitatedInitialC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerIncapacitated"],
			["who", "Sheva"],
			["map", "c1m2_streets"],
			["worldc1m2alarmsetoff", 2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerIncapacitatedInitialC1M2Producer,
				followup = RThen("orator", "C1M2SurvivorDown", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerKillConfirmationSheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectFar300],
			[ChanceToFire40Percent],
			[isNotmap_c1m1_hotel],
			[IsWorldTalkSheva],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillConfirmationProducer,
				followup = RThenAny("PlayerNiceShot", -0.465),
			},
		],
	},

	{
		name = "PlayerKillConfirmationC1M1Sheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkSheva],
			[IsUsingFirearm],
			["map", "c1m1_hotel"],
			[IsNotFirstKillC1],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillConfirmationC1M1Producer,
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
		name = "PlayerKillConfirmationC1M1MeleeSheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkSheva],
			["activeweapon", "Melee"],
			["map", "c1m1_hotel"],
			[IsNotFirstKillC1],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillConfirmationC1M1MeleeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 10.0 },
			c2 = { context = "FirstKill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerKillConfirmationC1M2Sheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkSheva],
			[IsUsingFirearm],
			["map", "c1m2_streets"],
			["worldsaidc1m2insidegunshop", 1],
			[IsWorldTalkSheva],
			["world_auto_button1", 1],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillConfirmationC1M2Producer,
				followup = RThen("Mechanic", "C1M2GunshopKill", null, 0.1),
			},
		],
	},

	{
		name = "RightfulKillerSheva",
		criteria = 
		[
			["concept", "RightfulKiller"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.RightfulKillerProducer,
				followup = RThen("self", "InsistMine", { from = "Sheva" }, 0.0),
			},
		],
	},

	{
		name = "PlayerKillTankConfirmationSheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsRocking],
			[IsWorldTalkSheva],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillTankConfirmationProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerKillConfirmationEllisCloseSheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			["worldellisalsowarn", 1],
			[ChanceToFire5Percent],
			[IsNotAlone],
			["incapacitated", 0],
			[IsRocking],
			[IsWorldTalkSheva],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillConfirmationEllisCloseProducer,
				followup = RThen("Mechanic", "KillSteal", null, 0.0),
			},
		],
	},

	{
		name = "PlayerKillTankConfirmationC1M2Sheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c1m2_streets"],
			[IsEveryoneAlive],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillTankConfirmationC1M2Producer,
				followup = RThen("mechanic", "C1M2TankInfo", null, 0.1),
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
		name = "PlayerCr0wnedWitchSheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["who", "Sheva"],
			["subjectisa", "Witch"],
			[IsNotWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
	},

	{
		name = "PlayerKilledStartledWitchSheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["who", "Sheva"],
			["subjectisa", "Witch"],
			[IsWitchAggro],
			[WitchaggroDecrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:--1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerKillTankNotHealthySheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsNotHealthy],
			[IsWorldTalkSheva],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerKillTankNotHealthyProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerLockTheDoorCheckPointSheva",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			["insafespot", 1],
			[IsNotAlone],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLockTheDoorCheckPointProducer,
			},
		],
	},

	{
		name = "PlayerLockTheDoorCheckPointC1Sheva",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			["insafespot", 1],
			[IsNotAlone],
			[IsTalk],
			[IsTalkSheva],
			["map", "c1m1_hotel"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLockTheDoorCheckPointC1Producer,
			},
		],
	},

	{
		name = "PlayerMechanicPouncedSheva",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Mechanic"],
			[IsNotSaidMechanicPounced],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerMechanicPouncedProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidMechanicPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRevivedByDefibrillatorSheva",
		criteria = 
		[
			["concept", "RevivedByDefibrillator"],
			["coughing", 0],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRevivedByDefibrillatorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRevivedByDefibrillator2Sheva",
		criteria = 
		[
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRevivedByDefibrillator2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestMeHealthSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[IsNotSuggestedHealth],
			["incapacitated", 0],
			["hasfirstaidkit", 1],
			["who", "Sheva"],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerSuggestMeHealthProducer,
				followup = RThenAny("PlayerSuggestHealth", 0.0),
			},
		],
	},

	{
		name = "PlayerSuggestHealthGenericSheva",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "Sheva"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerSuggestHealthGenericProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthCoachSheva",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "Sheva"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Coach"],
			[ChanceToFire50Percent],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerSuggestHealthCoachProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthGamblerSheva",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "Sheva"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Gambler"],
			[ChanceToFire50Percent],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerSuggestHealthGamblerProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthMechanicSheva",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "Sheva"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Mechanic"],
			[ChanceToFire50Percent],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerSuggestHealthMechanicProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionSheva",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["numberofteamdead", 0],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerTransitionProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionCloseSheva",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerTransitionCloseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC1M3Sheva",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m3_mall"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerTransitionC1M3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC2M1Sheva",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c2m1_highway"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerTransitionC2M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC2M1EllisSheva",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c2m1_highway"],
			[IsNotAlone],
			["ismechanicalive", 1],
			[ChanceToFire50Percent],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerTransitionC2M1EllisProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionC5M4Sheva",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c5m4_quarter"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerTransitionC5M4Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerUsingDefibrillatorSheva",
		criteria = 
		[
			["concept", "PlayerUsingDefibrillator"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerUsingDefibrillatorProducer,
			},
		],
	},

	{
		name = "PlayerWarnHeardBoomerSheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardBoomerProducer,
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
		name = "PlayerWarnHeardChargerSheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardChargerProducer,
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
		name = "PlayerWarnHeardHunterSheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardHunterProducer,
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
		name = "PlayerWarnHeardHunterC1M3Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsNotWarnHeardHunter],
			["incombat", 0],
			["worldsaidc1m3coachfoodcourt", 1],
			["map", "c1m3_mall"],
			[IsNotSaidSpecialWarn],
			["iscoachalive", 1],
			[IsCoachNear200],
			[ChanceToFire5Percent],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardHunterC1M3Producer,
				followup = RThen("Coach", "PlayerLaugh", null, 0.0),
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
		name = "PlayerWarnHeardJockeySheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardJockeyProducer,
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
		name = "PlayerWarnHeardSmokerSheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardSmokerProducer,
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
		name = "PlayerWarnHeardSpitterSheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardSpitterProducer,
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
		name = "PlayerWarnHeardJockeyC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardJockeyC1Producer,
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
		name = "PlayerWarnHeardBoomerC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
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
		name = "PlayerWarnHeardChargerC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
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
		name = "PlayerWarnHeardHunterC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
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
		name = "PlayerWarnHeardSmokerC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
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
		name = "PlayerWarnHeardSpitterC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardBoomerC1Producer,
				followup = RThen("mechanic", "Player.C1WorseThanZombies", null, 0.1),
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
		name = "PlayerWarnHeardWitchSheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Sheva"],
			[IsNotWarnHeardWitch],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[_auto_NotAlarmV2],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardWitchProducer,
				followup = RThenAny("PlayerKillThatLight", -1.093),
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
		name = "PlayerWarnHeardWitchC1Sheva",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardWitchC1Producer,
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
		name = "PlayerHeardWitchC1Sheva",
		criteria = 
		[
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnHeardWitchC1Producer,
			},
		],
	},

	{
		name = "BeNiceSheva",
		criteria = 
		[
			["concept", "BeNice"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incapacitated", 0],
			[IsNotInSafeSpot],
			[IssuerClose],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.BeNiceProducer,
			},
		],
	},

	{
		name = "PlayerWarnMegaMobSheva",
		criteria = 
		[
			["concept", "PlayerWarnMegaMob"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSpeaking],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnMegaMobProducer,
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
		name = "PlayerWarnWitchAngrySheva",
		criteria = 
		[
			["concept", "WitchGettingAngry"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotWarnAngryWitch],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWarnWitchAngryProducer,
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
		name = "PlayerWorldIntroC31BlankSheva",
		criteria = 
		[
			["concept", "introC3M1"],
			["who", "Sheva"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldIntroC31BlankProducer,
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
		name = "PlayerWorldIntroC51Sheva",
		criteria = 
		[
			["concept", "introC5M1"],
			["who", "Sheva"],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWorldIntroC51Producer,
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
		name = "SurvivorCaughtVomitSheva",
		criteria = 
		[
			["concept", "PlayerVomitInFace"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorCaughtVomitProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerVomitExpiredC1Sheva",
		criteria = 
		[
			["concept", "PlayerVomitExpired"],
			["coughing", 0],
			["map", "c1m1_hotel"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerVomitExpiredC1Producer,
			},
		],
	},

	{
		name = "SurvivorchargerpoundSheva",
		criteria = 
		[
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidchargerpound],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorchargerpoundProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorchargerpoundC1Sheva",
		criteria = 
		[
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidchargerpound],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorchargerpoundC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorCoughingSheva",
		criteria = 
		[
			["concept", "SurvivorCoughing"],
			["coughing", 1],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorCoughingProducer,
			},
		],
	},

	{
		name = "SurvivorCoughingDeathSheva",
		criteria = 
		[
			["concept", "PlayerDeath"],
			["coughing", 1],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorCoughingProducer,
			},
		],
	},

	{
		name = "SurvivorDeathSheva",
		criteria = 
		[
			["concept", "PlayerDeath"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorDeathProducer,
			},
		],
	},

	{
		name = "SurvivorGooedBySpitterSheva",
		criteria = 
		[
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkSheva],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorGooedBySpitterProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorGooedBySpitterC1Sheva",
		criteria = 
		[
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorGooedBySpitterC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorGrabbedByTongueSheva",
		criteria = 
		[
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorGrabbedByTongueProducer,
			},
		],
	},

	{
		name = "SurvivorGrabbedByTongueC1Sheva",
		criteria = 
		[
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorGrabbedByTongueC1Producer,
			},
		],
	},

	{
		name = "SurvivorNearCheckpointSheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC1M1Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c1m1_hotel"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC1M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c1m2_streets"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC1M2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC1M3Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c1m3_mall"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC1M3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC2M1Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c2m1_highway"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC2M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC2M2Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c2m2_fairgrounds"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC2M2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC2M4Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c2m4_barns"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC2M4Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC3M1Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c3m1_plankcountry"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC3M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC3M2Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c3m2_swamp"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC3M2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkC3M3SafeHouseAheadSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C3M3SafeHouseAhead"],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC3M3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC4M1Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c4m1_milltown_a"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC4M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC4M2Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c4m2_sugarmill_a"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC4M2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC4M3Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c4m3_sugarmill_b"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC4M3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC4M4Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c4m4_milltown_b"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC5M2Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c5m2_park"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC5M2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC6M1Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c6m1_riverbank"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC6M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC6M2Sheva",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			["map", "c6m2_bedlam"],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearCheckpointC6M2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleSheva",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearFinaleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC1M4Sheva",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c1m4_atrium"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC2M5Sheva",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c2m5_concert"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearFinaleC2M5Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC3M4Sheva",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c3m4_plantation"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearFinaleC3M4Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC4M5Sheva",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c4m5_milltown_escape"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC5M5Sheva",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c5m5_bridge"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearFinaleC6M3Sheva",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c6m3_port"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPouncedByHunterSheva",
		criteria = 
		[
			["concept", "ScreamWhilePounced"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPouncedByHunterProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorTankPoundSheva",
		criteria = 
		[
			["concept", "PlayerGroundPoundedByTank"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorTankPoundProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 7.0 },
		},
	},

	{
		name = "SurvivorVocalizeBackUpSheva",
		criteria = 
		[
			["concept", "PlayerBackUp"],
			["who", "Sheva"],
			["coughing", 0],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeBackUpProducer,
			},
		],
	},

	{
		name = "SurvivorVocalizeEmphaticGoSheva",
		criteria = 
		[
			["concept", "PlayerEmphaticGo"],
			["who", "Sheva"],
			["coughing", 0],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeEmphaticGoProducer,
			},
		],
	},

	{
		name = "SurvivorVocalizeGoingToDieSheva",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotComplainBlock],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeGoingToDieProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "SurvivorVocalizeGoingToDie3Sheva",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Sheva"],
			["onthirdstrike", 1],
			[IsTalk],
			[IsTalkSheva],
			[IsNotComplainBlock],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeGoingToDie3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "SurvivorVocalizeGoingToDieC5M5Sheva",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Sheva"],
			["onthirdstrike", 1],
			[IsTalk],
			[IsTalkSheva],
			[ChanceToFire30Percent],
			[IsNotSaidGoingToDieC5M5],
			["map", "c5m5_bridge"],
			[IsNotComplainBlock],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeGoingToDieC5M5Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 8.0 },
			c3 = { context = "SaidGoingToDieC5M5", value = 1, duration = 0.0 },
		},
	},

	{
		name = "SurvivorVocalizeLookOutSheva",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeLookOutProducer,
			},
		],
	},

	{
		name = "SurvivorVocalizeThisWaySheva",
		criteria = 
		[
			["concept", "PlayerThisWay"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeThisWayProducer,
			},
		],
	},

	{
		name = "SurvivorVocalizeWaitHereSheva",
		criteria = 
		[
			["concept", "PlayerWaitHere"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorVocalizeWaitHereProducer,
			},
		],
	},

	{
		name = "SurvivorWarnSpitterIncomingSheva",
		criteria = 
		[
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorWarnSpitterIncomingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},

	{
		name = "SurvivorWarnSpitterIncomingC1Sheva",
		criteria = 
		[
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidWarnSpitterIncoming],
			[C1M1orC1M2],
			[IsWorldTalkSheva],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorWarnSpitterIncomingC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerLedgeHangEndSheva",
		criteria = 
		[
			["concept", "PlayerLedgeHangEnd"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLedgeHangEndProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeHangMiddleSheva",
		criteria = 
		[
			["concept", "PlayerLedgeHangMiddle"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLedgeHangMiddleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeHangStartSheva",
		criteria = 
		[
			["concept", "PlayerLedgeHangStart"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLedgeHangStartProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorFirstDeathSheva",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Sheva"],
			[IsNotSaidSomeoneDied],
			[IsEveryoneAlive],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorFirstDeathProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DeathAloneSheva",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Sheva"],
			["numberofteamalive", 2],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DeathAloneProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DoubleDeath2Sheva",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Sheva"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			["numberofteamalive", 3],
			["incapacitated", 0],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DoubleDeath2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "TeamKillSheva",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["worldsaidfaultfriendlyfire", 1],
			[IsNotSaidFaultFriendlyFireSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.TeamKillProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakeSubMachineGunSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itempickedup", "SMG"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1TakeSubMachineGunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakeSubMachineGunSilencedSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1TakeSubMachineGunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakePumpShotgunSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itempickedup", "PumpShotgun"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1TakeSubMachineGunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakeChromeShotgunSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itempickedup", "Shotgun_Chrome"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1TakeSubMachineGunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1TakeCSSMP5Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itempickedup", "Smg_mp5"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1TakeSubMachineGunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "JustSaidWorldC6M1_IntoTheStore", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorDeployUpExplosivesSheva",
		criteria = 
		[
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSaidDeployUpgradePack_Explosive],
			["activeweapon", "UpgradePack_Explosive"],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorDeployUpExplosivesProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Explosive", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorDeployUpIncendiarySheva",
		criteria = 
		[
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSaidDeployUpgradePack_Incendiary],
			["activeweapon", "UpgradePack_Incendiary"],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorDeployUpIncendiaryProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Incendiary", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAdrenalineSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Adrenaline"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupAdrenalineProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAutoShotgunSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "AutoShotgun"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupAutoShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSpasShotgunSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Shotgun_Spas"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupAutoShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAutoShotgunC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "AutoShotgun"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m2_streets"],
			["worldsaidc1m2insidegunshop", 1],
			["world_auto_button1", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupAutoShotgunC1M2Producer,
				followup = RThen("Mechanic", "C1M2InsideGunShopPickupResponse2", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSpasShotgunC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Shotgun_Spas"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m2_streets"],
			["worldsaidc1m2insidegunshop", 1],
			["world_auto_button1", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupAutoShotgunC1M2Producer,
				followup = RThen("Mechanic", "C1M2InsideGunShopPickupResponse2", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupbaseball_batSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "baseball_bat"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupbaseball_batProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupShovelSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "shovel"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupbaseball_batProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPitchforkSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Pitchfork"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupbaseball_batProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupchainsawSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "chainsaw"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupchainsawProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupcricket_batSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "cricket_bat"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupcricket_batProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupKnifeSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Knife"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupbaseball_batProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupCrowBarSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "CrowBar"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupCrowBarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupDefibrillatorSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Defibrillator"],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupDefibrillatorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupelectric_guitarSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "electric_guitar"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupelectric_guitarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFireAxeSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "FireAxe"],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupFireAxeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFirstAidKitSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "FirstAidKit"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupFirstAidKitProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFirstSMGSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidPickupFirstSMG],
			["worldsaidc1m1opendoor", 1],
			[ExtraWeight10],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupFirstSMGProducer,
				followup = RThen("self", "PlayerPickupFirstSMG2", null, 0.2),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPickupFirstSMG", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPickupFryingPanSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "frying_pan"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[IsNotInStartArea],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupFryingPanProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupGolfClubSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "GolfClub"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[IsNotInStartArea],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupGolfClubProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupGrenadeLauncherSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "GrenadeLauncher"],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupGrenadeLauncherProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupGunC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSpeaking],
			[IsTalk],
			["worldsaidc1m2insidegunshop", 1],
			[IsNotPickedUpFirstAidKit],
			[IsNotPickedUpAdrenaline],
			[IsNotPickedUpPainPills],
			[IsNotPickedUpAmmo],
			[IsNotPickedUpVomitJar],
			[IsNotPickedUpLaserSights],
			[IsNotPickedUpMolotov],
			[IsNotPickedUpPipeBomb],
			[IsWorldTalkSheva],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupGunC1M2Producer,
				followup = RThen("Mechanic", "C1M2InsideGunShopPickupResponse", null, 0.1),
			},
		],
	},

	{
		name = "SurvivorPickupHuntingRifleSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "HuntingRifle"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupHuntingRifleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMilitarySniperSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Sniper_Military"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupHuntingRifleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupScoutSniperSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Sniper_scout"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupHuntingRifleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAWPSniperSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Sniper_awp"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupHuntingRifleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupHuntingRifleC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "HuntingRifle"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m2_streets"],
			["worldsaidc1m2insidegunshop", 1],
			["world_auto_button1", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupHuntingRifleC1M2Producer,
				followup = RThen("Mechanic", "C1M2InsideGunShopPickupResponse2", null, -1.564),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMilitarySniperC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Sniper_Military"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m2_streets"],
			["worldsaidc1m2insidegunshop", 1],
			["world_auto_button1", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupHuntingRifleC1M2Producer,
				followup = RThen("Mechanic", "C1M2InsideGunShopPickupResponse2", null, -1.564),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupIncendiaryAmmoSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "IncendiaryAmmo"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupIncendiaryAmmoProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupKatanaSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Katana"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupKatanaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupLaserSightsAlwaysSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 0],
			[ChanceToFire50Percent],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[NotPickedUpItem],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupLaserSightsAlwaysProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupM60Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "m60"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupM60Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMacheteSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Machete"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupMacheteProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMagnumSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Magnum"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupMagnumProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMolotovSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Molotov"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupMolotovProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPainPillsSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "PainPills"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupPainPillsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPipeBombSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "PipeBomb"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupPipeBombProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPumpShotgunSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "PumpShotgun"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupPumpShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupChromeShotgunSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Shotgun_Chrome"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupPumpShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupRifleSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Rifle"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupRifleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupDesertRifleSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Rifle_Desert"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupRifleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAK47RifleSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Rifle_AK47"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupRifleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSG552RifleSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Rifle_sg552"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupRifleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupRifleC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Rifle"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m2_streets"],
			["worldsaidc1m2insidegunshop", 1],
			["world_auto_button1", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupRifleC1M2Producer,
				followup = RThen("Mechanic", "C1M2InsideGunShopPickupResponse2", null, -1.564),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupDesertRifleC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Rifle_Desert"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m2_streets"],
			["worldsaidc1m2insidegunshop", 1],
			["world_auto_button1", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupRifleC1M2Producer,
				followup = RThen("Mechanic", "C1M2InsideGunShopPickupResponse2", null, -1.564),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAK47RifleC1M2Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Rifle_AK47"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m2_streets"],
			["worldsaidc1m2insidegunshop", 1],
			["world_auto_button1", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupRifleC1M2Producer,
				followup = RThen("Mechanic", "C1M2InsideGunShopPickupResponse2", null, -1.564),
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSecondPistolSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "SecondPistol"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupSecondPistolProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSMGSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "SMG"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSilencedSMGSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Smg_silenced"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSilencedMP5SMGSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "Smg_mp5"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickuptonfaSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "tonfa"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickuptonfaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpExplosiveAmmoSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "ExplosiveAmmo"],
			[IsNotSpeaking],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupUpExplosiveAmmoProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpExplosivesSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "UpgradePack_Explosive"],
			[IsNotSpeaking],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupUpExplosivesProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpIncendiarySheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "UpgradePack_Incendiary"],
			[IsNotSpeaking],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupUpIncendiaryProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupVomitJarSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "VomitJar"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupVomitJarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupVomitJarAlwaysC1Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "VomitJar"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupVomitJarAlwaysC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "PlayerGettingRevivedSheva",
		criteria = 
		[
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerGettingRevivedProducer,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "Sheva" }, -3.84),
			},
		],
	},

	{
		name = "PlayerHealOtherSheva",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["incombatmusic", 0],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHealOtherProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerHealOtherCombatSheva",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["incombatmusic", 1],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHealOtherCombatProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerHealOtherTankSheva",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkSheva],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerHealOtherCombatProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeSaveSheva",
		criteria = 
		[
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLedgeSaveProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendSheva",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendProducer,
				followup = RThen("Subject", "ReviveFriendDown", null, -0.633),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerReviveEllisSheva",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["subject", "Mechanic"],
			[ChanceToFire5Percent],
			[IsWorldTalkSheva],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveEllisProducer,
				followup = RThen("Subject", "ReviveFriendDown", null, -0.897),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
			c2 = { context = "EllisCrying", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerReviveFriendBSheva",
		criteria = 
		[
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendBProducer,
			},
		],
	},

	{
		name = "PlayerReviveFriendCriticalSheva",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendCriticalProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudSheva",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendLoudProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeSaveCriticalSheva",
		criteria = 
		[
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerLedgeSaveProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendFFSheva",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["worldshotteammatesheva", 1],
			[IsWorldTalkSheva],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendFFProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendCriticalFFSheva",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["worldshotteammatesheva", 1],
			[IsWorldTalkSheva],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendFFProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoud2Sheva",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Sheva"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendLoudProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudCritSheva",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Sheva"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendLoudProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudCrit2Sheva",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Sheva"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerReviveFriendLoudProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 5.0 },
		},
	},

	{
		name = "_C1M1_ElevatorHelloSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHelloProducer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHelloStartAllAliveSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHelloStartAllAliveProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello05c", null, -4.637),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHelloStart3AliveSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 3],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHelloStart3AliveProducer,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveShevaIntro", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHelloStart2AliveSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHelloStart2AliveProducer,
				followup = RThenAny("_C1M1_ElevatorHello2AliveName1", 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello01cSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello01c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello01cProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello13a", null, -4.068),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello02aSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello02a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello02aProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello03a", null, -1.195),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello02dSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello02d"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello02dProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello03d", null, -0.555),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello03cSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello03c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello03cProducer,
				followup = RThen("gambler", "_C1M1_ElevatorHello04c", null, -1.195),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello04bSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello04b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello04bProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello05b", null, -1.195),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello04dSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello04d"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello04dProducer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello07aSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello07a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello07aProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello12a", null, -2.849),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello07cSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello07c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello07cProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello07d", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello07eSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello07e"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello07eProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello07f", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello08bSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello08b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello08bProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello08c", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello08dSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello08d"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello08dProducer,
				followup = RThen("mechanic", "_C1M1_ElevatorHello08e", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello09aSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello09a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello09aProducer,
				followup = RThen("gambler", "_C1M1_ElevatorHello04e", null, -3.927),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello11aSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello11a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello11aProducer,
				followup = RThen("coach", "_C1M1_ElevatorHello07g", null, -1.195),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello13aSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello13a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello13aProducer,
				followup = RThen("coach", "_C1M1_ElevatorHello13b", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello13bSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello13b"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello13bProducer,
				followup = RThen("gambler", "_C1M1_ElevatorHello13d", null, -1.195),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello13cSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello13c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello13cProducer,
				followup = RThen("gambler", "_C1M1_ElevatorHello04c", null, -1.195),
			},
		],
	},

	{
		name = "_c1m4startelevator3aSheva",
		criteria = 
		[
			["concept", "_c1m4startelevator3a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c1m4startelevator3aProducer,
				followup = RThen("mechanic", "_c1m4startelevator3b", null, 0.2),
			},
		],
	},

	{
		name = "_c1m4startelevator3cSheva",
		criteria = 
		[
			["concept", "_c1m4startelevator3c"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c1m4startelevator3cProducer,
				followup = RThenAny("_c1m4startelevatorLast", -5.233),
			},
		],
	},

	{
		name = "_c1m4startelevator5aSheva",
		criteria = 
		[
			["concept", "_c1m4startelevator5a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c1m4startelevator5aProducer,
				followup = RThen("mechanic", "_c1m4startelevator5a", null, -5.233),
			},
		],
	},

	{
		name = "_c1m4startelevatorLastSheva",
		criteria = 
		[
			["concept", "_c1m4startelevatorLast"],
			["who", "Sheva"],
			["worldelevatortimer", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c1m4startelevatorLastProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c1m4startelevatorLastSheva",
		criteria = 
		[
			["concept", "_c1m4startelevatorLast"],
			["who", "Sheva"],
			[ElevatorTimeUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M1_Fall02Sheva",
		criteria = 
		[
			["concept", "_C2M1_Fall02"],
			["who", "Sheva"],
			["incombat", 0],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M1_Fall02Producer,
			},
		],
	},

	{
		name = "_c2m1_searchlights01Sheva",
		criteria = 
		[
			["concept", "_c2m1_searchlights01"],
			["who", "Sheva"],
			["incombat", 0],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c2m1_searchlights01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.003 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c2m1_searchlights04Sheva",
		criteria = 
		[
			["concept", "_c2m1_searchlights04"],
			["who", "Sheva"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c2m1_searchlights04Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.003 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M1abandoned02Sheva",
		criteria = 
		[
			["concept", "_C2M1abandoned02"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M1abandoned02Producer,
			},
		],
	},

	{
		name = "_C2M2_Kiddie01Sheva",
		criteria = 
		[
			["concept", "_C2M2_Kiddie01"],
			["who", "Sheva"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_Kiddie01Producer,
				followup = RThen("self", "_C2M2_Kiddie02", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.713 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_Kiddie02Sheva",
		criteria = 
		[
			["concept", "_C2M2_Kiddie02"],
			["who", "Sheva"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_Kiddie02Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.566 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_Kiddie05Sheva",
		criteria = 
		[
			["concept", "_C2M2_Kiddie05"],
			["who", "Sheva"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_Kiddie05Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.576 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_CobblerSheva",
		criteria = 
		[
			["concept", "_C2M2_Cobbler"],
			["who", "Sheva"],
			[IssuerClose],
			[ChanceToFire40Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_CobblerProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_Steak01Sheva",
		criteria = 
		[
			["concept", "_C2M2_Steak01"],
			["who", "Sheva"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_Steak01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 9.2 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_ThisTall01Sheva",
		criteria = 
		[
			["concept", "_C2M2_ThisTall01"],
			["who", "Sheva"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_ThisTall01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.272 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_MiscFoodSheva",
		criteria = 
		[
			["concept", "_C2M2_MiscFood"],
			["who", "Sheva"],
			["incombat", 0],
			[ChanceToFire40Percent],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_MiscFoodProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M2_OkraSheva",
		criteria = 
		[
			["concept", "_C2M2_Okra"],
			["who", "Sheva"],
			["incombat", 0],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M2_OkraProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_okraSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m2_okra"],
			[IsNotSaidc2m2_okra],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotCoachFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m2_okraProducer,
				followup = RThen("coach", "_C2M2_Okra", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_okra", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 6.24 },
			c3 = { context = "_auto_CoachFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc2m2_okrabSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c2m2_okra2"],
			[IsNotSaidc2m2_okra],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
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
				func = Custom_Talker_Sheva.PlayerRemarkc2m2_okraProducer,
				followup = RThen("coach", "_C2M2_Okra", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc2m2_okra", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 6.24 },
			c3 = { context = "_auto_CoachFoodBreak", value = 1, duration = 15.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M4_GateOpen001Sheva",
		criteria = 
		[
			["concept", "_C2M4_GateOpen001"],
			["who", "Sheva"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M4_GateOpen001Producer,
			},
		],
	},

	{
		name = "_C4_BigStormHits01Sheva",
		criteria = 
		[
			["concept", "_C4_BigStormHits01"],
			["who", "Sheva"],
			[_auto_NotC4ShevaInCover],
			["world_auto_timera", 1],
			["from", "orator"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C4_BigStormHits01Producer,
				followup = RThenAny("_C4_BigStormHits02", 0.04),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.662 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C4_BigStormHits02Sheva",
		criteria = 
		[
			["concept", "_C4_BigStormHits02"],
			["who", "Sheva"],
			["coughing", 0],
			[IssuerClose],
			["incapacitated", 0],
			[_auto_NotC4ShevaInCover],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C4_BigStormHits02Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.05 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c4m1_rainresponseSheva",
		criteria = 
		[
			["concept", "_c4m1_rainresponse"],
			["who", "Sheva"],
			["incombat", 0],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidc4m1_rainresponse],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m1_rainresponseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_rainresponse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4M1IntroSheva",
		criteria = 
		[
			["concept", "introC4M1"],
			["who", "Sheva"],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4M1IntroProducer,
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
		name = "_c4m1Intro03Sheva",
		criteria = 
		[
			["concept", "_c4m1Intro03"],
			["who", "Sheva"],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m1Intro03Producer,
				followup = RThen("gambler", "_c4m1Intro04", null, 0.01),
			},
		],
	},

	{
		name = "_c4m1Intro04Sheva",
		criteria = 
		[
			["concept", "_c4m1Intro04"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m1Intro04Producer,
				followup = RThen("coach", "_c4m1Intro04", null, 0.01),
			},
		],
	},

	{
		name = "_c4m1Intro06Sheva",
		criteria = 
		[
			["concept", "_c4m1Intro06"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m1Intro06Producer,
				followup = RThen("mechanic", "_c4m1Intro07", null, 0.01),
			},
		],
	},

	{
		name = "_c4m1Intro08Sheva",
		criteria = 
		[
			["concept", "_c4m1Intro08"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m1Intro08Producer,
				followup = RThen("self", "_c4m1Intro08", null, 0.01),
			},
		],
	},

	{
		name = "_c4m1Intro10Sheva",
		criteria = 
		[
			["concept", "_c4m1Intro10"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m1Intro10Producer,
				followup = RThen("gambler", "_c4m1Intro11", null, 0.01),
			},
		],
	},

	{
		name = "_c4m2_caneyell01Sheva",
		criteria = 
		[
			["concept", "_c4m2_caneyell01"],
			["who", "Sheva"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_shevaincane", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_caneyell01Producer,
			},
		],
	},

	{
		name = "_c4m2_ElevatorHere01Sheva",
		criteria = 
		[
			["concept", "_c4m2_ElevatorHere01"],
			["who", "Sheva"],
			["incapacitated", 0],
			["coughing", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_ElevatorHere01Producer,
			},
		],
	},

	{
		name = "_c4m2_gasinside01Sheva",
		criteria = 
		[
			["concept", "_c4m2_gasinside01"],
			["who", "Sheva"],
			["incombat", 0],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotShevaInCane],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_gasinside01Producer,
			},
		],
	},

	{
		name = "_c4m2_streetblocked01Sheva",
		criteria = 
		[
			["concept", "_c4m2_streetblocked01"],
			["who", "Sheva"],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_streetblocked01Producer,
			},
		],
	},

	{
		name = "_c4m2_streetblocked01bSheva",
		criteria = 
		[
			["concept", "_c4m2_streetblocked01"],
			["who", "Sheva"],
			[IsSubjectDistFar400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_streetblocked01bProducer,
				followup = RThen("subject", "_c4m2_streetblocked02", null, 0.01),
			},
		],
	},

	{
		name = "_c4m2_streetblocked02Sheva",
		criteria = 
		[
			["concept", "_c4m2_streetblocked02"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_streetblocked01Producer,
			},
		],
	},

	{
		name = "_c4m2_Witchville02Sheva",
		criteria = 
		[
			["concept", "_c4m2_Witchville02"],
			["who", "Sheva"],
			[IssuerClose],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_Witchville02Producer,
			},
		],
	},

	{
		name = "_c4m2_seestation01Sheva",
		criteria = 
		[
			["concept", "_c4m2_seestation01"],
			["who", "Sheva"],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_seestation01Producer,
				followup = RThen("mechanic", "_c4m2_seestation02", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_c4m2_seestation03Sheva",
		criteria = 
		[
			["concept", "_c4m2_seestation03"],
			["who", "Sheva"],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			["incombat", 0],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._c4m2_seestation03Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C4M5_FinaleStart01Sheva",
		criteria = 
		[
			["concept", "_C4M5_FinaleStart01"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C4M5_FinaleStart01Producer,
			},
		],
	},

	{
		name = "_C4M5_BoatComing01Sheva",
		criteria = 
		[
			["concept", "_C4M5_BoatComing01"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C4M5_BoatComing01Producer,
			},
		],
	},

	{
		name = "_C4M5_Intro03Sheva",
		criteria = 
		[
			["concept", "_C4M5_Intro03"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C4M5_Intro03Producer,
				followup = RThenAny("_C4M5_Intro04", 0.1),
			},
		],
	},

	{
		name = "_C4M5_Intro04Sheva",
		criteria = 
		[
			["concept", "_C4M5_Intro04"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C4M5_Intro04Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "PlayerRemarkc4m5_BurgerTankSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m5_burgertank"],
			[IsNotSaidc4m5_burgertank],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear1000],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m5_BurgerTankProducer,
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
		name = "_introc1m1MovieIntroSheva",
		criteria = 
		[
			["concept", "_introc1m1MovieIntro"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1MovieIntroProducer,
				followup = RThen("coach", "_introc1m1MovieIntro", null, -4.0),
			},
		],
	},

	{
		name = "_introc1m1a02Sheva",
		criteria = 
		[
			["concept", "_introc1m1a02"],
			["who", "Sheva"],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1a02Producer,
				followup = RThenAny("_introc1m1a03", -1.0),
			},
		],
	},

	{
		name = "_introc1m1a02AloneSheva",
		criteria = 
		[
			["concept", "_introc1m1a02"],
			["who", "Sheva"],
			["numberofteamalive", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1a02AloneProducer,
			},
		],
	},

	{
		name = "_introc1m1a04Sheva",
		criteria = 
		[
			["concept", "_introc1m1a04"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1a04Producer,
				followup = RThen("gambler", "_introc1m1a04", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1b05Sheva",
		criteria = 
		[
			["concept", "_introc1m1b05"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1b05Producer,
				followup = RThenAny("_introc1m1b08", 0.1),
			},
		],
	},

	{
		name = "_introc1m1b06Sheva",
		criteria = 
		[
			["concept", "_introc1m1b06"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1b06Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1d01Sheva",
		criteria = 
		[
			["concept", "_introc1m1d01"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1d01Producer,
				followup = RThen("coach", "_introc1m1b08", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1lastSheva",
		criteria = 
		[
			["concept", "_introc1m1last"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1lastProducer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1lastweaponsSheva",
		criteria = 
		[
			["concept", "_introc1m1lastweapons"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1lastProducer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "_introc1m1b07Sheva",
		criteria = 
		[
			["concept", "_introc1m1b07"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1b07Producer,
				followup = RThenAny("_introc1m1b08", 0.1),
			},
		],
	},

	{
		name = "_introc1m1b08Sheva",
		criteria = 
		[
			["concept", "_introc1m1b08"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._introc1m1b08Producer,
				followup = RThenAny("_introc1m1last", 0.1),
			},
		],
	},

	{
		name = "BlankTestoSheva",
		criteria = 
		[
			["concept", "BlankTesto"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_BlankTesto", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c1m1_elevator_door_openSheva",
		criteria = 
		[
			["concept", "c1m1_elevator_door_open2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c1m1_elevator_door_openProducer,
				followup = RThen("all", "C1M1Cough", null, -2.638),
			},
		],
	},

	{
		name = "c1m1_elevator_ready2Sheva",
		criteria = 
		[
			["concept", "c1m1_elevator_ready2"],
			["who", "Sheva"],
			[IsNotSaidC1M1OpenDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c1m1_elevator_ready2Producer,
				followup = RThen("sheva", "C1M1Cough", null, -2.467),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC1M1OpenDoor", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello2AliveName2Sheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello2AliveName2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello2AliveName2Producer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello2AliveName2CSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello2AliveName2"],
			["who", "Sheva"],
			["from", "Coach"],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello2AliveName2CProducer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello2AliveExtra1Sheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello2AliveExtra1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello2AliveExtra1Producer,
				followup = RThenAny("_C1M1_ElevatorHello2AliveExtra1", 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello2AliveExtra2Sheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello2AliveExtra2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello2AliveExtra2Producer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveRochelleIntroSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveShevaIntro"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveRochelleIntroProducer,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName1", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "ShevaIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello3AliveExtra1Sheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveExtra1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveExtra1Producer,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveName1", { from = "Sheva" }, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "ShevaElevatorIntro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello3AliveExtra2Sheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveExtra2"],
			["worldshevaelevatorintro", 1],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveExtra2Producer,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName2", 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveName1Sheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveName1"],
			["who", "Sheva"],
			[IsNotShevaIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveName1Producer,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName2", -0.648),
			},
		],
		applycontext =
		{
			c1 = { context = "ShevaIntroduced", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C1M1_ElevatorHello3AliveName2Sheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveName2Producer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveName2CNSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["who", "Sheva"],
			["from", "Gambler"],
			[IsMechanicNotAlive],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveName2CNProducer,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveExtraGuns", null, 0.1),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveExtraGunsSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveExtraGuns"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveExtraGunsProducer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveWhoIsDeadSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3WhoIsDead"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveWhoIsDeadProducer,
				followup = RThenAny("_C1M1_ElevatorHello3AliveNameDead", -0.858),
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadNSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsGamblerNotAlive],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveNameDeadNProducer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadESheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsMechanicNotAlive],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveNameDeadEProducer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadCSheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			[IsCoachNotAlive],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveNameDeadCProducer,
			},
		],
	},

	{
		name = "_C1M1_ElevatorHello3AliveExtraEnd1Sheva",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveExtraEnd1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C1M1_ElevatorHello3AliveExtraEnd1Producer,
			},
		],
	},

	{
		name = "C1M1CoughSheva",
		criteria = 
		[
			["concept", "C1M1Cough"],
			["who", "Sheva"],
			["map", "c1m1_hotel"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M1CoughProducer,
			},
		],
	},

	{
		name = "C1M2SafeRoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C1M2SafeRoomProducer,
				followup = RThen("mechanic", "C1M2SafeRoomc1", null, -2.17),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M3AlarmOffaSheva",
		criteria = 
		[
			["concept", "C1M3AlarmOffa"],
			["who", "Sheva"],
			[IsSubjectDistNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M3AlarmOffaProducer,
			},
		],
	},

	{
		name = "C1M3SafeRoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C1M3SafeRoomProducer,
				followup = RThen("gambler", "C1M3SafeRoom2a", null, -3.646),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M3SafeRoom2eSheva",
		criteria = 
		[
			["concept", "C1M3SafeRoom2e"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M3SafeRoom2eProducer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C1M4NearFinale03aSheva",
		criteria = 
		[
			["concept", "C1M4NearFinale03a"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M4NearFinale03aProducer,
			},
		],
	},

	{
		name = "C1M4NearFinale02dSheva",
		criteria = 
		[
			["concept", "C1M4NearFinale02d"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M4NearFinale02dProducer,
			},
		],
	},

	{
		name = "c1m4NearFinale1Sheva",
		criteria = 
		[
			["concept", "c1m4jimmyidea"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c1m4NearFinale1Producer,
			},
		],
	},

	{
		name = "C1M4SafeRoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C1M4SafeRoomProducer,
				followup = RThen("mechanic", "C1M4SafeRoom2b1", null, -1.823),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C1M4SafeRoom2b2Sheva",
		criteria = 
		[
			["concept", "C1M4SafeRoom2b2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M4SafeRoom2b2Producer,
				followup = RThen("mechanic", "C1M4SafeRoom2b3", null, -2.719),
			},
		],
	},

	{
		name = "C1M4SafeRoomEndSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["map", "c1m4_atrium"],
			["who", "Sheva"],
			[IsNotSaidLeavingSafeArea],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M4SafeRoomEndProducer,
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
		name = "C1M4FinaleStartResponseSheva",
		criteria = 
		[
			["concept", "C1M4FinaleStartResponse"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M4FinaleStartResponseProducer,
			},
		],
	},

	{
		name = "C2M1IntroStartSheva",
		criteria = 
		[
			["concept", "introC2M1"],
			["who", "Sheva"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M1IntroStartProducer,
				followup = RThen("Mechanic", "C2M1Intro002", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M1Intro002Sheva",
		criteria = 
		[
			["concept", "C2M1Intro002"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M1Intro002Producer,
				followup = RThen("coach", "C2M1Intro002", null, 0.01),
			},
		],
	},

	{
		name = "C2M1Intro003Sheva",
		criteria = 
		[
			["concept", "C2M1Intro003"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M1Intro003Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C2M1Intro_400Sheva",
		criteria = 
		[
			["concept", "C2M1Intro_400"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M1Intro_400Producer,
				followup = RThen("mechanic", "C2M1Intro_400", null, 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 5.363 },
		},
		applycontexttoworld = true,
	},

	{
		name = "LeavingC2M1StartSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Sheva"],
			["map", "c2m1_highway"],
			[IsTalk],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.LeavingC2M1StartProducer,
				followup = RThen("mechanic", "C2M1Intro005", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "_C2M1MonsterTruckSheva",
		criteria = 
		[
			["concept", "_C2M1MonsterTruck"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva._C2M1MonsterTruckProducer,
			},
		],
	},

	{
		name = "C2M4PenSmell001Sheva",
		criteria = 
		[
			["concept", "C2M4PenSmell001"],
			["who", "Sheva"],
			[IsTalk],
			["incombat", 0],
			[IssuerClose],
			["coughing", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M4PenSmell001Producer,
			},
		],
	},

	{
		name = "C4EnterCoverSheva",
		criteria = 
		[
			["concept", "C4EnterCover"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4ShevaInCover", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4ExitCoverSheva",
		criteria = 
		[
			["concept", "C4ExitCover"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C4ShevaInCover", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c4m1_InBurgerTank01Sheva",
		criteria = 
		[
			["concept", "c4m1_InBurgerTank01"],
			["who", "Sheva"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c4m1_InBurgerTank01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c4m1_InBurgerTank02Sheva",
		criteria = 
		[
			["concept", "c4m1_InBurgerTank02"],
			["who", "Sheva"],
			["incombat", 0],
			[ChanceToFire40Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c4m1_InBurgerTank02Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C4FinaleStartSheva",
		criteria = 
		[
			["concept", "C4FinaleStart"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C4FinaleStartProducer,
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
		name = "PlayerRemarkc4m1_InBurgerTankSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "c4m1_InBurgerTank"],
			[IsNotSaidc4m1_InBurgerTank],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear200],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m1_InBurgerTankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc4m1_InBurgerTank", value = 1, duration = 0.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c4m1_nogas01Sheva",
		criteria = 
		[
			["concept", "c4m1_nogas01"],
			["who", "Sheva"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c4m1_nogas01Producer,
				followup = RThen("coach", "c4m1_nogas06", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.502 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c4m1_nogas04Sheva",
		criteria = 
		[
			["concept", "c4m1_nogas04"],
			["who", "Sheva"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c4m1_nogas04Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.502 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPour20MoreSheva",
		criteria = 
		[
			["concept", "GasPour20More"],
			["who", "Sheva"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour20MoreProducer,
			},
		],
	},

	{
		name = "GasPour10MoreTalkSheva",
		criteria = 
		[
			["concept", "GasPour10More"],
			["who", "Sheva"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour10MoreTalkProducer,
			},
		],
	},

	{
		name = "GasPour1MoreSheva",
		criteria = 
		[
			["concept", "GasPour1More"],
			["who", "Sheva"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour1MoreProducer,
			},
		],
	},

	{
		name = "GasPour2MoreSheva",
		criteria = 
		[
			["concept", "GasPour2More"],
			["who", "Sheva"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour2MoreProducer,
			},
		],
	},

	{
		name = "GasPour3MoreSheva",
		criteria = 
		[
			["concept", "GasPour3More"],
			["who", "Sheva"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour3MoreProducer,
			},
		],
	},

	{
		name = "GasPour5MoreSheva",
		criteria = 
		[
			["concept", "GasPour5More"],
			["who", "Sheva"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.GasPour5MoreProducer,
			},
		],
	},

	{
		name = "HistoricTour02bSheva",
		criteria = 
		[
			["concept", "HistoricTour02b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.HistoricTour02bProducer,
			},
		],
	},

	{
		name = "Player_KnowHunter2Sheva",
		criteria = 
		[
			["concept", "Player.KnowHunter2"],
			["who", "Sheva"],
			[IssuerClose],
			["incapacitated", 0],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.Player_KnowHunter2Producer,
			},
		],
	},

	{
		name = "C1M2TankInfoSheva",
		criteria = 
		[
			["concept", "C1M2TankInfo"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C1M2TankInfoProducer,
				followup = RThen("Gambler", "C1M2TankInfo", null, 0.1),
			},
		],
	},

	{
		name = "Player_NotPackingHeatSheva",
		criteria = 
		[
			["concept", "Player.NotPackingHeat"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.Player_NotPackingHeatProducer,
				followup = RThen("gambler", "Player.NotPackingHeat", null, 0.1),
			},
		],
	},

	{
		name = "Player_NotPackingHeat2Sheva",
		criteria = 
		[
			["concept", "Player.NotPackingHeat2"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.Player_NotPackingHeat2Producer,
				followup = RThen("gambler", "Player.NotPackingHeat2", null, 0.1),
			},
		],
	},

	{
		name = "PlayerCr0wnedBrideSheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			["subjectisa", "Witch"],
			["oneshot", 1],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkSheva],
			["map", "c6m1_riverbank"],
			[IsWorldTalkSheva],
		],
		// 	forceweight 101
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCr0wnedBrideProducer,
			},
		],
	},

	{
		name = "PlayerCr0wnedBrideGamblerSheva",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Sheva"],
			["subjectisa", "Witch"],
			["oneshot", 1],
			[IsNotWitchAggro],
			["isgambleralive", 1],
			[IsGamblerNear400],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkSheva],
			["map", "c6m1_riverbank"],
			[IsWorldTalkSheva],
		],
		// 	forceweight 102
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCr0wnedBrideGamblerProducer,
				followup = RThen("Gambler", "WeddingWitchDead04", null, 3.1),
			},
		],
	},

	{
		name = "WeddingWitchDead01Sheva",
		criteria = 
		[
			["concept", "WeddingWitchDead01"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WeddingWitchDead01Producer,
			},
		],
	},

	{
		name = "WeddingWitchDead02aSheva",
		criteria = 
		[
			["concept", "WeddingWitchDead02a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WeddingWitchDead02aProducer,
			},
		],
	},

	{
		name = "WorldIntroC31a2Sheva",
		criteria = 
		[
			["concept", "WorldIntroC31a2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldIntroC31a2Producer,
				followup = RThen("sheva", "WorldIntroC31a4", null, -6.296),
			},
		],
	},

	{
		name = "WorldIntroC31a4Sheva",
		criteria = 
		[
			["concept", "WorldIntroC31a4"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldIntroC31a4Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "WorldIntroC31c3Sheva",
		criteria = 
		[
			["concept", "WorldIntroC31c3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldIntroC31c3Producer,
				followup = RThen("gambler", "WorldIntroC31c4", null, -2.381),
			},
		],
	},

	{
		name = "WorldIntroC31d2Sheva",
		criteria = 
		[
			["concept", "WorldIntroC31d2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldIntroC31d2Producer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "WorldIntroC31e1Sheva",
		criteria = 
		[
			["concept", "WorldIntroC31e1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldIntroC31e1Producer,
				followup = RThen("sheva", "WorldIntroC31e2", null, -4.802),
			},
		],
	},

	{
		name = "WorldIntroC31e2Sheva",
		criteria = 
		[
			["concept", "WorldIntroC31e2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldIntroC31e2Producer,
				followup = RThen("coach", "WorldIntroC31e3", null, -1.53),
			},
		],
	},

	{
		name = "PlayerCoverMeHealSheva",
		criteria = 
		[
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkSheva],
			[IsNotAlone],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCoverMeHealProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},

	{
		name = "PlayerCoverMeHealC1Sheva",
		criteria = 
		[
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkSheva],
			[IsNotAlone],
			[IsWorldTalkSheva],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerCoverMeHealC1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},

	{
		name = "Player_LostCallC6M3Sheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.Player_LostCallC6M3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AutoPlayerLostCallSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.AutoPlayerLostCallProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChainsawSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "chainsaw"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChainsawProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChainsawAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "chainsaw"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedChainsawProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedcricket_batSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "cricket_bat"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedcricket_batProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedcricket_batAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "cricket_bat"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedcricket_batProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedcrowbarSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "crowbar"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedcrowbarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedcrowbarAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "crowbar"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedcrowbarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGolfClubProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGolfClubProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGuitarSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "electric_guitar"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGuitarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGuitarAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "electric_guitar"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGuitarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKatanaSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Katana"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedKatanaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKatanaAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSaidSpot],
			["weaponname", "Katana"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedKatanaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedLaserSightsSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "LaserSights"],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedLaserSightsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedLaserSightsAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "LaserSights"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedLaserSightsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorBotPickupLaserSightsSpottedSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 1],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotSaidSpotWeapons],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedLaserSightsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedM60Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedM60Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedM60AutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedM60Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMacheteSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Machete"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMacheteProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMacheteAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Machete"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMacheteProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMagnumSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "magnum"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMagnumProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMagnumAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "magnum"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMagnumProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMGSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SMG"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMGAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SMG"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMG_silencedSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_silenced"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMG_silencedAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_silenced"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMG_MP5Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_mp5"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMG_MP5AutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_mp5"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedSMGProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedtonfaSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "tonfa"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedtonfaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedtonfaAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "tonfa"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedtonfaProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSecondPistolSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SecondPistol"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedPistolProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSecondPistolAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SecondPistol"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedPistolProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAutoShotgunSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "AutoShotgun"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAutoShotgunAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "AutoShotgun"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPumpShotgunSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "PumpShotgun"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPumpShotgunAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "PumpShotgun"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_ChromeSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_chrome"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_ChromeAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_chrome"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_spasSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_spas"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_spasAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_spas"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifleSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifleAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_AK47Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_AK47"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_AK47AutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_AK47"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_desertSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_desert"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_desertAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_desert"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_SG552Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_sg552"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_SG552AutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_sg552"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMilitarySniperSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_military"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMilitarySniperAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_military"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHuntingRifleSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "HuntingRifle"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHuntingRifleAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "HuntingRifle"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedScoutSniperSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_scout"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedScoutSniperAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_scout"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAWPSniperSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_awp"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAWPSniperAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_awp"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedBaseBallBatSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["weaponname", "baseball_bat"],
			[IsNotSmartLookAuto],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedBaseBallBatAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "baseball_bat"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAxeSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "frying_pan"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFryingPanAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkSheva],
			["weaponname", "frying_pan"],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFryingPanSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "fireaxe"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAxeAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "fireaxe"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShovelSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shovel"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShovelAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shovel"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPitchforkSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Pitchfork"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPitchforkAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Pitchfork"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKnifeSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["weaponname", "Knife"],
			[IsNotSmartLookAuto],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKnifeAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Knife"],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedMeleeWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedOtherWeaponSheva",
		criteria = 
		[
			["concept", "PlayerSpotOtherWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedWeaponProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWeaponPistolSheva",
		criteria = 
		[
			["concept", "PlayerSpotPistol"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedPistolProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgunSheva",
		criteria = 
		[
			["concept", "PlayerSpotShotgun"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkSheva],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedShotgunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3AlarmOffNagSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			["world_auto_tracksok", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m3_coasteroffProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 8.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 11.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C2M3Chopper001Sheva",
		criteria = 
		[
			["concept", "C2M3Chopper001"],
			["who", "Sheva"],
			[IsTalk],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C2M3Chopper001Producer,
			},
		],
	},

	{
		name = "AskWhatSheva",
		criteria = 
		[
			["concept", "AskWhat"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.AskWhatProducer,
			},
		],
	},

	{
		name = "C13M1IntroStartSheva",
		criteria = 
		[
			["concept", "introC13M1"],
			["who", "Sheva"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M1IntroStartProducer,
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
		name = "C13M1Intro2Sheva",
		criteria = 
		[
			["concept", "C13M1Intro2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M1Intro2Producer,
				followup = RThenAny("C13M1Intro2", 0.1),
			},
		],
	},

	{
		name = "C13M1Intro3Sheva",
		criteria = 
		[
			["concept", "C13M1Intro3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M1Intro3Producer,
				followup = RThenAny("C13M1IntroLast", -1.675),
			},
		],
	},

	{
		name = "C13M1IntroLastSheva",
		criteria = 
		[
			["concept", "C13M1IntroLast"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M1IntroLastProducer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "C13M1IntroLocationLastSheva",
		criteria = 
		[
			["concept", "C13M1IntroLocationLast"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M1IntroLocationLastProducer,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "RemarkC13M1UpHillSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M1Uphill"],
			[IsNotRemarkedC13M1UpHill],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m2_upthestairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1DownHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M1DownHere"],
			[IsNotRemarkedC13M1DownHere],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_downstairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1ThroughHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M1ThroughHere"],
			[IsNotRemarkedC13M1ThroughHere],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.RemarkC13M1ThroughHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1ThroughWindowSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M1ThroughWindow"],
			[IsNotRemarkedC13M1ThroughWindow],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_throughwindowProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1ThroughWindow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1UpStepsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M1UpSteps"],
			[IsNotRemarkedC13M1UpSteps],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_UpTheStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1UpSteps", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1CrossHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M1CrossHere"],
			[IsNotRemarkedC13M1CrossHere],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc4m3_crosshereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1CrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M1PreBunkerOpenSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M1PreBunkerOpen"],
			[IsNotRemarkedC13M1PreBunkerOpen],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkC1M2PreAlarmDoorProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M1PreBunkerOpen", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M1OpeningBunkerSheva",
		criteria = 
		[
			["concept", "C13M1OpeningBunker"],
			["who", "Sheva"],
			[IsNotC13M1OpeningBunker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M1OpeningBunkerProducer,
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
		name = "RemarkC13M2UpHillSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M2Uphill"],
			[IsNotRemarkedC13M2UpHill],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc2m1_uphillProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpHill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M2DownHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M2DownHere"],
			[IsNotRemarkedC13M2DownHere],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.RemarkC13M2DownHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M2UpLadderSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M2UpLadder"],
			[IsNotRemarkedC13M2UpLadder],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkc5m3upladderProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M2UpStairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M2UpStairs"],
			[IsNotRemarkedC13M2UpStairs],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_UpTheStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M2UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M2TankApproachingSheva",
		criteria = 
		[
			["concept", "C13M2TankApproaching"],
			["who", "Sheva"],
			[IsNotNoticedC13M2ShakingGround],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M2TankApproachingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "NoticedC13M2ShakingGround", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M2BarrelsIgnitedSheva",
		criteria = 
		[
			["concept", "C13M2BarrelsIgnited"],
			["who", "Sheva"],
			[IsNotC13M2IgnitedBarrels],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M2BarrelsIgnitedProducer,
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
		name = "C13M2Barrels1Sheva",
		criteria = 
		[
			["concept", "C13M2Barrels1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M2Barrels1Producer,
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
		name = "C13M2Barrels2Sheva",
		criteria = 
		[
			["concept", "C13M2Barrels2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerYellRunProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemarkC13M3DownHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "C13M3DownHere"],
			[IsNotRemarkedC13M3DownHere],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.RemarkC13M2DownHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC13M3DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3ApproachingTankerSheva",
		criteria = 
		[
			["concept", "C13M3ApproachingTanker"],
			["who", "Sheva"],
			[IsNotSawC13M3Tanker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M3ApproachingTankerProducer,
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
		name = "C13M3Tanker1Sheva",
		criteria = 
		[
			["concept", "C13M3Tanker1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M3Tanker1Producer,
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
		name = "C13M3Tanker2Sheva",
		criteria = 
		[
			["concept", "C13M3Tanker2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M3Tanker2Producer,
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
		name = "C13M3Tanker3Sheva",
		criteria = 
		[
			["concept", "C13M3Tanker3"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M3Tanker3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3OnScaffoldSheva",
		criteria = 
		[
			["concept", "C13M3OnScaffold"],
			["who", "Sheva"],
			[IsNotOnC13M3Scaffold],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC1M2DownStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "OnC13M3Scaffold", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3AirstrikeSheva",
		criteria = 
		[
			["concept", "C13M3Airstrike"],
			["who", "Sheva"],
			[IsNotWitnissedC13M3Airstrike],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M3AirstrikeProducer,
				followup = RThenAny("C13M3Airstrike2", 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "WitnissedC13M3Airstrike", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M3Airstrike2Sheva",
		criteria = 
		[
			["concept", "C13M3Airstrike2"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M3Airstrike2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4Button1Sheva",
		criteria = 
		[
			["concept", "C13M4Button1"],
			["who", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M4Button1Producer,
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
		name = "C13M4FinaleTriggeredSheva",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["who", "Sheva"],
			["map", "c13m4_cutthroatcreek"],
			["triggeredby", "Sheva"],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M4FinaleTriggeredProducer,
				followup = RThen("orator", "C13M4FinaleStart", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
			c2 = { context = "_auto_TalkingSheva", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4FinaleStart2Sheva",
		criteria = 
		[
			["concept", "C13M4FinaleStart2"],
			["who", "Sheva"],
			["world_auto_talkingsheva", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M4FinaleStart2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4DownCreekSheva",
		criteria = 
		[
			["concept", "C13M4DownCreek"],
			["who", "Sheva"],
			[IsNotInC13M4Creek],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_FinalWaterProducer,
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
		name = "C13M4InSmokeSheva",
		criteria = 
		[
			["concept", "C13M4InSmoke"],
			["who", "Sheva"],
			[IsNotInC13M4Smoke],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorCoughingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 3.0 },
			c2 = { context = "InC13M4Smoke", value = 1, duration = 0.0 },
		},
	},

	{
		name = "C13M4NoticedHelicopterSheva",
		criteria = 
		[
			["concept", "C13M4NoticedHelicopter"],
			["who", "Sheva"],
			[IsNotNoticedC13M4Helicopter],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.c2m3SeeChopperProducer,
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
		name = "C13M4AlmostThereSheva",
		criteria = 
		[
			["concept", "C13M4AlmostThere"],
			["who", "Sheva"],
			[IsNotC13M4AlmostThere],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M4AlmostThereProducer,
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
		name = "C13M4SpottedVehicleSheva",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "Sheva"],
			["map", "c13m4_cutthroatcreek"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M4SpottedVehicleProducer,
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
		name = "C13M4GetToVehicleSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M4GetToVehicleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C13M4InsideVehicleSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
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
			[_auto_NotTimerLockSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C13M4InsideVehicleProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockSheva", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SafeRoomStartSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			["instartarea", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
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
		name = "IntroEndSheva",
		criteria = 
		[
			["concept", "IntroEnd"],
			["who", "Sheva"],
			["from", "Sheva"],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "LeavingSafeAreaSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Sheva"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
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
		name = "LeavingSafeRoomSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Sheva"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
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
		name = "FinaleTriggeredSheva",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["who", "Sheva"],
			["triggeredby", "Sheva"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "FinalVehicleSpottedSheva",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "Sheva"],
			["world_auto_finale", 1],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "FinalVehicleArrivedSheva",
		criteria = 
		[
			["concept", "FinalVehicleArrived"],
			["who", "Sheva"],
			["world_auto_finale", 2],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Escape", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerNiceShotSheva",
		criteria = 
		[
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSpeaking],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1PlayerNiceShotProducer,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotFrancisSheva",
		criteria = 
		[
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["subject", "Biker"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1PlayerNiceShotFrancisProducer,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotLouisSheva",
		criteria = 
		[
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["subject", "Manager"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1PlayerNiceShotLouisProducer,
			},
		],
	},

	{
		name = "L4D1PlayerNiceShotZoeySheva",
		criteria = 
		[
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "Sheva"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["subject", "TeenGirl"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1PlayerNiceShotZoeyProducer,
			},
		],
	},

	{
		name = "C6M3GasPourSheva",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			["map", "c6m3_port"],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3GasPourProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "C6M1_IntotheparkNoHealthSheva",
		criteria = 
		[
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1_IntotheparkNoHealthProducer,
			},
		],
	},

	{
		name = "C6M1Intro_01Biker03Sheva",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "Sheva"],
			["introactor", "francis"],
			[IsNotSaidIntroScene],
			[FrancisGroup3],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_01Biker03Producer,
				followup = RThen("Biker", "C6M1Intro_06a", null, -2.023),
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
		name = "C6M1Intro_01Biker04Sheva",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "Sheva"],
			["introactor", "francis"],
			[IsNotSaidIntroScene],
			[FrancisGroup4],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_01Biker04Producer,
				followup = RThen("Biker", "C6M1Intro_18a", null, -3.074),
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
		name = "C6M1Intro_01TeenGirl03Sheva",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "Sheva"],
			["introactor", "zoey"],
			[IsNotSaidIntroScene],
			[MoreThan40],
			[LessThan60],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_01TeenGirl03Producer,
				followup = RThen("TeenGirl", "C6M1Intro_03a", null, -3.225),
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
		name = "C6M1Intro_05aSheva",
		criteria = 
		[
			["concept", "C6M1Intro_05a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_05aProducer,
				followup = RThen("Biker", "C6M1Intro_05b", null, -2.451),
			},
		],
	},

	{
		name = "C6M1Intro_05cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_05c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_05cProducer,
				followup = RThen("Biker", "C6M1Intro_05d", null, -1.958),
			},
		],
	},

	{
		name = "C6M1Intro_05eSheva",
		criteria = 
		[
			["concept", "C6M1Intro_05e"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_05eProducer,
				followup = RThenAny("WorldC6M1_HistoricTour", -1.874),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_06bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_06b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_06bProducer,
				followup = RThen("Biker", "C6M1Intro_06c", null, -2.236),
			},
		],
	},

	{
		name = "C6M1Intro_06dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_06d"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_06dProducer,
				followup = RThen("Biker", "C6M1Intro_06e", null, -0.709),
			},
		],
	},

	{
		name = "C6M1Intro_07cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_07c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_07cProducer,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_09eSheva",
		criteria = 
		[
			["concept", "C6M1Intro_09e"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_09eProducer,
				followup = RThen("Sheva", "C6M1Intro_09f", null, -2.022),
			},
		],
	},

	{
		name = "C6M1Intro_09fSheva",
		criteria = 
		[
			["concept", "C6M1Intro_09f"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_09fProducer,
				followup = RThen("Biker", "C6M1Intro_09g", null, -1.643),
			},
		],
	},

	{
		name = "C6M1Intro_10bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_10b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_10bProducer,
				followup = RThen("Biker", "C6M1Intro_10c", null, -4.931),
			},
		],
	},

	{
		name = "C6M1Intro_10dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_10d"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_10dProducer,
				followup = RThen("Sheva", "C6M1Intro_10e", null, -2.369),
			},
		],
	},

	{
		name = "C6M1Intro_10eSheva",
		criteria = 
		[
			["concept", "C6M1Intro_10e"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_10eProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_12aSheva",
		criteria = 
		[
			["concept", "C6M1Intro_12a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_12aProducer,
				followup = RThen("Mechanic", "C6M1Intro_12b", null, -2.341),
			},
		],
	},

	{
		name = "C6M1Intro_12cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_12c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_12cProducer,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_14dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_14d"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_14dProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_15cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_15c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_15cProducer,
				followup = RThen("TeenGirl", "C6M1Intro_15d", null, -2.339),
			},
		],
	},

	{
		name = "C6M1Intro_17bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_17b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_17bProducer,
				followup = RThen("TeenGirl", "C6M1Intro_17c", null, -4.79),
			},
		],
	},

	{
		name = "C6M1Intro_17dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_17d"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_17dProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_18bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_18b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_18bProducer,
				followup = RThen("Biker", "C6M1Intro_18c", null, -2.243),
			},
		],
	},

	{
		name = "C6M1Intro_18dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_18d"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_18dProducer,
				followup = RThen("Biker", "C6M1Intro_18e", null, -2.015),
			},
		],
	},

	{
		name = "C6M1Intro_19bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_19b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_19bProducer,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_20aSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20aProducer,
				followup = RThen("Sheva", "C6M1Intro_20b", null, -0.951),
			},
		],
	},

	{
		name = "C6M1Intro_20bSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20bProducer,
				followup = RThen("Biker", "C6M1Intro_20c", null, -2.037),
			},
		],
	},

	{
		name = "C6M1Intro_20dSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20d"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20dProducer,
				followup = RThen("Biker", "C6M1Intro_20e", null, -4.9),
			},
		],
	},

	{
		name = "C6M1Intro_20gSheva",
		criteria = 
		[
			["concept", "C6M1Intro_20g"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_20gProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_22aSheva",
		criteria = 
		[
			["concept", "C6M1Intro_22a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_22aProducer,
				followup = RThen("TeenGirl", "C6M1Intro_22b", null, -3.403),
			},
		],
	},

	{
		name = "C6M1Intro_22cSheva",
		criteria = 
		[
			["concept", "C6M1Intro_22c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_22cProducer,
				followup = RThen("TeenGirl", "C6M1Intro_22d", null, -2.93),
			},
		],
	},

	{
		name = "C6M1Intro_22fSheva",
		criteria = 
		[
			["concept", "C6M1Intro_22f"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_22fProducer,
				followup = RThen("TeenGirl", "C6M1Intro_22g", null, -3.037),
			},
		],
	},

	{
		name = "C6M1Intro_22hSheva",
		criteria = 
		[
			["concept", "C6M1Intro_22h"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M1Intro_22hProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "LeavingC6M1StartSheva",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.LeavingC6M1StartProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "LeftC6M1Start", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RemWorldC6M1_WeddingWarn01Sheva",
		criteria = 
		[
			["concept", "RemWorldC6M1_WeddingWarn01"],
			["who", "Sheva"],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.RemWorldC6M1_WeddingWarn01Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "WorldC6M1_HistoricTourSheva",
		criteria = 
		[
			["concept", "WorldC6M1_HistoricTour"],
			["who", "Sheva"],
			[IsNotLeftC6M1Start],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M1_HistoricTourProducer,
				followup = RThen("Coach", "HistoricTour02a", null, -3.829),
			},
		],
	},

	{
		name = "WorldC6M1_PostWedding02aSheva",
		criteria = 
		[
			["concept", "WorldC6M1_PostWedding02a"],
			["who", "Sheva"],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M1_PostWedding02aProducer,
			},
		],
	},

	{
		name = "WorldC6M1_WeddingWarn03bSheva",
		criteria = 
		[
			["concept", "WorldC6M1_WeddingWarn03b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M1_WeddingWarn03bProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "AtWedding", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2_OpenGate1Sheva",
		criteria = 
		[
			["concept", "C6M2_OpenGate1"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M2_OpenGate1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidOpenedGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2_OpenGate2Sheva",
		criteria = 
		[
			["concept", "C6M2_OpenGate2"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M2_OpenGate2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "Said:OpenedGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M2SafeRoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C6M2SafeRoomProducer,
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
		name = "DLC1_C6M2_SafeRoomConvo01aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo01a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo01aProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo01b", null, -2.711),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo03a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo03aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo03b", null, -2.886),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo03c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo03cProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo04aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo04a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo04aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo06aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo06a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo06aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo07Sheva",
		criteria = 
		[
			["concept", "C6M2SafeRoom2"],
			["who", "Sheva"],
			["introactor", "francis"],
			[FrancisGroup3],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo07Producer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo08a", null, -1.679),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo07aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo07a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo07aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo08bProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo08c", null, -1.262),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08dSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08d"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo08dProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo08e", null, -0.977),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08fSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08f"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo08fProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo10aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo10a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo10aProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo10b", null, -2.753),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo10cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo10c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo10cProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo10d", null, -3.678),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo13Sheva",
		criteria = 
		[
			["concept", "C6M2SafeRoom2"],
			["who", "Sheva"],
			["introactor", "zoey"],
			[ZoeyGroup3],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo13Producer,
				followup = RThen("Sheva", "DLC1_C6M2_SafeRoomConvo14a", null, -1.209),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo14a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo14aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo14b", null, -5.157),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo14c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo14cProducer,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo14d", null, -3.757),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14eSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo14e"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo14eProducer,
				followup = RThen("Gambler", "DLC1_C6M2_SafeRoomConvo14f", null, -0.987),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo15aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo15a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo15aProducer,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo15b", null, -3.064),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16Sheva",
		criteria = 
		[
			["concept", "C6M2SafeRoom2"],
			["who", "Sheva"],
			["introactor", "francis"],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo16Producer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo17a", null, -10.043),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M2SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo16a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo16aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo16b", null, -5.036),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo16c"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo16cProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo16d", null, -3.803),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo17bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo17b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo17bProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo18a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo18aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo18b", null, -2.626),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18dSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo18d"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo18dProducer,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo18e", null, -1.428),
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo19a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo19aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo20aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo20a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo20aProducer,
			},
		],
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo21aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo21a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M2_SafeRoomConvo21aProducer,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo21b", null, -3.574),
			},
		],
	},

	{
		name = "WorldC6M2_InSewer101aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer101a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_InSewer101aProducer,
				followup = RThen("Sheva", "WorldC6M2_InSewer101b", null, -2.388),
			},
		],
	},

	{
		name = "WorldC6M2_InSewer102bSheva",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer102b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_InSewer102bProducer,
			},
		],
	},

	{
		name = "WorldC6M2_InSewer202aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer202a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_InSewer202aProducer,
			},
		],
	},

	{
		name = "WorldC6M2_OnTourWalk101aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk101a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_OnTourWalk101aProducer,
				followup = RThen("Sheva", "WorldC6M2_OnTourWalk101b", null, -0.85),
			},
		],
	},

	{
		name = "WorldC6M2_OnTourWalk101bSheva",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk101b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_OnTourWalk101bProducer,
			},
		],
	},

	{
		name = "WorldC6M2_OnTourWalk102bSheva",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk102b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_OnTourWalk102bProducer,
			},
		],
	},

	{
		name = "WorldC6M2_Phase201aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_Phase201a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Phase201aProducer,
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo01a_Sheva",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo01a>"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Tattoo01a_Producer,
				followup = RThen("Gambler", "WorldC6M2_Tattoo01b>", null, -2.084),
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo02a_Sheva",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo02a>"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Tattoo02a_Producer,
				followup = RThen("Coach", "WorldC6M2_Tattoo02b>", null, -0.489),
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo02c_Sheva",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo02c>"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Tattoo02c_Producer,
			},
		],
	},

	{
		name = "WorldC6M2_Tattoo02d_Sheva",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo02d>"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_Tattoo02d_Producer,
			},
		],
	},

	{
		name = "WorldC6M2_TourEntrance01aSheva",
		criteria = 
		[
			["concept", "WorldC6M2_TourEntrance01a"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WorldC6M2_TourEntrance01aProducer,
			},
		],
	},

	{
		name = "C6M3_BridgeDownSheva",
		criteria = 
		[
			["concept", "C6M3_BridgeDown"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_BridgeDownProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_BridgeGettoCarSheva",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Sheva"],
			[IsNotSaidGetToCar],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_BridgeGettoCarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGetToCar", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_elevatorSheva",
		criteria = 
		[
			["concept", "SceneCancelled"],
			["who", "Sheva"],
			[IsNotSaidC6M3Elevator],
			["map", "c6m3_port"],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_elevatorProducer,
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
		name = "C6M3_GivenItemBikerSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "Biker"],
			["map", "c6m3_portheavy"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_GivenItemBikerProducer,
			},
		],
	},

	{
		name = "C6M3_GivenItemTeenGirlSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Sheva"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_portheavy"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_GivenItemTeenGirlProducer,
			},
		],
	},

	{
		name = "C6M3SafeRoomSheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "Sheva"],
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
				func = Custom_Talker_Sheva.C6M3SafeRoomProducer,
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
		name = "DLC1_C6M3_SafeRoomConvo01Sheva",
		criteria = 
		[
			["concept", "C6M3SafeRoom2"],
			["who", "Sheva"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "francis"],
			[FrancisGroup3],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo01Producer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo01a", null, -1.26),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo01b"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo01bProducer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo01c", null, -0.926),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02a1Sheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo02a1"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo02a1Producer,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo02b", null, -0.76),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo02c"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo02cProducer,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo02d", null, -1.258),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo04b"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo04bProducer,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo04c", null, -2.568),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04dSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo04d"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo04dProducer,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo05cSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo05c"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo05cProducer,
				followup = RThen("Gambler", "DLC1_C6M3_SafeRoomConvo05d", null, -1.309),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo06aSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo06a"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo06aProducer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo06b", null, -3.045),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07Sheva",
		criteria = 
		[
			["concept", "C6M3SafeRoom2"],
			["who", "Sheva"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "zoey"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo07Producer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo07a", null, -3.413),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo07b"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo07bProducer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo07c", null, -4.242),
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08gSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo08g"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo08gProducer,
			},
		],
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo09Sheva",
		criteria = 
		[
			["concept", "C6M3SafeRoom2"],
			["who", "Sheva"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "zoey"],
			[ZoeyGroup1],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo09Producer,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo09a", null, -4.131),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidC6M3SafeRoom2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo09bSheva",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo09b"],
			["who", "Sheva"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.DLC1_C6M3_SafeRoomConvo09bProducer,
			},
		],
	},

	{
		name = "IncapBounceSheva",
		criteria = 
		[
			["concept", "SurvivorIncapacitated"],
			["who", "Sheva"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.IncapBounceProducer,
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
		name = "C6M3_CansDoneSheva",
		criteria = 
		[
			["concept", "c6m3escapeready"],
			["who", "Sheva"],
			["map", "c6m3_port"],
			[IsNotSaidc6m3escapeready],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_CansDoneProducer,
				followup = RThenAny("EmphaticArriveRun", -1.498),
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
		name = "L4D1AlsoSpottedTankSheva",
		criteria = 
		[
			[ConceptPlayerAlsoWarnTank],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1AlsoSpottedTankProducer,
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
		name = "L4D1SpottedTankSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m3_port"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.L4D1SpottedTankProducer,
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
		name = "SurvivorSpottedFallenSheva",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedFallenProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFallenWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWitchChasingC6M1Sheva",
		criteria = 
		[
			["concept", "PlayerExertionMinor"],
			["who", "Sheva"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidShevaWitchChasing],
			["saidwitchattacking", 1],
			["map", "c6m1_riverbank"],
		],
		// 	forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerWitchChasingC6M1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidShevaWitchChasing", value = 1, duration = 15.0 },
			c2 = { context = "TalkSheva", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerRemarkremark_MidnightRidersBusSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkremark_MidnightRidersBusProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_MidnightRidersBus", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AcrossHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_AcrossHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AcrossHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_AlleyBelowProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_AlleyIntoBuildingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_AlleyIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_InAptsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_InAptsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_InApts", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntotheparkSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_Intothepark"],
			[IsNotSaidWorldC6M1_Intothepark],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_IntotheparkProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_Intothepark", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoThePark2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_IntoThePark2"],
			[IsNotSaidWorldC6M1_IntoThePark2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_IntoThePark2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_IntoThePark2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_IntoTheStoreProducer,
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
		name = "PlayerRemarkWorldC6M1_PostWeddingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_PostWedding"],
			[IsNotSaidWorldC6M1_PostWedding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_PostWeddingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_PostWedding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleySheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_SafeRoomAlleyProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_SafeRoomAlley", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_ThroughBarSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_ThroughBarProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_ThroughBar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_UpHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_UpTheStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_UpTheStairs2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_UpTheStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_WeddingWarnProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_WeddingWarn1Producer,
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
		name = "PlayerRemarkWorldC6M1_WeddingWarn2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_WeddingWarn2Producer,
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
		name = "PlayerRemarkWorldC6M1_WeddingWarn3Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_WeddingWarn3Producer,
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
		name = "PlayerRemarkWorldC6M1_WeddingWarnAngelSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsMechanicNear800Weight0],
			["introactor", "zoey"],
			[ZoeyGroup2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M1_WeddingWarnAngelProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M1_WeddingWarn", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AcrossPlankSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear250],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_AcrossPlankProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AcrossPlank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_AfterGate1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_AfterGate2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_AfterGate2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_DownHereSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_DownHereProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_DownIntoBuildingProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_DownIntoBuilding", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalLadderSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_FinalLadderProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_FinalWaterProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWater", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_FinalWaterGoGoProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_FinalWaterGoGo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InJazzClubSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear1000],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_InJazzClubProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InJazzClub", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_InSewer1"],
			[IsNotSaidWorldC6M2_InSewer1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_InSewer1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_InSewer2"],
			[IsNotSaidWorldC6M2_InSewer2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			["worldsaidworldc6m2_insewer1", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_InSewer2Producer,
				followup = RThen("Gambler", "WorldC6M2_InSewer201a", null, -2.052),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewer2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_InSewerLadder1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_InSewerLadder1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_IntoConstructionProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoConstruction", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_IntoPoolHallProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_IntoPoolHall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_JukeBoxSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_JukeBoxProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JukeBox", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_JumpDownSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_JumpDownProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_JumpDown", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_OnTourWalk1"],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_OnTourWalk1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_OnTourWalk2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_OnTourWalk3"],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_OnTourWalk3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OnTourWalk3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_OpenGate1Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_OpenGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_Phase2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_Phase2DownProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IntensityOver75],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_Phase2DownIntenseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Phase2Down", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_PostGate1xSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_PostGate1xProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_PostGate1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_SafeRoomSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_SafeRoom"],
			[IsNotSaidWorldC6M2_SafeRoom],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear800],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_SafeRoomProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_SafeRoom", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_SuitcaseSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_Suitcase"],
			[IsNotSaidWorldC6M2_Suitcase],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear100],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_SuitcaseProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_Suitcase", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_TourEntranceSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_TourEntranceProducer,
				followup = RThen("Sheva", "WorldC6M2_TourEntrance01a", null, -1.841),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_TourEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_UpCatWalkProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpCatWalk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairsSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_UpStairsProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Sheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M2_UpStairs2Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M2_UpStairs2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_BridgeRunSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M3_BridgeRunProducer,
				followup = RThenAny("WorldC6M3_ByBridge01", -0.909),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_BridgeRun", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsSaidFinalVehicleArrived],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldC6M3_ByBridgeProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldC6M3_ByBridge", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkWorldFootLockerSheva",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Sheva"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.PlayerRemarkWorldFootLockerProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWorldFootLocker", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3_PourFinishedSheva",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			["map", "c6m3_port"],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.C6M3_PourFinishedProducer,
				followup = RThen("Manager", "L4D1_NiceJobPour", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorNearFinaleC6M3Sheva",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Sheva"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkSheva],
			["incapacitated", 0],
			[IsWorldTalkSheva],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorNearFinaleC6M3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPickupGolfCLubSheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "GolfClub"],
			[IsNotSpeaking],
			[ShevaNotPickedUpItem],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupGolfCLubProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "ShevaPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupM60Sheva",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Sheva"],
			["itempickedup", "m60"],
			[IsNotSpeaking],
			[ShevaNotPickedUpItem],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorPickupM60Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "ShevaPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "HistoricTour02bSheva",
		criteria = 
		[
			["concept", "HistoricTour02b"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.HistoricTour02bProducer,
			},
		],
	},

	{
		name = "WeddingWitchDead01Sheva",
		criteria = 
		[
			["concept", "WeddingWitchDead01"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WeddingWitchDead01Producer,
			},
		],
	},

	{
		name = "WeddingWitchDead04Sheva",
		criteria = 
		[
			["concept", "WeddingWitchDead04"],
			["who", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.WeddingWitchDead04Producer,
			},
		],
	},

	{
		name = "Player_LostCallC6M3Sheva",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Sheva"],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			["map", "c6m3_port"],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.Player_LostCallC6M3Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGolfClubProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubAutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedGolfClubAutoProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedM60Sheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
			[IsWorldTalkSheva],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedM60Producer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedM60AutoSheva",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Sheva"],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
			[IsWorldTalkSheva],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.SurvivorSpottedM60AutoProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "HitCraneButtonSheva",
		criteria = 
		[
			["concept", "Airport02CraneStarted"],
			["whodidit", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.HitCraneButtonProducer,
				followup = RThen("Sheva", "airport02_creshendoCrane", null, 0.01),
			},
		],
	},

	{
		name = "Airport03FireStartedSheva",
		criteria = 
		[
			["concept", "Airport03FireStarted"],
			["whodidit", "Sheva"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.Airport03FireStartedProducer,
				followup = RThen("Sheva", "Airport03FireStartedX", null, 0.01),
			},
		],
	},

	{
		name = "FinaleSceneTriggerFrancisSheva",
		criteria = 
		[
			["concept", "C6M3Stairs"],
			["who", "Sheva"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "francis"],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.FinaleSceneTriggerFrancisProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 28.0 },
			c3 = { context = "SaidEllisBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndEllisBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "FinaleSceneTriggerLouisSheva",
		criteria = 
		[
			["concept", "C6M3Stairs"],
			["who", "Sheva"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "zoey"],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Sheva.FinaleSceneTriggerLouisProducer,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleExchange", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 23.0 },
			c3 = { context = "SaidEllisBridgeStoryStart", value = 1, duration = 60.0 },
			c4 = { context = "EndEllisBridgeStoryStart", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

];

rr_ProcessRules(sheva_alomar_rules);
