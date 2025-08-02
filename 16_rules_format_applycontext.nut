local sheva_alomar_rules = 
[
	{
		name = "C3M1CallFerrySheva",
		criteria = 
		[
			[ConceptC3M1CallFerry],
			[PanicEventSheva],
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
			[ConceptC3M2OpenDoor],
			[PanicEventSheva],
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
			[Conceptc5m4floatstart],
			[PanicEventSheva],
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
			[ConceptC1M2InsideGunShop],
			[PanicEventSheva],
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
			[ConceptC1M3AlarmOff],
			[PanicEventSheva],
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
			[ConceptC1M3BrokeWindow],
			[PanicEventSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsSaidC1M1InSmoke],
			[ismap_c1m1_hotel],
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
			[ConceptC1M3AlarmOff2],
			[IsSheva],
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
			[ConceptC1M3AlarmActive],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkSheva],
			[IsC6M3_Port],
			[IsWorldTalkSheva],
			[SubjectIsBiker],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[SubjectIsBiker],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkSheva],
			[IsC6M3_Port],
			[IsWorldTalkSheva],
			[SubjectIsManager],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[SubjectIsManager],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkSheva],
			[IsC6M3_Port],
			[IsWorldTalkSheva],
			[SubjectIsTeenGirl],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[SubjectIsTeenGirl],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerNotSoClose],
			[IsC6M3_Port],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[ChanceToFire10Percent],
			[IsWorldTalkSheva],
			[SubjectIsCoach],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IssuerClose],
			[IsTalk],
			[IsTalkSheva],
			[ChanceToFire10Percent],
			[SubjectIsMechanic],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsSheva],
			[IsDeadCoach],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsSheva],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsSheva],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkSheva],
			[NoKnowNames],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsSheva],
			[IsDeadMechanic],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsSheva],
			[IsDeadMechanic],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkSheva],
			[NoKnowNames],
			[ismap_c1m1_hotel],
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
			[ConceptC3M1FerryInTransit],
			[IsSheva],
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
			[Conceptc1m1_enter_elevator],
			[IsSheva],
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
			[Conceptc1m1_elevator_pushbutton],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2PreStoreAlarm],
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
			[ConceptC1M2AlarmDoor2],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_SaidC1M2GrabbedCola],
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
			[ConceptC1M2FirstOutsideResponse],
			[IsSheva],
			[FromIsAnOrator],
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
			[ConceptC1M2FirstOutsideResponse8a],
			[IsSheva],
			[FromIsAnOrator],
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
			[ConceptC1M2GunRoomDoorResponseGod],
			[IsSheva],
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
			[ConceptC1M2GunRoomDoorResponseGratitude],
			[IsSheva],
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
			[ConceptC1M2InsideGunShop2],
			[IsSheva],
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
			[ConceptC1M2InsideGunShop2],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsMechanicAlive],
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
			[ConceptC3M1CallFerry2],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsShevaActor],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[C3M1Ferry],
			[IsNotIncapacitated],
			[NotInCombat],
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
			[ConceptC3M1FerryLaunched2],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSafeSpotAhead],
			[IsSaidC3M2Village1],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSafeSpotAhead],
			[IsSaidC3M2Village1],
			[IsWorldTalkSheva],
			[IsMechanicAlive],
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
			[ConceptC3M2OpenDoor2],
			[IsSheva],
			[IsTalkSheva],
			[IsShevaActor],
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
			[Conceptc5m4floatstart2],
			[IsSheva],
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
			[ConceptintroC1M1],
			[IsSheva],
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
			[ConceptintroC1M1],
			[IsSheva],
			[IsAlone],
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
			[ConceptRemark],
			[IsSheva],
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
			[ConceptPlayerUsingColaBottles],
			[IsSheva],
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
			[ConceptRelaxedSigh],
			[IsSheva],
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
			[ConceptStayTogetherInsideReponse],
			[IsSheva],
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
			[ConceptUseAdrenaline],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingB02],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingC02],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingC04],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingD04],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingE01],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingE03],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingN2],
			[IsSheva],
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
			[IsAwardConcept],
			[IsSharingSubject],
			[IsNotCoughing],
			[SubjectIsSheva],
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
			[ConceptPlayerGivenItem],
			[IsNotCoughing],
			[IsSheva],
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
			[IsAwardConcept],
			[IsRescuer],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorCoach],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorMechanic],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorBiker],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorTeenGirl],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorManager],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorNamVet],
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
			[ConceptReviveMeInterrupted],
			[IsSheva],
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
			[ConceptReviveMeInterrupted],
			[IsSheva],
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
			[ConceptReviveMeInterrupted],
			[IsSheva],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsCoach],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
			[ismap_c1m1_hotel],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsGambler],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsGambler],
			[ChanceToFire5Percent],
			[ismap_c1m1_hotel],
			[YesKnowNames],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsMechanic],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsCoach],
			[ChanceToFire30Percent],
			[ismap_c1m1_hotel],
			[YesKnowNames],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsBiker],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsTeenGirl],
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
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptSurvivorBotReassureComing],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptSurvivorBotYesReady],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptSurvivorBotReassureNearby],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsSheva],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m2_streets],
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
			[ConceptC1M2SafeRooma1],
			[IsSheva],
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
			[ConceptC1M2SafeRooma2],
			[IsSheva],
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
			[ConceptC1M2SafeRooma3],
			[IsSheva],
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
			[ConceptC1M2SafeRooma4],
			[IsSheva],
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
			[ConceptC1M2SafeRoomb3],
			[IsSheva],
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
			[ConceptC1M2SafeRoomd2],
			[IsSheva],
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
			[ConceptC1M2SafeRoomd2a],
			[IsSheva],
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
			[ConceptC1M2TankerAttack2],
			[IsSheva],
			[WhoPutColaSheva],
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
			[Conceptc1m4escape],
			[IsSheva],
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
			[Conceptc1m4escape],
			[IsSheva],
			[IsMechanicAlive],
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
			[Conceptc1m4escapeEllisCheckSuccess],
			[IsSheva],
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
			[Conceptc1m4escapeEllisCheckFail],
			[IsSheva],
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
			[ConceptPlayerPourStarted],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[Conceptc1m4startelevator],
			[IsSheva],
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
			[ConceptPlayerPourStarted],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[isC6M3_Port],
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
			[ConceptFinaleTriggered],
			[IsSheva],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m4_atrium],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[ScoreDoneSC],
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
			[Concept_C2M2_Riders03],
			[IsSheva],
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
			[Concept_C2M2_Riders06],
			[IsSheva],
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
			[Concept_C2M2_Riders07],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[ismap_c2m2],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
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
			[Conceptc2m3downhole],
			[IsSheva],
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
			[Conceptc2m3CoasterEnd],
			[IsSheva],
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
			[ConceptC2M3CoasterRunGo],
			[IsSheva],
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
			[Conceptc2m3CoasterStart],
			[IsSheva],
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
			[Conceptc2m3SeeChopper],
			[IsSheva],
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
			[ConceptC2M4ButtonPressed],
			[IsSheva],
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
			[ConceptC2M4Gate000],
			[IsSheva],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGate],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGateNag],
			[_auto_IsNearGate],
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
			[ConceptC2M4GateOpenCallout],
			[IsSheva],
			[IsNotIncapacitated],
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
			[Conceptc2m4SeeChopper],
			[IsSheva],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
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
			[ConceptC2M5_Choppercoming],
			[IsSheva],
			[IsNotIncapacitated],
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
			[Conceptc2m5_intro003],
			[IsSheva],
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
			[Conceptc2m5_intro019],
			[IsSheva],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsRocking],
			[IsNotZombiePresentTank],
			[Ismap_c2m5],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			[_auto_ConcertIsLive],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsRocking],
			[IsNotZombiePresentTank],
			[Ismap_c2m5],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkSheva],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
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
			[ConceptC2M5_PlanWorked],
			[IsSheva],
			[NotCoachMadAtRiders],
			[IsNotIncapacitated],
			[NotInCombat],
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
			[ConceptC2M5_PlanWorked],
			[IsSheva],
			[CoachMadAtRiders],
			[IsNotIncapacitated],
			[NotInCombat],
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
			[ConceptC2M5_PlanWorked],
			[IsSheva],
			[IsCoachAlive],
			[ChanceToFire20Percent],
			[IsNotIncapacitated],
			[NotInCombat],
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
			[ConceptC2M5Button1],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[NotInCombat],
			[Ismap_c2m5],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			[_auto_IsC2M5InArena],
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
			[ConceptC2M5_Button2Yell],
			[IsSheva],
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
			[ConceptC2M5_Button2Yell],
			[IsSheva],
			[CoachMadAtRiders],
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
			[ConceptC2M5_Choppercoming],
			[IsSheva],
			[IsNotIncapacitated],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptC2M3SafeIntro005],
			[IsSheva],
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
			[ConceptC2M3SafeIntro006],
			[IsSheva],
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
			[ConceptC2M3SafeIntro009],
			[IsSheva],
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
			[ConceptC2M3SafeIntro010],
			[IsSheva],
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
			[ConceptC3M1FerryEnd2],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingJ2],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingk2],
			[IsSheva],
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
			[ConceptWorldC3M1FerryCrossingL2],
			[IsSheva],
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
			[Conceptc3m2disgust],
			[IsSheva],
			[NotInCombat],
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
			[ConceptTalkIdle],
			[IsSheva],
			[NotInCombat],
			[ismapc3m2_swamp],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
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
			[ConceptC3M2SafeRoom2],
			[IsSheva],
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
			[ConceptC3M2SafeRoom2d],
			[IsSheva],
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
			[ConceptInfoRemC3M2Bathtub3],
			[IsSheva],
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
			[Concept_C3M2Pirogue],
			[IsSheva],
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
			[Concept_C3M2Pirogue2],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptC3M3SafeRoom2a3],
			[IsSheva],
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
			[ConceptC3M3SafeRoom2c2],
			[IsSheva],
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
			[ConceptC3M3SafeRoom2e2],
			[IsSheva],
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
			[ConceptInfoRemC3M3Bodies2],
			[IsSheva],
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
			[ConceptInfoRemC3M3Bodies3],
			[IsSheva],
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
			[ConceptInfoRemC3M3LowerGatea],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptC3M4Button1A],
			[IsSheva],
			[FromIsAnOrator],
			[_auto_IsTalkingSheva],
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
			[ConceptC3M4ButtonName],
			[IsSheva],
			[FromIsAnOrator],
			[_auto_IsTalkingSheva],
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
			[ConceptC3M4ButtonHowManyAnswer],
			[IsSheva],
			[FromIsAnOrator],
			[_auto_IsTalkingSheva],
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
			[ConceptC3M4Button201],
			[IsSheva],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingSheva],
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
			[ConceptC3M4Button202],
			[FromIsAnOrator],
			[_auto_IsTalkingSheva],
			[IsSheva],
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
			[ConceptC3M4GateBlow01],
			[IsSheva],
			[FromIsAnOrator],
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
			[ConceptTalkIdle],
			[IsSheva],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[_auto_NotTimerLockA],
			[_auto_IsTimerA],
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
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[NotinCombat],
			[IsWorldTalkSheva],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsShevaInWitchville],
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
			[Conceptc4m2_elevator_top_button],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptC5M1_intro002],
			[IsSheva],
			[IsAlone],
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
			[ConceptC5M1_intro004],
			[IsSheva],
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
			[ConceptC5M1_intro005],
			[IsSheva],
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
			[ConceptC5M1_intro010],
			[IsSheva],
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
			[ConceptC5M1Flyby01],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptC5M1Flyby02],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptC5M2_signcontagious01],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsMapc5m2_park],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			[_auto_IsAlarm],
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
			[ConceptRemark],
			[IsSheva],
			[Isc5m2park],
			[IsNotSaidc5m2park],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptC5M3FirstInAlarmField],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
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
				func = Custom_Talker_Sheva.C5M3GraveNagsProducer,
			},
		],
	},

	{
		name = "C5M3Jets2Sheva",
		criteria = 
		[
			[Conceptc5m3Jets2],
			[IsSheva],
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
			[ConceptC5M3Jets3],
			[IsSheva],
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
			[Conceptc5m3OnBridge],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptC5M3SeeGraveyard01],
			[IsSheva],
			[IssuerClose],
			[NotInCombat],
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
			[ConceptPanicEvent],
			[IsSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsSheva],
			[IsCarAlarm],
			[_auto_IsInAlarmField],
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
			[ConceptPanicEvent],
			[IsSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotSheva],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[_auto_IsInAlarmField],
			[_auto_ShotSecondCar],
			[_auto_IsAlarmFieldOn],
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
			[ConceptPanicEvent],
			[IsSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotSheva],
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
			[ConceptC5M3Sniper01],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC502NotZombies2],
			[IsSheva],
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
			[ConceptWorldC502NotZombies3b],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[Isc5m3insewer],
			[IsNotSaidc5m3insewer],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[Isc5m3upladder],
			[IsNotSaidc5m3upladder],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc5m3upsteps],
			[IsNotSaidc5m3upsteps],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptC5M4BombExt],
			[IsSheva],
			[NotInCombat],
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
			[ConceptC5M4BombInt],
			[IsSheva],
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
			[ConceptC5M4BombIntA],
			[IsSheva],
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
			[ConceptC5M4BombInt],
			[IsSheva],
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
			[ConceptC5M4BombInt],
			[IsSheva],
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
			[ConceptC5M4BombInt],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[Isc5m4inminifinale],
			[IsNotSaidc5m4inminifinale],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc5m4seebridge],
			[IsNotSaidc5m4seebridge],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsSheva],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[ismap_c1m2_streets],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[ismap_c1m3_mall],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[ismap_c2m5],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[ismapc3m2_swamp],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[isc4m3],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[isc4m4],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[IsMapc5m2_park],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[IsMapc5m5_bridge],
			[_auto_IsTellingStory],
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
			[ConceptEllisInterrupt],
			[IsSheva],
			[Isc6m3_port],
			[_auto_IsTellingStory],
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
			[ConceptEllisStoryReac01],
			[IsSheva],
			[ismapc3m2_swamp],
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
			[ConceptC5M5_Button2],
			[IsSheva],
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
			[ConceptC5M5_GateDown],
			[IsSheva],
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
			[ConceptC5M5_Button2207],
			[IsSheva],
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
			[ConceptC5M5_SurvivorConv01],
			[IsSheva],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingSheva],
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
			[ConceptC5M5_SurvivorConv02],
			[IsSheva],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingSheva],
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
			[ConceptC5M5_SurvivorConv03],
			[IsSheva],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingSheva],
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
			[ConceptC5M5_SurvivorConv04],
			[IsSheva],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingSheva],
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
			[ConceptC5M5_SurvivorConv05],
			[IsSheva],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockSheva],
			[_auto_IsBridgeNag],
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
			[ConceptC5M5Button1],
			[IsSheva],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingSheva],
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
			[ConceptC5M5Button1],
			[IsSheva],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingSheva],
			[_auto_NotButton2],
			[_auto_IsBuzzardRunMentioned],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[_auto_NotRadioNag],
			[AutoIsNotSurvival],
			[_auto_IsSoldierChatter],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[_auto_IsRadioNag],
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
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsSheva],
			[IsMapc5m5_bridge],
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
			[ConceptFinalVehicleSpotted],
			[IsSheva],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptC5M5BridgeDestroyed2],
			[IsSheva],
			[IsNotIncapacitated],
			[IsEveryoneAlive],
			[CanSpeakC5M5SurvivorOutro],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsTank],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[IsMapc5m5_bridge],
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
			[ConceptC5M5_saferoom004],
			[IsSheva],
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
			[ConceptC6M1_IntotheparkNoHealth],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptintroC6M1],
			[IsSheva],
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
			[ConceptintroC6M1],
			[IsSheva],
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
			[ConceptC6M1Intro_05a],
			[IsSheva],
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
			[ConceptC6M1Intro_05c],
			[IsSheva],
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
			[ConceptC6M1Intro_05e],
			[IsSheva],
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
			[ConceptC6M1Intro_06b],
			[IsSheva],
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
			[ConceptC6M1Intro_06d],
			[IsSheva],
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
			[ConceptC6M1Intro_07b],
			[IsSheva],
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
			[ConceptC6M1Intro_07c],
			[IsSheva],
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
			[ConceptC6M1Intro_09e],
			[IsSheva],
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
			[ConceptC6M1Intro_09f],
			[IsSheva],
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
			[ConceptC6M1Intro_10b],
			[IsSheva],
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
			[ConceptC6M1Intro_10d],
			[IsSheva],
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
			[ConceptC6M1Intro_10e],
			[IsSheva],
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
			[ConceptC6M1Intro_12a],
			[IsSheva],
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
			[ConceptC6M1Intro_12c],
			[IsSheva],
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
			[ConceptC6M1Intro_14d],
			[IsSheva],
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
			[ConceptC6M1Intro_15c],
			[IsSheva],
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
			[ConceptC6M1Intro_17b],
			[IsSheva],
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
			[ConceptC6M1Intro_17d],
			[IsSheva],
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
			[ConceptC6M1Intro_18b],
			[IsSheva],
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
			[ConceptC6M1Intro_18d],
			[IsSheva],
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
			[ConceptC6M1Intro_19b],
			[IsSheva],
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
			[ConceptC6M1Intro_20a],
			[IsSheva],
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
			[ConceptC6M1Intro_20b],
			[IsSheva],
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
			[ConceptC6M1Intro_20d],
			[IsSheva],
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
			[ConceptC6M1Intro_20f],
			[IsSheva],
			[IsShevaAVampire],
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
			[ConceptC6M1Intro_20g],
			[IsSheva],
			[IsShevaAVampire],
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
			[ConceptC6M1Intro_22a],
			[IsSheva],
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
			[ConceptC6M1Intro_22c],
			[IsSheva],
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
			[ConceptC6M1Intro_22f],
			[IsSheva],
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
			[ConceptC6M1Intro_22h],
			[IsSheva],
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
			[ConceptC6M1Intro_24b],
			[IsSheva],
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
			[ConceptC6M1Intro_ConfirmObjective],
			[IsSheva],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsSheva],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsSheva],
			[IsNotAlone],
			[NoHasFirstAidKit],
			[Isc6m1_riverbank],
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
			[ConceptC6M1Start1],
			[IsSheva],
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
			[ConceptRemWorldC6M1_WeddingWarn01],
			[IsSheva],
			[IsSubjectDistNear800],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_HistoricTour],
			[IsNotSaidWorldC6M1_HistoricTour],
			[CanRemarkWorldC6M1_HistoricTour],
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
			[ConceptWorldC6M1_PostWedding02a],
			[IsSheva],
			[IsSubjectDistNear800],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M1_WeddingWarn03b],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M1_WeddingWarn03c],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptC6M2_OpenGate1],
			[IsSheva],
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
			[ConceptC6M2_OpenGate2],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo01a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo03a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo03a],
			[IsSheva],
			[IsZoeyIntroActor],
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
			[ConceptDLC1_C6M2_SafeRoomConvo03c],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo06a],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsFrancisIntroActor],
			[IsGamblerAlive],
			[ChanceToFire50Percent],
			[_auto_IsSafeRoomStart],
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
			[ConceptDLC1_C6M2_SafeRoomConvo07a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo08b],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo08d],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo08f],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo10a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo10c],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo14a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo14c],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo14e],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo15a],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
			[_auto_IsSafeRoomStart],
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
			[ConceptDLC1_C6M2_SafeRoomConvo16a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo16c],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo17b],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo18a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo18d],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo19a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo19f],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo20a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo21a],
			[IsSheva],
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
			[ConceptWorldC6M2_InSewer101a],
			[IsSheva],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_InSewer101b],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_InSewer202a],
			[IsSheva],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_OnTourWalk101a],
			[IsSheva],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_OnTourWalk101b],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_OnTourWalk102b],
			[IsSheva],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_Phase201a],
			[IsSheva],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_Tattoo01a],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_Tattoo02a],
			[IsSheva],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_Tattoo02c],
			[IsSheva],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_Tattoo02d],
			[IsSheva],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC6M2_TourEntrance01a],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptC6M3_BridgeDown],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptC6M3_ElevatorCancel],
			[IsSheva],
			[IsC6M3_port],
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
			[Conceptc6m3_elevator],
			[IsSheva],
			[IsC6M3_port],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorBiker],
			[Isc6m3_port],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorBiker],
			[Isc6m3_port],
			[IsFrancisIntroActor],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorTeenGirl],
			[Isc6m3_port],
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
			[ConceptTalkIdle],
			[IsSheva],
			[NotInCombat],
			[isC6m3_port],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo01b],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo02a1],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo02c],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo04b],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo04d],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo05c],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo06a],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[NotInCombat],
			[isC6m3_port],
			[IsInStartArea],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsZoeyIntroActor],
			[_auto_IsSafeRoomStart],
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
			[ConceptDLC1_C6M3_SafeRoomConvo07b],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo08g],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo09b],
			[IsSheva],
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
			[ConceptSurvivorIncapacitated],
			[IsSheva],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
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
			[ConceptCallForRescue],
			[IsSheva],
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
			[Conceptc6m3_outro3],
			[IsSheva],
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
				func = Custom_Talker_Sheva.c6m3_outroProducer,
				followup = RThen("Mechanic", "c6m3_outroL4D1012a", null, 0.1),
			},
		],
	},

	{
		name = "SurvivorSpotFirstWeaponsSheva",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSpeaking],
			[IsWorldTalkSheva],
			[IsNotPickedUpFirstAidKit],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsAdrenaline],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			[IsAdrenaline],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsSheva],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
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
			[ConceptPlayerSpotAmmo],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachNear400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsCoach],
			[IsCoachFar400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsDefibrillator],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			[IsDefibrillator],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsPipeBomb],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			[IsPipeBomb],
			[IsWorldTalkSheva],
			[YesHasGrenade],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[Isgrenade_launcher],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[C1M1orC1M2],
			[IsNotSaidSpot],
			[Isgrenade_launcher],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[Isgrenade_launcher],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			[Isgrenade_launcher],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsFirstAidKit],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			[IsFirstAidKit],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicFar400],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsMolotov],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			[IsMolotov],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsPainPills],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[NoHasPainPills],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Explosive],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			[IsUpgradePack_Explosive],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Incendiary],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			[IsUpgradePack_Incendiary],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsVomitJar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c5m1_waterfront],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[ismap_c2m2],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerIncoming],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJimmy],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[ismapc3m2_swamp],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
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
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Isc6m3_port],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[NotInIntenseCombat],
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
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[NotInIntenseCombat],
			[IsWorldTalkSheva],
			[NoKnowNames],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[InIntenseCombat],
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
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[IsFaultConcept],
			[IsFaultFriendlyFire],
			[IsSheva],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
			[IsDamageTypeBullet],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsOnThirdStrike],
			[IsFriendlyFire],
			[IsNotIncapacitated],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[NoKnowNames],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsNotOnThirdStrike],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsCoach],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsGambler],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsSheva],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsMechanic],
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
			[ConceptSurvivorBotMovingToReviveFriend],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[NotInCombat],
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
			[ConceptPlayerToTheRescue],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptTalkIdle],
			[ChanceToFire40Percent],
			[IsSurvivor],
			[ismap_c4m1_milltown_a],
			[IsSaidc4m1_nogas],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[NotInCombat],
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
			[ConceptTalkIdle],
			[ChanceToFire60Percent],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsShevaInCane],
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
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsSheva],
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
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsSheva],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsMapc5m2_park],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			[_auto_IsAlarm],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[ConceptPlayerExertionMinor],
			[IsSheva],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
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
			[ConceptPlayerExertionMinor],
			[IsSheva],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkSheva],
			[isc6m1_riverbank],
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
			[IsFaultConcept],
			[IsSheva],
			[IsFaultWitchHarassment],
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
			[IsFaultConcept],
			[IsSheva],
			[IsFaultWitchHarassment],
			[Isc6m1_riverbank],
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
			[ConceptWitchStartAttack],
			[IsSheva],
			[Iswitch_aggro_onSheva],
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
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsSheva],
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
			[IsSurvivor],
			[InPain],
			[IsNotSpeaking],
			[IsIncapacitatedPain],
			[IsSheva],
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
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			[IsBeingJockeyed],
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
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			[IsBeingJockeyed],
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
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
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
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedSheva],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
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
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsSheva],
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
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsSheva],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[NotInIntenseCombat],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[InIntenseCombat],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsSheva],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkSheva],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkSheva],
			[ChanceToFire50Percent],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[_auto_IsShevaInWitchville],
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
			[ConceptPlayerHelp],
			[IsSheva],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkSheva],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			[IsIncapacitated],
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
			[ConceptPlayerHelp],
			[IsSheva],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkSheva],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			[IsIncapacitated],
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
			[ConceptPlayerHelp],
			[IsSheva],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkSheva],
			[IsIncappedLethargic],
			[IsIncapacitated],
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
			[ConceptC2M1DoneFalling],
			[IsSheva],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotCoughing],
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
			[ConceptC2M1Falling],
			[IsSheva],
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
			[Conceptc2m2CarouselEnd],
			[IsSheva],
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
			[Conceptc2m2CarouselStart],
			[IsSheva],
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
			[ConceptC3M3BridgeButton],
			[IsNotSaidC3M3BridgeButton],
			[IsSheva],
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
			[ConceptEndOfWavWindow5],
			[IsSheva],
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
			[ConceptChainsawUsed],
			[IsNotSaidChainSawUsed],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M1AroundFire],
			[IsNotSaidC1M1AroundFire],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M1OverTable],
			[IsNotSaidC1M1OverTable],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M1SearchRooms],
			[IsNotSaidC1M1SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M1ThroughThisDoor],
			[IsNotSaidC1M1ThroughThisDoor],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3AlarmDoors],
			[IsNotSaidC1M3AlarmDoors],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3CarefulWindows],
			[IsNotSaidC1M3CarefulWindows],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3CEDAGone],
			[IsNotSaidC1M3CEDAGone],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3DownHere],
			[IsNotSaidC1M3DownHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3DownHere2],
			[IsNotSaidC1M3DownHere2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3DownTheEscalator],
			[IsNotSaidC1M3DownTheEscalator],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3OverHere],
			[IsNotSaidC1M3OverHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3SearchRooms],
			[IsNotSaidC1M3SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3ThisWay],
			[IsNotSaidC1M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3ThroughHere],
			[IsNotSaidC1M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3TurnOffAlarm1],
			[IsNotSaidC1M3TurnOffAlarm1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3TurnOffAlarm2],
			[IsNotSaidC1M3TurnOffAlarm2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3TurnOffAlarm3],
			[IsNotSaidC1M3TurnOffAlarm3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3UpEscalator1],
			[IsNotSaidC1M3UpEscalator1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3UpEscalator2],
			[IsNotSaidC1M3UpEscalator2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC1M3UpEscalator3],
			[IsNotSaidC1M3UpEscalator3],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_carwreckage],
			[IsNotSaidc2m1_carwreckage],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_checkrooms],
			[IsNotSaidc2m1_checkrooms],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_cliff],
			[IsNotSaidc2m1_cliff],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_downstairs],
			[IsNotSaidc2m1_downstairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_hillcomplain],
			[IsNotSaidc2m1_hillcomplain],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_hillcomplain],
			[IsNotSaidc2m1_hillcomplain],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_offramp],
			[IsNotSaidc2m1_offramp],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_park],
			[IsNotSaidc2m1_park],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_pool],
			[IsNotSaidc2m1_pool],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectFar100],
			[IsMechanicAlive],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_throughhere],
			[IsNotSaidc2m1_throughhere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_throughmotel],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_throughwindow],
			[IsNotSaidc2m1_throughwindow],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_uphill],
			[IsNotSaidc2m1_uphill],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m1_upstairs],
			[IsNotSaidc2m1_upstairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m2_entrancesign],
			[IsNotSaidc2m2_entrancesign],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m2_lilpeanut],
			[IsNotSaidc2m2_lilpeanut],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m2_miscfood],
			[IsNotSaidc2m2_miscfood],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m2_topofslide],
			[IsNotSaidc2m2_topofslide],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m2_womensroom],
			[IsNotSaidc2m2_womensroom],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_coasteroff],
			[IsNotSaidc2m3_coasteroff],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_hole],
			[IsNotSaidc2m3_hole],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_longesttunnel],
			[IsNotSaidc2m3_longesttunnel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsGamblerAlive],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_longesttunnel],
			[IsNotSaidc2m3_longesttunnel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsGamblerAlive],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_overfence],
			[IsNotSaidc2m3_overfence],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_swanroom],
			[IsNotSaidc2m3_swanroom],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_tracks01],
			[IsNotSaidc2m3_tracks01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_tracks02],
			[IsNotSaidc2m3_tracks02],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_tracks03],
			[IsNotSaidc2m3_tracks03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_tracks04],
			[IsNotSaidc2m3_tracks04],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_tracks05],
			[IsNotSaidc2m3_tracks05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_tracks06],
			[IsNotSaidc2m3_tracks06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_tracks07],
			[IsNotSaidc2m3_tracks07],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_tracks08],
			[IsNotSaidc2m3_tracks08],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m3_vent],
			[IsNotSaidc2m3_vent],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m4_barnentry],
			[IsNotSaidc2m4_barnentry],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m4_bumpercars],
			[IsNotSaidc2m4_bumpercars],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m4_pendoor],
			[IsNotSaidc2m4_pendoor],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m4_upbarn],
			[IsNotSaidc2m4_upbarn],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m5_button2],
			[IsNotSaidc2m5_button2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3BridgeDown],
			[IsNotSaidC3M3BridgeDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsSaidC3M3BridgeButton],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M1NoSwimming],
			[IsNotSaidC3M1NoSwimming],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2Bathtub],
			[IsNotSaidC3M2Bathtub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsMechanicAlive],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2OverTree],
			[IsNotSaidC3M2OverTree],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2PlaneCrash],
			[IsNotSaidC3M2PlaneCrash],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2PlaneDoorNag],
			[IsNotSaidC3M2PlaneDoorNag],
			[IsNotCoughing],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkSheva],
			[IsSaidC3M2PlaneDoorNag],
			[ismapc3m2_swamp],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2Road],
			[IsNotSaidC3M2Road],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2SickOfSwamp],
			[IsNotSaidC3M2SickOfSwamp],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsSheva],
			[IsNotSaidLeavingSafeArea],
			[ismapc3m2_swamp],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2StartDry],
			[IsNotSaidC3M2StartDry],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2UnderWaterShack],
			[IsNotSaidC3M2UnderWaterShack],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2UnderWaterShack],
			[IsNotSaidC3M2UnderWaterShack],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear300],
			[IsMechanicAlive],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2Village1],
			[IsNotSaidC3M2Village1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2WhereAreWe],
			[IsNotSaidC3M2WhereAreWe],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M2WhereAreWe],
			[IsNotSaidC3M2WhereAreWe],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3Bodies],
			[IsNotSaidC3M3Bodies],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3LowerGate],
			[IsNotSaidC3M3BridgeButton],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3MoreShacks],
			[IsNotSaidC3M3MoreShacks],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3MoreShacks],
			[IsNotSaidC3M3MoreShacks],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3SearchHouses],
			[IsNotSaidC3M3SearchHouses],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3Stairs],
			[IsNotSaidC3M3Stairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3ThroughHere],
			[IsNotSaidC3M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3ThroughThisHouse],
			[IsNotSaidC3M3ThroughThisHouse],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3UpHere],
			[IsNotSaidC3M3UpHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3UsePlanks],
			[IsNotSaidC3M3UsePlanks],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3UsePlanks],
			[IsNotSaidC3M3UsePlanks],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc3m4downroad],
			[IsNotSaidc3m4downroad],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc3m4outhouse],
			[IsNotSaidc3m4outhouse],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc3m4outhouse],
			[IsNotSaidc3m4outhouse],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc3m4radio],
			[IsNotSaidc3m4radio],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc3m4scaffold],
			[IsNotSaidc3m4scaffold],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m1_garagesale],
			[IsNotSaidc4m1_garagesale],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m1_throughhereA],
			[IsNotSaidc4m1_throughhereA],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_gasinsidesign],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_millentrance],
			[IsNotSaidc4m2_millentrance],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_millentranceexit],
			[IsNotSaidc4m2_millentranceexit],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_seegasstation],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_streetblocked],
			[IsNotSaidc4m2_streetblocked],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_upramp],
			[IsNotSaidc4m2_upramp],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_upthestairs],
			[IsNotSaidc4m2_upthestairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_useelevator],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear300],
			[IsSaidc4m2_seegasstation],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_waterpool],
			[IsNotSaidc4m2_waterpool],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m2_weather],
			[IsNotSaidc4m2_weather],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_cane],
			[IsNotSaidc4m3_cane],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_crosshere],
			[IsNotSaidc4m3_crosshere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_downhere],
			[IsNotSaidc4m3_downhere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_downstairs],
			[IsNotSaidc4m3_downstairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_ducatelsign],
			[IsNotSaidc4m3_ducatelsign],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_elevator],
			[IsNotSaidc4m3_elevator],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_flooded],
			[IsNotSaidc4m3_flooded],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_overtank],
			[IsNotSaidc4m3_overtank],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_rain],
			[IsNotSaidc4m3_rain],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_thisway],
			[IsNotSaidc4m3_thisway],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m3_uppipes],
			[IsNotSaidc4m3_uppipes],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m4_garagesale],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m4_garagesale2],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m4_playground],
			[IsNotSaidc4m4_playground],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m4_porchlight],
			[IsNotSaidc4m4_porchlight],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m4_truckwreck],
			[IsNotSaidc4m4_truckwreck],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m4_useroofs],
			[IsNotSaidc4m4_useroofs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Ispathc2m1_abandonedcars],
			[IsNotSaidpathc2m1_abandonedcars],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Ispathc2m1_abandonedcars],
			[IsNotSaidpathc2m1_abandonedcars],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Ispathc2m1_billboard],
			[IsNotSaidpathc2m1_billboard],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M1CedaMaps],
			[IsNotSaidWorldC1M1CedaMaps],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptC1M1WeAreScrewed],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M1DownHere],
			[IsNotSaidWorldC1M1DownHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M1DownStairs],
			[IsNotSaidWorldC1M1DownStairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M1ElevatorBroken],
			[IsNotSaidWorldC1M1ElevatorBroken],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M1FireSpreading],
			[IsNotSaidWorldC1M1FireSpreading],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M1First],
			[IsNotSaidWorldC1M1First],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M1Ledge],
			[IsNotSaidWorldC1M1Ledge],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2Close],
			[IsNotSaidWorldC1M2Close],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M1StairsSign],
			[IsNotSaidWorldC1M1StairsSign],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2DownStairs],
			[IsNotSaidWorldC1M2DownStairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2Abandoned],
			[IsNotSaidWorldC1M2Abandoned],
			[IsNotCoughing],
			[NotInCombat],
			[IntensityZero],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2Dumpster],
			[IsNotSaidWorldC1M2Dumpster],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2InHere],
			[IsNotSaidWorldC1M2InHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2JumpTruck],
			[IsNotSaidWorldC1M2JumpTruck],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2MallSignHere],
			[IsNotSaidWorldC1M2MallSignHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC1M2UpStairs],
			[IsNotSaidWorldC1M2UpStairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1CheckingHouses],
			[IsNotSaidWorldC3M1CheckingHouses],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkSheva],
			[IsSubjectNear200],
			[IsMechanicAlive],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkSheva],
			[IsSubjectNear200],
			[IsGamblerAlive],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1FerryNag],
			[IsNotSaidWorldC3M1FerryNag],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsSubjectNear600],
			[IsSaidWorldC3M1FerryNag],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1WeShouldGetBackUp],
			[IsNotSaidWorldC3M1WeShouldGetBackUp],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1Path01],
			[IsNotSaidWorldC3M1Path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1PlanksRight],
			[IsNotSaidWorldC3M1PlanksRight],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1Walkways],
			[IsNotSaidWorldC3M1Walkways],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC3M1WhichWay],
			[IsNotSaidWorldC3M1WhichWay],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldC502AlarmButton],
			[IsSheva],
			[IsNotCoughing],
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
			[ConceptWorldC502AlarmStopped],
			[IsSheva],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC502Alley],
			[IsNotSaidWorldC502Alley],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC502Smell],
			[IsNotSaidWorldC502Smell],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC502Smell],
			[IsNotSaidWorldC502Smell],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsWitchPresent],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsWitchPresent],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsEllisInLoveC6M1],
			[IsZoeyIntroActor],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkSheva],
			[IsGamblerAlive],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_InSewer2],
			[IsNotSaidWorldC6M2_InSewer2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[IsSaidWorldC6M2_InSewer1],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptC2M1Falling],
			[IsSheva],
			[Isc6m2_bedlam],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_OnTourWalk1],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_OnTourWalk3],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_Suitcase],
			[IsNotSaidWorldC6M2_Suitcase],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[_auto_C6M3BridgeDown],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear500],
			[IsFrancisIntroActor],
			[_auto_C6M3BridgeDown],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldSignColdBeer],
			[IsNotSaidWorldSignColdBeer],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldSignHurricane3],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldSignReportSick3],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptWorldSignWhereIsCEDA2],
			[IsSheva],
			[IsNotCoughing],
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
			[ConceptWorldC502ArmYourself],
			[IsSheva],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldSignC5AlarmWillSound],
			[IsNotSaidWorldSignC5AlarmWillSound],
			[IsNotCoughing],
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
			[ConceptRespondAffirmative],
			[IssuerMediumClose],
			[IsNotCoughing],
			[NotInCombat],
			[isSheva],
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
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHelp],
			[IsSheva],
			[IsNotCoughing],
			[IsNotIncapacitated],
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
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[IsWorldTalkSheva],
			[_auto_IsShevaInWitchville],
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
			[ConceptPlayerKillThatLight],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerLeadOn],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerMoveOn],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerWatchOutBehind],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerImWithYou],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerLaugh],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerLostCall],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerAnswerLostCall],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptKillStealCalledOut],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsNotShotTeammateSheva],
			[IsSheva],
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
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsShotTeammateSheva],
			[IsSheva],
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
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerYellRun],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerYes],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[FromIsCoach],
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
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[FromIsCoach],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[FromIsGambler],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[FromIsMechanic],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsSheva],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsInBattlefield],
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
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsSheva],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsInStartArea],
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
			[ConceptPlayerNegative],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPanicEvent],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsNotSheva],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkSheva],
			[IsCarAlarm],
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
			[ConceptPanicEvent],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsSheva],
			[IsNotc5m3_cemetery],
			[IsTalk],
			[IsTalkSheva],
			[IsCarAlarm],
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
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardTank],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHurrah],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerWarnCareful],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsL4D1Alive],
			[Isc6m3_port],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Score20MoreSC],
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
			[ConceptGasPour20More],
			[IsSheva],
			[IsSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Score10MoreSC],
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
			[ConceptGasPour10More],
			[IsSheva],
			[IsSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Score1MoreSC],
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
			[ConceptGasPour1More],
			[IsSheva],
			[IsSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Score2MoreSC],
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
			[ConceptGasPour2More],
			[IsSheva],
			[IsSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Score3MoreSC],
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
			[ConceptGasPour3More],
			[IsSheva],
			[IsSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Score5MoreSC],
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
			[ConceptGasPour5More],
			[IsSheva],
			[IsSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsScavenge],
			[ScoreDoneSC],
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
			[ConceptPlayerPourStarted],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotAlone],
			[IsWorldTalkSheva],
			[IsScavenge],
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
			[ConceptPlayerPourStarted],
			[IsSheva],
			[IsAlone],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsScavenge],
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
			[ConceptPlayerEquippedScavengeItem],
			[IsSheva],
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
			[ConceptPlayerShotGasCan],
			[IsSheva],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsScavenge],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c1m4_atrium],
			[IsWorldTalkSheva],
			[IsScavenge],
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
			[ConceptCommentJockey],
			[IsSheva],
			[IssuerCloseEnough],
			[FromIsNotTeenGirl],
			[IsNotIncapacitated],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedSheva],
			[IsNotBeingJockeyed],
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
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsSheva],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c4m2_sugarmill_a],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotComplainBlock],
			[IsCoachAlive],
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
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptAlertGiveItemStopFirstAidA],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptBashWithItem],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsItemFirstAidKit],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsNotTeenGirl],
			[IsNotSaidPlayerPounced],
			[IsSheva],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsCoach],
			[IsNotSaidCoachPounced],
			[IsSheva],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsCoach],
			[IsNotSaidCoachPounced],
			[IsSheva],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsSheva],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsMechanic],
			[IsNotSaidMechanicPounced],
			[IsSheva],
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
			[ConceptEatPills],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire90Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsSheva],
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
			[ConceptPlayerGetInsideCheckPoint],
			[IsNotCoughing],
			[IsSheva],
			[IsInSafeSpot],
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
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsSheva],
			[IsInSafeSpot],
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
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsGrenadeMolotov],
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
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsGrenadeMolotov],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsGrenadePipeBomb],
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
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsGrenadeVomitJar],
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
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsGrenadeVomitJar],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerIncapacitated],
			[IsSheva],
			[ismap_c1m2_streets],
			[IsC1M2WhitakerErrand],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkSheva],
			[IsUsingFirearm],
			[ismap_c1m1_hotel],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkSheva],
			[EquippedMeleeWeapon],
			[ismap_c1m1_hotel],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkSheva],
			[IsUsingFirearm],
			[ismap_c1m2_streets],
			[IsSaidC1M2InsideGunShop],
			[IsWorldTalkSheva],
			[_auto_IsButton1],
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
			[ConceptRightfulKiller],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsEllisAlsoWarn],
			[ChanceToFire5Percent],
			[IsNotAlone],
			[IsNotIncapacitated],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[ismap_c1m2_streets],
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
			[ConceptKilledZombie],
			[IsSheva],
			[SubjectIsAWitch],
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
			[ConceptKilledZombie],
			[IsSheva],
			[SubjectIsAWitch],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
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
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsSheva],
			[IsInSafeSpot],
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
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsSheva],
			[IsInSafeSpot],
			[IsNotAlone],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsMechanic],
			[IsNotSaidMechanicPounced],
			[IsSheva],
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
			[ConceptRevivedByDefibrillator],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptRevivedByDefibrillatorDelayed],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[IsNotSuggestedHealth],
			[IsNotIncapacitated],
			[YesHasFirstAidKit],
			[IsSheva],
			[IsNotBeingHealed],
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
			[ConceptPlayerSuggestHealth],
			[IsSheva],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerSuggestHealth],
			[IsSheva],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsCoach],
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
			[ConceptPlayerSuggestHealth],
			[IsSheva],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsGambler],
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
			[ConceptPlayerSuggestHealth],
			[IsSheva],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsMechanic],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSomeoneDied],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m3_mall],
			[IsNotAlone],
			[IsNotSomeoneDied],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c2m1],
			[IsNotAlone],
			[IsNotSomeoneDied],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c2m1],
			[IsNotAlone],
			[IsMechanicAlive],
			[ChanceToFire50Percent],
			[IsNotSomeoneDied],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsMapc5m4_quarter],
			[IsNotAlone],
			[IsNotSomeoneDied],
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
			[ConceptPlayerUsingDefibrillator],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsSaidC1M3CoachFoodCourt],
			[ismap_c1m3_mall],
			[IsNotSaidSpecialWarn],
			[IsCoachAlive],
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
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsSheva],
			[IsNotWarnHeardWitch],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			[NotInCombat],
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
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptBeNice],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptWitchGettingAngry],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptintroC3M1],
			[IsSheva],
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
			[ConceptintroC5M1],
			[IsSheva],
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
			[ConceptPlayerVomitInFace],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerVomitExpired],
			[IsNotCoughing],
			[ismap_c1m1_hotel],
			[IsSheva],
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
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsSheva],
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
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptSurvivorCoughing],
			[IsCoughing],
			[IsSheva],
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
			[ConceptPlayerDeath],
			[IsCoughing],
			[IsSheva],
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
			[ConceptPlayerDeath],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkSheva],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			[IsNotIncapacitated],
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
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c1m2_streets],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c1m3_mall],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c2m1],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c2m2],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c2m4],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c3m1_plankcountry],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismapc3m2_swamp],
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
			[ConceptRemark],
			[IsSheva],
			[IsC3M3SafeHouseAhead],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c4m1_milltown_a],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[ismap_c4m2_sugarmill_a],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[isc4m3],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[isc4m4],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[IsMapc5m2_park],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[Isc6m1_riverbank],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkSheva],
			[Isc6m2_bedlam],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[ismap_c1m4_atrium],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[ismap_c2m5],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[ismapc3m4_plantation],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[isc4m5],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[IsMapc5m5_bridge],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[Isc6m3_port],
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
			[ConceptScreamWhilePounced],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerGroundPoundedByTank],
			[IsSheva],
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
			[ConceptPlayerBackUp],
			[IsSheva],
			[IsNotCoughing],
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
			[ConceptPlayerEmphaticGo],
			[IsSheva],
			[IsNotCoughing],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsSheva],
			[IsOnThirdStrike],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsSheva],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkSheva],
			[ChanceToFire30Percent],
			[IsNotSaidGoingToDieC5M5],
			[IsMapc5m5_bridge],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerThisWay],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerWaitHere],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerLedgeHangEnd],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerLedgeHangMiddle],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerLedgeHangStart],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsSheva],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsSheva],
			[IsWithTwo],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsSheva],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkSheva],
			[IsWithOnlyThree],
			[IsNotIncapacitated],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsPickedUpSMG],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsPickedUpPumpShotgun],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsPickedUpShotgun_Chrome],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsPickedUpSmg_mp5],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
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
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSaidDeployUpgradePack_Explosive],
			[HasUpgradePack_Explosive],
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
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotSaidDeployUpgradePack_Incendiary],
			[HasUpgradePack_Incendiary],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpAdrenaline],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpAutoShotgun],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpShotgun_spas],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpAutoShotgun],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m2_streets],
			[IsSaidC1M2InsideGunShop],
			[_auto_IsButton1],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpShotgun_spas],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m2_streets],
			[IsSaidC1M2InsideGunShop],
			[_auto_IsButton1],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpbaseball_bat],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpShovel],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpPitchfork],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpchainsaw],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpcricket_bat],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpKnife],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpCrowBar],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpDefibrillator],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpelectric_guitar],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpFireAxe],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpFirstAidKit],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidPickupFirstSMG],
			[IsSaidC1M1OpenDoor],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpFryingPan],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpGolfClub],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpGrenadeLauncher],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSpeaking],
			[IsTalk],
			[IsSaidC1M2InsideGunShop],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpHuntingRifle],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpSniper_Military],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpSniper_scout],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpSniper_awp],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpHuntingRifle],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m2_streets],
			[IsSaidC1M2InsideGunShop],
			[_auto_IsButton1],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpSniper_Military],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m2_streets],
			[IsSaidC1M2InsideGunShop],
			[_auto_IsButton1],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpIncendiaryAmmo],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpKatana],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotNotAvailable],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpM60],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpMachete],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpMagnum],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpMolotov],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpPainPills],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpPipeBomb],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpPumpShotgun],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpShotgun_Chrome],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpRifle],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpRifle_Desert],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpRifle_AK47],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpRifle_sg552],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpRifle],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m2_streets],
			[IsSaidC1M2InsideGunShop],
			[_auto_IsButton1],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpRifle_Desert],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m2_streets],
			[IsSaidC1M2InsideGunShop],
			[_auto_IsButton1],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpRifle_AK47],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m2_streets],
			[IsSaidC1M2InsideGunShop],
			[_auto_IsButton1],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpSecondPistol],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpSMG],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpSMG_silenced],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpSMG_mp5],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUptonfa],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpExplosiveAmmo],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpUpgradePack_Explosive],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpUpgradePack_Incendiary],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpVomitJar],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpVomitJar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[NotInIntenseCombat],
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
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[InIntenseCombat],
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
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[NotInIntenseCombat],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[SubjectIsMechanic],
			[ChanceToFire5Percent],
			[IsWorldTalkSheva],
			[NotInIntenseCombat],
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
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[NotInIntenseCombat],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsShotTeammateSheva],
			[IsWorldTalkSheva],
			[NotInIntenseCombat],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsShotTeammateSheva],
			[IsWorldTalkSheva],
			[NotInIntenseCombat],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsSheva],
			[InIntenseCombat],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsSheva],
			[InIntenseCombat],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsSheva],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[Concept_C1M1_ElevatorHello],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHelloStart],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHelloStart],
			[IsSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithOnlyThree],
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
			[Concept_C1M1_ElevatorHelloStart],
			[IsSheva],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithTwo],
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
			[Concept_C1M1_ElevatorHello01c],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello02a],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello02d],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello03c],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello04b],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello04d],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello07a],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello07c],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello07e],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello08b],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello08d],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello09a],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello11a],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello13a],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello13b],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello13c],
			[IsSheva],
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
			[Concept_c1m4startelevator3a],
			[IsSheva],
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
			[Concept_c1m4startelevator3c],
			[IsSheva],
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
			[Concept_c1m4startelevator5a],
			[IsSheva],
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
			[Concept_c1m4startelevatorLast],
			[IsSheva],
			[ElevatorTimeNotUp],
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
			[Concept_c1m4startelevatorLast],
			[IsSheva],
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
			[Concept_C2M1_Fall02],
			[IsSheva],
			[NotInCombat],
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
			[Concept_c2m1_searchlights01],
			[IsSheva],
			[NotInCombat],
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
			[Concept_c2m1_searchlights04],
			[IsSheva],
			[NotInCombat],
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
			[Concept_C2M1abandoned02],
			[IsSheva],
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
			[Concept_C2M2_Kiddie01],
			[IsSheva],
			[NotInCombat],
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
			[Concept_C2M2_Kiddie02],
			[IsSheva],
			[NotInCombat],
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
			[Concept_C2M2_Kiddie05],
			[IsSheva],
			[NotInCombat],
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
			[Concept_C2M2_Cobbler],
			[IsSheva],
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
			[Concept_C2M2_Steak01],
			[IsSheva],
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
			[Concept_C2M2_ThisTall01],
			[IsSheva],
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
			[Concept_C2M2_MiscFood],
			[IsSheva],
			[NotInCombat],
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
			[Concept_C2M2_Okra],
			[IsSheva],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m2_okra],
			[IsNotSaidc2m2_okra],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[Isc2m2_okra2],
			[IsNotSaidc2m2_okra],
			[IsNotCoughing],
			[NotInCombat],
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
			[Concept_C2M4_GateOpen001],
			[IsSheva],
			[IsNotIncapacitated],
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
			[Concept_C4_BigStormHits01],
			[IsSheva],
			[_auto_NotC4ShevaInCover],
			[_auto_IsTimerA],
			[FromIsAnOrator],
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
			[Concept_C4_BigStormHits02],
			[IsSheva],
			[IsNotCoughing],
			[IssuerClose],
			[IsNotIncapacitated],
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
			[Concept_c4m1_rainresponse],
			[IsSheva],
			[NotInCombat],
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
			[ConceptIntroC4M1],
			[IsSheva],
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
			[Concept_c4m1Intro03],
			[IsSheva],
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
			[Concept_c4m1Intro04],
			[IsSheva],
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
			[Concept_c4m1Intro06],
			[IsSheva],
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
			[Concept_c4m1Intro08],
			[IsSheva],
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
			[Concept_c4m1Intro10],
			[IsSheva],
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
			[Concept_c4m2_caneyell01],
			[IsSheva],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsShevaInCane],
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
			[Concept_c4m2_ElevatorHere01],
			[IsSheva],
			[IsNotIncapacitated],
			[IsNotCoughing],
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
			[Concept_c4m2_gasinside01],
			[IsSheva],
			[NotInCombat],
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
			[Concept_c4m2_streetblocked01],
			[IsSheva],
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
			[Concept_c4m2_streetblocked01],
			[IsSheva],
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
			[Concept_c4m2_streetblocked02],
			[IsSheva],
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
			[Concept_c4m2_Witchville02],
			[IsSheva],
			[IssuerClose],
			[NotInCombat],
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
			[Concept_c4m2_seestation01],
			[IsSheva],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			[NotInCombat],
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
			[Concept_c4m2_seestation03],
			[IsSheva],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			[NotInCombat],
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
			[Concept_C4M5_FinaleStart01],
			[IsSheva],
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
			[Concept_C4M5_BoatComing01],
			[IsSheva],
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
			[Concept_C4M5_Intro03],
			[IsSheva],
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
			[Concept_C4M5_Intro04],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m5_burgertank],
			[IsNotSaidc4m5_burgertank],
			[IsNotCoughing],
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
			[Concept_introc1m1MovieIntro],
			[IsSheva],
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
			[Concept_introc1m1a02],
			[IsSheva],
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
			[Concept_introc1m1a02],
			[IsSheva],
			[IsAlone],
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
			[Concept_introc1m1a04],
			[IsSheva],
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
			[Concept_introc1m1b05],
			[IsSheva],
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
			[Concept_introc1m1b06],
			[IsSheva],
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
			[Concept_introc1m1d01],
			[IsSheva],
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
			[Concept_introc1m1last],
			[IsSheva],
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
			[Concept_introc1m1lastweapons],
			[IsSheva],
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
			[Concept_introc1m1b07],
			[IsSheva],
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
			[Concept_introc1m1b08],
			[IsSheva],
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
			[ConceptBlankTesto],
			[IsSheva],
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
			[Conceptc1m1_elevator_door_open2],
			[IsSheva],
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
			[Conceptc1m1_elevator_ready2],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello2AliveName2],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello2AliveName2],
			[IsSheva],
			[FromIsCoach],
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
			[Concept_C1M1_ElevatorHello2AliveExtra1],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello2AliveExtra2],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveShevaIntro],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveExtra1],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveExtra2],
			[IsShevaElevatorIntro],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveName1],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveName2],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveName2],
			[IsSheva],
			[FromIsGambler],
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
			[Concept_C1M1_ElevatorHello3AliveExtraGuns],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveWhoIsDead],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsGamblerNotAlive],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsMechanicNotAlive],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsCoachNotAlive],
			[IsSheva],
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
			[Concept_C1M1_ElevatorHello3AliveExtraEnd1],
			[IsSheva],
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
			[ConceptC1M1Cough],
			[IsSheva],
			[ismap_c1m1_hotel],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptC1M3AlarmOffa],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptC1M3SafeRoom2e],
			[IsSheva],
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
			[ConceptC1M4NearFinale03a],
			[IsSheva],
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
			[ConceptC1M4NearFinale02d],
			[IsSheva],
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
			[Conceptc1m4NearFinale1],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptC1M4SafeRoom2b2],
			[IsSheva],
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
			[ConceptSurvivorLeavingInitialCheckpoint],
			[ismap_c1m4_atrium],
			[IsSheva],
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
			[ConceptC1M4FinaleStartResponse],
			[IsSheva],
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
			[ConceptIntroC2M1],
			[IsSheva],
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
			[ConceptC2M1Intro002],
			[IsSheva],
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
			[ConceptC2M1Intro003],
			[IsSheva],
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
			[ConceptC2M1Intro_400],
			[IsSheva],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsSheva],
			[Ismap_c2m1],
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
			[Concept_C2M1MonsterTruck],
			[IsSheva],
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
			[ConceptC2M4PenSmell001],
			[IsSheva],
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
				func = Custom_Talker_Sheva.C2M4PenSmell001Producer,
			},
		],
	},

	{
		name = "C4EnterCoverSheva",
		criteria = 
		[
			[ConceptC4EnterCover],
			[IsSheva],
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
			[ConceptC4ExitCover],
			[IsSheva],
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
			[Conceptc4m1_InBurgerTank01],
			[IsSheva],
			[NotInCombat],
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
			[Conceptc4m1_InBurgerTank02],
			[IsSheva],
			[NotInCombat],
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
			[ConceptC4FinaleStart],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[Isc4m1_InBurgerTank],
			[IsNotSaidc4m1_InBurgerTank],
			[IsNotCoughing],
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
			[Conceptc4m1_nogas01],
			[IsSheva],
			[NotInCombat],
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
			[Conceptc4m1_nogas04],
			[IsSheva],
			[NotInCombat],
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
			[ConceptGasPour20More],
			[IsSheva],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptGasPour10More],
			[IsSheva],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptGasPour1More],
			[IsSheva],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptGasPour2More],
			[IsSheva],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptGasPour3More],
			[IsSheva],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptGasPour5More],
			[IsSheva],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
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
			[ConceptHistoricTour02b],
			[IsSheva],
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
			[ConceptPlayer_KnowHunter2],
			[IsSheva],
			[IssuerClose],
			[IsNotIncapacitated],
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
			[ConceptC1M2TankInfo],
			[IsSheva],
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
			[ConceptPlayer_NotPackingHeat],
			[IsSheva],
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
			[ConceptPlayer_NotPackingHeat2],
			[IsSheva],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkSheva],
			[isc6m1_riverbank],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsSheva],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkSheva],
			[isc6m1_riverbank],
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
			[ConceptWeddingWitchDead01],
			[IsSheva],
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
			[ConceptWeddingWitchDead02a],
			[IsSheva],
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
			[ConceptWorldIntroC31a2],
			[IsSheva],
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
			[ConceptWorldIntroC31a4],
			[IsSheva],
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
			[ConceptWorldIntroC31c3],
			[IsSheva],
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
			[ConceptWorldIntroC31d2],
			[IsSheva],
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
			[ConceptWorldIntroC31e1],
			[IsSheva],
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
			[ConceptWorldIntroC31e2],
			[IsSheva],
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
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsSheva],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkSheva],
			[IsNotAlone],
			[IsWorldTalkSheva],
			[ismap_c1m1_hotel],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsChainsaw],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsChainsaw],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscricket_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscricket_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscrowbar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscrowbar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGolfClub],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGuitar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGuitar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsKatana],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[IsNotSaidSpot],
			[IsKatana],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsLaserSights],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsLaserSights],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotIsAvailable],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsM60],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMachete],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMachete],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMagnum],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMagnum],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSMG],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSMG],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_silenced],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_silenced],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_mp5],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_mp5],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Istonfa],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Istonfa],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSecondPistol],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSecondPistol],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsAutoShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsAutoShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPumpShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPumpShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_Chrome],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_Chrome],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_spas],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_spas],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_AK47],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_AK47],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_desert],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_desert],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_sg552],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_sg552],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_military],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_military],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsHuntingRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsHuntingRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_scout],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_scout],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_awp],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_awp],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[Isbaseball_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Isbaseball_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFryingPan],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsWorldTalkSheva],
			[IsFryingPan],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFireAxe],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFireAxe],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShovel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShovel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPitchfork],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPitchfork],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsKnife],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKnife],
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
			[ConceptPlayerSpotOtherWeapon],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_IsTracksOK],
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
			[ConceptC2M3Chopper001],
			[IsSheva],
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
			[ConceptAskWhat],
			[IsSheva],
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
			[ConceptIntroC13M1],
			[IsSheva],
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
			[ConceptC13M1Intro2],
			[IsSheva],
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
			[ConceptC13M1Intro3],
			[IsSheva],
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
			[ConceptC13M1IntroLast],
			[IsSheva],
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
			[ConceptC13M1IntroLocationLast],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M1UpHill],
			[IsNotRemarkedC13M1UpHill],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M1DownHere],
			[IsNotRemarkedC13M1DownHere],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M1ThroughHere],
			[IsNotRemarkedC13M1ThroughHere],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M1ThroughWindow],
			[IsNotRemarkedC13M1ThroughWindow],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M1UpSteps],
			[IsNotRemarkedC13M1UpSteps],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M1CrossHere],
			[IsNotRemarkedC13M1CrossHere],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M1PreBunkerOpen],
			[IsNotRemarkedC13M1PreBunkerOpen],
			[NotInCombat],
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
			[ConceptC13M1OpeningBunker],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M2UpHill],
			[IsNotRemarkedC13M2UpHill],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M2DownHere],
			[IsNotRemarkedC13M2DownHere],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M2UpLadder],
			[IsNotRemarkedC13M2UpLadder],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M2UpStairs],
			[IsNotRemarkedC13M2UpStairs],
			[NotInCombat],
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
			[ConceptC13M2TankApproaching],
			[IsSheva],
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
			[ConceptC13M2BarrelsIgnited],
			[IsSheva],
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
			[ConceptC13M2Barrels1],
			[IsSheva],
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
			[ConceptC13M2Barrels2],
			[IsSheva],
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
			[ConceptRemark],
			[IsSheva],
			[IsC13M3DownHere],
			[IsNotRemarkedC13M3DownHere],
			[NotInCombat],
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
			[ConceptC13M3ApproachingTanker],
			[IsSheva],
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
			[ConceptC13M3Tanker1],
			[IsSheva],
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
			[ConceptC13M3Tanker2],
			[IsSheva],
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
			[ConceptC13M3Tanker3],
			[IsSheva],
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
			[ConceptC13M3OnScaffold],
			[IsSheva],
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
			[ConceptC13M3Airstrike],
			[IsSheva],
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
			[ConceptC13M3Airstrike2],
			[IsSheva],
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
			[ConceptC13M4Button1],
			[IsSheva],
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
			[ConceptFinaleTriggered],
			[IsSheva],
			[ismapc13m4_cutthroatcreek],
			[IsTriggeredBySheva],
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
			[ConceptC13M4FinaleStart2],
			[IsSheva],
			[_auto_IsTalkingSheva],
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
			[ConceptC13M4DownCreek],
			[IsSheva],
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
			[ConceptC13M4InSmoke],
			[IsSheva],
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
			[ConceptC13M4NoticedHelicopter],
			[IsSheva],
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
			[ConceptC13M4AlmostThere],
			[IsSheva],
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
			[ConceptFinalVehicleSpotted],
			[IsSheva],
			[ismapc13m4_cutthroatcreek],
			[_auto_IsFinaleStarted],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptIntroEnd],
			[IsSheva],
			[FromIsSheva],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsSheva],
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
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsSheva],
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
			[ConceptFinaleTriggered],
			[IsSheva],
			[IsTriggeredBySheva],
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
			[ConceptFinalVehicleSpotted],
			[IsSheva],
			[_auto_IsFinaleStarted],
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
			[ConceptFinalVehicleArrived],
			[IsSheva],
			[_auto_HasSpottedVehicle],
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
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[SubjectIsBiker],
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
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[SubjectIsManager],
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
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsSheva],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[SubjectIsTeenGirl],
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
			[ConceptPlayerPourStarted],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsNotScavenge],
			[isC6M3_Port],
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
			[ConceptC6M1_IntotheparkNoHealth],
			[IsSheva],
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
			[ConceptintroC6M1],
			[IsSheva],
			[IsFrancisIntroActor],
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
			[ConceptintroC6M1],
			[IsSheva],
			[IsFrancisIntroActor],
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
			[ConceptintroC6M1],
			[IsSheva],
			[IsZoeyIntroActor],
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
			[ConceptC6M1Intro_05a],
			[IsSheva],
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
			[ConceptC6M1Intro_05c],
			[IsSheva],
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
			[ConceptC6M1Intro_05e],
			[IsSheva],
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
			[ConceptC6M1Intro_06b],
			[IsSheva],
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
			[ConceptC6M1Intro_06d],
			[IsSheva],
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
			[ConceptC6M1Intro_07c],
			[IsSheva],
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
			[ConceptC6M1Intro_09e],
			[IsSheva],
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
			[ConceptC6M1Intro_09f],
			[IsSheva],
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
			[ConceptC6M1Intro_10b],
			[IsSheva],
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
			[ConceptC6M1Intro_10d],
			[IsSheva],
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
			[ConceptC6M1Intro_10e],
			[IsSheva],
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
			[ConceptC6M1Intro_12a],
			[IsSheva],
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
			[ConceptC6M1Intro_12c],
			[IsSheva],
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
			[ConceptC6M1Intro_14d],
			[IsSheva],
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
			[ConceptC6M1Intro_15c],
			[IsSheva],
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
			[ConceptC6M1Intro_17b],
			[IsSheva],
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
			[ConceptC6M1Intro_17d],
			[IsSheva],
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
			[ConceptC6M1Intro_18b],
			[IsSheva],
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
			[ConceptC6M1Intro_18d],
			[IsSheva],
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
			[ConceptC6M1Intro_19b],
			[IsSheva],
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
			[ConceptC6M1Intro_20a],
			[IsSheva],
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
			[ConceptC6M1Intro_20b],
			[IsSheva],
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
			[ConceptC6M1Intro_20d],
			[IsSheva],
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
			[ConceptC6M1Intro_20g],
			[IsSheva],
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
			[ConceptC6M1Intro_22a],
			[IsSheva],
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
			[ConceptC6M1Intro_22c],
			[IsSheva],
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
			[ConceptC6M1Intro_22f],
			[IsSheva],
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
			[ConceptC6M1Intro_22h],
			[IsSheva],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsSheva],
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
			[ConceptRemWorldC6M1_WeddingWarn01],
			[IsSheva],
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
			[ConceptWorldC6M1_HistoricTour],
			[IsSheva],
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
			[ConceptWorldC6M1_PostWedding02a],
			[IsSheva],
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
			[ConceptWorldC6M1_WeddingWarn03b],
			[IsSheva],
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
			[ConceptC6M2_OpenGate1],
			[IsSheva],
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
			[ConceptC6M2_OpenGate2],
			[IsSheva],
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
			[ConceptTalkIdle],
			[Joined3],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo01a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo03a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo03c],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo04a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo06a],
			[IsSheva],
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
			[ConceptC6M2SafeRoom2],
			[IsSheva],
			[IsFrancisIntroActor],
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
			[ConceptDLC1_C6M2_SafeRoomConvo07a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo08b],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo08d],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo08f],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo10a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo10c],
			[IsSheva],
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
			[ConceptC6M2SafeRoom2],
			[IsSheva],
			[IsZoeyIntroActor],
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
			[ConceptDLC1_C6M2_SafeRoomConvo14a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo14c],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo14e],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo15a],
			[IsSheva],
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
			[ConceptC6M2SafeRoom2],
			[IsSheva],
			[IsFrancisIntroActor],
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
			[ConceptDLC1_C6M2_SafeRoomConvo16a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo16c],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo17b],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo18a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo18d],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo19a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo20a],
			[IsSheva],
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
			[ConceptDLC1_C6M2_SafeRoomConvo21a],
			[IsSheva],
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
			[ConceptWorldC6M2_InSewer101a],
			[IsSheva],
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
			[ConceptWorldC6M2_InSewer102b],
			[IsSheva],
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
			[ConceptWorldC6M2_InSewer202a],
			[IsSheva],
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
			[ConceptWorldC6M2_OnTourWalk101a],
			[IsSheva],
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
			[ConceptWorldC6M2_OnTourWalk101b],
			[IsSheva],
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
			[ConceptWorldC6M2_OnTourWalk102b],
			[IsSheva],
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
			[ConceptWorldC6M2_Phase201a],
			[IsSheva],
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
			[ConceptWorldC6M2_Tattoo01a_],
			[IsSheva],
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
			[ConceptWorldC6M2_Tattoo02a_],
			[IsSheva],
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
			[ConceptWorldC6M2_Tattoo02c_],
			[IsSheva],
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
			[ConceptWorldC6M2_Tattoo02d_],
			[IsSheva],
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
			[ConceptWorldC6M2_TourEntrance01a],
			[IsSheva],
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
			[ConceptC6M3_BridgeDown],
			[IsSheva],
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
			[ConceptGetToVehicle],
			[IsSheva],
			[IsNotSaidGetToCar],
			[Isc6m3_port],
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
			[Conceptc6m3_elevatorCancel],
			[IsSheva],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorBiker],
			[Isc6m3_portHeavy],
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
			[ConceptPlayerPickup],
			[IsSheva],
			[IsDonorTeenGirl],
			[Isc6m3_portHeavy],
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
			[ConceptTalkIdle],
			[Joined3],
			[IsSheva],
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
			[ConceptC6M3SafeRoom2],
			[IsSheva],
			[IsNotSaidC6M3SafeRoom2],
			[IsFrancisIntroActor],
			[FrancisGroup3],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo01b],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo02a1],
			[IsSheva],
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
			[ConceptDLC1_C6M3_SafeRoomConvo02c],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo04b],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo04d],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo05c],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo06a],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptC6M3SafeRoom2],
			[IsSheva],
			[IsNotSaidC6M3SafeRoom2],
			[IsZoeyIntroActor],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo07b],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo08g],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptC6M3SafeRoom2],
			[IsSheva],
			[IsNotSaidC6M3SafeRoom2],
			[IsZoeyIntroActor],
			[ZoeyGroup1],
			[IsInStartArea],
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
			[ConceptDLC1_C6M3_SafeRoomConvo09b],
			[IsSheva],
			[IsInStartArea],
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
			[ConceptSurvivorIncapacitated],
			[IsSheva],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
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
			[Conceptc6m3escapeready],
			[IsSheva],
			[IsC6M3_Port],
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
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Isc6m3_port],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Isc6m3_port],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsSheva],
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
			[ConceptPlayerExertionMinor],
			[IsSheva],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidShevaWitchChasing],
			[IsSaidShevaWitchAttacking],
			[isc6m1_riverbank],
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
			[ConceptRemark],
			[IsSheva],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_Intothepark],
			[IsNotSaidWorldC6M1_Intothepark],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_IntoThePark2],
			[IsNotSaidWorldC6M1_IntoThePark2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsMechanicNear800Weight0],
			[IsZoeyIntroActor],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_InSewer2],
			[IsNotSaidWorldC6M2_InSewer2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsSaidWorldC6M2_InSewer1],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_OnTourWalk1],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_OnTourWalk3],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_SafeRoom],
			[IsNotSaidWorldC6M2_SafeRoom],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_Suitcase],
			[IsNotSaidWorldC6M2_Suitcase],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsSheva],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptPlayerPourFinished],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsWorldTalkSheva],
			[Isc6m3_port],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsSheva],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkSheva],
			[IsNotIncapacitated],
			[IsWorldTalkSheva],
			[Isc6m3_port],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpGolfClub],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsSheva],
			[IsPickedUpM60],
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
			[ConceptHistoricTour02b],
			[IsSheva],
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
			[ConceptWeddingWitchDead01],
			[IsSheva],
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
			[ConceptWeddingWitchDead04],
			[IsSheva],
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
			[ConceptTalkIdle],
			[IsSheva],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsGolfClub],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsSheva],
			[IsTalk],
			[IsTalkSheva],
			[IsNotSmartLookAuto],
			[IsM60],
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
			[ConceptAirport02CraneStarted],
			[PanicEventSheva],
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
			[ConceptAirport03FireStarted],
			[PanicEventSheva],
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
			[ConceptC6M3Stairs],
			[IsSheva],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsFrancisIntroActor],
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
			[ConceptC6M3Stairs],
			[IsSheva],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsZoeyIntroActor],
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
