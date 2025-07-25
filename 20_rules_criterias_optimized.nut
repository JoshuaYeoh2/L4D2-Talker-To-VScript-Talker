local jess_cliffe_rules = 
[
	{
		name = "C3M1CallFerryCliffe",
		criteria = 
		[
			["concept", "C3M1CallFerry"],
			["whodidit", "Cliffe"],
			[IsNotSaidC3M1CallFerry2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M1CallFerryCliffe,
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
		name = "C3M2OpenDoorCliffe",
		criteria = 
		[
			["concept", "C3M2OpenDoor"],
			["whodidit", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2OpenDoorCliffe,
				followup = RThen("Cliffe", "C3M2OpenDoor2", { CliffeActor = 1 }, 0.0),
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
			["concept", "c5m4floatstart"],
			["whodidit", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c5m4floatstartCliffe,
				followup = RThen("cliffe", "c5m4floatstart2", null, 0.0),
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["worldsaidc1m1insmoke", 1],
			["map", "c1m1_hotel"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1InSmokeCliffe,
				followup = RThenAny("C1M1Cough", -1.56), // [Coughing from smoke]
			},
		],
	},
	{
		name = "C1M3AlarmOffCliffe",
		criteria = 
		[
			["concept", "C1M3AlarmOff2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3AlarmOffCliffe,
				followup = RThenAny("C1M3AlarmOffa", 0.5), // Got it!
			},
		],
	},
	{
		name = "C1M3AlarmActiveCliffe",
		criteria = 
		[
			["concept", "C1M3AlarmActive"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3AlarmActiveCliffe,
			},
		],
	},
	{
		name = "C4M3SaferoomCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C4M3SaferoomCliffe,
				followup = RThenAny("_c4m3_startsafe02", 0.01), // Okay, everybody gassed up and good to go?
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
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m3_port"],
			["subject", "Biker"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotFrancisC6M3Cliffe,
			},
		],
	},
	{
		name = "PlayerNiceShotFrancisCliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			["subject", "Biker"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotFrancisCliffe,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisC6M3Cliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m3_port"],
			["subject", "Manager"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotLouisC6M3Cliffe,
			},
		],
	},
	{
		name = "PlayerNiceShotLouisCliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			["subject", "Manager"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotLouisCliffe,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisEllisC6M3Cliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerNotSoClose],
			["ismechanicalive", 1],
			[IsMechanicNear800],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m3_port"],
			["subject", "Manager"],
			[ChanceToFire20Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotLouisEllisC6M3Cliffe,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyC6M3Cliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["subject", "TeenGirl"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotZoeyC6M3Cliffe,
			},
		],
	},
	{
		name = "PlayerNiceShotZoeyCliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			["subject", "TeenGirl"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotZoeyCliffe,
			},
		],
	},
	{
		name = "PlayerNiceShotCliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotCliffe,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotCliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
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
				func = Custom_Talker_Cliffe.PlayerNiceShotCliffe,
			},
		],
	},
	{
		name = "PlayerNiceShotCoachCliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			["subject", "Coach"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotCoachCliffe,
			},
		],
	},
	{
		name = "PlayerNiceShotMechanicCliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			["subject", "Mechanic"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotMechanicCliffe,
			},
		],
	},
	{
		name = "PlayerNiceShotProducerCliffe",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "Cliffe"],
			[IssuerClose],
			[IsTalk],
			[IsTalkCliffe],
			[ChanceToFire10Percent],
			[IsWorldTalkCliffe],
			["subject", "Producer"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceShotProducerCliffe,
			},
		],
	},
	{
		name = "SurvivorMournCoachCliffe",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Cliffe"],
			["deadcharacter", "Coach"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournCoachCliffe,
			},
		],
	},
	{
		name = "SurvivorMournCoachC1Cliffe",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Cliffe"],
			["deadcharacter", "Coach"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournCoachC1Cliffe,
			},
		],
	},
	{
		name = "SurvivorMournMechanicCliffe",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Cliffe"],
			["deadcharacter", "Mechanic"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournMechanicCliffe,
			},
		],
	},
	{
		name = "SurvivorMournMechanicC1Cliffe",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Cliffe"],
			["deadcharacter", "Mechanic"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournMechanicC1Cliffe,
			},
		],
	},
	{
		name = "SurvivorMournProducerCliffe",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Cliffe"],
			["deadcharacter", "Producer"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournProducerCliffe,
			},
		],
	},
	{
		name = "SurvivorMournProducerC1Cliffe",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "Cliffe"],
			["deadcharacter", "Producer"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[HasNotDefibrillator],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMournProducerC1Cliffe,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloStartAllAliveCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHelloStartAllAliveCliffe,
				followup = RThen("coach", "_C1M1_ElevatorHello09a", null, 0.1), // Name's Nick. And from the looks of you three, I'm the only one here who knows how to fire a weapon.
			},
		],
	},
	{
		name = "C1M1_ElevatorHelloStart2AliveCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1_ElevatorHelloStart2AliveCliffe,
				followup = RThen("cliffe", "_C1M1_ElevatorHello2AliveNickIntro1", null, 0.1), // I think we just became long shots.
			},
		],
	},
	{
		name = "C1M1_ElevatorHelloStart3AliveCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHelloStart"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["numberofteamalive", 3],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1_ElevatorHelloStart3AliveCliffe,
				followup = RThen("cliffe", "_C1M1_ElevatorHello3AliveNickIntro1", null, -1.859), // There's blood on me, but it ain't mine.
			},
		],
	},
	{
		name = "Playerc1m1_enter_elevatorCliffe",
		criteria = 
		[
			["concept", "c1m1_enter_elevator"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.Playerc1m1_enter_elevatorCliffe,
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
			["concept", "c1m1_elevator_pushbutton"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.Playerc1m1_elevator_pushbuttonCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2PreStoreAlarm"],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M2PreAlarmDoorCliffe,
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
			["concept", "C1M2AlarmDoor2"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C1M2AlarmDoor2Cliffe,
				followup = RThen("orator", "C1M2StoreAlarm", null, 0.3), // Go go go!
			},
		],
	},
	{
		name = "PlayerRemarkC1M2PostAlarmDoorCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M2PostAlarmDoorCliffe,
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
		name = "PlayerC1M2GrabbingColaCliffe",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
			[_auto_NotSaidC1M2GrabbedCola],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2GrabbingColaCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["itempickedup", "ColaBottles"],
			["map", "c1m2_streets"],
			["world_auto_saidc1m2grabbedcola", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2GrabbingCola2Cliffe,
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
			["concept", "C1M2FirstOutsideResponse"],
			["who", "Cliffe"],
			["from", "orator"],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2FirstOutsideResponseCliffe,
				followup = RThen("orator", "C1M2FirstOutsideResponse1", null, -7.877), // So let me get this straight: we get you your shit and you'll help us get to the mall? Right? Okay. You screw us and I will kill you with your own gun.
			},
		],
	},
	{
		name = "PlayerC1M2FirstOutsideResponse3aCliffe",
		criteria = 
		[
			["concept", "C1M2FirstOutsideResponse3a"],
			["who", "Cliffe"],
			["from", "orator"],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2FirstOutsideResponse3aCliffe,
				followup = RThen("orator", "Whitaker.Nags", null, 10.0), // Sure, why not.
			},
		],
	},
	{
		name = "PlayerC1M2FirstOutsideResponse8aCliffe",
		criteria = 
		[
			["concept", "C1M2FirstOutsideResponse8a"],
			["who", "Cliffe"],
			[FromSet1],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC1M2FirstOutsideResponse8aCliffe,
				followup = RThen("coach", "C1M2FirstOutsideResponse8b", null, -1.129), // (to self) I don't believe this guy.
			},
		],
	},
	{
		name = "PlayerC1M2InsideGunShop2Cliffe",
		criteria = 
		[
			["concept", "C1M2InsideGunShop2"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerC1M2InsideGunShop2Cliffe,
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
			["concept", "C3M1CallFerry2"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["cliffeactor", 1],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M1CallFerry2Cliffe,
				followup = RThenAny("C3M1FerryInTransit", 25.0), // We ready?
			},
		],
	},
	{
		name = "PlayerC3M1FerryLandedIdleCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["worldc3m1ferry", 1],
			["incapacitated", 0],
			[IsNotAlone],
			["incombat", 0],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M1FerryLandedIdleCliffe,
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
			["concept", "C3M1FerryLaunched2"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M1FerryLaunched2aCliffe,
			},
		],
	},
	{
		name = "PlayerC3M2ComingHomeCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSafeSpotAhead],
			["worldsaidc3m2village1", 1],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M2ComingHomeCliffe,
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
			["concept", "C3M2OpenDoor2"],
			["who", "Cliffe"],
			[IsTalkCliffe],
			["cliffeactor", 1],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M2OpenDoor2Cliffe,
			},
		],
	},
	{
		name = "Playerc5m4floatendCliffe",
		criteria = 
		[
			["concept", "c5m4floatend2"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Playerc5m4floatendCliffe,
			},
		],
	},
	{
		name = "Playerc5m4floatstart2Cliffe",
		criteria = 
		[
			["concept", "c5m4floatstart2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Playerc5m4floatstart2Cliffe,
			},
		],
	},
	{
		name = "PlayerintroC1M1Cliffe",
		criteria = 
		[
			["concept", "introC1M1"],
			["who", "Cliffe"],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerintroC1M1Cliffe,
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
		name = "WhitakerC1M2DeliverColaCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.WhitakerC1M2DeliverColaCliffe,
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
		name = "PlayerPlayerUsingColaBottlesCliffe",
		criteria = 
		[
			["concept", "PlayerUsingColaBottles"],
			["who", "Cliffe"],
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
			["concept", "RelaxedSigh"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRelaxedSighCliffe,
			},
		],
	},
	{
		name = "PlayerStayTogetherInsideReponseCliffe",
		criteria = 
		[
			["concept", "StayTogetherInsideReponse"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerStayTogetherInsideReponseCliffe,
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
			["concept", "UseAdrenaline"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerUseAdrenalineCliffe,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingC01Cliffe",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingC01"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingC01Cliffe,
				followup = RThen("producer", "WorldC3M1FerryCrossingC02", null, -2.763), // What, alive infected or alive and not zombies?
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingC03Cliffe",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingC03"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingC03Cliffe,
				followup = RThen("producer", "WorldC3M1FerryCrossingC04", null, -0.946), // 100 to 1.
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingD03Cliffe",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingD03"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingD03Cliffe,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingE03Cliffe",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingE03"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingE03Cliffe,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG02Cliffe",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingG02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingG02Cliffe,
				followup = RThen("coach", "WorldC3M1FerryCrossingG03", null, -2.315), // Wow, Coach, that was uplifting. (sarcastically)
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG04Cliffe",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingG04"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingG04Cliffe,
			},
		],
	},
	{
		name = "PlayerWorldC3M1FerryCrossingI01Cliffe",
		criteria = 
		[
			["concept", "WorldC3M1FerryCrossingI01"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldC3M1FerryCrossingI01Cliffe,
				followup = RThen("mechanic", "WorldC3M1FerryCrossingI02", null, -1.929), // You did?  Really?
			},
		],
	},
	{
		name = "ThanksGotItemCliffe",
		criteria = 
		[
			["concept", "Award"],
			["awardname", "Sharing"],
			["coughing", 0],
			["who", "Cliffe"],
			["subject", "Cliffe"],
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
			["concept", "Award"],
			["awardname", "Rescuer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RescuedSurvivorCliffe,
			},
		],
	},
	{
		name = "PlayerGivenItemCliffe",
		criteria = 
		[
			["concept", "PlayerGivenItem"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGivenItemCliffe,
			},
		],
	},
	{
		name = "ItemDonorCoachCliffe",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "Coach"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorCoachCliffe,
				followup = RThen("coach", "YouAreWelcome", null, 0.0), // Thanks bro.
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "Mechanic"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorMechanicCliffe,
				followup = RThen("mechanic", "YouAreWelcome", null, 0.0), // Thanks killer.
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "Producer"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorProducerCliffe,
				followup = RThen("producer", "YouAreWelcome", null, 0.0), // Thanks Ro.
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "Biker"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorBikerCliffe,
				followup = RThen("biker", "YouAreWelcome", null, 0.0), // Shit, thanks!
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "TeenGirl"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorTeenGirlCliffe,
				followup = RThen("teengirl", "YouAreWelcome", null, 0.0), // Thanks, Zoey!
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "Manager"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorManagerCliffe,
				followup = RThen("manager", "YouAreWelcome", null, 0.0), // Shit, thanks!
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "NamVet"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ItemDonorNamVetCliffe,
				followup = RThen("namvet", "YouAreWelcome", null, 0.0), // Shit, thanks!
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
			["concept", "ReviveMeInterrupted"],
			["who", "Cliffe"],
			[IsIncappedStarted],
			[IsIncappedStarted2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveMeInterruptedMinorCliffe,
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
			["concept", "ReviveMeInterrupted"],
			["who", "Cliffe"],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveMeInterruptedMajorCliffe,
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
			["concept", "ReviveMeInterrupted"],
			["who", "Cliffe"],
			[IsIncappedLethargic],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveMeInterruptedCriticalCliffe,
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksCliffe,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks.
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["subject", "Coach"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksCoachCliffe,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks bro.
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["subject", "Mechanic"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksMechanicCliffe,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks killer.
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["subject", "Producer"],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksProducerCliffe,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks Ro.
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["subject", "Producer"],
			[ChanceToFire30Percent],
			["map", "c1m1_hotel"],
			["worldknownames", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksProducerCliffe,
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["subject", "Biker"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksBikerCliffe,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks bro.
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["subject", "TeenGirl"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksTeenGirlCliffe,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks, Zoey!
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
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["subject", "Manager"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ReviveThanksManagerCliffe,
				followup = RThen("subject", "YouAreWelcome", null, 0.0), // Thanks, Louis!
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
			["concept", "YouWelcome"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.AutoYouAreWelcomeCliffe,
			},
		],
	},
	{
		name = "AutoYouAreWelcomeC1Cliffe",
		criteria = 
		[
			["concept", "YouWelcome"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
			[NoKnowNames],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.AutoYouAreWelcomeC1Cliffe,
			},
		],
	},
	{
		name = "BotPlayer_YourWelcomeCliffe",
		criteria = 
		[
			["concept", "SurvivorBotYouAreWelcome"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotPlayer_YourWelcomeCliffe,
			},
		],
	},
	{
		name = "BotPlayer_YourWelcomeC1Cliffe",
		criteria = 
		[
			["concept", "SurvivorBotYouAreWelcome"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotPlayer_YourWelcomeC1Cliffe,
			},
		],
	},
	{
		name = "BotReassureComingCliffe",
		criteria = 
		[
			["concept", "SurvivorBotReassureComing"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotReassureComingCliffe,
			},
		],
	},
	{
		name = "BotReassureNearbyCliffe",
		criteria = 
		[
			["concept", "SurvivorBotReassureNearby"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotReassureNearbyCliffe,
			},
		],
	},
	{
		name = "BotYesReadyCliffe",
		criteria = 
		[
			["concept", "SurvivorBotYesReady"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotYesReadyCliffe,
			},
		],
	},
	{
		name = "C1M2LeavingSafeRoomCliffe",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Cliffe"],
			[IsNotSaidLeavingSafeArea],
			["map", "c1m2_streets"],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2LeavingSafeRoomCliffe,
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
			["concept", "C1M2SafeRoomb1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomb1Cliffe,
				followup = RThen("coach", "C1M2SafeRoomb2", null, -1.777), // I guess living here's finally paying off.
			},
		],
	},
	{
		name = "C1M2SafeRoomb2Cliffe",
		criteria = 
		[
			["concept", "C1M2SafeRoomb2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomb2Cliffe,
				followup = RThen("coach", "C1M2SafeRoomb2", null, -1.355), // Shouldn't you be eating?
			},
		],
	},
	{
		name = "C1M2SafeRoomb3Cliffe",
		criteria = 
		[
			["concept", "C1M2SafeRoomb3"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomb3Cliffe,
				followup = RThen("producer", "C1M2SafeRoomb3", null, 0.01), // Hm. This'd be really awkward if I gave a shit about your feelings.
			},
		],
	},
	{
		name = "C1M2SafeRoomc2Cliffe",
		criteria = 
		[
			["concept", "C1M2SafeRoomc2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomc2Cliffe,
				followup = RThen("coach", "C1M2SafeRoomb2", null, 0.1), // Jesus, are you FROM here? Ugh, look at you. That is so depressing.
			},
		],
	},
	{
		name = "C1M2SafeRoomd1Cliffe",
		criteria = 
		[
			["concept", "C1M2SafeRoomd1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2SafeRoomd1Cliffe,
				followup = RThen("producer", "C1M2SafeRoomd2", null, -1.03), // Now we're talking.
			},
		],
	},
	{
		name = "C1M2TankerAttackCliffe",
		criteria = 
		[
			["concept", "C1M2TankerAttack2"],
			["who", "Cliffe"],
			["worldwhoputcola", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2TankerAttackCliffe,
				followup = RThen("orator", "C1M2GoodLuckGettingToTheMall", null, 3.0), // Barrier's down! Let's get out of here.
			},
		],
	},
	{
		name = "c1m4escapeCliffe",
		criteria = 
		[
			["concept", "c1m4escape"],
			["who", "Cliffe"],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4escapeCliffe,
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
			["concept", "c1m4escape"],
			["who", "Cliffe"],
			["ismechanicalive", 1],
			[ChanceToFire50Percent],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4escapeEllisCliffe,
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
		name = "c1m4escapeEllisSuccessCliffe",
		criteria = 
		[
			["concept", "c1m4escapeEllisCheckSuccess"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4escapeEllisSuccessCliffe,
			},
		],
	},
	{
		name = "c1m4escapeEllisFailCliffe",
		criteria = 
		[
			["concept", "c1m4escapeEllisCheckFail"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4escapeCliffe,
			},
		],
	},
	{
		name = "C1M4GasPourCliffe",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4GasPourCliffe,
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4PlayerGetToRescueVehicleCliffe,
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
			["concept", "c1m4startelevator"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4startelevatorCliffe,
				followup = RThen("mechanic", "_c1m4startelevator2a", null, -2.415), // CEDA's not gonna save us, any ideas?
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
			["concept", "PlayerPourStarted"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			["map", "c6m3_port"],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3GasPourCliffe,
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
			["concept", "FinaleTriggered"],
			["who", "Cliffe"],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m4_atrium"],
			[IsNotScavenge],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.FinaleStartC1M4Cliffe,
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
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			["map", "c1m4_atrium"],
			["towin", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourDoneC1M4Cliffe,
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
			["concept", "_C2M2_Riders01"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Riders01Cliffe,
				followup = RThen("mechanic", "_C2M2_Riders04", null, 0.1), // Never heard of 'em. They any good?
			},
		],
	},
	{
		name = "C2M2CarouselIdleCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			["map", "c2m2_fairgrounds"],
			[IsNotSaidSafeSpotAhead],
			[IsNotInSafeSpot],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M2CarouselIdleCliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_teamnearcoaster", 1],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			["world_auto_coasterexpo", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3RubbleNagIdleCliffe,
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
			["concept", "c2m3downhole"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m3_DownHoleCliffe,
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
			["concept", "c2m3CoasterEnd"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m3CoasterEndCliffe,
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
			["concept", "C2M3CoasterRunGo"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3CoasterRunGoCliffe,
			},
		],
	},
	{
		name = "C2M3CoasterStartCliffe",
		criteria = 
		[
			["concept", "c2m3CoasterStart"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3CoasterStartCliffe,
				followup = RThen("mechanic", "_c2m3_howcool", null, 1.0), // I hit it!
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
			["concept", "PlayerSpotWeapon"],
			["weaponname", "UpgradePack_Incendiary"],
			["who", "Cliffe"],
			[IsTalk],
			["incombat", 0],
			["map", "c2m3_coaster"],
			[_auto_NotOutOfTunnel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m3SpotIncendiaryCliffe,
			},
		],
	},
	{
		name = "c2m3SeeChopperCliffe",
		criteria = 
		[
			["concept", "C2M3SeeChopper"],
			["who", "Cliffe"],
			[IsTalk],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m3SeeChopperCliffe,
				followup = RThenAny("C2M3Chopper001", 0.01), // Look!
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
			["concept", "C2M4ButtonPressed"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M4ButtonPressedCliffe,
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
			["concept", "C2M4Gate000"],
			["who", "Cliffe"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargate", 1],
			[_auto_NotNearGateNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M4Gate000Cliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["incapacitated", 0],
			["map", "c2m4_barns"],
			["incombat", 0],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_neargatenag", 1],
			["world_auto_neargate", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M4GateIdleCliffe,
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
			["concept", "C2M4GateOpenCallout"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M4GateOpenCalloutCliffe,
				followup = RThenAny("_C2M4_GateOpen001", 0.01), // Gate's open!
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
			["concept", "C2M4SeeChopper"],
			["who", "Cliffe"],
			[IsTalk],
			["incombat", 0],
			["coughing", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m4SeeChopperCliffe,
			},
		],
	},
	{
		name = "c2m5_intro003Cliffe",
		criteria = 
		[
			["concept", "c2m5_intro003"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro003Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Unless someone has a better idea, let's rock.
			},
		],
	},
	{
		name = "c2m5_intro004Cliffe",
		criteria = 
		[
			["concept", "c2m5_intro004"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro003Cliffe,
			},
		],
	},
	{
		name = "c2m5_intro008Cliffe",
		criteria = 
		[
			["concept", "c2m5_intro008"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro003Cliffe,
			},
		],
	},
	{
		name = "c2m5_intro011Cliffe",
		criteria = 
		[
			["concept", "c2m5_intro011"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro011Cliffe,
				followup = RThenAny("c2m5_intro012", 0.1), // Coach, that is about the stupidest idea I have ever agreed with.
			},
		],
	},
	{
		name = "c2m5_intro015Cliffe",
		criteria = 
		[
			["concept", "c2m5_intro015"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro011Cliffe,
			},
		],
	},
	{
		name = "c2m5_intro020Cliffe",
		criteria = 
		[
			["concept", "c2m5_intro020"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c2m5_intro020Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Unless someone has a better idea, let's rock.
			},
		],
	},
	{
		name = "C2M5Button1Cliffe",
		criteria = 
		[
			["concept", "c2m5Button1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5Button1Cliffe,
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[IsRocking],
			["map", "c2m5_concert"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			["world_auto_concertlive", 1],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorReloadingC2M5Cliffe,
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotZombiePresentTank],
			[IsNotSpeaking],
			[IsRocking],
			["map", "c2m5_concert"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsRocking],
			[IsWorldTalkCliffe],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
			[_auto_NotRockingOut],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeLookOutC2M5Cliffe,
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsRocking],
			[IsWorldTalkCliffe],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
			["world_auto_rockingout", 1],
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkCliffe],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5ReloadingTankCliffe,
				followup = RThen("coach", "C2M5ConcertTankResponse", null, 0.1), // We need to kill the Tank!
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c2m5_concert"],
			["world_auto_concertlive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankConfirmationC2M5Cliffe,
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
			["concept", "C2M5_Button2Yell"],
			["who", "Cliffe"],
			[NotCoachMadAtRiders],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_Button2YellCliffe,
			},
		],
	},
	{
		name = "C2M5_Button2YellCoachMadCliffe",
		criteria = 
		[
			["concept", "C2M5_Button2Yell"],
			["who", "Cliffe"],
			["worldcoachmadatriders", 1],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_Button2YellCliffe,
			},
		],
	},
	{
		name = "C2M5_ChoppercomingCliffe",
		criteria = 
		[
			["concept", "C2M5_Choppercoming"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_ChoppercomingCliffe,
				followup = RThenAny("C2M5_PlanWorked", 0.01), // There's the copter!
			},
		],
	},
	{
		name = "C2M5_PlanWorkedCliffe",
		criteria = 
		[
			["concept", "C2M5_PlanWorked"],
			["who", "Cliffe"],
			[NotCoachMadAtRiders],
			["incapacitated", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_PlanWorkedCliffe,
			},
		],
	},
	{
		name = "C2M5_PlanWorkedCoachMadCliffe",
		criteria = 
		[
			["concept", "C2M5_PlanWorked"],
			["who", "Cliffe"],
			["worldcoachmadatriders", 1],
			["incapacitated", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5_PlanWorkedCliffe,
			},
		],
	},
	{
		name = "C2M5ChopperNagCliffe",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5ChopperNagCliffe,
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5InChopperNagCliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["incombat", 0],
			["map", "c2m5_concert"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			["world_auto_c2m5inarena", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5InArenaNagCliffe,
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
			["concept", "C2M5ChopperOCD"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsNotInRescueVehicle],
			[NickOCD],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M5ChopperOCDCliffe,
				followup = RThen("self", "C2M5ChopperOCD", { from = "Cliffe" }, 0.0),
			},
		],
	},
	{
		name = "C2M3SaferoomCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C2M3SaferoomCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // This is the most RELAXING safe room I've ever been in.
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
			["concept", "C2M3SafeIntro007"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro007Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Did you see the sign out front?  Cousins only day today.
			},
		],
	},
	{
		name = "C2M3SafeIntro009Cliffe",
		criteria = 
		[
			["concept", "C2M3SafeIntro009"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro009Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Not cool, Rochelle.
			},
		],
	},
	{
		name = "C2M3SafeIntro010Cliffe",
		criteria = 
		[
			["concept", "C2M3SafeIntro010"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro010Cliffe,
				followup = RThen("coach", "C2M3SafeIntro010", null, 0.3), // No holding hands, please.
			},
		],
	},
	{
		name = "C2M3SafeIntro012Cliffe",
		criteria = 
		[
			["concept", "C2M3SafeIntro012"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro012Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Psh! Huh. Several. Easily.
			},
		],
	},
	{
		name = "C2M3SafeIntro013Cliffe",
		criteria = 
		[
			["concept", "C2M3SafeIntro013"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M3SafeIntro013Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Alright, but keep your hands to yourself.
			},
		],
	},
	{
		name = "C3GoingToDieCliffe",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C3GoingToDieCliffe,
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
			["concept", "C3M1FerryEnd2"],
			["who", "Cliffe"],
			[IsNotSaidC3M1FerryEnd],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M1FerryEnd2Cliffe,
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
			["concept", "WorldC3M1FerryCrossingM3"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC3M1FerryCrossingM3Cliffe,
				followup = RThen("mechanic", "WorldC3M1FerryCrossingM4", null, 0.01), // Yes.
			},
		],
	},
	{
		name = "C3M2DisgustCliffe",
		criteria = 
		[
			["concept", "c3m2disgust"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2DisgustCliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["incombat", 0],
			["map", "c3m2_swamp"],
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
				func = Custom_Talker_Cliffe.C3M2SafeRoomCliffe,
				followup = RThen("cliffe", "C3M2SafeRoomb2", null, 0.01), // These swamps don't agree with me.
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
			["concept", "C3M2SafeRoom3d"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2SafeRoom3dCliffe,
			},
		],
	},
	{
		name = "C3M2SafeRoomb2Cliffe",
		criteria = 
		[
			["concept", "C3M2SafeRoomb2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M2SafeRoomb2Cliffe,
				followup = RThen("mechanic", "C3M2SafeRoomb3", null, 0.01), // This swamp is just a cesspool for disease.
			},
		],
	},
	{
		name = "C3M3SafeRoomCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["incombat", 0],
			["map", "c3m3_shantytown"],
			["instartarea", 1],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M3SafeRoomCliffe,
				followup = RThen("mechanic", "C3M3SafeRoom2d2", null, 0.05), // The swamp people didn't make it.
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
			["concept", "InfoRemC3M3LowerGatea"],
			["who", "Cliffe"],
			[IsNotSaidC3M3BridgeButton],
			[IntensityUnder25],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.InfoRemC3M3LowerGateaCliffe,
			},
		],
	},
	{
		name = "InfoRemC3M3Unsanitarya2Cliffe",
		criteria = 
		[
			["concept", "InfoRemC3M3Unsanitarya2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.InfoRemC3M3Unsanitarya2Cliffe,
			},
		],
	},
	{
		name = "C3M4BoatNagsCliffe",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4BoatNagsCliffe,
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4InBoatNagsCliffe,
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
			["concept", "C3M4Button1A"],
			["who", "Cliffe"],
			["from", "orator"],
			["world_auto_talkingcliffe", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4Button1ACliffe,
				followup = RThen("orator", "C3M4Button101", null, 0.3), // Hello!
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer4Cliffe",
		criteria = 
		[
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Cliffe"],
			["from", "orator"],
			[IsEveryoneAlive],
			["world_auto_talkingcliffe", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4ButtonHowManyAnswer4Cliffe,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // There's four of us.
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer3Cliffe",
		criteria = 
		[
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Cliffe"],
			["from", "orator"],
			["numberofteamalive", 3],
			["world_auto_talkingcliffe", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4ButtonHowManyAnswer3Cliffe,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // Only three of us left.
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer2Cliffe",
		criteria = 
		[
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Cliffe"],
			["from", "orator"],
			["numberofteamalive", 2],
			["world_auto_talkingcliffe", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4ButtonHowManyAnswer2Cliffe,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // There's two of us.
			},
		],
	},
	{
		name = "C3M4ButtonHowManyAnswer1Cliffe",
		criteria = 
		[
			["concept", "C3M4ButtonHowManyAnswer"],
			["who", "Cliffe"],
			["from", "orator"],
			["numberofteamalive", 1],
			["world_auto_talkingcliffe", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4ButtonHowManyAnswer1Cliffe,
				followup = RThen("orator", "C3M4Button102", null, 0.3), // Just me.
			},
		],
	},
	{
		name = "C3M4Button201Cliffe",
		criteria = 
		[
			["concept", "C3M4Button201"],
			["who", "Cliffe"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcliffe", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4Button201Cliffe,
				followup = RThen("orator", "C3M4Button202", null, 0.01), // I don't know, some plantation?
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
			["concept", "C3M4Button203"],
			["who", "Cliffe"],
			["world_auto_talkingcliffe", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4Button203Cliffe,
				followup = RThen("orator", "C3M4Button202", null, 0.01), // Nothing, nothing, we're at a plantation.
			},
		],
	},
	{
		name = "C3M4Button202Cliffe",
		criteria = 
		[
			["concept", "C3M4Button202"],
			["who", "Cliffe"],
			["from", "orator"],
			["world_auto_talkingcliffe", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4Button202Cliffe,
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
			["concept", "C3M4GateBlow01"],
			["who", "Cliffe"],
			["from", "orator"],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M4GateBlow01Cliffe,
				followup = RThen("orator", "C3M4GateBlow02", null, 0.01), // Our Cajun buddy blew open the gate, let's go!
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C4GoingToDieCliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			[ChanceToFire30Percent],
			["incapacitated", 0],
			[_auto_NotTimerLockA],
			["world_auto_timera", 1],
			[_auto_NotC4CliffeInCover],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4StormBlindIdleCliffe,
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
			["concept", "_c4m1Intro20"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro20Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // The gas station's right across the street. Let's just get the gas and then we'll figure out how to signal Virgil.
			},
		],
	},
	{
		name = "_c4m1Intro23Cliffe",
		criteria = 
		[
			["concept", "_c4m1Intro23"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro23Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // What gun bag?
			},
		],
	},
	{
		name = "C4M2IdleWitchville03Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incombat", 0],
			[IsWorldTalkCliffe],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			["world_auto_cliffeinwitchville", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M2IdleWitchville03Cliffe,
				followup = RThenAny("_c4m2_Witchville05", 0.01), // Jesus. Welcome to witchville...
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
			["concept", "c4m2_elevator_top_button"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M2PushedButtonCliffe,
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M5BoatNagsCliffe,
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M5InBoatNagsCliffe,
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsCampaign5],
		],
		//forceweight 200
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5GoingToDieCliffe,
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Cliffe"],
			["onthirdstrike", 1],
			[IsNotSaidGoingToDieC5M5],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			["map", "c5m5_bridge"],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 200
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5GoingToDieCliffe,
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
			["concept", "C5M1_intro002"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1_intro002Cliffe,
				followup = RThen("orator", "C5M1_intro003", null, 0.01), // You're all right, Virgil.
			},
		],
	},
	{
		name = "C5M1_intro004Cliffe",
		criteria = 
		[
			["concept", "C5M1_intro004"],
			["who", "Cliffe"],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1_intro004Cliffe,
				followup = RThen("self", "C5M1_intro004", null, 0.2), // Okay, so we're on the wrong side of the river.
			},
		],
	},
	{
		name = "C5M1_intro006Cliffe",
		criteria = 
		[
			["concept", "C5M1_intro006"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1_intro006Cliffe,
				followup = RThen("producer", "C5M1_intro010", null, 0.2), // You mean that blurry line on the horizon? Let's not get ahead of ourselves here.
			},
		],
	},
	{
		name = "C5M1_intro007Cliffe",
		criteria = 
		[
			["concept", "C5M1_intro007"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1_intro007Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Yeah, well, seeing the bridge and getting to it are two different things.
			},
		],
	},
	{
		name = "C5M1Flyby01Cliffe",
		criteria = 
		[
			["concept", "C5M1Flyby01"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1Flyby01Cliffe,
				followup = RThenAny("C5M1Flyby02", 0.1), // Whoa! Military's still here.
			},
		],
	},
	{
		name = "C5M1Flyby02Cliffe",
		criteria = 
		[
			["concept", "C5M1Flyby02"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M1Flyby02Cliffe,
				followup = RThenAny("C5M1Flyby03", 0.01), // I wonder if that's good news...
			},
		],
	},
	{
		name = "C5M2AlarmNagCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["map", "c5m2_park"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			["world_auto_alarm", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M2AlarmNagCliffe,
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
			["concept", "C5M2Freeway01"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M2Freeway01Cliffe,
			},
		],
	},
	{
		name = "C5M2Horse001Cliffe",
		criteria = 
		[
			["concept", "C5M2Horse001"],
			["who", "Cliffe"],
			[IsSubjectNear300],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsNotScavenge],
			[TimeSinceGroupInCombat02],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M2Horse001Cliffe,
			},
		],
	},
	{
		name = "PlayerRemarkc5m2busstationCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m2busstation"],
			[IsNotSaidc5m2busstation],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_dooropen", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m2busstationCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m2freeway"],
			[IsNotSaidc5m2freeway],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m2freewayCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m2park"],
			[IsNotSaidc5m2park],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m2parkCliffe,
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
			["concept", "WorldC502Horse2"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502Horse2Cliffe,
				followup = RThen("Mechanic", "WorldC502Horse3", null, -1.828), // You ever eat horse?  Tasty. (Ellis - wish we had horses. )
			},
		],
	},
	{
		name = "C5M3AlarmFieldNagsCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C5M3AlarmFieldNagsCliffe,
				followup = RThen("self", "C5M3AlarmFieldNags01", null, 0.1), // Do you still smell sewer?
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
			["concept", "C5M3AlarmFieldNags01"],
			["who", "Cliffe"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_inalarmfield", 1],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3AlarmFieldNags01Cliffe,
			},
		],
	},
	{
		name = "C5M3AlarmFieldNags02Cliffe",
		criteria = 
		[
			["concept", "C5M3AlarmFieldNags02"],
			["who", "Cliffe"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3AlarmFieldNags02Cliffe,
				followup = RThen("Mechanic", "C5M3AlarmFieldNags03", null, 0.1), // Your mom's car.
			},
		],
	},
	{
		name = "C5M3Bodies02Cliffe",
		criteria = 
		[
			["concept", "C5M3Bodies02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Bodies02Cliffe,
				followup = RThenAny("C5M3Bodies03", 0.1), // Somebody? Christ, Coach, you know who did this.
			},
		],
	},
	{
		name = "C5M3Bodies04Cliffe",
		criteria = 
		[
			["concept", "C5M3Bodies04"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Bodies04Cliffe,
			},
		],
	},
	{
		name = "C5M3FirstInAlarmCliffe",
		criteria = 
		[
			["concept", "C5M3FirstInAlarmField"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3FirstInAlarmCliffe,
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
			["concept", "C5M3Freeway01"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Freeway01Cliffe,
			},
		],
	},
	{
		name = "C5M3GraveNagsCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C5M3GraveNagsCliffe,
				followup = RThen("mechanic", "_C5M3SmallFavors", null, 0.1), // Well thank God for small favors.
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
			["concept", "C5M3GraveNags01"],
			["who", "Cliffe"],
			["incombat", 0],
			["coughing", 0],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3GraveNags01Cliffe,
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
			["concept", "C5M3GraveNags02"],
			["who", "Cliffe"],
			["incombat", 0],
			["coughing", 0],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3GraveNags02Cliffe,
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
			["concept", "c5m3Jets2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Jets2Cliffe,
				followup = RThen("mechanic", "C5M3StopZombies", null, 0.1), // They're blowing up the bridge!
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
			["concept", "C5M3StopZombies"],
			["who", "Cliffe"],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3StopZombiesCliffe,
			},
		],
	},
	{
		name = "C5M3manhole01Cliffe",
		criteria = 
		[
			["concept", "C5M3manhole01"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3manhole01Cliffe,
			},
		],
	},
	{
		name = "C5M3OnBridgeCliffe",
		criteria = 
		[
			["concept", "c5m3OnBridge"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3OnBridgeCliffe,
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
			["concept", "C5M3SeeGraveyard01"],
			["who", "Cliffe"],
			[IssuerClose],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3SeeGraveyard01Cliffe,
				followup = RThen("coach", "C5M3SeeGraveyard02", null, 0.01), // You sure we shouldn't just panic? I mean, I think panic was invented for just this sort of situation.
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
			["concept", "C5M3SeeGraveyard05"],
			["who", "Cliffe"],
			[IssuerClose],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3SeeGraveyard05Cliffe,
				followup = RThen("mechanic", "C5M3SeeGraveyard06", null, 0.01), // Ellis, you're carrying like 10 different guns.
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
			["concept", "C5M3SewerIn01"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3SewerIn01Cliffe,
			},
		],
	},
	{
		name = "C5M3ShootCarCliffe",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			["subject", "Cliffe"],
			["panictype", "CarAlarm"],
			["world_auto_inalarmfield", 1],
			[_auto_NotAlarmFieldOn],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3ShootCarCliffe,
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
			["concept", "PanicEvent"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotCliffe],
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
				func = Custom_Talker_Cliffe.C5M3ShootCar2Cliffe,
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
		name = "C5M3ShootCar3Cliffe",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["map", "c5m3_cemetery"],
			[SubjectIsNotCliffe],
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
				func = Custom_Talker_Cliffe.C5M3ShootCar3Cliffe,
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
		name = "C5M3Sniper01Cliffe",
		criteria = 
		[
			["concept", "C5M3Sniper01"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectDistNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M3Sniper01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3bodies"],
			["incombat", 0],
			[IsSubjectNear100],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3bodiesCliffe,
				followup = RThenAny("C5M3Bodies01", 0.01), // Jesus. These are people! They were shooting people. I told you I had a bad feeling about this.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m2peopleCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m2people"],
			[IsNotSaidc5m2people],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3bus"],
			[IsNotSaidc5m3bus],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3busCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3crashedheli"],
			[IsNotSaidc5m3crashedheli],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3crashedheliCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3freeway"],
			[IsNotSaidc5m3freeway],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3freewayCliffe,
				followup = RThenAny("C5M3Freeway01", -1.564), // We gotta keep following the freeway.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3insewer"],
			[IsNotSaidc5m3insewer],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3insewerCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3manhole"],
			[IsNotSaidc5m3manhole],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3manholeCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3offhighwayCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3safezoneCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3seegraveyard"],
			[IsNotSaidc5m3seegraveyard],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3seegraveyardCliffe,
				followup = RThen("coach", "C5M3SeeGraveyard03", null, 0.1), // They're blowing this bridge to cover a retreat. If we wanna go with 'em, we better hurry.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3sewercomment"],
			[IsNotSaidc5m3sewercomment],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			["iscliffealive", 1],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sewercommentCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3sewercomment"],
			[IsNotSaidc5m3sewercomment],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			["iscliffealive", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3sniper"],
			[IsNotSaidc5m3sniper],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sniperCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3sniper"],
			[IsNotSaidc5m3sniper],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			["iscoachalive", 1],
			[IsCoachNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sniperCoachCliffe,
				followup = RThen("coach", "C5M3Sniper01", null, 0.1), // Do you think he was keeping track of zombies?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3sniper"],
			[IsNotSaidc5m3sniper],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			["isproduceralive", 1],
			[IsProducerNear400],
			[ChanceToFire25Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 3
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sniperRochelleCliffe,
				followup = RThen("producer", "C5M3Sniper01", null, 0.1), // Jesus, it was open season on everything out here.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3sniper"],
			[IsNotSaidc5m3sniper],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			[ChanceToFire10Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 4
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3sniperEllisCliffe,
				followup = RThen("mechanic", "C5M3Sniper01", null, 0.1), // Well, this is bad.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3upladder"],
			[IsNotSaidc5m3upladder],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upladderCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3upsteps"],
			[IsNotSaidc5m3upsteps],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upstepsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m3warzone"],
			[IsNotSaidc5m3warzone],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3warzoneCliffe,
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
			["concept", "C5M4BombExt"],
			["who", "Cliffe"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombExtCliffe,
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
			["concept", "C5M4BombInt"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NoAirstrikes],
			[AutoAirstrikeIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombInt01Cliffe,
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
		name = "C5M4BombInt01ACliffe",
		criteria = 
		[
			["concept", "C5M4BombIntA"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4BombInt01ACliffe,
			},
		],
	},
	{
		name = "C5M4BombInt02Cliffe",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C5M4BombInt02Cliffe,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 2.002 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombInt03Cliffe",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C5M4BombInt03Cliffe,
				followup = RThen("Mechanic", "C5M4JetPlanes", null, 0.01), // STOP BOMBING US!
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.654 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4BombIntManyCliffe",
		criteria = 
		[
			["concept", "C5M4BombInt"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C5M4BombInt03Cliffe,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 1.654 },
			//: _auto_Airstrike:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "C5M4JetPlanesCliffe",
		criteria = 
		[
			["concept", "C5M4JetPlanes"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M4JetPlanesCliffe,
			},
		],
	},
	{
		name = "PlayerRemarkc5m4alleyCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m4alley"],
			[IsNotSaidc5m4alley],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4alleyCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m4inminifinale"],
			[IsNotSaidc5m4inminifinale],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4inminifinaleCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m4pooltable"],
			[IsNotSaidc5m4pooltable],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4pooltableCliffe,
				followup = RThen("mechanic", "C5M4PoolTable", null, 0.0), // Okay, anyone up for a game?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m4pooltable"],
			[IsNotSaidc5m4pooltable],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c5m4seebridge"],
			[IsNotSaidc5m4seebridge],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4seebridgeCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C5M4TractorNag"],
			[IsNotSaidc5m4tractornag],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4tractornagCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C5M4TractorNag"],
			[IsNotSaidc5m4tractornag],
			["coughing", 0],
			["incombat", 0],
			["ismechanicalive", 1],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m4tractornagEllisCliffe,
				followup = RThen("mechanic", "C5M4Tractor", null, 0.01), // Look Ellis!  A tractor!
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Cliffe"],
			[IsNotSaidLeavingSafeArea],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptCliffe,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.5), // Ellis... Ellis. ELLIS!
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptGenericCliffe,
				followup = RThen("mechanic", "EllisStoryReac01", null, 0.01), // Ellis. Is now the best time?
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["map", "c1m2_streets"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC1M2Cliffe,
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["map", "c1m3_mall"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC1M3Cliffe,
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["map", "c2m5_concert"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC2M5Cliffe,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01), // Ellis-why don't you tell us this in the chopper?
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["map", "c3m2_swamp"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptGenericCliffe,
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["map", "c4m3_sugarmill_b"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC4M3Cliffe,
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["map", "c4m4_milltown_b"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC4M4Cliffe,
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["map", "c5m2_park"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC5M2Cliffe,
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
			["concept", "EllisInterrupt"],
			["who", "Cliffe"],
			["map", "c5m5_bridge"],
			["world_auto_tellingstory", 1],
			[_auto_NotDidInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EllisStoryInterruptC5M5Cliffe,
				followup = RThen("Mechanic", "EllisStoryReac01", null, 0.01), // Ellis. If I listen to this, will this be the last one?
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
			["concept", "C5M5_Button2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_Button2Cliffe,
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
			["concept", "C5M5_GateDown"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_GateDownCliffe,
			},
		],
	},
	{
		name = "C5M5_saferoom001Cliffe",
		criteria = 
		[
			["concept", "C5M5_saferoom001"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_saferoom001Cliffe,
				followup = RThenAny("C5M5_saferoom005", 0.1), // Or they're gonna line us up against a wall and shoot us.
			},
		],
	},
	{
		name = "C5M5_saferoom003Cliffe",
		criteria = 
		[
			["concept", "C5M5_saferoom003"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_saferoom003Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Oh yeah.
			},
		],
	},
	{
		name = "C5M5_saferoom004Cliffe",
		criteria = 
		[
			["concept", "C5M5_saferoom004"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_saferoom003Cliffe,
			},
		],
	},
	{
		name = "C5M5_SurvivorConv01Cliffe",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv01"],
			["who", "Cliffe"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcliffe", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv01Cliffe,
				followup = RThen("orator", "C5M5_Soldier1Conv03", null, 0.01), // My name's Nick. There's four of us on the... on the west  end of the bridge.
			},
		],
	},
	{
		name = "C5M5_SurvivorConv02Cliffe",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv02"],
			["who", "Cliffe"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcliffe", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv02Cliffe,
				followup = RThen("orator", "C5M5_Soldier1Conv04", null, 0.01), // We are NOT infected.
			},
		],
	},
	{
		name = "C5M5_SurvivorConv03Cliffe",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv03"],
			["who", "Cliffe"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcliffe", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv03Cliffe,
				followup = RThen("orator", "C5M5_Soldier1Conv05", null, 0.01), // Yeah, you could say that.
			},
		],
	},
	{
		name = "C5M5_SurvivorConv04Cliffe",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv04"],
			["who", "Cliffe"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcliffe", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv04Cliffe,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01), // Okay, yeah, got it.  Sure.  See you soon.
			},
		],
	},
	{
		name = "C5M5_SurvivorConv05Cliffe",
		criteria = 
		[
			["concept", "C5M5_SurvivorConv05"],
			["who", "Cliffe"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcliffe", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_SurvivorConv05Cliffe,
				followup = RThen("orator", "C5M5_Soldier1Conv08", null, 0.01), // Of course it's full of zombies.  The whole god damn world is full of zombies.  See you in a few minutes.
			},
		],
	},
	{
		name = "C5M5_LowerTheBridgeCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			["world_auto_bridgenag", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5_LowerTheBridgeCliffe,
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
			["concept", "C5M5Button1"],
			["who", "Cliffe"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcliffe", 1],
			[_auto_NotButton2],
			["world_auto_buzzardrunmentioned", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5Button1BuzzardRunCliffe,
				followup = RThen("orator", "C5M5_Soldier1Conv01", null, 0.01), // STOP! Don't bomb the bridge!
			},
		],
	},
	{
		name = "C5M5Button1Cliffe",
		criteria = 
		[
			["concept", "C5M5Button1"],
			["who", "Cliffe"],
			["from", "orator"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingcliffe", 1],
			[_auto_NotButton2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5Button1Cliffe,
				followup = RThen("orator", "C5M5_Soldier1Conv01", null, 0.01), // Um, hello?
			},
		],
	},
	{
		name = "C5M5HearSoldiersCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["map", "c5m5_bridge"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsTalk],
			["world_auto_soldierchatter", 1],
			[_auto_NotRadioNag],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5HearSoldiersCliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["map", "c5m5_bridge"],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_soldierchatter", 1],
			[_auto_NotButton1],
			["world_auto_radionag", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5HearSoldiersNagCliffe,
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Cliffe"],
			["map", "c5m5_bridge"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5LeaveSafeCliffe,
				followup = RThen("orator", "C5M5_Soldier1", null, 0.01), // We're on the bridge!
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
			["concept", "FinalVehicleSpotted"],
			["who", "Cliffe"],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5RescueStartCliffe,
				followup = RThen("orator_chopper", "C5M5SoldierHeliNag", null, 0.01), // THERE'S THE COPTER!
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5RunToHeliCliffe,
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5InsideHeliCliffe,
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
			["concept", "C5M5BridgeDestroyed2"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsEveryoneAlive],
			["worldc5m5survivoroutro", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5BridgeDestroyed2Cliffe,
			},
		],
	},
	{
		name = "C5M5SurvivorVocalizeLookOutCliffe",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5SurvivorVocalizeLookOutCliffe,
			},
		],
	},
	{
		name = "C5M5SpottedTankCliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c5m5_bridge"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5SpottedTankCliffe,
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			["world_auto_finale", 1],
			[IsWorldTalkCliffe],
			["map", "c5m5_bridge"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5ReloadingTankCliffe,
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
			["concept", "C5M5Truck"],
			["who", "Cliffe"],
			[IsNotSaidC5M5Truck],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
			["world_auto_finale", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC5M5TruckCliffe,
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Tank"],
			[IsNotAlone],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c5m5_bridge"],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankConfirmationC5M5Cliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C5M5SafeRoomCliffe,
				followup = RThenAny("C5M5_saferoom002", 0.1), // Before we run across this bridge right toward the people who've been dropping bombs on us, anyone wanna talk about a plan b?
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
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1_IntotheparkNoHealthCliffe,
			},
		],
	},
	{
		name = "C6M1Intro_01Biker05Cliffe",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "Cliffe"],
			["introactor", "francis"],
			[IsNotSaidCXM1Intro],
			["isproduceralive", 1],
			[IsNotVersus],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_01Biker05Cliffe,
				followup = RThen("Biker", "C6M1Intro_10a", null, -9.671), // I'm telling you for the last goddamn time, lower the goddamn bridge you greasy vest wearing monkey.
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
			["concept", "C6M1Intro_07b"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_07bCliffe,
				followup = RThen("Producer", "C6M1Intro_07c", null, -1.13), // That guy's no cop.
			},
		],
	},
	{
		name = "C6M1Intro_09aCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_09a"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09aCliffe,
				followup = RThen("Cliffe", "C6M1Intro_09b", null, -0.741), // Hey! (Realization someone else is alive) HEEEYYY!!
			},
		],
	},
	{
		name = "C6M1Intro_09bCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_09b"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09bCliffe,
				followup = RThen("Biker", "C6M1Intro_09c", null, -1.071), // Hey! (Realization someone else is alive) HEEEYYY!!
			},
		],
	},
	{
		name = "C6M1Intro_09dCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_09d"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09dCliffe,
				followup = RThen("Producer", "C6M1Intro_09e", null, -0.876), // What the...
			},
		],
	},
	{
		name = "C6M1Intro_10eCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_10e"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_10eCliffe,
			},
		],
	},
	{
		name = "C6M1Intro_11dCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_11d"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_11dCliffe,
			},
		],
	},
	{
		name = "C6M1Intro_14aCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_14a"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_14aCliffe,
				followup = RThen("Biker", "C6M1Intro_14b", null, -6.925), // Okay, listen to me, jackass, lower the goddamn bridge so we can drive our goddamn car across.
			},
		],
	},
	{
		name = "C6M1Intro_14cCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_14c"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_14cCliffe,
				followup = RThen("Producer", "C6M1Intro_14d", null, -1.1), // (to his group) Do you believe this guy?
			},
		],
	},
	{
		name = "C6M1Intro_15aCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_15a"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_15aCliffe,
				followup = RThen("TeenGirl", "C6M1Intro_15b", null, -4.406), // That's terrific cupcake, is there a man up there we can talk to?
			},
		],
	},
	{
		name = "C6M1Intro_15eCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_15e"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_15eCliffe,
			},
		],
	},
	{
		name = "C6M1Intro_16aCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_16a"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_16aCliffe,
				followup = RThen("Biker", "C6M1Intro_16b", null, -3.16), // Well then climb down, you big ape, and help us.
			},
		],
	},
	{
		name = "C6M1Intro_ConfirmObjectiveCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_ConfirmObjective"],
			["who", "Cliffe"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_ConfirmObjectiveCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Whatever.
			},
		],
	},
	{
		name = "LeavingC6M1StartCliffe",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.LeavingC6M1StartCliffe,
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
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Cliffe"],
			[IsNotAlone],
			[NoHasFirstAidKit],
			["map", "c6m1_riverbank"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.LeavingC6M1StartNoFirstAidCliffe,
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
		name = "RemWorldC6M1_WeddingWarn02Cliffe",
		criteria = 
		[
			["concept", "RemWorldC6M1_WeddingWarn02"],
			["who", "Cliffe"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RemWorldC6M1_WeddingWarn02Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.WorldC6M1_HistoricTourCliffe,
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
			["concept", "WorldC6M1_PostWedding02a"],
			["who", "Cliffe"],
			[IsSubjectDistNear800],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_PostWedding02aCliffe,
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn05aCliffe",
		criteria = 
		[
			["concept", "WorldC6M1_WeddingWarn05a"],
			["who", "Cliffe"],
			[IsSubjectDistNear800],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_WeddingWarn05aCliffe,
			},
		],
	},
	{
		name = "C6M2_OpenGate1Cliffe",
		criteria = 
		[
			["concept", "C6M2_OpenGate1"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate1Cliffe,
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
			["concept", "C6M2_OpenGate1a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate1aCliffe,
				followup = RThen("Mechanic", "C6M2_OpenGate1b", null, -1.679), // Ellis, what did you just do?
			},
		],
	},
	{
		name = "C6M2_OpenGate2Cliffe",
		criteria = 
		[
			["concept", "C6M2_OpenGate2"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate2Cliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["incombat", 0],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["introactor", "francis"],
			[ChanceToFire50Percent],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvoFrancisStartCliffe,
				followup = RThenAny("DLC1_C6M2_SafeRoomConvo01a", -5.037), // So we find this historic section. Go under the river. And then we kick that biker dude's ass, right?
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
			["concept", "DLC1_C6M2_SafeRoomConvo01b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo01bCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo02bCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo02b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo02bCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo06aCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo06a"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo06aCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo07aCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo07a"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo07aCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoStartCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvoStartCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo09a", null, -5.742), // So this under-the-river tour, who wants to bet that is going to be filthy.
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
			["concept", "DLC1_C6M2_SafeRoomConvo08a"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08aCliffe,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo08b", null, -1.68), // What's a matter Rochelle, playing hard to get?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08c"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08cCliffe,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo08d", null, -1.86), // I saw the way you were looking at him.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08eCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08e"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08eCliffe,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo08f", null, -2.774), // I don't know... he fills out a vest pretty good.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo09bCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo09b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo09bCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoZoeyStartCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["incombat", 0],
			["map", "c6m2_bedlam"],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["introactor", "zoey"],
			["ismechanicalive", 1],
			[ChanceToFire50Percent],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvoZoeyStartCliffe,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo11a", null, -4.165), // So Ellis, Zoey huh? What do you think?
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
			["concept", "DLC1_C6M2_SafeRoomConvo10b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10bCliffe,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo10c", null, -4.362), // Yeah, hahaha a little bit more hand sanitizer and we wouldn't be in this mess.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo10dCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo10d"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10dCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo11bCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo11b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo11bCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12aCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo12a"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo12aCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo12b", null, -5.184), // Okay, let me get this straight. It's a tunnel... under the river. Right?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo12c"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo12cCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo12d", null, -3.094), // And this is supposed to teach me about what exactly?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13aCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo13a"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13aCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo13b", null, -2.783), // I am not looking forward to this under the river tour.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo13c"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13cCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo13d", null, -4.824), // Okay, good point. You know what? I am looking forward to punching that grease bag biker in the mouth.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13cFrancisIntroCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo13c"],
			["who", "Cliffe"],
			["introactor", "francis"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13cFrancisIntroCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo13d", null, -4.824), // Okay, good point. You know what? I am looking forward to punching that grease bag biker in the mouth.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14fCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo14f"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo14fCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo15c"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo15cCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_AfterGate201aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_AfterGate201a"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_AfterGate201aCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_FinalWater01aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_FinalWater01a"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_FinalWater01aCliffe,
				followup = RThen("Mechanic", "WorldC6M2_FinalWater01b", null, -1.524), // I hate you, Ellis!
			},
		],
	},
	{
		name = "WorldC6M2_InSewer101cCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer101c"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer101cCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer102bCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer102b"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer102bCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer201aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer201a"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer201aCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer202aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer202a"],
			["who", "Cliffe"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer202aCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_InSewerLadder101aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewerLadder101a"],
			[IssuerClose],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewerLadder101aCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk101aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk101a"],
			["who", "Cliffe"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_OnTourWalk101aCliffe,
				followup = RThen("Coach", "WorldC6M2_OnTourWalk101c", null, -0.596), // Shithole?
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk102aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk102a"],
			["who", "Cliffe"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_OnTourWalk102aCliffe,
				followup = RThenAny("WorldC6M2_OnTourWalk102b", -0.666), // Toldja.
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo01bCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo01b"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_Tattoo01bCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo03aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo03a"],
			["who", "Cliffe"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_Tattoo03aCliffe,
				followup = RThen("Mechanic", "WorldC6M2_Tattoo03b", null, -1.811), // I'm gonna get a tattoo that says "no".
			},
		],
	},
	{
		name = "C6M3_BridgeDownCliffe",
		criteria = 
		[
			["concept", "C6M3_BridgeDown"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_BridgeDownCliffe,
			},
		],
	},
	{
		name = "C6M3_BridgeGettoCarCliffe",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_BridgeGettoCarCliffe,
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
			["concept", "SceneCancelled"],
			["who", "Cliffe"],
			["map", "c6m3_port"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
			},
		],
	},
	{
		name = "C6M3_elevatorCliffe",
		criteria = 
		[
			["concept", "c6m3_elevator"],
			["who", "Cliffe"],
			["map", "c6m3_port"],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_elevatorCliffe,
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
			["concept", "c6m3_elevator"],
			["who", "Cliffe"],
			["map", "c6m3_port"],
			["introactor", "francis"],
			[IsNotVersus],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_elevatorFrancisCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "Biker"],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_GivenItemBikerCliffe,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirlCliffe",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "TeenGirl"],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_GivenItemTeenGirlCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoFrancisStartCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvoFrancisStartCliffe,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo02a1", null, -2.706), // I don't trust that biker. He better still be here.
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
			["concept", "DLC1_C6M3_SafeRoomConvo02b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02bCliffe,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo02c", null, -1.357), // You know him that well?
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02dCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo02d"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02dCliffe,
				followup = RThenAny("DLC1_C6M3_SafeRoomConvo02e", -3.014), // You got a good feeling about every scumbag that lives on a bridge.
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03bCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo03b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo03bCliffe,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo03c", null, -1.836), // Like you've been crawling through a sewer.
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03dCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo03d"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo03dCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo04c"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo04cCliffe,
				followup = RThenAny("DLC1_C6M3_SafeRoomConvo04d", -5.593), // Don't listen to her. You got five minutes to get this done, Ellis. It is do or die time, buddy.
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoZoeyStartCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvoZoeyStartCliffe,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo05a", null, -2.866), // So we're about to see that girl again, what's her name? Zoey?
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
			["concept", "DLC1_C6M3_SafeRoomConvo05b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05bCliffe,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo05c", null, -6.224), // What are you nervous about? You had your chance, you didn't do shit. Now you can watch Nick take care of business.
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05dCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo05d"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05dCliffe,
			},
		],
	},
	{
		name = "IncapBounceCliffe",
		criteria = 
		[
			["concept", "SurvivorIncapacitated"],
			["who", "Cliffe"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.IncapBounceCliffe,
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
		name = "PlayerCallForRescueCliffe",
		criteria = 
		[
			["concept", "CallForRescue"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[HasNotCalledForRescue],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCallForRescueCliffe,
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
			["concept", "c6m3_outro3"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.c6m3_outroCliffe,
			},
		],
	},
	{
		name = "c6m3_outroEllisCliffe",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "Cliffe"],
			["ismechanicalive", 1],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c6m3_port"],
			[IsNotVersus],
			["from", "Biker"],
		],
		//forceweight 5
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c6m3_outroEllisCliffe,
			},
		],
	},
	{
		name = "c6m3_outroZoeyOutroCliffe",
		criteria = 
		[
			["concept", "c6m3_outroL4D1011a"],
			["who", "Cliffe"],
			["incapacitated", 0],
			["from", "Mechanic"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c6m3_outroZoeyOutroCliffe,
			},
		],
	},
	{
		name = "SurvivorSpotFirstWeaponsCliffe",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotPickedUpFirstAidKit],
			["map", "c1m1_hotel"],
			[IsNotSaidWorldC1M1First],
			[IsNotSaidFirstWeapon],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpotFirstWeaponsCliffe,
				followup = RThen("producer", "Player.NotPackingHeat", null, 0.01), // Any of you packing a gun?
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "Adrenaline"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedAdrenalineCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			["weaponname", "Adrenaline"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedAdrenalineCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedAmmoCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedAmmoCliffe,
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
			["concept", "PlayerSpotAmmo"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedAmmo2Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachCloseCliffe",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachCloseCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachClose2Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachCloseCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachClose2C1Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachClose2C1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachCloseC1Cliffe",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachClose2C1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachFarCliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachFar400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachFarCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedCoachFarC1Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Coach"],
			[IsCoachFar400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCoachFarC1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedDefibrillatorCliffe",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "Defibrillator"],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedDefibrillatorCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			["weaponname", "Defibrillator"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedDefibrillatorCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "PipeBomb"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGrenadeCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			["weaponname", "PipeBomb"],
			[IsWorldTalkCliffe],
			["hasgrenade", 1],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGrenadeCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "GrenadeLauncher"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGrenadeLauncherCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			["weaponname", "GrenadeLauncher"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGrenadeLauncherCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "FirstAidKit"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHealthCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			["weaponname", "FirstAidKit"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHealthCliffe,
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicCloseCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicClose2Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicClose2Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicClose2C1Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicClose2C1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicCloseC1Cliffe",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicClose2C1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicFarCliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicFar400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicFarCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedMechanicFarC1Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Mechanic"],
			[IsMechanicFar400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMechanicFarC1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedMolotovCliffe",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "Molotov"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMolotovCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			["weaponname", "Molotov"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMolotovCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "PainPills"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedPillsCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedPillsCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			["haspainpills", 1],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
			[ChanceToFire40Percent],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedPillsAutoHasPillsCliffe,
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerCloseCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerClose2Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerCloseCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerClose2C1Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerClose2C1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerCloseC1Cliffe",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerNear400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerClose2C1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerFarCliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerFar400],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerFarCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedProducerFarC1Cliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["subject", "Producer"],
			[IsProducerFar400],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedProducerFarC1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedUpPack_ExplosiveCliffe",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Explosive"],
			[_auto_NotSpottedVehicle],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedUpPack_ExplosiveCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Explosive"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedUpPack_ExplosiveCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Incendiary"],
			[_auto_NotSpottedVehicle],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedUpPack_IncendiaryCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Incendiary"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedUpPack_IncendiaryCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[_auto_NotSpottedVehicle],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedVomitJarCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedVomitJarCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedVomitJarAutoC1Cliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedVomitJarAutoC1Cliffe,
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
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWorldCloseCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedArmoredC5M1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c5m1_waterfront"],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedArmoredC5M1Cliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "riot_control"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedArmoredCliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerCliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerCliffe,
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
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedBoomerC1M1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1Cliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1Cliffe,
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
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedBoomerC1M1CoachCliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			["iscoachalive", 1],
			[IsCoachNear400],
			[IsNotNickInsultedCoachC1],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1CoachCliffe,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBoomerWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "NickInsultedCoach", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorSpottedBoomerC1M2Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowBoomer],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M2Cliffe,
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
		name = "SurvivorSpottedBoomerAlsoC1M2Cliffe",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedBoomerC1M1Cliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidCedaWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCedaCliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Ceda"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidCedaWarn],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedCedaC1M1Cliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerCliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerCliffe,
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
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedChargerC1M1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M1Cliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M1Cliffe,
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
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedChargerC1M2Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowCharger],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M2Cliffe,
				followup = RThenAny("Player.KnowCharger", 0.1), // I'm guessin' that's a Charger.
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChargerC1M1Cliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c2m2_fairgrounds"],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
			[SawclownsIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedClownC2M2Cliffe,
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
		name = "SurvivorSpottedClownCliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "clown"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawclownsIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedClownCliffe,
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
		name = "SurvivorSpottedFallenCliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedFallenCliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterCliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterCliffe,
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
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedHunterC1M1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M1Cliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M1Cliffe,
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
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedHunterC1M2Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowHunter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M2Cliffe,
				followup = RThenAny("Player.KnowHunter", 0.1), // I think they call those things Hunters!
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedHunterC1M1Cliffe,
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
			["concept", "PlayerIncoming"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedInfectedCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedJimmyCliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "jimmy"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidJimmyWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJimmyCliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyCliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyCliffe,
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
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedJockeyC1M1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M1Cliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M1Cliffe,
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
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedJockeyC1M2Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowJockey],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M2Cliffe,
				followup = RThenAny("Player.KnowJockey", 0.1), // It's that little Jockey bastard!
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedJockeyC1M1Cliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMudmenCliffe,
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
		name = "SurvivorSpottedMudmenC3M2Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidMudmenWarn],
			["map", "c3m2_swamp"],
			[IsNotSpeakingWeight0],
			[SawmudmenIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMudmenCliffe,
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
		name = "SurvivorSpottedMudmen2Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "crawler"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedMudmen2Cliffe,
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
		name = "SurvivorSpottedSmokerCliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerCliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerCliffe,
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
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedSmokerC1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerC1Cliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerC1Cliffe,
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
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSmokerC1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterCliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterCliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterCliffe,
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
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterC1M1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M1Cliffe,
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M1Cliffe,
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
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedSpitterC1M2Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowSpitter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M2Cliffe,
				followup = RThenAny("Player.KnowSpitter", 0.1), // They've been calling those things Spitters!
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
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			["map", "c1m2_streets"],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSpitterC1M1Cliffe,
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedTankCliffe,
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedTankCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedTankC1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[IsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedTankC1Cliffe,
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
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedTankC1Cliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedWitchCliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWitchCliffe,
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
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWitchCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedWitchC1Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			[IsNotAlone],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWitchC1Cliffe,
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
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWitch2C1Cliffe,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemCliffe",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["incombatmusic", 0],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemCliffe,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemC1Cliffe",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["incombatmusic", 0],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemC1Cliffe,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemCombatCliffe",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["incombatmusic", 1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemCombatCliffe,
			},
		],
	},
	{
		name = "PlayerAlertGiveItemTankCliffe",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemCombatCliffe,
			},
		],
	},
	{
		name = "PlayerFaultFriendlyFireCliffe",
		criteria = 
		[
			["concept", "Fault"],
			["faultname", "FriendlyFire"],
			["who", "Cliffe"],
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			["onthirdstrike", 1],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFire2Cliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
			[NoKnowNames],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireC1Cliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Coach"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromCoachCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Coach"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromCoachNBCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Mechanic"],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromMechanicCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Mechanic"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
			[NoKnowNames],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromMechanicC1Cliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Mechanic"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
			[NoKnowNames],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromMechanicNBC1Cliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Mechanic"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromMechanicCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Producer"],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromProducerCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Producer"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
			[NoKnowNames],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromProducerC1Cliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Producer"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireFromProducerNBCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
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
				func = Custom_Talker_Cliffe.PlayerFriendlyFireNoBulletCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireNoBulletC1Cliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireTankCliffe,
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
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkCliffe],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFriendlyFireTankC1Cliffe,
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
			["concept", "SurvivorBotMovingToReviveFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["incombat", 0],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerToTheRescueCliffe,
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
			["concept", "PlayerToTheRescue"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerToTheRescueRosCliffe,
			},
		],
	},
	{
		name = "SurvivorTauntResponseCliffe",
		criteria = 
		[
			["concept", "PlayerTaunt"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorTauntResponseCliffe,
			},
		],
	},
	{
		name = "C4M1IdleComment01Cliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[ChanceToFire40Percent],
			["team", "Survivor"],
			["map", "c4m1_milltown_a"],
			["worldsaidc4m1_nogas", 1],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incombat", 0],
			[IsWorldTalkCliffe],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotNoGasGate],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M1IdleComment01Cliffe,
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
			["concept", "TLK_IDLE"],
			[ChanceToFire60Percent],
			["team", "Survivor"],
			["map", "c4m2_sugarmill_a"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_cliffeincane", 1],
			[_auto_NotCaneYellGated],
			[_auto_NotLastSurvivorTalkedCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M2IdleCommentCane01Cliffe,
				followup = RThenAny("_c4m2_caneyell01", 0.01), // KEEP MOVING! JUST HEAD FOR THE SIGN!
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
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerChokeResponseCliffe,
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
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerChokeResponseC1Cliffe,
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			["map", "c5m2_park"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			["world_auto_alarm", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReloadingC502RunCliffe,
			},
		],
	},
	{
		name = "PlayerReloadingTankCliffe",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReloadingTankCliffe,
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
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidReloadingTank],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReloadingTankC1Cliffe,
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
			["concept", "PlayerExertionMinor"],
			["who", "Cliffe"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
			[IsTalkCliffe],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchChasingCliffe,
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
			["concept", "PlayerExertionMinor"],
			["who", "Cliffe"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			["saidwitchattacking", 1],
			[IsTalkCliffe],
			["map", "c6m1_riverbank"],
			[IsWitchAggro],
		],
		//forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchChasingC6M1Cliffe,
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
			["concept", "Fault"],
			["who", "Cliffe"],
			["faultname", "WitchHarassment"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchStartAttackCliffe,
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
			["concept", "Fault"],
			["who", "Cliffe"],
			["faultname", "WitchHarassment"],
			["map", "c6m1_riverbank"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchStartAttackC6M1Cliffe,
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
			["concept", "WitchStartAttack"],
			["who", "Cliffe"],
			["witch_aggro_on", "Cliffe"],
			[WitchaggroIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "SurvivorCriticalHurtCliffe",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Critical"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotJockey],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCriticalHurtCliffe,
			},
		],
	},
	{
		name = "SurvivorIncapacitatedHurtCliffe",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			[IsNotSpeaking],
			["painlevel", "Incapacitated"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorIncapacitatedHurtCliffe,
			},
		],
	},
	{
		name = "SurvivorJockeyHurtMajorCliffe",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			["beingjockeyed", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorJockeyHurtMajorCliffe,
				followup = RThenAny("commentjockey", -1.387), // Jockey's got me. (disgusted)
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			["beingjockeyed", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorJockeyHurtMajorCliffe,
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorJockeyHurtMajorC1Cliffe,
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowJockey],
			["beingjockeyed", 1],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorJockeyHurtMajorC1Cliffe,
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
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotJockey],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMajorHurtCliffe,
			},
		],
	},
	{
		name = "SurvivorMinorHurtCliffe",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotJockey],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorMinorHurtCliffe,
			},
		],
	},
	{
		name = "SurvivorReloadingCliffe",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			["incombatmusic", 0],
			[_auto_NotCliffeInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorReloadingCliffe,
			},
		],
	},
	{
		name = "SurvivorReloadingIntenseCliffe",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			["incombatmusic", 1],
			[_auto_NotCliffeInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorReloadingIntenseCliffe,
			},
		],
	},
	{
		name = "SurvivorReloadingC4M2Cliffe",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "Cliffe"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkCliffe],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkCliffe],
			[ChanceToFire50Percent],
			["zombiepresentwitch", 1],
			["worldwarnheardwitch", 1],
			["map", "c4m2_sugarmill_a"],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			["world_auto_cliffeinwitchville", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorReloadingC4M2Cliffe,
			},
		],
	},
	{
		name = "PlayerHelpIncappedCliffe",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			["incapacitated", 1],
			[NotCalledForHelpRecently],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHelpIncappedCliffe,
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
			["concept", "PlayerHelp"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			["incapacitated", 1],
			[NotCalledForHelpRecently],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHelpIncappedBleedingCliffe,
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
			["concept", "PlayerHelp"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsIncappedLethargic],
			["incapacitated", 1],
			[NotCalledForHelpRecently],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHelpIncappedLethargicCliffe,
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
			["concept", "FriendNeedsHelp"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "Cliffe"],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.HelpResponseGamblerCliffe,
			},
		],
	},
	{
		name = "C2M1DoneFallingCliffe",
		criteria = 
		[
			["concept", "C2M1DoneFalling"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["coughing", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDoneFalling],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1DoneFallingCliffe,
				followup = RThen("self", "_C2M1_Fall05", null, 0.1), // [pain noise - short minor pain]
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
			["concept", "C2M1Falling"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1FallingCliffe,
				followup = RThen("self", "EndOfWavWindow5", null, 0.01), // Woah shit.
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
			["concept", "c2m2CarouselEnd"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M2CarouselOffCliffe,
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
			["concept", "c2m2CarouselStart"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M2CarouselOnCliffe,
				followup = RThen("self", "_C2M2_CaroStart01", null, 0.1), // What hell, I'm hitting it.
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
			["concept", "_C2M2_CaroStart01"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_CaroStart01Cliffe,
				followup = RThenAny("_C2M2_CaroStart03", 2.0), // So get ready.
			},
		],
	},
	{
		name = "C3M3BridgeButtonCliffe",
		criteria = 
		[
			["concept", "C3M3BridgeButton"],
			[IsNotSaidC3M3BridgeButton],
			["who", "Cliffe"],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C3M3BridgeButtonCliffe,
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
			["concept", "EndOfWavWindow5"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.EndOfWavWindow5Cliffe,
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
			["concept", "ChainsawUsed"],
			[IsNotSaidChainSawUsed],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IntensityOver25],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerChainSawUsedCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M1AroundFire"],
			[IsNotSaidC1M1AroundFire],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M1AroundFireCliffe,
				followup = RThenAny("C1M1Cough", -2.868), // Shit! This place is burnin' up FAST.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M1OverTable"],
			[IsNotSaidC1M1OverTable],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M1OverTableCliffe,
				followup = RThenAny("C1M1Cough", -0.48), // Over here.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M1SearchRooms"],
			[IsNotSaidC1M1SearchRooms],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M1SearchRoomsCliffe,
				followup = RThenAny("C1M1Cough", -2.192), // Search these rooms. Might be something we can use.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M1ThroughThisDoor"],
			[IsNotSaidC1M1ThroughThisDoor],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M1ThroughThisDoorCliffe,
				followup = RThenAny("C1M1Cough", -0.819), // Through this door!
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3AlarmDoors"],
			[IsNotSaidC1M3AlarmDoors],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3AlarmDoorsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3CarefulWindows"],
			[IsNotSaidC1M3CarefulWindows],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3CarefulWindowsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3CEDAGone"],
			[IsNotSaidC1M3CEDAGone],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3CEDAGoneCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3DiscoPants"],
			[IsNotSaidC1M3DiscoPants],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DiscoPantsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3DownHere"],
			[IsNotSaidC1M3DownHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3DownHere2"],
			[IsNotSaidC1M3DownHere2],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3DownTheEscalator"],
			[IsNotSaidC1M3DownTheEscalator],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownTheEscalatorCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3OverHere"],
			[IsNotSaidC1M3OverHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3OverHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3SearchRooms"],
			[IsNotSaidC1M3SearchRooms],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3SearchRoomsCliffe,
				followup = RThenAny("C1M1Cough", -2.192), // Search these rooms. Might be something we can use.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3ThisWay"],
			[IsNotSaidC1M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3ThisWayCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3ThroughHere"],
			[IsNotSaidC1M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3ThroughHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3TurnOffAlarm1"],
			[IsNotSaidC1M3TurnOffAlarm1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3TurnOffAlarm1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3TurnOffAlarm2"],
			[IsNotSaidC1M3TurnOffAlarm2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3TurnOffAlarm2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3TurnOffAlarm3"],
			[IsNotSaidC1M3TurnOffAlarm3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3TurnOffAlarm3Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3UpEscalator1"],
			[IsNotSaidC1M3UpEscalator1],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3UpEscalator1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3UpEscalator2"],
			[IsNotSaidC1M3UpEscalator2],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3UpEscalator1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C1M3UpEscalator3"],
			[IsNotSaidC1M3UpEscalator3],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3UpEscalator1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_carwreckage"],
			[IsNotSaidc2m1_carwreckage],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_carwreckageCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_offramp"],
			[IsNotSaidc2m1_offramp],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_offrampCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_checkrooms"],
			[IsNotSaidc2m1_checkrooms],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_checkroomsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_cliff"],
			[IsNotSaidc2m1_cliff],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_cliffCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_downstairs"],
			[IsNotSaidc2m1_downstairs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_downstairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_bridgeout"],
			[IsNotSaidc2m1_bridgeout],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_bridgeoutCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_followriver"],
			[IsNotSaidc2m1_followriver],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_followriverCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_motelsign"],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_motelsignCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_motelsign"],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_park"],
			[IsNotSaidc2m1_park],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_parkCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_pool"],
			[IsNotSaidc2m1_pool],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_poolCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_searchlights"],
			[IsNotSaidc2m1_searchlights],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_searchlightsCliffe,
				followup = RThenAny("_c2m1_searchlights01", 0.01), // Searchlights over there. Could be a way out.
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
			["concept", "_c2m1_searchlights01"],
			["who", "Cliffe"],
			["incombat", 0],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m1_searchlights01Cliffe,
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
			["concept", "_c2m1_searchlights02"],
			["who", "Cliffe"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m1_searchlights02Cliffe,
				followup = RThen("self", "_c2m1_searchlights02", null, -1.8), // Anyone in the die here camp?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_throughhere"],
			[IsNotSaidc2m1_throughhere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_throughhereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_throughmotel"],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_throughmotelCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_throughwindow"],
			[IsNotSaidc2m1_throughwindow],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_throughwindowCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_uphill"],
			[IsNotSaidc2m1_uphill],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_uphillCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m1_upstairs"],
			[IsNotSaidc2m1_upstairs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_upstairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_carousel"],
			[IsNotSaidc2m2_carousel],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_carouselCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_carousel"],
			[IsNotSaidc2m2_carousel],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_carouselbutton"],
			[IsNotSaidc2m2_carouselbutton],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_carouselbuttonCliffe,
				followup = RThen("self", "_C2M2_CaroButton01", null, 0.1), // We need to turn on the power to open this door.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_entrancesign"],
			[IsNotSaidc2m2_entrancesign],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_entrancesignCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_lilpeanut"],
			[IsNotSaidc2m2_lilpeanut],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_lilpeanutCliffe,
				followup = RThen("mechanic", "_C2M2_Peanut01", null, 0.01), // Anybody else find this peanut thing a little terrifying?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_ladder"],
			[IsNotSaidc2m2_ladder],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_ladderCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_backalley"],
			[IsNotSaidc2m2_backalley],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_backalleyCliffe,
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
			["concept", "_C2M2_LikeTaters"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["incombat", 0],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			[IsWorldTalkCliffe],
			[ChanceToFire40Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_LikeTatersCliffe,
				followup = RThen("Mechanic", "_C2M2_LikeTaters", null, -2.427), // Hey Ellis, you like taters?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_thistall"],
			[IsNotSaidc2m2_thistall],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			["ismechanicalive", 1],
			[IsMechanicNear400],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_thistall2Cliffe,
				followup = RThen("mechanic", "_C2M2_ThisTall02", null, 0.01), // You gotta be this tall to get in here, Ellis. Sorry, buddy. You'll be missed.
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
			["concept", "_C2M2_ThisTall02"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_ThisTall02Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m2_topofslide"],
			[IsNotSaidc2m2_topofslide],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m2_topofslideCliffe,
				followup = RThen("coach", "_C2M2_Slide01", null, 0.01), // Down the slide.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_aroundblock"],
			[IsNotSaidc2m3_aroundblock],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_aroundblockCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_cementriver"],
			[IsNotSaidc2m3_cementriver],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsSubjectNear200],
			[ChanceToFire80Percent],
			["ismechanicalive", 1],
			[IsMechanicNear300],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_cementriverCliffe,
				followup = RThen("mechanic", "_c2m3_cement01", null, 0.1), // You could almost call this a cement river, Ellis
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_cementriver"],
			[IsNotSaidc2m3_cementriver],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsSubjectNear200],
			["ismechanicalive", 1],
			[IsMechanicNear300],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_coasteroff"],
			[IsNotSaidc2m3_coasteroff],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_coasteroffCliffe,
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
			["concept", "_c2m3_coollight02"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_coollight02Cliffe,
			},
		],
	},
	{
		name = "PlayerRemarkc2m3_screamingoakCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_screamingoak"],
			[IsNotSaidc2m3_screamingoak],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_screamingoakCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_freshair"],
			[IsNotSaidc2m3_freshair],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_freshairCliffe,
				followup = RThenAny("_c2m3_freshair01", 0.1), // I can feel a breeze, fresh air!
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_freshair"],
			[IsNotSaidc2m3_freshair],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_hole"],
			[IsNotSaidc2m3_hole],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_holeCliffe,
				followup = RThenAny("_c2m3_hole01", 0.1), // Down the hole.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_longesttunnel"],
			[IsNotSaidc2m3_longesttunnel],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_longesttunnelCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_longesttunnel"],
			[IsNotSaidc2m3_longesttunnel],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_overfence"],
			[IsNotSaidc2m3_overfence],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_overfenceCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_rubble"],
			[IsNotSaidc2m3_rubble],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_rubbleCliffe,
				followup = RThenAny("_c2m3_coaster01", 0.1), // Oh, Jesus-we're gonna have to walk across this roller coaster, aren't we?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_swanroom"],
			[IsNotSaidc2m3_swanroom],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_swanroomCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_tracks01"],
			[IsNotSaidc2m3_tracks01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_tracks02"],
			[IsNotSaidc2m3_tracks02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_tracks03"],
			[IsNotSaidc2m3_tracks03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_tracks04"],
			[IsNotSaidc2m3_tracks04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_tracks05"],
			[IsNotSaidc2m3_tracks05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_tracks06"],
			[IsNotSaidc2m3_tracks06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_tracks07"],
			[IsNotSaidc2m3_tracks07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_tracks08"],
			[IsNotSaidc2m3_tracks08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_tracksok", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_tracks01Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_vent"],
			[IsNotSaidc2m3_vent],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_ventCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m3_wayblocked"],
			[IsNotSaidc2m3_wayblocked],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_wayblockedCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_barnentry"],
			[IsNotSaidc2m4_barnentry],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_barnentryCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_bumpercars"],
			[IsNotSaidc2m4_bumpercars],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_bumpercarsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_onroof"],
			[IsNotSaidc2m4_onroof],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_onroofCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_pendoor"],
			[IsNotSaidc2m4_pendoor],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_pendoorCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_moustachio"],
			[IsNotSaidc2m4_moustachio],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_moustachioCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_pens"],
			[IsNotSaidc2m4_pens],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_pensCliffe,
				followup = RThenAny("C2M4PenSmell001", 0.1), // Ugh. What's that SMELL?
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
			["concept", "_C2M4_Ribs"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe._C2M4_RibsCliffe,
				followup = RThen("coach", "_C2M4_Ribs", null, 0.1), // Because all you think about is ribs, Coach.
			},
		],
	},
	{
		name = "PlayerRemarkc2m4_stadiumCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_stadium"],
			[IsNotSaidc2m4_stadium],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_stadiumCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_upbarn"],
			[IsNotSaidc2m4_upbarn],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_upbarnCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m4_evac"],
			[IsNotSaidc2m4_evac],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m4_evacCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m5_button2"],
			[IsNotSaidc2m5_button2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m5_button2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c2m5_button2"],
			[IsNotSaidc2m5_button2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear75],
			["iscoachalive", 1],
			[IsCoachNear400],
			[ChanceToFire10Percent],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m5_button2CoachCliffe,
				followup = RThenAny("C2M5_lipsync001", 0.01), // Sorry to break it to you Coach, but your heroes lip-sync. There's a tape back here labeled finale.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M2PlaneCrash"],
			[IsNotSaidC3M2PlaneCrash],
			["coughing", 0],
			["incombat", 0],
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
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2PlaneCrashCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M2PlaneDoorNag"],
			[IsNotSaidC3M2PlaneDoorNag],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2PlaneDoorNagCliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			["worldsaidc3m2planedoornag", 1],
			["map", "c3m2_swamp"],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2PlaneDoorNagaCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M2Road"],
			[IsNotSaidC3M2Road],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2RoadCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M2SickOfSwamp"],
			[IsNotSaidC3M2SickOfSwamp],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2SickOfSwampCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M2Village1"],
			[IsNotSaidC3M2Village1],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M2Village1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3Bodies"],
			[IsNotSaidC3M3Bodies],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3BodiesCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3LowerGate"],
			[IsNotSaidC3M3BridgeButton],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3LowerGateCliffe,
				followup = RThenAny("InfoRemC3M3LowerGatea", 10.0), // We need to lower this plank.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3MoreShacks"],
			[IsNotSaidC3M3MoreShacks],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3MoreShacksCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3MoreShacks"],
			[IsNotSaidC3M3MoreShacks],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3ThisWayCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3ThisWay"],
			[IsNotSaidC3M3ThisWay],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3ThroughHere"],
			[IsNotSaidC3M3ThroughHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3ThroughHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3ThroughThisHouse"],
			[IsNotSaidC3M3ThroughThisHouse],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3ThroughThisHouseCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3Unsanitary"],
			[IsNotSaidC3M3Unsanitary],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3UnsanitaryCliffe,
				followup = RThen("mechanic", "InfoRemC3M3Unsanitarya1", null, -4.349), // Ugh. It's like rotten eggs here. Does nobody else SMELL that?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3UpHere"],
			[IsNotSaidC3M3UpHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3UpHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c3m4downroad"],
			[IsNotSaidc3m4downroad],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc3m4downroadCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c3m4scaffold"],
			[IsNotSaidc3m4scaffold],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc3m4scaffoldCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_boat"],
			[IsNotSaidc4m1_boat],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_boatCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_carcrashCliffe,
				followup = RThenAny("c4m1_wreck01", 0.01), // Now THAT is a nasty wreck.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_carcrash"],
			[IsNotSaidc4m1_carcrash],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_garagesale"],
			[IsNotSaidc4m1_garagesale],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_garagesaleCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_nogas"],
			[IsNotSaidc4m1_nogas],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_nogasCliffe,
				followup = RThenAny("c4m1_nogas01", 0.01), // Out of gas.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_nogas"],
			[IsNotSaidc4m1_nogas],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			["worldc4m1milkrun", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_nogasMilkRunCliffe,
				followup = RThenAny("c4m1_nogas01", 0.01), // Of course they're out of gas.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_nogas"],
			[IsNotSaidc4m1_nogas],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			["worldc4m1gunbag", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_nogasGunBagCliffe,
				followup = RThenAny("c4m1_nogas01", 0.01), // I'm out of gas, you're out of gas, they're out of gas.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_nogas"],
			[IsNotSaidc4m1_nogas],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
			["worldc4m1itoldyouso", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_nogasToldCliffe,
				followup = RThenAny("c4m1_nogas10", 0.01), // No gas. See? What'd I say?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_playgroundfarCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_playground"],
			[IsNotSaidc4m1_playground],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_playgroundnearCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_throughhereA"],
			[IsNotSaidc4m1_throughhereA],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_throughhereACliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_gasinsidesign"],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_gasinsidesignCliffe,
				followup = RThenAny("_c4m2_gasinside01", 0.01), // Looks like the gas is inside.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_millentrance"],
			[IsNotSaidc4m2_millentrance],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_millentranceCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_millentranceexit"],
			[IsNotSaidc4m2_millentranceexit],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_millentranceexitCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_seegasstation"],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_seegasstationCliffe,
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
		name = "PlayerRemarkc4m2_streetblockedCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_streetblocked"],
			[IsNotSaidc4m2_streetblocked],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_streetblockedCliffe,
				followup = RThenAny("_c4m2_streetblocked01", 0.01), // The road's blocked.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_upramp"],
			[IsNotSaidc4m2_upramp],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_uprampCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_upthestairs"],
			[IsNotSaidc4m2_upthestairs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_upthestairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_useelevator"],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			["worldsaidc4m2_seegasstation", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_useelevatorCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_waterpool"],
			[IsNotSaidc4m2_waterpool],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_waterpoolCliffe,
				followup = RThenAny("_c4m2_waterpool02", 0.01), // Damn, we aren't going to beat this storm.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m2_weather"],
			[IsNotSaidc4m2_weather],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_weatherCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_cane"],
			[IsNotSaidc4m3_cane],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_caneCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_crosshere"],
			[IsNotSaidc4m3_crosshere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_crosshereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_downhere"],
			[IsNotSaidc4m3_downhere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_downhereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_downstairs"],
			[IsNotSaidc4m3_downstairs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_downstairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_ducatelsign"],
			[IsNotSaidc4m3_ducatelsign],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_ducatelsignCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_elevator"],
			[IsNotSaidc4m3_elevator],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_elevatorCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_flooded"],
			[IsNotSaidc4m3_flooded],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_floodedCliffe,
				followup = RThen("coach", "_C4M3_FLOODED01", null, 0.2), // Man, it's all flooded.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_overtank"],
			[IsNotSaidc4m3_overtank],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_overtankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_rain"],
			[IsNotSaidc4m3_rain],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_rainCliffe,
				followup = RThenAny("_c4m3_rain01", 0.02), // Shit, it's really coming down.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_thisway"],
			[IsNotSaidc4m3_thisway],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m2_millentranceexitCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m3_uppipes"],
			[IsNotSaidc4m3_uppipes],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_uppipesCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m4_flooded"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_floodedCliffe,
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
		name = "PlayerRemarkc4m4_garagesaleCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m4_garagesale"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_garagesaleCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m4_garagesale2"],
			[IsNotSaidc4m4_garagesale],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_garagesaleCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m4_playground"],
			[IsNotSaidc4m4_playground],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_playgroundCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m4_porchlight"],
			[IsNotSaidc4m4_porchlight],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_porchlightCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m4_truckwreck"],
			[IsNotSaidc4m4_truckwreck],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_truckwreckCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m4_useroofs"],
			[IsNotSaidc4m4_useroofs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m4_useroofsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "pathc2m1_abandonedcars"],
			[IsNotSaidpathc2m1_abandonedcars],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkpathc2m1_abandonedcarsCliffe,
				followup = RThen("Coach", "_C2M1abandoned01", null, 0.02), // These abandoned cars go on for MILES.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "pathc2m1_abandonedcars"],
			[IsNotSaidpathc2m1_abandonedcars],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "pathc2m1_billboard"],
			[IsNotSaidpathc2m1_billboard],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkpathc2m1_billboardCliffe,
				followup = RThen("Coach", "_C2M1Billboard", null, 0.01), // Check it out.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "remark_caralarm"],
			[IsNotSaidremark_caralarm],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkremark_caralarmCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkremark_MidnightRidersBusCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M1CedaMaps"],
			[IsNotSaidWorldC1M1CedaMaps],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1CedaMapsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M1KnowBoomer"],
			[IsNotSaidWorldC1M1KnowBoomer],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1KnowBoomerCliffe,
				followup = RThen("coach", "C5M3Sniper01", null, 0.1), // Did they know this was coming?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M1DownHere"],
			[IsNotSaidWorldC1M1DownHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1DownHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M1ElevatorBroken"],
			[IsNotSaidWorldC1M1ElevatorBroken],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1ElevatorBrokenCliffe,
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
			["concept", "C1M1Crumbs"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1CrumbsCliffe,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC1M1FireRoomCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M1FireRoom"],
			[IsNotSaidWorldC1M1FireRoom],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1FireRoomCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M1FireSpreading"],
			[IsNotSaidWorldC1M1FireSpreading],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1FireSpreadingCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M1First"],
			[IsNotSaidWorldC1M1First],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1FirstCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M1Ledge"],
			[IsNotSaidWorldC1M1Ledge],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M1LedgeCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2Close"],
			[IsNotSaidWorldC1M2Close],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2CloseCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2DownStairs"],
			[IsNotSaidWorldC1M2DownStairs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2DownStairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2Abandoned"],
			[IsNotSaidWorldC1M2Abandoned],
			["coughing", 0],
			["incombat", 0],
			["intensity", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2AbandonedCliffe,
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
			["concept", "_C1M2Abandoned"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M2AbandonedCliffe,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC1M2DumpsterCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2Dumpster"],
			[IsNotSaidWorldC1M2Dumpster],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2DumpsterCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2InHere"],
			[IsNotSaidWorldC1M2InHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2InHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2JumpTruck"],
			[IsNotSaidWorldC1M2JumpTruck],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2JumpTruckCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2MadeIt"],
			[IsNotSaidWorldC1M2MadeIt],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2MadeItCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC1M2UpStairs"],
			[IsNotSaidWorldC1M2UpStairs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC1M2UpStairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC3M1FeedGator"],
			[IsNotSaidWorldC3M1FeedGator],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC3M1FeedGatorCliffe,
				followup = RThen("producer", "C3M2SafeRoom2d", null, -2.978), // Shit. This swamp is going to ruin my white suit.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC3M1FerryNag"],
			[IsNotSaidWorldC3M1FerryNag],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC3M1FerryNagCliffe,
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
			["concept", "WorldC502AlarmButton"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502AlarmButtonCliffe,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502AlarmStoppedCliffe",
		criteria = 
		[
			["concept", "WorldC502AlarmStopped"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502AlarmStoppedCliffe,
				followup = RThenAny("WorldC502AlarmStopped2", 0.3), // Alarm is off!
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502AlleyCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC502Alley"],
			[IsNotSaidWorldC502Alley],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502AlleyCliffe,
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
			["concept", "WorldC502BusStory2"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502BusStory2Cliffe,
				followup = RThen("Mechanic", "WorldC502BusStory2b", null, -2.429), // Ellis! ELLIS!  We don't have time for that right now! (ellis telling story about riding on buses)
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502NotZombies3Cliffe",
		criteria = 
		[
			["concept", "WorldC502NotZombies3"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502NotZombies3Cliffe,
				followup = RThenAny("WorldC502NotZombies3b", -1.678), // Looks like the Military took over.
			},
		],
	},
	{
		name = "PlayerRemarkWorldC502SmellCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC502Smell"],
			[IsNotSaidWorldC502Smell],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502SmellCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC502Smell"],
			[IsNotSaidWorldC502Smell],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC502SmellBath"],
			[IsNotSaidWorldC502SmellBath],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502SmellBathCliffe,
				followup = RThen("Mechanic", "WorldC502SmellBath2", null, -2.074), // It reeks like piss.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC502SmellBath"],
			[IsNotSaidWorldC502SmellBath],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._PlayerInfoRemarkableBlankCliffe,
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
			["concept", "WorldC502SmellBath3"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsSubjectNear300],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC502SmellBath3Cliffe,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHereCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AcrossHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AlleyBelowCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AlleyIntoBuildingCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_InAptsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_IntoTheStoreCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_SafeRoomAlleyCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_ThroughBarCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpTheStairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpTheStairs2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			["zombiepresentwitch", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnCliffe,
				followup = RThen("Coach", "WorldC6M1_WeddingWarn04a", null, -3.613), // Careful! I've seen a bride just like this before.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			["zombiepresentwitch", 1],
			["introactor", "zoey"],
			["worldellisinlovec6m1", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnAngelCliffe,
				followup = RThenAny("WorldC6M1_WeddingWarn03a", -2.394), // (whispered in Ellis accent) Ellis look, it's another angel.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AcrossPlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AfterGate1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AfterGate2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_DownHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_DownIntoBuildingCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalLadderCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterGoGoCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InJazzClubCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_InSewer1"],
			[IsNotSaidWorldC6M2_InSewer1],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewer1Cliffe,
				followup = RThenAny("WorldC6M2_InSewer101a", -3.475), // (to self) It's just a storm sewer, it is just a STORM sewer�
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_InSewer2"],
			[IsNotSaidWorldC6M2_InSewer2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			["worldsaidworldc6m2_insewer1", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewer2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewerLadder1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_IntoConstructionCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_IntoPoolHallCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_JukeBoxCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_JumpDownCliffe,
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
			["concept", "C2M1Falling"],
			["who", "Cliffe"],
			["map", "c6m2_bedlam"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2FallingCliffe,
			},
		],
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Cliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OnTourWalk1"],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk1Cliffe,
				followup = RThen("Coach", "WorldC6M2_OnTourWalk103a", null, -4.828), // [sarcastic] Yeah. Tunnels. You're right, Coach, you're so right. History is coming alive.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OnTourWalk3"],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk3Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate2EllisCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2Cliffe,
				followup = RThen("Producer", "WorldC6M2_Phase201a", null, -1.901), // Phase Two? Does this even go through?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2DownCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2DownIntenseCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_PostGate1xCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Suitcase"],
			[IsNotSaidWorldC6M2_Suitcase],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_SuitcaseCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotMentionedZoeyC6M2],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			["introactor", "zoey"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooZoeyCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TourEntranceCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpCatWalkCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpStairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpStairs2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_BridgeRunCliffe,
				followup = RThenAny("WorldC6M3_ByBridge01", -1.13), // THANKS, YOU THREE!
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_c6m3bridgedown", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_ByBridgeCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_c6m3bridgedown", 1],
			[IsNotSpeakingWeight0],
			[IsEveryoneAlive],
			["world_auto_c6m3bill", 2],
			["world_auto_cliffec6m3bill", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_ByBridgeLossCliffe,
				followup = RThenAny("WorldC6M3_ByBridge01", 0.3), // You guys wanna come with us?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M3_Bill"],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_BillCliffe,
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["map", "c6m3_port"],
			["subject", "TeenGirl"],
			[IsTeenGirlNear400],
			[IsWorldTalkCliffe],
			["world_auto_c6m3bill", 1],
			["world_auto_cliffec6m3bill", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M3LossCliffe,
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
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["map", "c6m3_port"],
			["subject", "Biker"],
			[IsBikerNear400],
			[IsWorldTalkCliffe],
			["world_auto_c6m3bill", 1],
			["world_auto_cliffec6m3bill", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M3LossCliffe,
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
			["concept", "c6m3_loss"],
			["coughing", 0],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M3Loss2Cliffe,
				followup = RThen("biker", "c6m3_loss", null, 0.1), // All shit aside, sorry to hear it.
			},
		],
	},
	{
		name = "WorldC6M3Loss3Cliffe",
		criteria = 
		[
			["concept", "c6m3_loss2"],
			["coughing", 0],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M3Loss3Cliffe,
			},
		],
	},
	{
		name = "PlayerRemarkWorldFootLockerCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldFootLockerCliffe,
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
			["concept", "WorldSignHurricane2"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IssuerClose],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldSignHurricane2Cliffe,
				followup = RThen("producer", "WorldSignHurricane3", null, 0.1), // What?
			},
		],
	},
	{
		name = "PlayerRemarkWorldSignRestricted2Cliffe",
		criteria = 
		[
			["concept", "WorldSignRestrictedArea2"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IssuerClose],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldSignRestricted2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldSignC5AlarmWillSound"],
			[IsNotSaidWorldSignC5AlarmWillSound],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerWorldSignC5AlarmWillSoundCliffe,
				followup = RThenAny("WorldSignC5AlarmWillSound3", -3.412), // As soon as that door opens, get ready to run for the tower.
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
			["concept", "WorldSignC5AlarmWillSound3b"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldSignC5AlarmWillSound3bCliffe,
				followup = RThen("mechanic", "WorldSignC5AlarmWillSound3d", null, -3.261), // We run to the tower and turn off the alarm. (exasperated to Ellis)
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
			["concept", "WorldSignC5AlarmWillSound3c"],
			["who", "Cliffe"],
			["coughing", 0],
			["incombat", 0],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldSignC5AlarmWillSound3cCliffe,
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
			["concept", "RespondAffirmative"],
			[IssuerMediumClose],
			["coughing", 0],
			["incombat", 0],
			["who", "Cliffe"],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RespondAffirmativeCliffe,
			},
		],
	},
	{
		name = "PlayerFollowMeCliffe",
		criteria = 
		[
			["concept", "PlayerFollowMe"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerFollowMeCliffe,
			},
		],
	},
	{
		name = "PlayerHelpCliffe",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsTalk],
			["incapacitated", 0],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHelpCliffe,
			},
		],
	},
	{
		name = "PlayerHurryUpCliffe",
		criteria = 
		[
			["concept", "PlayerHurryUp"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHurryUpCliffe,
			},
		],
	},
	{
		name = "PlayerHurryUpC4M2Cliffe",
		criteria = 
		[
			["concept", "PlayerHurryUp"],
			["who", "Cliffe"],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c4m2_sugarmill_a"],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[IsWorldTalkCliffe],
			["world_auto_cliffeinwitchville", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHurryUpC4M2Cliffe,
			},
		],
	},
	{
		name = "PlayerKillThatLightCliffe",
		criteria = 
		[
			["concept", "PlayerKillThatLight"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillThatLightCliffe,
			},
		],
	},
	{
		name = "PlayerLeadOnCliffe",
		criteria = 
		[
			["concept", "PlayerLeadOn"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLeadOnCliffe,
			},
		],
	},
	{
		name = "PlayerMoveOnCliffe",
		criteria = 
		[
			["concept", "PlayerMoveOn"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerMoveOnCliffe,
			},
		],
	},
	{
		name = "PlayerStayTogetherCliffe",
		criteria = 
		[
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerStayTogetherCliffe,
			},
		],
	},
	{
		name = "PlayerWatchOutBehindCliffe",
		criteria = 
		[
			["concept", "PlayerWatchOutBehind"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWatchOutBehindCliffe,
			},
		],
	},
	{
		name = "PlayerAskReadyCliffe",
		criteria = 
		[
			["concept", "PlayerAskReady"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAskReadyCliffe,
			},
		],
	},
	{
		name = "PlayerAskReadyC1Cliffe",
		criteria = 
		[
			["concept", "PlayerAskReady"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
			[NoKnowNames],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAskReadyC1Cliffe,
			},
		],
	},
	{
		name = "PlayerImWithYouCliffe",
		criteria = 
		[
			["concept", "PlayerImWithYou"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerImWithYouCliffe,
			},
		],
	},
	{
		name = "PlayerLaughCliffe",
		criteria = 
		[
			["concept", "PlayerLaugh"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLaughCliffe,
			},
		],
	},
	{
		name = "PlayerLostCallCliffe",
		criteria = 
		[
			["concept", "PlayerLostCall"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLostCallCliffe,
			},
		],
	},
	{
		name = "PlayerNiceJobResponseCliffe",
		criteria = 
		[
			["concept", "PlayerNiceJob"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNiceJobResponseCliffe,
			},
		],
	},
	{
		name = "PlayerNoCliffe",
		criteria = 
		[
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNoCliffe,
			},
		],
	},
	{
		name = "PlayerNoFemaleCliffe",
		criteria = 
		[
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Producer"],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNoFemaleCliffe,
			},
		],
	},
	{
		name = "PlayerNoZoeyCliffe",
		criteria = 
		[
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "TeenGirl"],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNoFemaleCliffe,
			},
		],
	},
	{
		name = "PlayerNoEllisCliffe",
		criteria = 
		[
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subject", "Mechanic"],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNoEllisCliffe,
			},
		],
	},
	{
		name = "PlayerAnswerLostCallCliffe",
		criteria = 
		[
			["concept", "PlayerAnswerLostCall"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAnswerLostCallCliffe,
			},
		],
	},
	{
		name = "KillStealCalledOutCliffe",
		criteria = 
		[
			["concept", "KillStealCalledOut"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.KillStealCalledOutCliffe,
			},
		],
	},
	{
		name = "PlayerSorryCliffe",
		criteria = 
		[
			["concept", "PlayerSorry"],
			["coughing", 0],
			[IsNotShotTeammateCliffe],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSorryCliffe,
			},
		],
	},
	{
		name = "PlayerSorryFFCliffe",
		criteria = 
		[
			["concept", "PlayerSorry"],
			["coughing", 0],
			["worldshotteammatecliffe", 1],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSorryFFCliffe,
			},
		],
	},
	{
		name = "PlayerThanksCliffe",
		criteria = 
		[
			["concept", "PlayerThanks"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerThanksCliffe,
			},
		],
	},
	{
		name = "PlayerYellRunCliffe",
		criteria = 
		[
			["concept", "PlayerYellRun"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYellRunCliffe,
			},
		],
	},
	{
		name = "PlayerYesCliffe",
		criteria = 
		[
			["concept", "PlayerYes"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYesCliffe,
			},
		],
	},
	{
		name = "PlayerYouAreWelcomeCliffe",
		criteria = 
		[
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYouAreWelcomeCliffe,
			},
		],
	},
	{
		name = "YouAreWelcomeCliffe",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerYouAreWelcomeCliffe,
			},
		],
	},
	{
		name = "PlayerYouAreWelcomeC1Cliffe",
		criteria = 
		[
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerYouAreWelcomeC1Cliffe,
				followup = RThen("self", "NickC1Attitude", { from = "Cliffe" }, 0.1),
			},
		],
	},
	{
		name = "YouAreWelcomeC1Cliffe",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[ChanceToFire50Percent],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerYouAreWelcomeC1Cliffe,
			},
		],
	},
	{
		name = "YouAreWelcomeCoachCliffe",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["from", "Coach"],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.YouAreWelcomeCoachCliffe,
			},
		],
	},
	{
		name = "YouAreWelcomeMechanicCliffe",
		criteria = 
		[
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["from", "Mechanic"],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.YouAreWelcomeMechanicCliffe,
			},
		],
	},
	{
		name = "YouAreWelcomeProducerCliffe",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["from", "Producer"],
			[TimeSinceGroupInCombat05],
			[ChanceToFire30Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.YouAreWelcomeProducerCliffe,
			},
		],
	},
	{
		name = "BotAttentionBattleCliffe",
		criteria = 
		[
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			["inbattlefield", 1],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotAttentionBattleCliffe,
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
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			["instartarea", 1],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.BotNoteHumanAttentionCliffe,
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
			["concept", "PlayerNegative"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerNegativeCliffe,
			},
		],
	},
	{
		name = "PlayerShootCarNotCliffe",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "Cliffe"],
			["coughing", 0],
			[SubjectIsNotCliffe],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotc5m3_cemetery],
			["panictype", "CarAlarm"],
			[ChanceToFire60Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerShootCarNotCliffe,
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
			["concept", "PanicEvent"],
			["who", "Cliffe"],
			["coughing", 0],
			["subject", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotc5m3_cemetery],
			["panictype", "CarAlarm"],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerShootCarCliffe,
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
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerCliffe,
			},
		],
	},
	{
		name = "PlayerHeardHunterCliffe",
		criteria = 
		[
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardHunterCliffe,
			},
		],
	},
	{
		name = "PlayerHeardSmokerCliffe",
		criteria = 
		[
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardSmokerCliffe,
			},
		],
	},
	{
		name = "PlayerHeardChargerCliffe",
		criteria = 
		[
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardChargerCliffe,
			},
		],
	},
	{
		name = "PlayerHeardSpitterCliffe",
		criteria = 
		[
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardSpitterCliffe,
			},
		],
	},
	{
		name = "PlayerHeardJockeyCliffe",
		criteria = 
		[
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardJockeyCliffe,
			},
		],
	},
	{
		name = "PlayerHeardBoomerC1Cliffe",
		criteria = 
		[
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowBoomer],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Cliffe,
			},
		],
	},
	{
		name = "PlayerHeardHunterC1Cliffe",
		criteria = 
		[
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowHunter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Cliffe,
			},
		],
	},
	{
		name = "PlayerHeardSmokerC1Cliffe",
		criteria = 
		[
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSmoker],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Cliffe,
			},
		],
	},
	{
		name = "PlayerHeardChargerC1Cliffe",
		criteria = 
		[
			["concept", "PlayerHeardCharger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowCharger],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Cliffe,
			},
		],
	},
	{
		name = "PlayerHeardSpitterC1Cliffe",
		criteria = 
		[
			["concept", "PlayerHeardSpitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSpitter],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardBoomerC1Cliffe,
			},
		],
	},
	{
		name = "PlayerHeardJockeyC1Cliffe",
		criteria = 
		[
			["concept", "PlayerHeardJockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardJockeyC1Cliffe,
			},
		],
	},
	{
		name = "PlayerHeardTankCliffe",
		criteria = 
		[
			["concept", "PlayerHeardTank"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardTankCliffe,
			},
		],
	},
	{
		name = "PlayerHeardWitchCliffe",
		criteria = 
		[
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHeardWitchCliffe,
			},
		],
	},
	{
		name = "PlayerHurrahCliffe",
		criteria = 
		[
			["concept", "PlayerHurrah"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHurrahCliffe,
			},
		],
	},
	{
		name = "PlayerWarnCarefulCliffe",
		criteria = 
		[
			["concept", "PlayerWarnCareful"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnCarefulCliffe,
			},
		],
	},
	{
		name = "SurvivorSpottedWorldFarCliffe",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWorldFarCliffe,
			},
		],
	},
	{
		name = "C6M3_PourFinishedCliffe",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsL4D1Alive],
			["map", "c6m3_port"],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_PourFinishedCliffe,
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
		name = "GasPour20MoreSCCliffe",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["towin", 20],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour20MoreSCCliffe,
				followup = RThen("self", "GasPour20More", null, 0.01), // Blank
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
			["concept", "GasPour20More"],
			["who", "Cliffe"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour20MoreWaitCliffe,
				followup = RThen("self", "GasPour1More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour10MoreSCCliffe",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["towin", 10],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour10MoreSCCliffe,
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
		name = "GasPour10MoreWaitCliffe",
		criteria = 
		[
			["concept", "GasPour10More"],
			["who", "Cliffe"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour10MoreWaitCliffe,
				followup = RThen("self", "GasPour10More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour1MoreSCCliffe",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["towin", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour1MoreSCCliffe,
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
		name = "GasPour1MoreWaitCliffe",
		criteria = 
		[
			["concept", "GasPour1More"],
			["who", "Cliffe"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour1MoreWaitCliffe,
				followup = RThen("self", "GasPour1More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour2MoreSCCliffe",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["towin", 2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour2MoreSCCliffe,
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
		name = "GasPour2MoreWaitCliffe",
		criteria = 
		[
			["concept", "GasPour2More"],
			["who", "Cliffe"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour2MoreWaitCliffe,
				followup = RThen("self", "GasPour2More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour3MoreSCCliffe",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["towin", 3],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour3MoreSCCliffe,
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
		name = "GasPour3MoreWaitCliffe",
		criteria = 
		[
			["concept", "GasPour3More"],
			["who", "Cliffe"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour3MoreWaitCliffe,
				followup = RThen("self", "GasPour3More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPour5MoreSCCliffe",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["towin", 5],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour5MoreSCCliffe,
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
		name = "GasPour5MoreWaitCliffe",
		criteria = 
		[
			["concept", "GasPour5More"],
			["who", "Cliffe"],
			["speaking", 1],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour5MoreWaitCliffe,
				followup = RThen("self", "GasPour5More", null, 0.1), // Blank
			},
		],
	},
	{
		name = "GasPourDoneSCCliffe",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["gamemode", "scavenge"],
			["towin", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourDoneSCCliffe,
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
			["concept", "PlayerPourStarted"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotAlone],
			[IsWorldTalkCliffe],
			["gamemode", "scavenge"],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourSCCliffe,
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
			["concept", "PlayerPourStarted"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["numberofteamalive", 1],
			["gamemode", "scavenge"],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourSCSoloCliffe,
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
			["concept", "PlayerPourStarted"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["numberofteamalive", 1],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPourSCSoloCliffe,
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
			["concept", "PlayerEquippedScavengeItem"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.GrabbingGasSCCliffe,
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
			["concept", "PlayerShotGasCan"],
			["who", "Cliffe"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerShotGasCanCliffe,
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["gamemode", "scavenge"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.ScavengeStartCliffe,
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m4_atrium"],
			["gamemode", "scavenge"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.FinaleStartC1M4Cliffe,
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
			["concept", "commentjockey"],
			["who", "Cliffe"],
			[IssuerCloseEnough],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			["incapacitated", 0],
			[IntensityUnder50],
			[IsNotSaidBeenJockeyedCliffe],
			["beingjockeyed", 0],
			[IsNotSaidCommentJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCommentJockeyCliffe,
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
			["concept", "commentjockey2"],
			["who", "Cliffe"],
			[IssuerCloseEnough],
			[IsNotSaidBeenJockeyedCliffe],
			["beingjockeyed", 0],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCommentJockey2Cliffe,
			},
		],
	},
	{
		name = "C4M2LockTheDoorCheckPointCliffe",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c4m2_sugarmill_a"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M2LockTheDoorCheckPointCliffe,
			},
		],
	},
	{
		name = "GoingToDieCoachCoachCliffe",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotComplainBlock],
			["iscoachalive", 1],
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
				func = Custom_Talker_Cliffe.GoingToDieCoachCoachCliffe,
				followup = RThen("coach", "coachcoaches", null, 0.5), // I really screwed the pooch back there.
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
			["concept", "AlertGiveItemStop"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemStopCliffe,
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
			["concept", "AlertGiveItemStopFirstAidA"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[NoHasFirstAidKit],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemStopAnFirstAidCliffe,
				followup = RThen("subject", "AlertGiveItemStop", null, 0.0), // Blank
			},
		],
	},
	{
		name = "PlayerAlertGiveItemStopQnFirstAidCliffe",
		criteria = 
		[
			["concept", "BashWithItem"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["item", "FirstAidKit"],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerAlertGiveItemStopQnFirstAidCliffe,
				followup = RThen("subject", "AlertGiveItemStopFirstAidA", null, 0.0), // Blank
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Coach"],
			[IsNotSaidCoachPounced],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoachPouncedCliffe,
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Coach"],
			[IsNotSaidCoachPounced],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoachPouncedC1Cliffe,
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
			["concept", "EatPills"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerEatPillsCliffe,
			},
		],
	},
	{
		name = "PlayerGetInsideCheckPointCliffe",
		criteria = 
		[
			["concept", "PlayerGetInsideCheckPoint"],
			["coughing", 0],
			["who", "Cliffe"],
			["insafespot", 1],
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
				func = Custom_Talker_Cliffe.PlayerGetInsideCheckPointCliffe,
				followup = RThenAny("StayTogetherInsideReponse", -0.765), // Get inside!
			},
		],
	},
	{
		name = "PlayerStayTogetherSaferoomCliffe",
		criteria = 
		[
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "Cliffe"],
			["insafespot", 1],
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
				func = Custom_Talker_Cliffe.PlayerStayTogetherSaferoomCliffe,
			},
		],
	},
	{
		name = "PlayerGetInsideCheckPointC2M2Cliffe",
		criteria = 
		[
			["concept", "PlayerGetInsideCheckPoint"],
			["map", "c2m2_fairgrounds"],
			["coughing", 0],
			["who", "Cliffe"],
			["insafespot", 1],
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
				func = Custom_Talker_Cliffe.PlayerGetInsideCheckPointC2M2Cliffe,
				followup = RThenAny("StayTogetherInsideReponse", 0.3), // Keep running, keep running.
			},
		],
	},
	{
		name = "PlayerGetInsideCheckPointC4M3Cliffe",
		criteria = 
		[
			["concept", "PlayerGetInsideCheckPoint"],
			["map", "c4m3_sugarmill_b"],
			["coughing", 0],
			["who", "Cliffe"],
			["insafespot", 1],
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
				func = Custom_Talker_Cliffe.PlayerGetInsideCheckPointC4M3Cliffe,
				followup = RThenAny("StayTogetherInsideReponse", 0.3), // Get back inside.
			},
		],
	},
	{
		name = "PlayerGrabbedByJockeyCliffe",
		criteria = 
		[
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidBeenJockeyedCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrabbedByJockeyCliffe,
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
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerGrabbedByJockeyC1Cliffe,
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
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["grenadetype", "Molotov"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrenadeMolotovCliffe,
				followup = RThenAny("GrenadeCareful", -1.091), // Throwing a Molotov.
			},
		],
	},
	{
		name = "PlayerGrenadePipeBombCliffe",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["grenadetype", "PipeBomb"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrenadePipeBombCliffe,
				followup = RThenAny("GrenadeCareful", -0.619), // GRENADE!
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJarCliffe",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["grenadetype", "VomitJar"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrenadeVomitJarCliffe,
				followup = RThenAny("GrenadeCareful", -1.011), // Puke in the hole!
			},
		],
	},
	{
		name = "PlayerGrenadeVomitJarC1Cliffe",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["grenadetype", "VomitJar"],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGrenadeVomitJarC1Cliffe,
				followup = RThenAny("GrenadeCareful", -1.011), // Puke in the hole!
			},
		],
	},
	{
		name = "PlayerIncapacitatedInitialCliffe",
		criteria = 
		[
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerIncapacitatedInitialCliffe,
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
			["concept", "PlayerIncapacitated"],
			["who", "Cliffe"],
			["map", "c1m2_streets"],
			["worldc1m2alarmsetoff", 2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerIncapacitatedInitialC1M2Cliffe,
				followup = RThen("orator", "C1M2SurvivorDown", null, 0.1), // 
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerKillConfirmationCliffe,
				followup = RThenAny("PlayerNiceShot", -0.415), // Got it!
			},
		],
	},
	{
		name = "PlayerKillConfirmationC1M1Cliffe",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			[SubjectIsNotTank],
			[IsTalkCliffe],
			[IsUsingFirearm],
			["map", "c1m1_hotel"],
			[IsNotFirstKillC1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillConfirmationC1M1Cliffe,
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalkCliffe],
			["activeweapon", "Melee"],
			["map", "c1m1_hotel"],
			[IsNotFirstKillC1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillConfirmationC1M1MeleeCliffe,
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
			["concept", "RightfulKiller"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RightfulKillerCliffe,
				followup = RThen("self", "InsistMine", { from = "Cliffe" }, 0.0),
			},
		],
	},
	{
		name = "PlayerKillTankConfirmationCliffe",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsRocking],
			[IsWorldTalkCliffe],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankConfirmationCliffe,
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsSubjectFar300],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			["worldellisalsowarn", 1],
			[ChanceToFire5Percent],
			[IsNotAlone],
			["incapacitated", 0],
			[IsRocking],
			[IsWorldTalkCliffe],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillConfirmationEllisCloseCliffe,
				followup = RThen("Mechanic", "KillSteal", null, 0.0), // 
			},
		],
	},
	{
		name = "PlayerKillTankNotHealthyCliffe",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsNotHealthy],
			[IsWorldTalkCliffe],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankNotHealthyCliffe,
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
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c1m2_streets"],
			[IsEveryoneAlive],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerKillTankConfirmationC1M2Cliffe,
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
		name = "PlayerCr0wnedWitchCliffe",
		criteria = 
		[
			["concept", "KilledZombie"],
			["who", "Cliffe"],
			["subjectisa", "Witch"],
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
			["concept", "KilledZombie"],
			["who", "Cliffe"],
			["subjectisa", "Witch"],
			[IsWitchAggro],
			[WitchaggroDecrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:--1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},
	{
		name = "PlayerLockTheDoorCheckPointCliffe",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			["insafespot", 1],
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
				func = Custom_Talker_Cliffe.PlayerLockTheDoorCheckPointCliffe,
			},
		],
	},
	{
		name = "PlayerLockTheDoorCheckPointC1Cliffe",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			["insafespot", 1],
			["map", "c1m1_hotel"],
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
				func = Custom_Talker_Cliffe.PlayerLockTheDoorCheckPointC1Cliffe,
			},
		],
	},
	{
		name = "PlayerMechanicPouncedCliffe",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Mechanic"],
			[IsNotSaidMechanicPounced],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerMechanicPouncedCliffe,
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Mechanic"],
			[IsNotSaidMechanicPounced],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoachPouncedC1Cliffe,
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerProducerPouncedCliffe,
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
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Producer"],
			[IsNotSaidProducerPounced],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerProducerPouncedC1Cliffe,
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
			["concept", "RevivedByDefibrillator"],
			["coughing", 0],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRevivedByDefibrillatorCliffe,
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
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRevivedByDefibrillator2Cliffe,
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
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["hasfirstaidkit", 1],
			[IsNotSuggestedHealth],
			["who", "Cliffe"],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestMeHealthCliffe,
				followup = RThenAny("PlayerSuggestHealth", 0.0), // 
			},
		],
	},
	{
		name = "PlayerSuggestHealthGenericCliffe",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "Cliffe"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthGenericCliffe,
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
			["concept", "PlayerSuggestHealth"],
			["who", "Cliffe"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthC1Cliffe,
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
			["concept", "PlayerSuggestHealth"],
			["who", "Cliffe"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Coach"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthCoachCliffe,
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
			["concept", "PlayerSuggestHealth"],
			["who", "Cliffe"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Mechanic"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthMechanicCliffe,
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
			["concept", "PlayerSuggestHealth"],
			["who", "Cliffe"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Producer"],
			[ChanceToFire50Percent],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerSuggestHealthProducerCliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["numberofteamdead", 0],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionCliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerTransitionCloseCliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["numberofteamalive", 1],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionSoloCliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m2_streets"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC1M2Cliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m2_streets"],
			[IsNotAlone],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionCloseC1M2Cliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m3_mall"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC1M3Cliffe,
				followup = RThenAny("C1M4NearFinale03a", 0.1), // We aren't getting saved.
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c2m1_highway"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC2M1Cliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c2m4_barns"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC2M4Cliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c4m2_sugarmill_a"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC4M2Cliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c4m3_sugarmill_b"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC4M3Cliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c5m4_quarter"],
			[IsNotAlone],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionC5M4Cliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionCloseC6M1Cliffe,
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
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m2_bedlam"],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerTransitionCloseC6M1Cliffe,
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
			["concept", "PlayerUsingDefibrillator"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerUsingDefibrillatorCliffe,
			},
		],
	},
	{
		name = "PlayerWarnHeardBoomerCliffe",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerCliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerWarnHeardJockeyC1Cliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Cliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Cliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Cliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Cliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerWarnHeardBoomerC1Cliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Charger"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardChargerCliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardHunterCliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Jockey"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardJockeyCliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardSmokerCliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Spitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardSpitterCliffe,
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			["who", "Cliffe"],
			[IsNotWarnHeardWitch],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerWarnHeardWitchCliffe,
				followup = RThenAny("PlayerKillThatLight", -0.913), // Sounds like a witch.
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
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerWarnHeardWitchC1Cliffe,
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
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardWitchC1Cliffe,
			},
		],
	},
	{
		name = "PlayerWarnHeardWitchC4M3Cliffe",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c4m3_sugarmill_b"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWarnHeardWitchC4M3Cliffe,
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
			["concept", "PlayerWarnMegaMob"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerWarnMegaMobCliffe,
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
			["concept", "WitchGettingAngry"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerWarnWitchAngryCliffe,
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
			["concept", "WorldSignsInfectedDetected2"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerWorldInfectedDet2Cliffe,
			},
		],
	},
	{
		name = "PlayerWorldIntroC31BlankCliffe",
		criteria = 
		[
			["concept", "introC3M1"],
			["who", "Cliffe"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldIntroC31BlankCliffe,
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
		name = "PlayerWorldIntroC51Cliffe",
		criteria = 
		[
			["concept", "introC5M1"],
			["who", "Cliffe"],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWorldIntroC51Cliffe,
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
		name = "SurvivorCaughtVomitCliffe",
		criteria = 
		[
			["concept", "PlayerVomitInFace"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCaughtVomitCliffe,
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidchargerpound],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorchargerpoundCliffe,
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorchargerpoundC1Cliffe,
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
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c6m3_port"],
			[ChanceToFire5Percent],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorchargerpoundC6M3Cliffe,
				followup = RThen("teengirl", "ChargerBeatsNick", null, 0.01), // 
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
			["concept", "SurvivorCoughing"],
			["coughing", 1],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCoughingCliffe,
			},
		],
	},
	{
		name = "SurvivorCoughingDeathCliffe",
		criteria = 
		[
			["concept", "PlayerDeath"],
			["coughing", 1],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCoughingCliffe,
			},
		],
	},
	{
		name = "SurvivorDeathCliffe",
		criteria = 
		[
			["concept", "PlayerDeath"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorDeathCliffe,
			},
		],
	},
	{
		name = "SurvivorGooedBySpitterCliffe",
		criteria = 
		[
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkCliffe],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorGooedBySpitterCliffe,
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
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorGooedBySpitterC1Cliffe,
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
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorGrabbedByTongueCliffe,
			},
		],
	},
	{
		name = "SurvivorGrabbedByTongueC1Cliffe",
		criteria = 
		[
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorGrabbedByTongueC1Cliffe,
			},
		],
	},
	{
		name = "SurvivorNearCheckpointCliffe",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointCliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c1m1_hotel"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC1M1Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c1m3_mall"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC1M3Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c2m1_highway"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC2M1Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c2m2_fairgrounds"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC2M2Cliffe,
				followup = RThenAny("_C2M2_SeeSafehouse01", 0.1), // Run into the tunnel of love!
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c2m4_barns"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC2M4Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c3m2_swamp"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC3M2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C3M3SafeHouseAhead"],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointCliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c4m1_milltown_a"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC4M1Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c4m2_sugarmill_a"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC4M2Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c4m3_sugarmill_b"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC4M3Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c4m4_milltown_b"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC4M4Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c5m2_park"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC5M2Cliffe,
				followup = RThenAny("C5M2Freeway01", 0.1), // That freeway looks like it heads to the bridge.
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c5m4_quarter"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC5M4Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c6m1_riverbank"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC6M1Cliffe,
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
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c6m2_bedlam"],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearCheckpointC6M2Cliffe,
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleCliffe,
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c1m4_atrium"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c2m5_concert"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleC2M5Cliffe,
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c3m4_plantation"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleC3M4Cliffe,
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c4m5_milltown_escape"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleC4M5Cliffe,
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c5m5_bridge"],
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c6m3_port"],
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
			["concept", "ScreamWhilePounced"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPouncedByHunterCliffe,
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
			["concept", "PlayerGroundPoundedByTank"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorTankPoundCliffe,
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
			["concept", "PlayerGroundPoundedByTank"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorTankPoundC1Cliffe,
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
			["concept", "PlayerBackUp"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeBackUpCliffe,
			},
		],
	},
	{
		name = "SurvivorVocalizeEmphaticGoCliffe",
		criteria = 
		[
			["concept", "PlayerEmphaticGo"],
			["who", "Cliffe"],
			["coughing", 0],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeEmphaticGoCliffe,
			},
		],
	},
	{
		name = "SurvivorVocalizeGoingToDieCliffe",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorVocalizeGoingToDieCliffe,
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
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "Cliffe"],
			["onthirdstrike", 1],
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
				func = Custom_Talker_Cliffe.SurvivorVocalizeGoingToDie3Cliffe,
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
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeLookOutCliffe,
			},
		],
	},
	{
		name = "SurvivorVocalizeThisWayCliffe",
		criteria = 
		[
			["concept", "PlayerThisWay"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeThisWayCliffe,
			},
		],
	},
	{
		name = "SurvivorVocalizeWaitHereCliffe",
		criteria = 
		[
			["concept", "PlayerWaitHere"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorVocalizeWaitHereCliffe,
			},
		],
	},
	{
		name = "SurvivorWarnSpitterIncomingCliffe",
		criteria = 
		[
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorWarnSpitterIncomingCliffe,
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
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorWarnSpitterIncomingC1Cliffe,
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
			["concept", "PlayerLedgeHangEnd"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeHangEndCliffe,
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
			["concept", "PlayerLedgeHangMiddle"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeHangMiddleCliffe,
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
			["concept", "PlayerLedgeHangStart"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeHangStartCliffe,
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorFirstDeathCliffe,
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Cliffe"],
			["numberofteamalive", 2],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DeathOneCliffe,
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Cliffe"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			[IsClosestSurvivorNear400],
			["numberofteamalive", 3],
			["incapacitated", 0],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DoubleDeath2Cliffe,
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["who", "Cliffe"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["ismechanicalive", 1],
			[IsMechanicNear400],
			["numberofteamalive", 3],
			["incapacitated", 0],
			[IsNotDeadMechanic],
			[ChanceToFire50Percent],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DoubleDeath2MechanicCliffe,
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Cliffe"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["worldsaidfaultfriendlyfire", 1],
			[IsNotSaidFaultFriendlyFireCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.TeamKillCliffe,
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Cliffe"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["worldsaidfaultfriendlyfire", 1],
			[IsNotSaidFaultFriendlyFireCliffe],
			["worldsaidfaultfriendlyfiremechanic", 1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.TeamKillFromMechanicCliffe,
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Cliffe"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["worldsaidfaultfriendlyfire", 1],
			[IsNotSaidFaultFriendlyFireCliffe],
			["worldsaidfaultfriendlyfireproducer", 1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.TeamKillFromProducerCliffe,
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
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "Cliffe"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkCliffe],
			["worldsaidfaultfriendlyfire", 1],
			[IsNotSaidFaultFriendlyFireCliffe],
			["worldsaidfaultfriendlyfireteengirl", 1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.TeamKillFromProducerCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "SMG"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "francis"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunCliffe,
				followup = RThen("Coach", "C6M1TakeSubMachineGun01", null, -2.621), // (picking up gun) Hold on a sec, I'm gonna go back and shoot that jackass.
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "francis"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "PumpShotgun"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "francis"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Shotgun_Chrome"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "francis"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Smg_mp5"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "francis"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "SMG"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "zoey"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "zoey"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "PumpShotgun"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "zoey"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Shotgun_Chrome"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "zoey"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Smg_mp5"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m1_riverbank"],
			["worldjustsaidworldc6m1_intothestore", 1],
			["introactor", "zoey"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunZoeyIntroCliffe,
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
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSaidDeployUpgradePack_Explosive],
			["activeweapon", "UpgradePack_Explosive"],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorDeployUpExplosivesCliffe,
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
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSaidDeployUpgradePack_Incendiary],
			["activeweapon", "UpgradePack_Incendiary"],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorDeployUpIncendiaryCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Adrenaline"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupAdrenalineCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "AutoShotgun"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupAutoShotgunCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Shotgun_Spas"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupAutoShotgunCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "baseball_bat"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupbaseball_batCliffe,
				followup = RThen("coach", "Player.TakeBatR", null, -2.148), // This brings back some good memories.
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "shovel"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupbaseShovelCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "chainsaw"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupchainsawCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "cricket_bat"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupcricket_batCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "cricket_bat"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupCricketBatCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Knife"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupKnifeCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "CrowBar"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupCrowBarCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Defibrillator"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupDefibrillatorCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "electric_guitar"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupelectric_guitarCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "FireAxe"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupFireAxeCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "FirstAidKit"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupFirstAidKitCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstSMG],
			[IsEveryoneAlive],
			["worldsaidc1m1opendoor", 1],
			[ExtraWeight10],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstSMGCliffe,
				followup = RThen("self", "PlayerPickupFirstSMG2", null, 0.2), // Whacking things in the head was fun, but...
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Smg_silenced"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstSMG],
			["numberofteamalive", 2],
			["worldsaidc1m1opendoor", 1],
			[ExtraWeight10],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstSMG2AliveCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "PumpShotgun"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstShotgun],
			["map", "c1m1_hotel"],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstShotgunCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "Shotgun_Chrome"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstShotgun],
			["map", "c1m1_hotel"],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstShotgunCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itempickedup", "SecondPistol"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidPickupFirstPistol],
			[IsNotInStartArea],
			["map", "c1m1_hotel"],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupFirstPistolCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "frying_pan"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupFryingPanCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "GolfClub"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupGolfCLubCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "GrenadeLauncher"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupGrenadeLauncherCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSpeaking],
			[IsTalk],
			["worldsaidc1m2insidegunshop", 1],
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
				func = Custom_Talker_Cliffe.SurvivorPickupGunC1M2Cliffe,
				followup = RThen("coach", "Player.NickGunOwnership", null, -4.1), // I'm not legally allowed to own a gun, hope everybody's okay with that.
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "HuntingRifle"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupHuntingRifleCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Sniper_Military"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupHuntingRifleCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Sniper_scout"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupHuntingRifleCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Sniper_awp"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupHuntingRifleCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "IncendiaryAmmo"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupIncendiaryAmmoCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Katana"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupKatanaCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Pitchfork"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupPitchforkCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 0],
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
				func = Custom_Talker_Cliffe.SurvivorPickupLaserSightsAlwaysCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "m60"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupM60Cliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Machete"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupMacheteCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Magnum"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupMagnumCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Molotov"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupMolotovCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "PainPills"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupPainPillsCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "PipeBomb"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupPipeBombCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "PumpShotgun"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupPumpShotgunCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Shotgun_Chrome"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupPumpShotgunCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Rifle"],
			[IsNotSpeaking],
			["insafespot", 1],
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
				func = Custom_Talker_Cliffe.SurvivorPickupRifleCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Rifle_Desert"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupRifleCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Rifle_AK47"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupRifleCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Rifle_sg552"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupRifleCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "SecondPistol"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupSecondPistolCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "SMG"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupSMGCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Smg_silenced"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupSMGCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "Smg_mp5"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupSMGCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "tonfa"],
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
				func = Custom_Talker_Cliffe.SurvivorPickuptonfaCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "ExplosiveAmmo"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupUpExplosiveAmmoCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "UpgradePack_Explosive"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupUpExplosivesCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "UpgradePack_Incendiary"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupUpIncendiaryCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "VomitJar"],
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
				func = Custom_Talker_Cliffe.SurvivorPickupVomitJarCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "VomitJar"],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupVomitJarAlwaysC1Cliffe,
				followup = RThen("self", "Player.TakeVomitJarC1a", null, 0.1), // Grabbin' puke!
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
			["concept", "Player.TakeVomitJarC1a"],
			["who", "Cliffe"],
			[ChanceToFire10Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_TakeVomitJarCliffe,
			},
		],
	},
	{
		name = "PlayerGettingRevivedCliffe",
		criteria = 
		[
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerGettingRevivedCliffe,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "Cliffe" }, -1.187),
			},
		],
	},
	{
		name = "PlayerHealOtherCliffe",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["incombatmusic", 0],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHealOtherCliffe,
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[C1M1orC1M2],
			["incombatmusic", 0],
			[IsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHealOtherC1Cliffe,
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["incombatmusic", 1],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHealOtherCombatCliffe,
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
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkCliffe],
		],
		//forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerHealOtherCombatCliffe,
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
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeSaveCliffe,
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendCliffe,
				followup = RThen("Subject", "ReviveFriendDown", null, -0.73), // Let me look at you..
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
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendBCliffe,
			},
		],
	},
	{
		name = "PlayerReviveFriendBCoachCliffe",
		criteria = 
		[
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotReviveInterrupt],
			["from", "Coach"],
			[ChanceToFire10Percent],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendBCoachCliffe,
			},
		],
	},
	{
		name = "PlayerReviveFriendBEllisCliffe",
		criteria = 
		[
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotReviveInterrupt],
			["from", "Mechanic"],
			[ChanceToFire10Percent],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendBEllisCliffe,
			},
		],
	},
	{
		name = "PlayerReviveFriendCriticalCliffe",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendCriticalCliffe,
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendLoudCliffe,
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
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerLedgeSaveCliffe,
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["worldshotteammatecliffe", 1],
			[IsWorldTalkCliffe],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendFFCliffe,
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["worldshotteammatecliffe", 1],
			[IsWorldTalkCliffe],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendFFCliffe,
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
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "Cliffe"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendLoudCliffe,
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Cliffe"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendLoudCliffe,
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
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "Cliffe"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerReviveFriendLoudCliffe,
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
			["concept", "_C1M1_ElevatorHello"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHelloCliffe,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloAllAliveExtra1Cliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHelloAllAliveExtra1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHelloAllAliveExtra1Cliffe,
				followup = RThen("cliffe", "_C1M1_ElevatorHelloAllAliveExtra2", null, -1.859), // There's blood on me, but it ain't mine.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHelloAllAliveExtra2Cliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHelloAllAliveExtra2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHelloAllAliveExtra2Cliffe,
				followup = RThen("cliffe", "_C1M1_ElevatorHello01b", null, -1.5), // Name's Nick.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello01bCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello01b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello01bCliffe,
				followup = RThen("coach", "_C1M1_ElevatorHello03b", null, -1.277), // So. You guys got names or what?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello10cCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello10c"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello10cCliffe,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello04cCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello04c"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello04cCliffe,
				followup = RThen("coach", "_C1M1_ElevatorHello05c", null, -3.41), // Name's Nick. But don't worry about learning it, 'cause I ain't sticking around long.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello04eCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello04e"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello04eCliffe,
				followup = RThen("producer", "_C1M1_ElevatorHello04d", null, 0.1), // You did good out there, Rochelle.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello04dCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello04d"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello04dCliffe,
				followup = RThen("coach", "_C1M1_ElevatorHello10a", null, 0.1), // Well, I'm glad we got that out of the way. Now: did anyone get bit?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello13dCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello13d"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello13dCliffe,
			},
		],
	},
	{
		name = "_c1m4startelevator5aCliffe",
		criteria = 
		[
			["concept", "_c1m4startelevator5a"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c1m4startelevator5aCliffe,
				followup = RThen("mechanic", "_c1m4startelevator5a1", null, -2.366), // I'll agree to the idea, but I'm driving.
			},
		],
	},
	{
		name = "_c1m4startelevator6a1Cliffe",
		criteria = 
		[
			["concept", "_c1m4startelevator6a1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c1m4startelevator6a1Cliffe,
				followup = RThenAny("_c1m4startelevatorLast", -1.826), // What a fun road trip this will be.
			},
		],
	},
	{
		name = "_c1m4startelevatorLastCliffe",
		criteria = 
		[
			["concept", "_c1m4startelevatorLast"],
			["who", "Cliffe"],
			["worldelevatortimer", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c1m4startelevatorLastCliffe,
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
			["concept", "_c1m4startelevatorLast"],
			["who", "Cliffe"],
			[ElevatorTimeUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c1m4startelevatorLastCliffe,
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
			["concept", "_C2M1_Fall03"],
			["who", "Cliffe"],
			["incombat", 0],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M1_Fall03Cliffe,
			},
		],
	},
	{
		name = "_C2M1_Fall05Cliffe",
		criteria = 
		[
			["concept", "_C2M1_Fall05"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M1_Fall05Cliffe,
				followup = RThen("coach", "_C2M1_Fall04", null, 0.01), // Shit!
			},
		],
	},
	{
		name = "_c2m1_searchlights03Cliffe",
		criteria = 
		[
			["concept", "_c2m1_searchlights03"],
			["who", "Cliffe"],
			["incombat", 0],
			[IssuerReallyClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m1_searchlights03Cliffe,
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
			["concept", "_C2M1abandoned02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M1abandoned02Cliffe,
			},
		],
	},
	{
		name = "_C2M1Billboard01Cliffe",
		criteria = 
		[
			["concept", "_C2M1Billboard01"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M1Billboard01Cliffe,
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
			["concept", "_C2M2_Bathroom01"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Bathroom01Cliffe,
			},
		],
	},
	{
		name = "_C2M2_CaroButton01Cliffe",
		criteria = 
		[
			["concept", "_C2M2_CaroButton01"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_CaroButton01Cliffe,
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
			["concept", "_C2M2_Kiddie01"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Kiddie01Cliffe,
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
			["concept", "_C2M2_Kiddie04"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_Kiddie04Cliffe,
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
			["concept", "_C2M2_SeeSafehouse01"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M2_SeeSafehouse01Cliffe,
			},
		],
	},
	{
		name = "_C2M2_Steak01Cliffe",
		criteria = 
		[
			["concept", "_C2M2_Steak01"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe._C2M2_Steak01Cliffe,
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
			["concept", "_C2M2_ThisTall01"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe._C2M2_ThisTall01Cliffe,
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
			["concept", "_c2m3_coaster02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_coaster02Cliffe,
				followup = RThenAny("_c2m3_coaster03", 0.01), // We're gonna have to run the coaster.
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
			["concept", "_c2m3_coaster05"],
			["who", "Cliffe"],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_coaster05Cliffe,
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
			["concept", "_c2m3_hole01"],
			["who", "Cliffe"],
			[IssuerReallyClose],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe._c2m3_hole01Cliffe,
			},
		],
	},
	{
		name = "_c2m3_water01Cliffe",
		criteria = 
		[
			["concept", "_c2m3_water01"],
			["who", "Cliffe"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c2m3_water01Cliffe,
			},
		],
	},
	{
		name = "_C2M4_GateOpen001Cliffe",
		criteria = 
		[
			["concept", "_C2M4_GateOpen001"],
			["who", "Cliffe"],
			["incapacitated", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C2M4_GateOpen001Cliffe,
			},
		],
	},
	{
		name = "_C4_BigStormHits01Cliffe",
		criteria = 
		[
			["concept", "_C4_BigStormHits01"],
			["who", "Cliffe"],
			[_auto_NotC4CliffeInCover],
			["world_auto_timera", 1],
			["from", "orator"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4_BigStormHits01Cliffe,
				followup = RThenAny("_C4_BigStormHits02", 0.04), // HERE COMES THE RAIN!
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
			["concept", "_C4_BigStormHits02"],
			["who", "Cliffe"],
			["coughing", 0],
			[IssuerClose],
			["incapacitated", 0],
			[_auto_NotC4CliffeInCover],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4_BigStormHits02Cliffe,
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
			["concept", "_c4m1_rainresponse"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidc4m1_rainresponse],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1_rainresponseCliffe,
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
			["concept", "introC4M1"],
			["who", "Cliffe"],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4M1IntroCliffe,
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
		name = "_c4m1Intro03Cliffe",
		criteria = 
		[
			["concept", "_c4m1Intro03"],
			["who", "Cliffe"],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro03Cliffe,
				followup = RThen("mechanic", "_c4m1Intro05", null, 0.01), // What are we supposed to signal him with?
			},
		],
	},
	{
		name = "_c4m1Intro04Cliffe",
		criteria = 
		[
			["concept", "_c4m1Intro04"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro04Cliffe,
				followup = RThen("coach", "_c4m1Intro04", null, 0.01), // Do we trust that guy to come back?
			},
		],
	},
	{
		name = "_c4m1Intro05Cliffe",
		criteria = 
		[
			["concept", "_c4m1Intro05"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro05Cliffe,
				followup = RThen("producer", "_c4m1Intro06", null, 0.01), // What gun bag?
			},
		],
	},
	{
		name = "_c4m1Intro07Cliffe",
		criteria = 
		[
			["concept", "_c4m1Intro07"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro07Cliffe,
				followup = RThen("mechanic", "_c4m1Intro08", null, 0.01), // ME? Who died and made me gun monitor?
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
			["concept", "_c4m1Intro08"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro08Cliffe,
				followup = RThen("self", "_c4m1Intro08", null, 0.01), // Fair enough, but you're the first three people in the world I have ever trusted.
			},
		],
	},
	{
		name = "_c4m1Intro09Cliffe",
		criteria = 
		[
			["concept", "_c4m1Intro09"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro09Cliffe,
				followup = RThen("coach", "_c4m1Intro09", null, -1.0), // Great. We are screw-
			},
		],
	},
	{
		name = "_c4m1Intro11Cliffe",
		criteria = 
		[
			["concept", "_c4m1Intro11"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro11Cliffe,
				followup = RThen("mechanic", "_c4m1Intro12", null, 0.01), // You wanna hear a prediction?
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
			["concept", "_c4m1Intro13"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro13Cliffe,
				followup = RThen("coach", "_c4m1Intro06", null, 0.01), // There's not gonna be any gas. Watch.
			},
		],
	},
	{
		name = "_c4m1Intro02Cliffe",
		criteria = 
		[
			["concept", "_c4m1Intro02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m1Intro02Cliffe,
				followup = RThen("self", "_c4m1Intro02", null, 0.01), // A cakewalk.
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
			["concept", "_c4m2_caneyell01"],
			["who", "Cliffe"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_cliffeincane", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_caneyell01Cliffe,
			},
		],
	},
	{
		name = "_c4m2_ElevatorHere01Cliffe",
		criteria = 
		[
			["concept", "_c4m2_ElevatorHere01"],
			["who", "Cliffe"],
			["incapacitated", 0],
			["coughing", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_ElevatorHere01Cliffe,
			},
		],
	},
	{
		name = "_c4m2_seestation01Cliffe",
		criteria = 
		[
			["concept", "_c4m2_seestation01"],
			["who", "Cliffe"],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_seestation01Cliffe,
				followup = RThen("mechanic", "_c4m2_seestation02", null, 0.01), // Through the wheat farm!
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
			["concept", "_c4m2_seestation03"],
			["who", "Cliffe"],
			[IsSubjectDistNear150],
			[IsNotSaidActivatedC4M2Elevator],
			["incombat", 0],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_seestation03Cliffe,
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
			["concept", "_c4m2_streetblocked01"],
			["who", "Cliffe"],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_streetblocked01Cliffe,
			},
		],
	},
	{
		name = "_c4m2_streetblocked01bCliffe",
		criteria = 
		[
			["concept", "_c4m2_streetblocked01"],
			["who", "Cliffe"],
			[IsSubjectDistFar400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_streetblocked01bCliffe,
				followup = RThen("subject", "_c4m2_streetblocked02", null, 0.01), // 
			},
		],
	},
	{
		name = "_c4m2_streetblocked02Cliffe",
		criteria = 
		[
			["concept", "_c4m2_streetblocked02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_streetblocked01Cliffe,
			},
		],
	},
	{
		name = "_c4m2_Witchville01Cliffe",
		criteria = 
		[
			["concept", "_c4m2_Witchville01"],
			["who", "Cliffe"],
			[IssuerClose],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_Witchville01Cliffe,
			},
		],
	},
	{
		name = "_c4m2_Witchville05Cliffe",
		criteria = 
		[
			["concept", "_c4m2_Witchville05"],
			["who", "Cliffe"],
			[IssuerClose],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m2_Witchville05Cliffe,
			},
		],
	},
	{
		name = "_c4m3_rain01Cliffe",
		criteria = 
		[
			["concept", "_c4m3_rain01"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m3_rain01Cliffe,
			},
		],
	},
	{
		name = "_c4m3_startsafe02Cliffe",
		criteria = 
		[
			["concept", "_c4m3_startsafe02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m3_startsafe02Cliffe,
				followup = RThenAny("_c4m3_startsafe03", 0.2), // Yup.
			},
		],
	},
	{
		name = "_c4m3_startsafe04Cliffe",
		criteria = 
		[
			["concept", "_c4m3_startsafe04"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._c4m3_startsafe04Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Let's hit it.
			},
		],
	},
	{
		name = "_C4M5_BoatComing01Cliffe",
		criteria = 
		[
			["concept", "_C4M5_BoatComing01"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4M5_BoatComing01Cliffe,
			},
		],
	},
	{
		name = "_C4M5_FinaleStart01Cliffe",
		criteria = 
		[
			["concept", "_C4M5_FinaleStart01"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4M5_FinaleStart01Cliffe,
			},
		],
	},
	{
		name = "_C4M5_Intro02Cliffe",
		criteria = 
		[
			["concept", "_C4M5_Intro02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4M5_Intro02Cliffe,
				followup = RThenAny("_C4M5_Intro03", 0.3), // What are we supposed to signal him with?
			},
		],
	},
	{
		name = "_C4M5_Intro04Cliffe",
		criteria = 
		[
			["concept", "_C4M5_Intro04"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C4M5_Intro04Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // It's worth a shot.
			},
		],
	},
	{
		name = "PlayerRemarkc4m5_BurgerTankCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m5_burgertank"],
			[IsNotSaidc4m5_burgertank],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m5_BurgerTankCliffe,
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
			["concept", "_introc1m1"],
			["who", "Cliffe"],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1Cliffe,
				followup = RThen("coach", "_introc1m1b01", null, -1.893), // God DAMN it! We just missed it!
			},
		],
	},
	{
		name = "_introc1m1AloneCliffe",
		criteria = 
		[
			["concept", "_introc1m1"],
			["who", "Cliffe"],
			["numberofteamalive", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1AloneCliffe,
			},
		],
	},
	{
		name = "_introc1m1a01Cliffe",
		criteria = 
		[
			["concept", "_introc1m1a01"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1a01Cliffe,
				followup = RThenAny("_introc1m1a02", -1.0), // Hey! Get back here!
			},
		],
	},
	{
		name = "_introc1m1a04Cliffe",
		criteria = 
		[
			["concept", "_introc1m1a04"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1a04Cliffe,
				followup = RThenAny("_introc1m1b08", 0.1), // Okay, helicopters don't come back when you yell at 'em. Valuable lesson. You three tuck that away for later; now grab a weapon and follow me; this goddamn building's on fire.
			},
		],
	},
	{
		name = "_introc1m1b02Cliffe",
		criteria = 
		[
			["concept", "_introc1m1b02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1a04Cliffe,
			},
		],
	},
	{
		name = "_introc1m1b03Cliffe",
		criteria = 
		[
			["concept", "_introc1m1b03"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b03Cliffe,
				followup = RThenAny("_introc1m1b06", 0.1), // They saw us all right, and they're not coming back.
			},
		],
	},
	{
		name = "_introc1m1b04Cliffe",
		criteria = 
		[
			["concept", "_introc1m1b04"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b04Cliffe,
				followup = RThen("coach", "_introc1m1b04", null, 0.1), // It's leaving us. Also, say hell.
			},
		],
	},
	{
		name = "_introc1m1helileftCliffe",
		criteria = 
		[
			["concept", "_introc1m1helileft"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1helileftCliffe,
				followup = RThenAny("_introc1m1b08", 0.1), // It's flying away from the burning building we're standing on. Let's follow its lead and get the hell out of here.
			},
		],
	},
	{
		name = "_introc1m1b05Cliffe",
		criteria = 
		[
			["concept", "_introc1m1b05"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b05Cliffe,
				followup = RThen("mechanic", "_introc1m1b03", null, -7.0), // Okay, one, stop calling it a whirlybird. It's a HELICOPTER. Two, I don't like being in buildings that are on fire.
			},
		],
	},
	{
		name = "_introc1m1b06Cliffe",
		criteria = 
		[
			["concept", "_introc1m1b06"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b06Cliffe,
				followup = RThen("producer", "_introc1m1b06", null, -8.307), // HELICOPTER. It is a HELICOPTER. You call that thing a whirlybird one more time, I'll beat you SO hard, your sister's gonna wish she never gave birth to you.
			},
		],
	},
	{
		name = "_introc1m1b08donutsCliffe",
		criteria = 
		[
			["concept", "_introc1m1b08donuts"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b08donutsCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // I trust you. You look like a man who knows his donuts.
			},
		],
	},
	{
		name = "_introc1m1b09Cliffe",
		criteria = 
		[
			["concept", "_introc1m1b09"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b09Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Good, that's decided. Moving on: I think this building's on fire. Sooo... I'd like to leave it.
			},
		],
	},
	{
		name = "_introc1m1b10Cliffe",
		criteria = 
		[
			["concept", "_introc1m1b10"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b10Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Then so am I. Grab a weapon and let's go. I think this goddamn building's on fire.
			},
		],
	},
	{
		name = "_introc1m1lastCliffe",
		criteria = 
		[
			["concept", "_introc1m1last"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1lastCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Good enough for me. Grab a weapon and let's go.
			},
		],
	},
	{
		name = "_introc1m1lastweaponsCliffe",
		criteria = 
		[
			["concept", "_introc1m1lastweapons"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1lastCliffe,
			},
		],
	},
	{
		name = "_introc1m1b11Cliffe",
		criteria = 
		[
			["concept", "_introc1m1b11"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1b11Cliffe,
				followup = RThen("producer", "_introc1m1b05", null, 0.1), // Oh, good. You can count. I bet they'll come back now.
			},
		],
	},
	{
		name = "_introc1m1MovieIntroCliffe",
		criteria = 
		[
			["concept", "_introc1m1MovieIntro"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1MovieIntroCliffe,
				followup = RThenAny("_introc1m1b08", -2.084), // I guess there's been a change of plans.
			},
		],
	},
	{
		name = "_introc1m1c02Cliffe",
		criteria = 
		[
			["concept", "_introc1m1c02"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._introc1m1c02Cliffe,
				followup = RThen("coach", "_introc1m1c02", null, 0.1), // You're serious, aren't you?
			},
		],
	},
	{
		name = "BlankTestoCliffe",
		criteria = 
		[
			["concept", "BlankTesto"],
			["who", "Cliffe"],
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
			["concept", "c1m1_elevator_door_open2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m1_elevator_door_openCliffe,
				followup = RThen("all", "C1M1Cough", null, -1.56), // [Coughing from smoke]
			},
		],
	},
	{
		name = "c1m1_elevator_ready2Cliffe",
		criteria = 
		[
			["concept", "c1m1_elevator_ready2"],
			["who", "Cliffe"],
			[IsNotSaidC1M1OpenDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m1_elevator_ready2Cliffe,
				followup = RThen("cliffe", "C1M1Cough", null, -3.035), // I bet there'll be something waiting for us out there. So let's get ready...
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
			["concept", "_C1M1_ElevatorHello2AliveNickIntro1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello2AliveNickIntro1Cliffe,
				followup = RThenAny("_C1M1_ElevatorHello2AliveName2", -0.647), // Name's Nick.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra1Cliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello2AliveExtra1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello2AliveExtra1Cliffe,
				followup = RThen("self", "_C1M1_ElevatorHello2AliveExtra2", { from = "Cliffe" }, -1.264),
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra2Cliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello2AliveExtra2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello2AliveExtra2Cliffe,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveExtra1Cliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveExtra1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveExtra1Cliffe,
				followup = RThen("cliffe", "_C1M1_ElevatorHello3AliveNickIntro1", null, -1.027), // And then there were three.
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNickIntro1Cliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveNickIntro1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNickIntro1Cliffe,
				followup = RThen("cliffe", "_C1M1_ElevatorHello3AliveNickIntro2", null, -0.647), // Name's Nick.
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
			["concept", "_C1M1_ElevatorHello3AliveNickIntro2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNickIntro2Cliffe,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName1", -1.277), // Hey, what's your name?
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1Cliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveName1"],
			["who", "Cliffe"],
			[IsNotCliffeIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveName1Cliffe,
				followup = RThenAny("_C1M1_ElevatorHello3AliveName2", -0.647), // Name's Nick.
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
			["concept", "_C1M1_ElevatorHello3AliveName2"],
			["who", "Cliffe"],
			["worldrochelleelevatorintro", 1],
			["from", "Producer"],
			[IsNotCliffeIntroduced],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveName2RCliffe,
				followup = RThen("self", "_C1M1_ElevatorHello3AliveName2", { from = "Cliffe" }, -0.647),
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
			["concept", "_C1M1_ElevatorHello3AliveNickIntro2"],
			["who", "Cliffe"],
			[IsNotCliffeIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveName2Cliffe,
				followup = RThenAny("_C1M1_ElevatorHello3AliveWhoIsDead", -0.647), // Name's Nick.
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
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			["who", "Cliffe"],
			[IsProducerNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNameDeadRCliffe,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadECliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			["who", "Cliffe"],
			[IsMechanicNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNameDeadECliffe,
			},
		],
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadCCliffe",
		criteria = 
		[
			["concept", "_C1M1_ElevatorHello3AliveNameDead"],
			["who", "Cliffe"],
			[IsCoachNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe._C1M1_ElevatorHello3AliveNameDeadCCliffe,
			},
		],
	},
	{
		name = "C1M1CoughCliffe",
		criteria = 
		[
			["concept", "C1M1Cough"],
			["who", "Cliffe"],
			["map", "c1m1_hotel"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M1CoughCliffe,
			},
		],
	},
	{
		name = "C1M3AlarmOffaCliffe",
		criteria = 
		[
			["concept", "C1M3AlarmOffa"],
			["who", "Cliffe"],
			[IsSubjectDistNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3AlarmOffaCliffe,
			},
		],
	},
	{
		name = "C1M3SafeRoomCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C1M3SafeRoomCliffe,
				followup = RThen("coach", "C1M3SafeRoom2c", null, -3.888), // Let's go find this evacuation center. I'm already sick of this place.
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
			["concept", "C1M3SafeRoom2a"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3SafeRoom2aCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // If anyone sees a men's store let me know. I got blood on this suit.
			},
		],
	},
	{
		name = "C1M3SafeRoom2bCliffe",
		criteria = 
		[
			["concept", "C1M3SafeRoom2b"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3SafeRoom2bCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Ugh. GOD, I hate malls.
			},
		],
	},
	{
		name = "C1M4NearFinale02aCliffe",
		criteria = 
		[
			["concept", "C1M4NearFinale02a"],
			["who", "Cliffe"],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4NearFinale02aCliffe,
				followup = RThen("coach", "C1M4NearFinale03a", null, -1.264), // We're pretty screwed.
			},
		],
	},
	{
		name = "C1M4NearFinale02cCliffe",
		criteria = 
		[
			["concept", "C1M4NearFinale02c"],
			["who", "Cliffe"],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4NearFinale02cCliffe,
				followup = RThen("mechanic", "C1M4NearFinale03c", null, -0.437), // Nope.
			},
		],
	},
	{
		name = "C1M4NearFinale02eCliffe",
		criteria = 
		[
			["concept", "C1M4NearFinale02e"],
			["who", "Cliffe"],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4NearFinale02eCliffe,
			},
		],
	},
	{
		name = "c1m4NearFinale1Cliffe",
		criteria = 
		[
			["concept", "c1m4jimmyidea"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c1m4NearFinale1Cliffe,
			},
		],
	},
	{
		name = "C1M4SafeRoomCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C1M4SafeRoomCliffe,
				followup = RThenAny("C1M4SafeRoom2a1", -1.705), // Who the hell is Jimmy Gibbs, Jr.?
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
			["concept", "C1M4SafeRoom2a2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4SafeRoom2a2Cliffe,
				followup = RThen("coach", "C1M4SafeRoom2a3", null, -2.626), // I'm getting sick of looking at this guy's face.
			},
		],
	},
	{
		name = "C1M4SafeRoom2a4Cliffe",
		criteria = 
		[
			["concept", "C1M4SafeRoom2a4"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4SafeRoom2a4Cliffe,
				followup = RThenAny("C1M4SafeRoom2a5", -2.422), // Really? 'Cause he looks like an asshole.
			},
		],
	},
	{
		name = "C1M4SafeRoomEndCliffe",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["map", "c1m4_atrium"],
			["who", "Cliffe"],
			[IsNotSaidLeavingSafeArea],
			[_auto_NotTellingStory],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M4SafeRoomEndCliffe,
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
			["concept", "introC2M1"],
			["who", "Cliffe"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1IntroStartCliffe,
				followup = RThen("Mechanic", "C2M1Intro002", null, 0.02), // I hate to be the bearer of bad news, guys-but unless Ellis knows how to build a monster truck, we AIN'T drivin' through this.
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
			["concept", "C2M1Intro002"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1Intro002Cliffe,
				followup = RThen("Coach", "C2M1Intro009", null, 0.02), // Don't sweat it, Ellis. At least you got us out of that mall.
			},
		],
	},
	{
		name = "LeavingC2M1StartCliffe",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			[IsNotSaidLeavingSafeArea],
			["who", "Cliffe"],
			["map", "c2m1_highway"],
			[IsTalk],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.LeavingC2M1StartCliffe,
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
		name = "C2M1Intro_400Cliffe",
		criteria = 
		[
			["concept", "C2M1Intro_400"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C2M1Intro_400Cliffe,
				followup = RThen("mechanic", "C2M1Intro_400", null, 1.0), // Whatever.
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
			["concept", "C4EnterCover"],
			["who", "Cliffe"],
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
			["concept", "C4ExitCover"],
			["who", "Cliffe"],
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
			["concept", "c4m1_InBurgerTank01"],
			["who", "Cliffe"],
			["incombat", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_InBurgerTank01Cliffe,
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
			["concept", "C4FinaleStart"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C4FinaleStartCliffe,
				followup = RThenAny("_C4M5_FinaleStart01", 0.01), // Fast food is going to save us.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "c4m1_InBurgerTank"],
			[IsNotSaidc4m1_InBurgerTank],
			["coughing", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m1_InBurgerTankCliffe,
				followup = RThen("producer", "c4m1_InBurgerTank02", null, 0.01), // This is the best goddamn Burger Tank I have ever visited.
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
			["concept", "c4m1_nogas01"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_nogas01Cliffe,
				followup = RThen("coach", "c4m1_nogas06", null, 0.01), // Looks like our milk run just turned into a marathon.
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
			["concept", "c4m1_nogas02"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_nogas02Cliffe,
				followup = RThen("coach", "c4m1_nogas03", null, 0.01), // What makes you think they have gas?
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
			["concept", "c4m1_nogas04"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_nogas04Cliffe,
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
			["concept", "c4m1_nogas05"],
			["who", "Cliffe"],
			["incombat", 0],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.c4m1_nogas05Cliffe,
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
			["concept", "GasPour20More"],
			["who", "Cliffe"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour20MoreCliffe,
			},
		],
	},
	{
		name = "GasPour10MoreTalkCliffe",
		criteria = 
		[
			["concept", "GasPour10More"],
			["who", "Cliffe"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour10MoreTalkCliffe,
			},
		],
	},
	{
		name = "GasPour1MoreCliffe",
		criteria = 
		[
			["concept", "GasPour1More"],
			["who", "Cliffe"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour1MoreCliffe,
			},
		],
	},
	{
		name = "GasPour2MoreCliffe",
		criteria = 
		[
			["concept", "GasPour2More"],
			["who", "Cliffe"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour2MoreCliffe,
			},
		],
	},
	{
		name = "GasPour3MoreCliffe",
		criteria = 
		[
			["concept", "GasPour3More"],
			["who", "Cliffe"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour3MoreCliffe,
			},
		],
	},
	{
		name = "GasPour5MoreCliffe",
		criteria = 
		[
			["concept", "GasPour5More"],
			["who", "Cliffe"],
			[IsNotSpeaking],
			["world_auto_gascountok", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.GasPour5MoreCliffe,
			},
		],
	},
	{
		name = "HistoricTour01aCliffe",
		criteria = 
		[
			["concept", "HistoricTour01a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.HistoricTour01aCliffe,
			},
		],
	},
	{
		name = "Player_SeeMudmen2aCliffe",
		criteria = 
		[
			["concept", "Player.SeeMudmen2a"],
			["who", "Cliffe"],
			[IssuerClose],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_SeeMudmen2aCliffe,
			},
		],
	},
	{
		name = "Player_TakeBatR2Cliffe",
		criteria = 
		[
			["concept", "Player.TakeBatR2"],
			["who", "Cliffe"],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_TakeBatR2Cliffe,
			},
		],
	},
	{
		name = "Player_KnowHunterC1Cliffe",
		criteria = 
		[
			["concept", "Player.KnowHunter"],
			["who", "Cliffe"],
			[IssuerClose],
			["incapacitated", 0],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowHunterC1Cliffe,
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
			["concept", "Player.KnowBoomer"],
			["who", "Cliffe"],
			[IssuerClose],
			["incapacitated", 0],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowBoomerC1Cliffe,
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
			["concept", "Player.KnowCharger"],
			["who", "Cliffe"],
			[IssuerClose],
			["incapacitated", 0],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowChargerC1Cliffe,
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
			["concept", "Player.KnowJockey"],
			["who", "Cliffe"],
			[IssuerClose],
			["incapacitated", 0],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowJockeyC1Cliffe,
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
			["concept", "Player.KnowSmoker"],
			["who", "Cliffe"],
			[IssuerClose],
			["incapacitated", 0],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowSmokerC1Cliffe,
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
			["concept", "Player.KnowSpitter"],
			["who", "Cliffe"],
			[IssuerClose],
			["incapacitated", 0],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_KnowSpitterC1Cliffe,
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
			["concept", "Player.NotPackingHeat"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_NotPackingHeatCliffe,
				followup = RThen("producer", "Player.NotPackingHeat2", null, 0.1), // Great, I run into the three people in Georgia not carrying a gun.
			},
		],
	},
	{
		name = "Player_NotPackingHeat2Cliffe",
		criteria = 
		[
			["concept", "Player.NotPackingHeat2"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_NotPackingHeat2Cliffe,
			},
		],
	},
	{
		name = "Player_WhinyNickCliffe",
		criteria = 
		[
			["concept", "Player.WhinyNick"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_WhinyNickCliffe,
			},
		],
	},
	{
		name = "C1M2TankInfoCliffe",
		criteria = 
		[
			["concept", "C1M2TankInfo"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2TankInfoCliffe,
				followup = RThen("coach", "C1M2TankInfo", null, 0.1), // So that's a Tank, huh? Jesus, that thing's huge.
			},
		],
	},
	{
		name = "PlayerCr0wnedBrideCliffe",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			["subjectisa", "Witch"],
			["oneshot", 1],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c6m1_riverbank"],
			[IsWorldTalkCliffe],
		],
		//forceweight 101
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCr0wnedBrideCliffe,
			},
		],
	},
	{
		name = "PlayerCr0wnedBrideCoachCliffe",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			["subjectisa", "Witch"],
			["oneshot", 1],
			[IsNotWitchAggro],
			["iscoachalive", 1],
			[IsCoachNear400],
			[ChanceToFire50Percent],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c6m1_riverbank"],
			[IsWorldTalkCliffe],
		],
		//forceweight 102
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCr0wnedBrideCoachCliffe,
				followup = RThen("coach", "WeddingWitchDead01", null, 3.1), // That has been a fantasy of mine for a long long time.
			},
		],
	},
	{
		name = "PlayerCr0wnedBrideProducerCliffe",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "Cliffe"],
			["subjectisa", "Witch"],
			["oneshot", 1],
			[IsNotWitchAggro],
			["isproduceralive", 1],
			[IsProducerNear400],
			[ChanceToFire25Percent],
			[IsTalk],
			[IsTalkCliffe],
			["map", "c6m1_riverbank"],
			[IsWorldTalkCliffe],
		],
		//forceweight 102
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCr0wnedBrideProducerCliffe,
				followup = RThen("producer", "WeddingWitchDead01", null, 3.1), // That has been a fantasy of mine for a long long time.
			},
		],
	},
	{
		name = "WeddingWitchDead02Cliffe",
		criteria = 
		[
			["concept", "WeddingWitchDead02"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WeddingWitchDead02Cliffe,
				followup = RThen("producer", "WeddingWitchDead02a", null, 0.1), // Even for us, that was just too weird.
			},
		],
	},
	{
		name = "WeddingWitchDead03Cliffe",
		criteria = 
		[
			["concept", "WeddingWitchDead03"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WeddingWitchDead03Cliffe,
			},
		],
	},
	{
		name = "WeddingWitchDead04Cliffe",
		criteria = 
		[
			["concept", "WeddingWitchDead04"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WeddingWitchDead04Cliffe,
			},
		],
	},
	{
		name = "WorldIntroC31a1Cliffe",
		criteria = 
		[
			["concept", "WorldIntroC31a1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31a1Cliffe,
				followup = RThenAny("WorldIntroC31a2", -3.526), // Well, he wasn't doing a very good job once he became a zombie now was he?
			},
		],
	},
	{
		name = "WorldIntroC31a3Cliffe",
		criteria = 
		[
			["concept", "WorldIntroC31a3"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31a3Cliffe,
			},
		],
	},
	{
		name = "WorldIntroC31b1Cliffe",
		criteria = 
		[
			["concept", "WorldIntroC31b1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31b1Cliffe,
				followup = RThen("producer", "WorldIntroC31e2", null, -1.403), // This looks like a friendly place.
			},
		],
	},
	{
		name = "WorldIntroC31c2Cliffe",
		criteria = 
		[
			["concept", "WorldIntroC31c2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31c2Cliffe,
				followup = RThen("producer", "WorldIntroC31c3", null, -1.612), // I can't believe none of you were going to shoot him.
			},
		],
	},
	{
		name = "WorldIntroC31c4Cliffe",
		criteria = 
		[
			["concept", "WorldIntroC31c4"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31c4Cliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Whatever.
			},
		],
	},
	{
		name = "WorldIntroC31d1Cliffe",
		criteria = 
		[
			["concept", "WorldIntroC31d1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31d1Cliffe,
				followup = RThenAny("WorldIntroC31d2", -2.303), // No problem big guy, sorry about the landing.
			},
		],
	},
	{
		name = "WorldIntroC31e3aCliffe",
		criteria = 
		[
			["concept", "WorldIntroC31e3a"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC31e3aCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Great, we crash land in front of a village that hates everyone.
			},
		],
	},
	{
		name = "WorldIntroC3f2Cliffe",
		criteria = 
		[
			["concept", "WorldIntroC3f2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldIntroC3f2Cliffe,
				followup = RThen("coach", "WorldIntroC3e1", null, -1.612), // I can't believe none of you were going to shoot him.
			},
		],
	},
	{
		name = "PlayerCoverMeHealCliffe",
		criteria = 
		[
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.PlayerCoverMeHealCliffe,
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
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotAlone],
			[IsWorldTalkCliffe],
			["map", "c1m1_hotel"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerCoverMeHealC1Cliffe,
				followup = RThen("mechanic", "Player.CoverMeC1R", null, -1.375), // I'm gonna patch myself up.
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.Player_LostCallC6M3Cliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.AutoPlayerLostCallCliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "chainsaw"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChainsawCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "chainsaw"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedChainsawCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "cricket_bat"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedcricket_batCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "cricket_bat"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedcricket_batCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "crowbar"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedcrowbarCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "crowbar"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedcrowbarCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGolfClubCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGolfClubCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "electric_guitar"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGuitarCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "electric_guitar"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGuitarCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Katana"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedKatanaCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Katana"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedKatanaCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "LaserSights"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedLaserSightsCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "LaserSights"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedLaserSightsCliffe,
			},
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 1],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedLaserSightsCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedM60Cliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedM60Cliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Machete"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMacheteCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Machete"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMacheteCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "magnum"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMagnumCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "magnum"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMagnumCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "tonfa"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedtonfaCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "tonfa"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedtonfaCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "AutoShotgun"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "AutoShotgun"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_chrome"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_chrome"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_spas"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_spas"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "PumpShotgun"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "PumpShotgun"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_AK47"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_AK47"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_desert"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_desert"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_sg552"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_sg552"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedARCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SecondPistol"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSecondPistolCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SecondPistol"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedSecondPistolCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "SMG"],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "SMG"],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Smg_silenced"],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Smg_silenced"],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Smg_mp5"],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Smg_mp5"],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "HuntingRifle"],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "HuntingRifle"],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Sniper_military"],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Sniper_military"],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Sniper_scout"],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Sniper_scout"],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Sniper_awp"],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["weaponname", "Sniper_awp"],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "baseball_bat"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "baseball_bat"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "frying_pan"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "frying_pan"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "fireaxe"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "fireaxe"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shovel"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shovel"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Pitchfork"],
			[IsWorldTalkCliffe],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Pitchfork"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["weaponname", "Knife"],
			[IsNotSmartLookAuto],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Knife"],
			[IsWorldTalkCliffe],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedMeleeWeaponCliffe,
			},
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
			["concept", "PlayerSpotPistol"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedPistolCliffe,
			},
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
			["concept", "PlayerSpotOtherWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedWeaponCliffe,
			},
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
			["concept", "PlayerSpotShotgun"],
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.SurvivorSpottedShotgunCliffe,
			},
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			[ChanceToFire50Percent],
			["incapacitated", 0],
			["map", "c2m3_coaster"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_alarm", 1],
			["world_auto_tracksok", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkc2m3_coasteroffCliffe,
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
			["concept", "AskWhat"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.AskWhatCliffe,
			},
		],
	},
	{
		name = "C13M1IntroStartCliffe",
		criteria = 
		[
			["concept", "introC13M1"],
			["who", "Cliffe"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1IntroStartCliffe,
				followup = RThenAny("C13M1Intro2", 0.1), // Shit! This place is burnin' up FAST.
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
			["concept", "C13M1Intro2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1Intro2Cliffe,
				followup = RThenAny("C13M1Intro3", 0.1), // Which way?
			},
		],
	},
	{
		name = "C13M1Intro3Cliffe",
		criteria = 
		[
			["concept", "C13M1Intro3"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1Intro3Cliffe,
				followup = RThenAny("C13M1IntroLocationLast", 0.1), // Come on, this way!
			},
		],
	},
	{
		name = "C13M1IntroLastCliffe",
		criteria = 
		[
			["concept", "C13M1IntroLast"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1IntroLastCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Look at ya. What are we waiting for?  Let's go.
			},
		],
	},
	{
		name = "C13M1IntroLocationLastCliffe",
		criteria = 
		[
			["concept", "C13M1IntroLocationLast"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M1IntroLocationLastCliffe,
				followup = RThen("self", "IntroEnd", null, 0.1), // Good enough for me. Grab a weapon and let's go.
			},
		],
	},
	{
		name = "RemarkC13M1UpHillCliffe",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M1Uphill"],
			[IsNotRemarkedC13M1UpHill],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC3M3UpHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M1DownHere"],
			[IsNotRemarkedC13M1DownHere],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M1ThroughHere"],
			[IsNotRemarkedC13M1ThroughHere],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.RemarkC13M1ThroughHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M1ThroughWindow"],
			[IsNotRemarkedC13M1ThroughWindow],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc2m1_throughwindowCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M1UpSteps"],
			[IsNotRemarkedC13M1UpSteps],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upstepsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M1CrossHere"],
			[IsNotRemarkedC13M1CrossHere],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc4m3_crosshereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M1PreBunkerOpen"],
			[IsNotRemarkedC13M1PreBunkerOpen],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.RemarkC13M1PreBunkerOpenCliffe,
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
			["concept", "C13M1OpeningBunker"],
			["who", "Cliffe"],
			[IsNotC13M1OpeningBunker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerC3M2OpenDoor2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M2Uphill"],
			[IsNotRemarkedC13M2UpHill],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.RemarkC13M2UpHillCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M2DownHere"],
			[IsNotRemarkedC13M2DownHere],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M2UpLadder"],
			[IsNotRemarkedC13M2UpLadder],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upladderCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M2UpStairs"],
			[IsNotRemarkedC13M2UpStairs],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkc5m3upstepsCliffe,
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
			["concept", "C13M2TankApproaching"],
			["who", "Cliffe"],
			[IsNotNoticedC13M2ShakingGround],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M2TankApproachingCliffe,
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
			["concept", "C13M2BarrelsIgnited"],
			["who", "Cliffe"],
			[IsNotC13M2IgnitedBarrels],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M2BarrelsIgnitedCliffe,
				followup = RThenAny("C13M2Barrels1", 5.0), // Back it up!
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
			["concept", "C13M2Barrels1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M2Barrels1Cliffe,
				followup = RThenAny("C13M2Barrels2", 0.01), // Woah shit.
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
			["concept", "C13M2Barrels2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M2Barrels2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "C13M3DownHere"],
			[IsNotRemarkedC13M3DownHere],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkC1M3DownHereCliffe,
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
			["concept", "C13M3ApproachingTanker"],
			["who", "Cliffe"],
			[IsNotSawC13M3Tanker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3ApproachingTankerCliffe,
				followup = RThenAny("C13M3Tanker1", 1.0), // Alright, I'm not walking through THAT. Let's find another way.
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
			["concept", "C13M3Tanker1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3Tanker1Cliffe,
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
		name = "C13M3Tanker2Cliffe",
		criteria = 
		[
			["concept", "C13M3Tanker2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3Tanker2Cliffe,
				followup = RThenAny("C13M3Tanker3", 3.0), // Back it up!
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
			["concept", "C13M3Tanker3"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3Tanker3Cliffe,
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
			["concept", "C13M3OnScaffold"],
			["who", "Cliffe"],
			[IsNotOnC13M3Scaffold],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3OnScaffoldCliffe,
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
			["concept", "C13M3Airstrike"],
			["who", "Cliffe"],
			[IsNotWitnissedC13M3Airstrike],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3AirstrikeCliffe,
				followup = RThenAny("C13M3Airstrike2", 0.01), // SHIT!
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
			["concept", "C13M3Airstrike2"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M3Airstrike2Cliffe,
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
			["concept", "C13M4Button1"],
			["who", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4Button1Cliffe,
				followup = RThen("orator", "C13M4FinaleBrief", null, 0.3), // Um, hello?
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
			["concept", "FinaleTriggered"],
			["who", "Cliffe"],
			["map", "c13m4_cutthroatcreek"],
			["triggeredby", "Cliffe"],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4FinaleTriggeredCliffe,
				followup = RThen("orator", "C13M4FinaleStart", null, 0.01), // Okay, yeah, got it.  Sure.  See you soon.
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
			["concept", "C13M4FinaleStart2"],
			["who", "Cliffe"],
			["world_auto_talkingcliffe", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4FinaleStart2Cliffe,
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
			["concept", "C13M4DownCreek"],
			["who", "Cliffe"],
			[IsNotInC13M4Creek],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterCliffe,
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
			["concept", "C13M4InSmoke"],
			["who", "Cliffe"],
			[IsNotInC13M4Smoke],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorCoughingCliffe,
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
			["concept", "C13M4NoticedHelicopter"],
			["who", "Cliffe"],
			[IsNotNoticedC13M4Helicopter],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4NoticedHelicopterCliffe,
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
			["concept", "C13M4AlmostThere"],
			["who", "Cliffe"],
			[IsNotC13M4AlmostThere],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4AlmostThereCliffe,
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
			["concept", "FinalVehicleSpotted"],
			["who", "Cliffe"],
			["map", "c13m4_cutthroatcreek"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4SpottedVehicleCliffe,
				followup = RThen("pilot", "C13M4PilotEscapeNag", null, 2.0), // Let's go people, let's go!
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C13M4GetToVehicleCliffe,
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
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
			[_auto_NotTimerLockCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C5M5InsideHeliCliffe,
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
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			["instartarea", 1],
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
			["concept", "IntroEnd"],
			["who", "Cliffe"],
			["from", "Cliffe"],
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
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Cliffe"],
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
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "Cliffe"],
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
			["concept", "FinaleTriggered"],
			["who", "Cliffe"],
			["triggeredby", "Cliffe"],
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
			["concept", "FinaleTriggered"],
			["who", "Cliffe"],
			["triggeredby", "Cliffe"],
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
			["concept", "FinalVehicleSpotted"],
			["who", "Cliffe"],
			["world_auto_finale", 1],
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
			["concept", "FinalVehicleArrived"],
			["who", "Cliffe"],
			["world_auto_finale", 2],
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
			["coughing", 0],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotCliffe,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotFrancisCliffe",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			["coughing", 0],
			["who", "Cliffe"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["subject", "Biker"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotFrancisCliffe,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotLouisCliffe",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			["coughing", 0],
			["who", "Cliffe"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["subject", "Manager"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotLouisCliffe,
			},
		],
	},
	{
		name = "L4D1PlayerNiceShotZoeyCliffe",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			["coughing", 0],
			["who", "Cliffe"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["subject", "TeenGirl"],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.L4D1PlayerNiceShotZoeyCliffe,
			},
		],
	},
	{
		name = "C6M3GasPourCliffe",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotScavenge],
			["map", "c6m3_port"],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3GasPourCliffe,
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
			["concept", "C6M1_IntotheparkNoHealth"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1_IntotheparkNoHealthCliffe,
			},
		],
	},
	{
		name = "C6M1Intro_01Biker05Cliffe",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "Cliffe"],
			["introactor", "francis"],
			[IsNotSaidIntroScene],
			[FrancisGroup5],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_01Biker05Cliffe,
				followup = RThen("Biker", "C6M1Intro_10a", null, -9.671), // I'm telling you for the last goddamn time, lower the goddamn bridge you greasy vest wearing monkey.
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
			["concept", "C6M1Intro_07b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_07bCliffe,
				followup = RThen("Producer", "C6M1Intro_07c", null, -1.13), // That guy's no cop.
			},
		],
	},
	{
		name = "C6M1Intro_09aCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_09a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09aCliffe,
				followup = RThen("Cliffe", "C6M1Intro_09b", null, -0.741), // Hey! (Realization someone else is alive) HEEEYYY!!
			},
		],
	},
	{
		name = "C6M1Intro_09bCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_09b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09bCliffe,
				followup = RThen("Biker", "C6M1Intro_09c", null, -1.071), // Hey! (Realization someone else is alive) HEEEYYY!!
			},
		],
	},
	{
		name = "C6M1Intro_09dCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_09d"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_09dCliffe,
				followup = RThen("Producer", "C6M1Intro_09e", null, -0.876), // What the...
			},
		],
	},
	{
		name = "C6M1Intro_10eCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_10e"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_10eCliffe,
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
			["concept", "C6M1Intro_11d"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_11dCliffe,
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
			["concept", "C6M1Intro_14a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_14aCliffe,
				followup = RThen("Biker", "C6M1Intro_14b", null, -6.925), // Okay, listen to me, jackass, lower the goddamn bridge so we can drive our goddamn car across.
			},
		],
	},
	{
		name = "C6M1Intro_14cCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_14c"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_14cCliffe,
				followup = RThen("Producer", "C6M1Intro_14d", null, -1.1), // (to his group) Do you believe this guy?
			},
		],
	},
	{
		name = "C6M1Intro_15aCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_15a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_15aCliffe,
				followup = RThen("TeenGirl", "C6M1Intro_15b", null, -4.406), // That's terrific cupcake, is there a man up there we can talk to?
			},
		],
	},
	{
		name = "C6M1Intro_15eCliffe",
		criteria = 
		[
			["concept", "C6M1Intro_15e"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_15eCliffe,
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
			["concept", "C6M1Intro_16a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1Intro_16aCliffe,
				followup = RThen("Biker", "C6M1Intro_16b", null, -3.16), // Well then climb down, you big ape, and help us.
			},
		],
	},
	{
		name = "LeavingC6M1StartCliffe",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.LeavingC6M1StartCliffe,
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
			["concept", "RemWorldC6M1_WeddingWarn02"],
			["who", "Cliffe"],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.RemWorldC6M1_WeddingWarn02Cliffe,
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
			["who", "Cliffe"],
			[IsNotLeftC6M1Start],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_HistoricTourCliffe,
			},
		],
	},
	{
		name = "WorldC6M1_PostWedding02aCliffe",
		criteria = 
		[
			["concept", "WorldC6M1_PostWedding02a"],
			["who", "Cliffe"],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_PostWedding02aCliffe,
			},
		],
	},
	{
		name = "WorldC6M1_WeddingWarn05aCliffe",
		criteria = 
		[
			["concept", "WorldC6M1_WeddingWarn05a"],
			["who", "Cliffe"],
			[IsSubjectDistNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M1_WeddingWarn05aCliffe,
			},
		],
	},
	{
		name = "C6M2_OpenGate1Cliffe",
		criteria = 
		[
			["concept", "C6M2_OpenGate1"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate1Cliffe,
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
			["concept", "C6M2_OpenGate1a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate1aCliffe,
				followup = RThen("Mechanic", "C6M2_OpenGate1b", null, -1.679), // Ellis, what did you just do?
			},
		],
	},
	{
		name = "C6M2_OpenGate2Cliffe",
		criteria = 
		[
			["concept", "C6M2_OpenGate2"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M2_OpenGate2Cliffe,
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
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C6M2SafeRoomCliffe,
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
		name = "DLC1_C6M2_SafeRoomConvo01Cliffe",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			["who", "Cliffe"],
			["introactor", "francis"],
			[FrancisGroup5],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo01Cliffe,
				followup = RThenAny("DLC1_C6M2_SafeRoomConvo01a", -5.037), // So we find this historic section. Go under the river. And then we kick that biker dude's ass, right?
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
			["concept", "DLC1_C6M2_SafeRoomConvo01b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo01bCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo02Cliffe",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			["who", "Cliffe"],
			["introactor", "francis"],
			[FrancisGroup1],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo02Cliffe,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo02a", null, -3.153), // I can't believe we're waking this far just to keep a damn car.
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
			["concept", "DLC1_C6M2_SafeRoomConvo02b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo02bCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo06aCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo06a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo06aCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo07aCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo07a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo07aCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08Cliffe",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			["who", "Cliffe"],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08Cliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo09a", null, -5.742), // So this under-the-river tour, who wants to bet that is going to be filthy.
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
			["concept", "DLC1_C6M2_SafeRoomConvo08a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08aCliffe,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo08b", null, -1.68), // What's a matter Rochelle, playing hard to get?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08c"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08cCliffe,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo08d", null, -1.86), // I saw the way you were looking at him.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo08eCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo08e"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo08eCliffe,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo08f", null, -2.774), // I don't know... he fills out a vest pretty good.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo09bCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo09b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo09bCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo10Cliffe",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			["who", "Cliffe"],
			["introactor", "zoey"],
			[ZoeyGroup2],
			[IsNotSaidC6M2SafeRoom2],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10Cliffe,
				followup = RThen("Mechanic", "DLC1_C6M2_SafeRoomConvo11a", null, -4.165), // So Ellis, Zoey huh? What do you think?
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
			["concept", "DLC1_C6M2_SafeRoomConvo10b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10bCliffe,
				followup = RThen("Producer", "DLC1_C6M2_SafeRoomConvo10c", null, -4.362), // Yeah, hahaha a little bit more hand sanitizer and we wouldn't be in this mess.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo10dCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo10d"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo10dCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo11bCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo11b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo11bCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12aCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo12a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo12aCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo12b", null, -5.184), // Okay, let me get this straight. It's a tunnel... under the river. Right?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo12c"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo12cCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo12d", null, -3.094), // And this is supposed to teach me about what exactly?
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13aCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo13a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13aCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo13b", null, -2.783), // I am not looking forward to this under the river tour.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo13c"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo13cCliffe,
				followup = RThen("Coach", "DLC1_C6M2_SafeRoomConvo13d", null, -4.824), // Okay, good point. You know what? I am looking forward to punching that grease bag biker in the mouth.
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14fCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo14f"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo14fCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M2_SafeRoomConvo15c"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M2_SafeRoomConvo15cCliffe,
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
			["concept", "WorldC6M2_AfterGate201a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_AfterGate201aCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_FinalWater01aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_FinalWater01a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_FinalWater01aCliffe,
				followup = RThen("Mechanic", "WorldC6M2_FinalWater01b", null, -1.524), // I hate you, Ellis!
			},
		],
	},
	{
		name = "WorldC6M2_InSewer101cCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer101c"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer101cCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer102bCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer102b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer102bCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer201aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer201a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer201aCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_InSewer202aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewer202a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewer202aCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_InSewerLadder101aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_InSewerLadder101a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_InSewerLadder101aCliffe,
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk101aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk101a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_OnTourWalk101aCliffe,
				followup = RThen("Coach", "WorldC6M2_OnTourWalk101c", null, -0.596), // Shithole?
			},
		],
	},
	{
		name = "WorldC6M2_OnTourWalk102aCliffe",
		criteria = 
		[
			["concept", "WorldC6M2_OnTourWalk102a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_OnTourWalk102aCliffe,
				followup = RThenAny("WorldC6M2_OnTourWalk102b", -0.666), // Toldja.
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo01b_Cliffe",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo01b>"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_Tattoo01b_Cliffe,
			},
		],
	},
	{
		name = "WorldC6M2_Tattoo03a_Cliffe",
		criteria = 
		[
			["concept", "WorldC6M2_Tattoo03a>"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WorldC6M2_Tattoo03a_Cliffe,
				followup = RThen("Mechanic", "WorldC6M2_Tattoo03b>", null, -1.811), // I'm gonna get a tattoo that says "no".
			},
		],
	},
	{
		name = "C6M3_BridgeDownCliffe",
		criteria = 
		[
			["concept", "C6M3_BridgeDown"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_BridgeDownCliffe,
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
			["concept", "PlayerGetToRescueVehicle"],
			["who", "Cliffe"],
			[IsNotSaidGetToCar],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_BridgeGettoCarCliffe,
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
			["concept", "SceneCancelled"],
			["who", "Cliffe"],
			[IsNotSaidC6M3Elevator],
			["map", "c6m3_port"],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_elevatorCliffe,
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
			["concept", "SceneCancelled"],
			["who", "Cliffe"],
			[IsNotSaidC6M3Elevator],
			["map", "c6m3_port"],
			["introactor", "francis"],
			[IsNotVersus],
			[FrancisGroup5],
		],
		//forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_elevatorFrancisCliffe,
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
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "Biker"],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_GivenItemBikerCliffe,
			},
		],
	},
	{
		name = "C6M3_GivenItemTeenGirlCliffe",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "Cliffe"],
			["itemdonor", "TeenGirl"],
			[Isc6m3_portHeavy],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_GivenItemTeenGirlCliffe,
			},
		],
	},
	{
		name = "C6M3SafeRoomCliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[Joined3],
			["who", "Cliffe"],
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
				func = Custom_Talker_Cliffe.C6M3SafeRoomCliffe,
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
		name = "DLC1_C6M3_SafeRoomConvo02Cliffe",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			["who", "Cliffe"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "francis"],
			[FrancisGroup5],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02Cliffe,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo02a1", null, -2.706), // I don't trust that biker. He better still be here.
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
			["concept", "DLC1_C6M3_SafeRoomConvo02b"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02bCliffe,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo02c", null, -1.357), // You know him that well?
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02dCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo02d"],
			["who", "Cliffe"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo02dCliffe,
				followup = RThenAny("DLC1_C6M3_SafeRoomConvo02e", -3.014), // You got a good feeling about every scumbag that lives on a bridge.
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03bCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo03b"],
			["who", "Cliffe"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo03bCliffe,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo03c", null, -1.836), // Like you've been crawling through a sewer.
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03dCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo03d"],
			["who", "Cliffe"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo03dCliffe,
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04cCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo04c"],
			["who", "Cliffe"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo04cCliffe,
				followup = RThenAny("DLC1_C6M3_SafeRoomConvo04d", -5.593), // Don't listen to her. You got five minutes to get this done, Ellis. It is do or die time, buddy.
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05Cliffe",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			["who", "Cliffe"],
			[IsNotSaidC6M3SafeRoom2],
			["introactor", "zoey"],
			[ZoeyGroup1],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05Cliffe,
				followup = RThen("Mechanic", "DLC1_C6M3_SafeRoomConvo05a", null, -2.866), // So we're about to see that girl again, what's her name? Zoey?
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
			["concept", "DLC1_C6M3_SafeRoomConvo05b"],
			["who", "Cliffe"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05bCliffe,
				followup = RThen("Producer", "DLC1_C6M3_SafeRoomConvo05c", null, -6.224), // What are you nervous about? You had your chance, you didn't do shit. Now you can watch Nick take care of business.
			},
		],
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo05dCliffe",
		criteria = 
		[
			["concept", "DLC1_C6M3_SafeRoomConvo05d"],
			["who", "Cliffe"],
			["instartarea", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.DLC1_C6M3_SafeRoomConvo05dCliffe,
			},
		],
	},
	{
		name = "IncapBounceCliffe",
		criteria = 
		[
			["concept", "SurvivorIncapacitated"],
			["who", "Cliffe"],
			[IsNotSaidInCapBounce],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.IncapBounceCliffe,
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
		name = "C6M3_CansDoneCliffe",
		criteria = 
		[
			["concept", "c6m3escapeready"],
			["who", "Cliffe"],
			["map", "c6m3_port"],
			[IsNotSaidc6m3escapeready],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_CansDoneCliffe,
				followup = RThenAny("EmphaticArriveRun", -1.156), // Everyone to the car!
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
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Fallen"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedFallenCliffe,
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
			["concept", "PlayerExertionMinor"],
			["who", "Cliffe"],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidCliffeWitchChasing],
			["saidwitchattacking", 1],
			["map", "c6m1_riverbank"],
		],
		//forceweight 20
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerWitchChasingC6M1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "remark_MidnightRidersBus"],
			[IsNotSaidremark_MidnightRidersBus],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkremark_MidnightRidersBusCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_AcrossHere"],
			[IsNotSaidWorldC6M1_AcrossHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AcrossHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_AlleyBelow"],
			[IsNotSaidWorldC6M1_AlleyBelow],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AlleyBelowCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_AlleyIntoBuilding"],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_AlleyIntoBuildingCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_InApts"],
			[IsNotSaidWorldC6M1_InApts],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_InAptsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_Intothepark"],
			[IsNotSaidWorldC6M1_Intothepark],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_IntotheparkCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_IntoThePark2"],
			[IsNotSaidWorldC6M1_IntoThePark2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_IntoThePark2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_IntoTheStore"],
			[IsNotSaidWorldC6M1_IntoTheStore],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_IntoTheStoreCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_SafeRoomAlley"],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_SafeRoomAlleyCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_ThroughBar"],
			[IsNotSaidWorldC6M1_ThroughBar],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_ThroughBarCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_UpHere"],
			[IsNotSaidWorldC6M1_UpHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_UpTheStairs"],
			[IsNotSaidWorldC6M1_UpTheStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpTheStairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_UpTheStairs2"],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_UpTheStairs2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnCliffe,
				followup = RThen("Coach", "WorldC6M1_WeddingWarn04a", null, -3.613), // Careful! I've seen a bride just like this before.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarn1Cliffe,
				followup = RThen("Coach", "WorldC6M1_WeddingWarn04a", null, -3.613), // Careful! I've seen a bride just like this before.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarn2Cliffe,
				followup = RThen("Coach", "WorldC6M1_WeddingWarn04a", null, -3.613), // Careful! I've seen a bride just like this before.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarn3Cliffe,
				followup = RThen("Coach", "WorldC6M1_WeddingWarn04a", null, -3.613), // Careful! I've seen a bride just like this before.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsMechanicNear800Weight0],
			["introactor", "zoey"],
			[ZoeyGroup2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnAngelCliffe,
				followup = RThenAny("WorldC6M1_WeddingWarn03a", -2.394), // (whispered in Ellis accent) Ellis look, it's another angel.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M1_WeddingWarn"],
			[IsNotSaidWorldC6M1_WeddingWarn],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsMechanicNear800Weight0],
			["introactor", "zoey"],
			[ZoeyGroup1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M1_WeddingWarnEllisCliffe,
				followup = RThenAny("WorldC6M1_WeddingWarn03a", -3.257), // Ellis, maybe you should grab that dress for your new girlfriend.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_AcrossPlank"],
			[IsNotSaidWorldC6M2_AcrossPlank],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear250],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AcrossPlankCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_AfterGate1"],
			[IsNotSaidWorldC6M2_AfterGate1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AfterGate1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_AfterGate2"],
			[IsNotSaidWorldC6M2_AfterGate2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_AfterGate2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_DownHere"],
			[IsNotSaidWorldC6M2_DownHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_DownHereCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_DownIntoBuilding"],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_DownIntoBuildingCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_FinalLadder"],
			[IsNotSaidWorldC6M2_FinalLadder],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalLadderCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_FinalWater"],
			[IsNotSaidWorldC6M2_FinalWater],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_FinalWaterGoGo"],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_FinalWaterGoGoCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_InJazzClub"],
			[IsNotSaidWorldC6M2_InJazzClub],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear1000],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InJazzClubCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_InSewer1"],
			[IsNotSaidWorldC6M2_InSewer1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewer1Cliffe,
				followup = RThenAny("WorldC6M2_InSewer101a", -3.475), // (to self) It's just a storm sewer, it is just a STORM sewer�
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_InSewer2"],
			[IsNotSaidWorldC6M2_InSewer2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			["worldsaidworldc6m2_insewer1", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewer2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_InSewerLadder1"],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_InSewerLadder1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_IntoConstruction"],
			[IsNotSaidWorldC6M2_IntoConstruction],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_IntoConstructionCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_IntoPoolHall"],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_IntoPoolHallCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_JukeBox"],
			[IsNotSaidWorldC6M2_JukeBox],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_JukeBoxCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_JumpDown"],
			[IsNotSaidWorldC6M2_JumpDown],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_JumpDownCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OnTourWalk1"],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk1Cliffe,
				followup = RThen("Coach", "WorldC6M2_OnTourWalk103a", null, -4.828), // [sarcastic] Yeah. Tunnels. You're right, Coach, you're so right. History is coming alive.
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OnTourWalk2"],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OnTourWalk3"],
			[IsNotSaidWorldC6M2_OnTourWalk3],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OnTourWalk3Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OpenGate1"],
			[IsNotSaidWorldC6M2_OpenGate1],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate1Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_OpenGate2"],
			[IsNotSaidWorldC6M2_OpenGate2],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_OpenGate2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Phase2"],
			[IsNotSaidWorldC6M2_Phase2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2Cliffe,
				followup = RThen("Producer", "WorldC6M2_Phase201a", null, -1.901), // Phase Two? Does this even go through?
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2DownCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Phase2Down"],
			[IsNotSaidWorldC6M2_Phase2Down],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_Phase2DownIntenseCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_PostGate1"],
			[IsNotSaidWorldC6M2_PostGate1],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			["worldsaidopenedgate1", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_PostGate1xCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_SafeRoom"],
			[IsNotSaidWorldC6M2_SafeRoom],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear800],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_SafeRoomCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Suitcase"],
			[IsNotSaidWorldC6M2_Suitcase],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear100],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_SuitcaseCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsMechanicNear800Weight0],
			["introactor", "zoey"],
			[ZoeyGroup1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooZoeyCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_Tattoo"],
			[IsNotSaidWorldC6M2_Tattoo],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsMechanicNear800Weight0],
			["introactor", "zoey"],
			[ZoeyGroup2],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TattooZoey2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_TourEntrance"],
			[IsNotSaidWorldC6M2_TourEntrance],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_TourEntranceCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_UpCatWalk"],
			[IsNotSaidWorldC6M2_UpCatWalk],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpCatWalkCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_UpStairs"],
			[IsNotSaidWorldC6M2_UpStairs],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpStairsCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M2_UpStairs2"],
			[IsNotSaidWorldC6M2_UpStairs2],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M2_UpStairs2Cliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M3_BridgeRun"],
			[IsNotSaidWorldC6M3_BridgeRun],
			["coughing", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_BridgeRunCliffe,
				followup = RThenAny("WorldC6M3_ByBridge01", -1.13), // THANKS, YOU THREE!
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldC6M3_ByBridge"],
			[IsNotSaidWorldC6M3_ByBridge],
			["coughing", 0],
			["incombat", 0],
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
				func = Custom_Talker_Cliffe.PlayerRemarkWorldC6M3_ByBridgeCliffe,
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
			["concept", "TLK_REMARK"],
			["who", "Cliffe"],
			["subject", "WorldFootLocker"],
			[IsNotSaidWorldFootLocker],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.PlayerRemarkWorldFootLockerCliffe,
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
			["concept", "PlayerPourFinished"],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["map", "c6m3_port"],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M3_PourFinishedCliffe,
				followup = RThen("Manager", "L4D1_NiceJobPour", null, 0.0), // 
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
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkCliffe],
			["incapacitated", 0],
			[IsWorldTalkCliffe],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorNearFinaleC6M3Cliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "SMG"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[CliffeNotPickedUpItem],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
			["worldjustsaidworldc6m1_intothestore", 1],
			[FrancisGroup5],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C6M1TakeSubMachineGunCliffe,
				followup = RThen("Coach", "C6M1TakeSubMachineGun01", null, -2.621), // (picking up gun) Hold on a sec, I'm gonna go back and shoot that jackass.
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "GolfClub"],
			[IsNotSpeaking],
			[CliffeNotPickedUpItem],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupGolfCLubCliffe,
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
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "Cliffe"],
			["itempickedup", "m60"],
			[IsNotSpeaking],
			[CliffeNotPickedUpItem],
			[IsTalk],
			[IsTalkCliffe],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorPickupM60Cliffe,
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
			["concept", "HistoricTour01a"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.HistoricTour01aCliffe,
			},
		],
	},
	{
		name = "WeddingWitchDead03Cliffe",
		criteria = 
		[
			["concept", "WeddingWitchDead03"],
			["who", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.WeddingWitchDead03Cliffe,
			},
		],
	},
	{
		name = "Player_LostCallC6M3Cliffe",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "Cliffe"],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			["map", "c6m3_port"],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Player_LostCallC6M3Cliffe,
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGolfClubCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedGolfClubAutoCliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
			[IsWorldTalkCliffe],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedM60Cliffe,
			},
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
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "Cliffe"],
			[IsTalk],
			[IsTalkCliffe],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
			[IsWorldTalkCliffe],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.SurvivorSpottedM60AutoCliffe,
			},
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
			["concept", "C1M2InsideGunShop"],
			["whodidit", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M2InsideGunShopCliffe,
				followup = RThen("cliffe", "C1M2InsideGunShop2", null, 0.0), // Blank
			},
		],
	},
	{
		name = "C1M3AlarmOffOratorCliffe",
		criteria = 
		[
			["concept", "C1M3AlarmOff"],
			["whodidit", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3AlarmOffOratorCliffe,
				followup = RThen("cliffe", "C1M3AlarmOff2", null, 0.0), // 
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
			["concept", "C1M3BrokeWindow"],
			["whodidit", "Cliffe"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.C1M3BrokeWindowOratorCliffe,
				followup = RThen("cliffe", "C1M3AlarmActive", null, 0.0), // 
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
			["concept", "Airport02CraneStarted"],
			["whodidit", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.HitCraneButtonCliffe,
				followup = RThen("Cliffe", "airport02_creshendoCrane", null, 0.01), // [BLANK]
			},
		],
	},
	{
		name = "Airport03FireStartedCliffe",
		criteria = 
		[
			["concept", "Airport03FireStarted"],
			["whodidit", "Cliffe"],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.Airport03FireStartedCliffe,
				followup = RThen("Cliffe", "Airport03FireStartedX", null, 0.01), // [BLANK]
			},
		],
	},
	{
		name = "FinaleSceneTriggerFrancisCliffe",
		criteria = 
		[
			["concept", "C6M3Stairs"],
			["who", "Cliffe"],
			[IsNotSaidFinaleExchange],
			["map", "c6m3_port"],
			["introactor", "francis"],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_Cliffe.FinaleSceneTriggerFrancisCliffe,
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
