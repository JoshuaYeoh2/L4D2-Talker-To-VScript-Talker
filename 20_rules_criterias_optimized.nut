local beta_zoey_rvc_rules = 
[
	{
		name = "ConceptHospitalRadioTalkBetaZoeyRVC",
		criteria = 
		[
			["concept", "ConceptHospitalRadioTalk"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ConceptHospitalRadioTalkTeenGirl,
				followup = RThen("pilot", "ConceptHospitalRadioPrepare", null, -0.636),
			},
		],
	},

	{
		name = "ConceptHospitalReadyConfirmedBetaZoeyRVC",
		criteria = 
		[
			["concept", "ConceptHospitalReadyConfirmed"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ConceptHospitalReadyConfirmedTeenGirl,
				followup = RThen("pilot", "ConceptHospitalPilotOnTheWay", null, -0.875),
			},
		],
	},

	{
		name = "C6M3PlayerNiceShotBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IssuerNotSoClose],
			["map", "c6m3_port"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeaking],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M3PlayerNiceShotTeenGirl,
			},
		],
	},

	{
		name = "PlayerNiceShotBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IssuerClose],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M3PlayerNiceShotTeenGirl,
			},
		],
	},

	{
		name = "PlayerNiceShotNamVetBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IssuerClose],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["subject", "NamVet"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerNiceShotNamVetTeenGirl,
			},
		],
	},

	{
		name = "L4D1ReviveMeInterruptedMinorBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveMeInterrupted"],
			["who", "BetaZoeyRVC"],
			[IsIncappedStarted],
			[IsIncappedStarted2],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveMeInterruptedMinorTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1ReviveMeInterruptedMajorBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveMeInterrupted"],
			["who", "BetaZoeyRVC"],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveMeInterruptedMajorTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1ReviveMeInterruptedCriticalBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveMeInterrupted"],
			["who", "BetaZoeyRVC"],
			[IsIncappedLethargic],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveMeInterruptedCriticalTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorMournBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "namvet"],
			[IsNotSaidSomeoneDied],
			[HasNotDefibrillator],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorMournBillTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorMournFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "biker"],
			[IsNotSaidSomeoneDied],
			[HasNotDefibrillator],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorMournFrancisTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorMournLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "manager"],
			[IsNotSaidSomeoneDied],
			[HasNotDefibrillator],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorMournLouisTeenGirl,
			},
		],
	},

	{
		name = "PlayerRelaxedSighBetaZoeyRVC",
		criteria = 
		[
			["concept", "RelaxedSigh"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRelaxedSighTeenGirl,
			},
		],
	},

	{
		name = "PlayerUseAdrenalineBetaZoeyRVC",
		criteria = 
		[
			["concept", "UseAdrenaline"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerUseAdrenalineTeenGirl,
			},
		],
	},

	{
		name = "L4D1ThanksGotItemBetaZoeyRVC",
		criteria = 
		[
			["concept", "Award"],
			["awardname", "Sharing"],
			["coughing", 0],
			["subject", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ThanksGotItemTeenGirl,
			},
		],
	},

	{
		name = "L4D1RescuedSurvivorBetaZoeyRVC",
		criteria = 
		[
			["concept", "Award"],
			["awardname", "Rescuer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RescuedSurvivorTeenGirl,
			},
		],
	},

	{
		name = "PlayerGivenItemBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGivenItem"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerGivenItemTeenGirl,
			},
		],
	},

	{
		name = "ItemDonorProducerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "BetaZoeyRVC"],
			["itemdonor", "Producer"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ItemDonorProducerTeenGirl,
				followup = RThen("producer", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorCoachBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "BetaZoeyRVC"],
			["itemdonor", "Coach"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ItemDonorCoachTeenGirl,
				followup = RThen("coach", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorGamblerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "BetaZoeyRVC"],
			["itemdonor", "Gambler"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ItemDonorGamblerTeenGirl,
				followup = RThen("gambler", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorMechanicBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "BetaZoeyRVC"],
			["itemdonor", "Mechanic"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ItemDonorMechanicTeenGirl,
				followup = RThen("mechanic", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorBikerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "BetaZoeyRVC"],
			["itemdonor", "Biker"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ItemDonorBikerTeenGirl,
				followup = RThen("biker", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorManagerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "BetaZoeyRVC"],
			["itemdonor", "Manager"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ItemDonorManagerTeenGirl,
				followup = RThen("manager", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ItemDonorNamVetBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["who", "BetaZoeyRVC"],
			["itemdonor", "NamVet"],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ItemDonorNamVetTeenGirl,
				followup = RThen("namvet", "YouAreWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1HealThanksBetaZoeyRVC",
		criteria = 
		[
			["concept", "HealedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsNotBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1HealThanksTeenGirl,
				followup = RThen("Subject", "YouAreWelcome", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "L4D1ReviveThanksBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1HealThanksTeenGirl,
				followup = RThen("Subject", "YouAreWelcome", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "L4D1ReviveThanksBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "NamVet"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveThanksBillTeenGirl,
				followup = RThen("Subject", "YouAreWelcome", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "L4D1ReviveThanksFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "Biker"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveThanksFrancisTeenGirl,
				followup = RThen("Subject", "YouAreWelcome", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "L4D1ReviveThanksLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "Manager"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveThanksLouisTeenGirl,
				followup = RThen("Subject", "YouAreWelcome", null, 0.3),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "BotHurrahAlsoBetaZoeyRVC",
		criteria = 
		[
			["concept", "HurrahAlso"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidHurrahAlso],
			["botisavailable", 1],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.BotHurrahAlsoTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHurrahAlso", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1AutoYouAreWelcomeBetaZoeyRVC",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1AutoYouAreWelcomeTeenGirl,
			},
		],
	},

	{
		name = "L4D1AutoYouAreWelcomeBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["from", "NamVet"],
			[ChanceToFire5Percent],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1AutoYouAreWelcomeBillTeenGirl,
			},
		],
	},

	{
		name = "L4D1AutoYouAreWelcomeLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "YouAreWelcome"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["from", "Manager"],
			[ChanceToFire5Percent],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1AutoYouAreWelcomeLouisTeenGirl,
			},
		],
	},

	{
		name = "L4D1BotAttentionBattleBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["inbattlefield", 1],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1BotAttentionBattleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1BotNoteHumanAttentionBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1BotNoteHumanAttentionTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1BotPlayer_YourWelcomeBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotYouAreWelcome"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1BotPlayer_YourWelcomeTeenGirl,
			},
		],
	},

	{
		name = "L4D1BotReassureComingBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotReassureComing"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1BotReassureComingTeenGirl,
			},
		],
	},

	{
		name = "L4D1BotReassureNearbyBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotReassureNearby"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1BotReassureNearbyTeenGirl,
			},
		],
	},

	{
		name = "L4D1BotYesReadyBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotYesReady"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1BotYesReadyTeenGirl,
			},
		],
	},

	{
		name = "C6M1Intro_01TeenGirl01BetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
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
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl01TeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_11a", null, -0.91),
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
		name = "C6M1Intro_01TeenGirl01GamblerProducerBetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			["isgambleralive", 1],
			["isproduceralive", 1],
			[ChanceToFire10Percent],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 9
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl01GamblerProducerTeenGirl,
				followup = RThen("Gambler", "C6M1Intro_15a", null, -1.855),
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
		name = "C6M1Intro_01TeenGirl01ProducerBetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			["isproduceralive", 1],
			[ChanceToFire20Percent],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 8
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl01ProducerTeenGirl,
				followup = RThen("Producer", "C6M1Intro_22a", null, -1.117),
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
		name = "C6M1Intro_01TeenGirl01MechanicProducerBetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			["ismechanicalive", 1],
			["isproduceralive", 1],
			[ChanceToFire30Percent],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 7
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl01MechanicProducerTeenGirl,
				followup = RThen("Producer", "C6M1Intro_12a", null, -9.087),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.0 },
			c3 = { context = "EllisInLoveC6M1", value = 1, duration = 0.0 },
			c4 = { context = "RemarkWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_01TeenGirl01MechanicBetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			["ismechanicalive", 1],
			[ChanceToFire40Percent],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 6
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl01MechanicTeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_11a", null, -0.91),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.0 },
			c3 = { context = "EllisInLoveC6M1", value = 1, duration = 0.0 },
			c4 = { context = "RemarkWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_01TeenGirl01MechanicCoachBetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			["ismechanicalive", 1],
			["iscoachalive", 1],
			[ChanceToFire50Percent],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 5
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl01MechanicCoachTeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_13a", null, -4.002),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 0.0 },
			c3 = { context = "EllisInLoveC6M1", value = 1, duration = 0.0 },
			c4 = { context = "RemarkWorldC6M1_HistoricTour", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_03aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_03a"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_03aTeenGirl,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 7.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_04aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_04a"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_04aTeenGirl,
				followup = RThen("Coach", "C6M1Intro_04b", null, -1.676),
			},
		],
	},

	{
		name = "C6M1Intro_04cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_04c"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_04cTeenGirl,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 7.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M1Intro_11bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_11b"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_11bTeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_11c", null, -7.175),
			},
		],
	},

	{
		name = "C6M1Intro_13dBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_13d"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_13dTeenGirl,
				followup = RThen("Coach", "C6M1Intro_13e", null, -3.13),
			},
		],
	},

	{
		name = "C6M1Intro_15bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_15b"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_15bTeenGirl,
				followup = RThen("Producer", "C6M1Intro_15c", null, -4.693),
			},
		],
	},

	{
		name = "C6M1Intro_15dBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_15d"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_15dTeenGirl,
				followup = RThen("Gambler", "C6M1Intro_15e", null, -2.385),
			},
		],
	},

	{
		name = "C6M1Intro_17aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_17a"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_17aTeenGirl,
				followup = RThen("Producer", "C6M1Intro_17b", null, -9.916),
			},
		],
	},

	{
		name = "C6M1Intro_17cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_17c"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_17cTeenGirl,
				followup = RThen("Producer", "C6M1Intro_17d", null, -2.035),
			},
		],
	},

	{
		name = "C6M1Intro_22bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_22b"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_22bTeenGirl,
				followup = RThen("Producer", "C6M1Intro_22c", null, -1.387),
			},
		],
	},

	{
		name = "C6M1Intro_22dBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_22d"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_22dTeenGirl,
				followup = RThen("Producer", "C6M1Intro_22f", null, -7.98),
			},
		],
	},

	{
		name = "C6M1Intro_22gBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_22g"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_22gTeenGirl,
				followup = RThen("Producer", "C6M1Intro_22h", null, -0.623),
			},
		],
	},

	{
		name = "C6M1Intro_23aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_23a"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_23aTeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_23b", null, -1.285),
			},
		],
	},

	{
		name = "C6M1Intro_23cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_23c"],
			["who", "BetaZoeyRVC"],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_23cTeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_23d", null, -9.236),
			},
		],
	},

	{
		name = "C6M3_BridgeDownBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M3_BridgeDown"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M3_BridgeDownTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D1BetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			[IsNotVersus],
			["incapacitated", 0],
			[ChanceToFire100Percent],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1TeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D101aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D101a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D101aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D102bBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D102b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D102bTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D103aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D103a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D103aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D104aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D104a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D104aTeenGirl,
				followup = RThen("Biker", "c6m3_outroL4D104b", null, -4.872),
			},
		],
	},

	{
		name = "c6m3_outroL4D105aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D105a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D105aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D107aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D107a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D107aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D109aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D109a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D109aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D1AllBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			[IsEveryoneAlive],
			[ChanceToFire20Percent],
			[IsNotVersus],
			["incapacitated", 0],
		],
		// 	forceweight 8
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1AllTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D1MechanicBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			["ismechanicalive", 1],
			[ChanceToFire30Percent],
			[IsNotVersus],
			["incapacitated", 0],
		],
		// 	forceweight 7
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1MechanicTeenGirl,
				followup = RThen("Biker", "c6m3_outroL4D108a", null, -5.788),
			},
		],
	},

	{
		name = "c6m3_outroL4D1MechanicZoeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			["introactor", "BetaZoeyRVC"],
			[ChanceToFire100Percent],
			["ismechanicalive", 1],
			[IsNotVersus],
			["incapacitated", 0],
		],
		// 	forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1MechanicZoeyTeenGirl,
				followup = RThen("Biker", "c6m3_outroL4D1010a", null, -1.261),
			},
		],
	},

	{
		name = "IncapBounce2BetaZoeyRVC",
		criteria = 
		[
			["concept", "InCapBounce2"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IncapBounce2TeenGirl,
			},
		],
	},

	{
		name = "L4D1_NiceJobPourBetaZoeyRVC",
		criteria = 
		[
			["concept", "L4D1_NiceJobPour"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1_NiceJobPourTeenGirl,
			},
		],
	},

	{
		name = "L4D1_AttractPlayerForThrowBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotAttractPlayerForThrow"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1_AttractPlayerForThrowTeenGirl,
			},
		],
	},

	{
		name = "L4D1_SurvivorBotTakeThisItemBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotTakeThisItem"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1_SurvivorBotTakeThisItemTeenGirl,
			},
		],
	},

	{
		name = "WorldC6M3_ByBridge01BetaZoeyRVC",
		criteria = 
		[
			["concept", "WorldC6M3_ByBridge01"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.WorldC6M3_ByBridge01TeenGirl,
			},
		],
	},

	{
		name = "WorldC6M3_ByBridge01EllisBetaZoeyRVC",
		criteria = 
		[
			["concept", "WorldC6M3_ByBridge01"],
			["who", "BetaZoeyRVC"],
			["from", "Mechanic"],
			[ChanceToFire100Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.WorldC6M3_ByBridge01EllisTeenGirl,
			},
		],
	},

	{
		name = "C7M1_saferoom02BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom02"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom02TeenGirl,
			},
		],
	},

	{
		name = "C7M1_saferoom09bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom09b"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom09bTeenGirl,
			},
		],
	},

	{
		name = "C7M1_saferoom10aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom10a"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom10aTeenGirl,
				followup = RThenAny("C7M1_saferoom10b", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom11BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom11"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom11TeenGirl,
				followup = RThenAny("C7M1_saferoom11a", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom15aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom15a"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom15aTeenGirl,
				followup = RThenAny("C7M1_saferoom15b", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom18BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom18"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom18TeenGirl,
				followup = RThenAny("C7M1_saferoom18a", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom19aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom19a"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom19aTeenGirl,
				followup = RThenAny("C7M1_saferoom19b", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom20aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom20a"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom20aTeenGirl,
				followup = RThenAny("C7M1_saferoom20b", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom23BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom23"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom23TeenGirl,
				followup = RThenAny("C7M1_saferoom23a", 0.1),
			},
		],
	},

	{
		name = "C7M1OpenTankDoorBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1OpenTankDoorSpeak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1OpenTankDoorTeenGirl,
			},
		],
	},

	{
		name = "C7M1IntroBetaZoeyRVC",
		criteria = 
		[
			["concept", "intro07Train"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1IntroTeenGirl,
				followup = RThenAny("C7M1_saferoom05", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M2_saferoom01BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M2_saferoom01"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M2_saferoom01TeenGirl,
				followup = RThenAny("C7M2_saferoom01a", 0.1),
			},
		],
	},

	{
		name = "C7M2_saferoom01bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M2_saferoom01b"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M2_saferoom01bTeenGirl,
			},
		],
	},

	{
		name = "C7M2_saferoom05bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M2_saferoom05b"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M2_saferoom05bTeenGirl,
				followup = RThenAny("C7M2_saferoom05c", 0.1),
			},
		],
	},

	{
		name = "C7M2SafeRoomBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["incombat", 0],
			["map", "c7m2_barge"],
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
				func = Custom_Talker_BetaZoeyRVC.C7M2SafeRoomTeenGirl,
				followup = RThenAny("C7M2_saferoom06", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Player_WarnMegaMobc7m201BetaZoeyRVC",
		criteria = 
		[
			["concept", "Player.WarnMegaMobc7m201"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Player_WarnMegaMobc7m201TeenGirl,
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
		name = "C7M3_saferoom004bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom004b"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom004bTeenGirl,
			},
		],
	},

	{
		name = "C7M3_saferoom005BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom005"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom005TeenGirl,
			},
		],
	},

	{
		name = "C7M3_saferoom006cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom006c"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom006cTeenGirl,
			},
		],
	},

	{
		name = "C7M3_saferoom007BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom007"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom007TeenGirl,
				followup = RThenAny("C7M3_saferoom007a", 0.1),
			},
		],
	},

	{
		name = "C7M3_saferoom007bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom007b"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom007bTeenGirl,
				followup = RThenAny("C7M3_saferoom007c", 0.1),
			},
		],
	},

	{
		name = "C7M3_saferoom016BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom016"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom016TeenGirl,
				followup = RThenAny("C7M3_saferoom016a", 0.1),
			},
		],
	},

	{
		name = "C7M3_saferoom016cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom016c"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom016cTeenGirl,
			},
		],
	},

	{
		name = "C7M3BridgeBreaksBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3BridgeBreaks"],
			["who", "BetaZoeyRVC"],
			[_auto_NotSaidC7M3BridgeLeap],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3BridgeBreaksTeenGirl,
			},
		],
	},

	{
		name = "C7M3FinalPressBikerBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3FinalSpeakBiker"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 3],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3FinalPressBikerTeenGirl,
			},
		],
	},

	{
		name = "C7M3FinalPressManagerBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3FinalSpeakManager"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 3],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3FinalPressManagerTeenGirl,
			},
		],
	},

	{
		name = "C7M3FinalPressNamVetBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3FinalSpeakNamVet"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 3],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3FinalPressNamVetTeenGirl,
			},
		],
	},

	{
		name = "C7M3GeneratorPress01BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3GeneratorSpeak"],
			["who", "BetaZoeyRVC"],
			[IsFirstGenerator],
			[_auto_NotTimerLockBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3GeneratorPress01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "_auto_NoLostCall", value = 1, duration = 0.0 },
			c3 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3GeneratorPress02BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3GeneratorSpeak"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 1],
			[_auto_NotTimerLockBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3GeneratorPress02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3GeneratorPress03BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3GeneratorSpeak"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 2],
			[_auto_NotTimerLockBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3GeneratorPress03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3PlayerGetToRescueVehicleBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c7m3_port"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3PlayerGetToRescueVehicleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
			c3 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3PlayerGetToRescueVehicleLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c7m3_port"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["ismanageralive", 1],
			[ChanceToFire20Percent],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3PlayerGetToRescueVehicleLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
			c3 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3PlayerIsOnRescueVehicleNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c7m3_port"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[_auto_NotC7M3BridgeReady],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3PlayerIsOnRescueVehicleNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3PlayerRaiseBridgeNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c7m3_port"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			["world_auto_c7m3bridgeready", 1],
			[_auto_NotPressedC7M3BridgeButton],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3PlayerRaiseBridgeNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3BridgeButtonSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3BridgeButtonSpeak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3BridgeButtonSpeakTeenGirl,
			},
		],
	},

	{
		name = "C7M3WaveOverGen1BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3WaveOverSpeak"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3WaveOverGen1TeenGirl,
			},
		],
	},

	{
		name = "C7M3WaveOverGen2BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3WaveOverSpeak"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 2],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3WaveOverGen2TeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerCallForRescueBetaZoeyRVC",
		criteria = 
		[
			["concept", "CallForRescue"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[HasNotCalledForRescue],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerCallForRescueTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForRescue", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "HowitzerBurnEnd00BetaZoeyRVC",
		criteria = 
		[
			["concept", "HowitzerBurnEnd00"],
			["who", "BetaZoeyRVC"],
			[NotCrash01ThroughBridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HowitzerBurnEnd00TeenGirl,
				followup = RThen("self", "HowitzerBurnEnd02", null, 0.1),
			},
		],
	},

	{
		name = "HowitzerBurnEnd01BetaZoeyRVC",
		criteria = 
		[
			["concept", "HowitzerBurnEnd01"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HowitzerBurnEnd01TeenGirl,
			},
		],
	},

	{
		name = "L4D1CrashCourseR14BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR14"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1CrashCourseR14TeenGirl,
			},
		],
	},

	{
		name = "L4D1crashHowitzerNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotHowitzerFired],
			["worldhowitzerseen", 1],
			[ChanceToFire80Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1crashHowitzerNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1HowitzerFiredBetaZoeyRVC",
		criteria = 
		[
			["concept", "HowitzerFiredResponse"],
			["who", "BetaZoeyRVC"],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1HowitzerFiredTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGenerator2OnSpkBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGenerator2OnSpk"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGenerator2OnSpkTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGenerator2SpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGenerator2Speak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGenerator2SpeakTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGeneratorBreakSpkBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGeneratorBreakSpk"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGeneratorBreakSpkTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGeneratorSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGeneratorSpeak"],
			["who", "BetaZoeyRVC"],
			[IsNotAlone],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGeneratorSpeakTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGenerator1NagBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["map", "c9m2_lots"],
			["worldcrashgenerator1nag", 1],
			[ChanceToFire80Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGenerator1NagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashFinaleTruckNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c9m2_lots"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleTruckNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashFinaleInsideTruckNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c9m2_lots"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleInsideTruckNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashFinaleTruckResp01BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleTruckResp01"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleTruckResp01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "CrashGenerator1Nag", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashFinaleTruckResp02BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleTruckResp02"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleTruckResp02TeenGirl,
				followup = RThenAny("CrashFinaleTruckResp01", 0.05),
			},
		],
	},

	{
		name = "CrashFinaleTruckRespZombie2BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleTruckRespZombie2"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleTruckRespZombie2TeenGirl,
			},
		],
	},

	{
		name = "L4D1CrashFinaleGeneratorNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["map", "c9m2_lots"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire60Percent],
			["worldcrashfinalegeneratorbroken", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1CrashFinaleGeneratorNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1CrashFinaleGenUnPressSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGeneratorUnPressSpeak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1CrashFinaleGenUnPressSpeakTeenGirl,
			},
		],
	},

	{
		name = "L4D1CrashFinaleGen2UnPressSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGenerator2UnPressSpeak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1CrashFinaleGen2UnPressSpeakTeenGirl,
			},
		],
	},

	{
		name = "L4D1SacrificeFinaleGenUnPressSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGeneratorUnPressSpeak"],
			["who", "BetaZoeyRVC"],
			["map", "c7m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "L4D1CrashFinaleTruckReadySpkBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleTruckReadySpk"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1CrashFinaleTruckReadySpkTeenGirl,
				followup = RThenAny("CrashFinaleTruckReadyResp", 0.1),
			},
		],
	},

	{
		name = "L4D1CrashFinaleTruckReadyRespBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleTruckReadyResp"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1CrashFinaleTruckReadyRespTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerRemarkcrashcourse02_path14BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path14"],
			[IsNotSaidcrashcourse02_path14],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[_auto_NotFinaleStarted],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse02_path14TeenGirl,
				followup = RThenAny("CrashFinaleTruckResp01", -2.954),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path14", value = 1, duration = 0.0 },
			c2 = { context = "_auto_NoLostCall", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashCourseR01BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR01"],
			["who", "BetaZoeyRVC"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR01TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR03BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR03"],
			["who", "BetaZoeyRVC"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR03TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR10BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR10"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR10TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR11BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR11"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR11TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR12BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR12"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR12TeenGirl,
				followup = RThen("biker", "CrashCourseR13", null, 0.0),
			},
		],
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path05"],
			[IsNotSaidcrashcourse01_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path06"],
			[IsNotSaidcrashcourse01_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path10"],
			[IsNotSaidcrashcourse01_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			["isbikeralive", 1],
			[IsBikerNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path10TeenGirl,
				followup = RThen("Biker", "CrashCourseR02", null, -4.193),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkcrashcourse01_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path10"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			["isbikeralive", 1],
			[IsBikerNear400],
			[IsTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path13BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path13"],
			[IsNotSaidcrashcourse01_path13],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path13TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path13", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path14BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path14"],
			[IsNotSaidcrashcourse01_path14],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path14TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path14", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path17BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path17"],
			[IsNotSaidcrashcourse01_path17],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[NotHowitzerFired],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path17TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path17", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path18BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path18"],
			[IsNotSaidcrashcourse01_path18],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[NotHowitzerFired],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path18TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path18", value = 1, duration = 0.0 },
			c2 = { context = "HowitzerSeen", value = 1, duration = 0.0 },
			c3 = { context = "_auto_TimerLockA", value = 1, duration = 15.0 },
			c4 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path24BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path24"],
			[IsNotSaidSafeSpotAhead],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path24TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path02"],
			[IsNotSaidcrashcourse02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[ChanceToFire20Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkcrashcourse02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path02"],
			[IsNotSaidcrashcourse02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse02_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path05"],
			[IsNotSaidcrashcourse02_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse02_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse02_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path06"],
			[IsNotSaidcrashcourse02_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse02_path06TeenGirl,
				followup = RThen("Biker", "CrashCourseR10", null, -3.614),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path26BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path26"],
			[IsNotSaidcrashcourse01_path26],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path26TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path26", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path27BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path27"],
			[IsNotSaidcrashcourse01_path27],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path27TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse02_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path10"],
			[IsNotSaidcrashcourse02_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse02_path10TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse02_path12BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path12"],
			[IsNotSaidcrashcourse02_path12],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse02_path12TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path12", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "IntroCrashR01BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR01"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR01TeenGirl,
				followup = RThen("Biker", "IntroCrashR02", null, 0.05),
			},
		],
	},

	{
		name = "IntroCrashR04BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR04"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR04TeenGirl,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "IntroCrashR07BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR07"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR07TeenGirl,
				followup = RThen("Biker", "IntroCrashR08", null, 0.05),
			},
		],
	},

	{
		name = "IntroCrashR09BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR09"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR09TeenGirl,
				followup = RThenAny("IntroCrashR10", 0.05),
			},
		],
	},

	{
		name = "IntroCrashR10BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR10"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR10TeenGirl,
			},
		],
	},

	{
		name = "IntroCrashR11BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR11"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR11TeenGirl,
				followup = RThen("Biker", "IntroCrashR12", null, -1.1),
			},
		],
	},

	{
		name = "IntroCrashR19BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR19"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR19TeenGirl,
				followup = RThen("Biker", "IntroCrashR20", null, 0.05),
			},
		],
	},

	{
		name = "IntroCrashR28BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR28"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR28TeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerCrashCourseIntroBetaZoeyRVC",
		criteria = 
		[
			["concept", "introCrashCourse"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerCrashCourseIntroTeenGirl,
				followup = RThen("Biker", "IntroCrashR27", null, -2.147),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashCourseI01BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseI01"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseI01TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseB01BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseB01"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseB01TeenGirl,
				followup = RThen("biker", "CrashCourseB02", null, -3.052),
			},
		],
		applycontext =
		{
			c1 = { context = "CanadaBikerHate", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C9M2SafeRoomBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["incombat", 0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["map", "c9m2_lots"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			["world_auto_saferoomstart", 1],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C9M2SafeRoomTeenGirl,
				followup = RThenAny("CrashCourseI01", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1IntroFarm4BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroFarm4"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1IntroFarm4TeenGirl,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "L4D1SurvivorBoomerBlunderBetaZoeyRVC",
		criteria = 
		[
			["concept", "Fault"],
			["faultname", "BoomerBlunder"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsHealthy],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorBoomerBlunderTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorFinaleTriggeredBoatBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["triggeredby", "BetaZoeyRVC"],
			["map", "c10m5_houseboat"],
			[_auto_NotFinaleStarted],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinaleTriggeredBoatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinaleTriggeredC11M5BetaZoeyRVC",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["triggeredby", "BetaZoeyRVC"],
			["map", "c11m5_runway"],
			[_auto_NotFinaleStarted],
			["who", "BetaZoeyRVC"],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinaleTriggeredC11M5TeenGirl,
				followup = RThen("orator_plane_radio", "ConceptBlock570", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinaleTriggeredFarmBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["triggeredby", "BetaZoeyRVC"],
			["map", "c12m5_cornfield"],
			[_auto_NotFinaleStarted],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinaleTriggeredFarmTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinaleTriggeredRooftopBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["triggeredby", "BetaZoeyRVC"],
			["map", "c8m5_rooftop"],
			[_auto_NotFinaleStarted],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinaleTriggeredRooftopTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleBoatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c10m5_houseboat"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleBoatTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.569),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleInsideBoatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c10m5_houseboat"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleInsideBoatTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.344),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleFarmBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c12m5_cornfield"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleFarmTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.776),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleInsideFarmBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c12m5_cornfield"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleInsideFarmTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.225),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleFarmSpottedBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c12m5_cornfield"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleFarmSpottedTeenGirl,
				followup = RThenAny("EmphaticArriveRunFarm", -1.615),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
			c3 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleRooftopBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c8m5_rooftop"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleRooftopTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.318),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleInsideRooftopBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c8m5_rooftop"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleInsideRooftopTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.303),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleRunwayBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c11m5_runway"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleRunwayTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.644),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleInsideRunwayBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c11m5_runway"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleInsideRunwayTeenGirl,
				followup = RThenAny("EmphaticArriveRun", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleSpottedBoatBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c10m5_houseboat"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleSpottedBoatTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.984),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
			c3 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleSpottedRooftopBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c8m5_rooftop"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleSpottedRooftopTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -2.255),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
			c3 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleSpottedRunwayBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c11m5_runway"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleSpottedRunwayTeenGirl,
				followup = RThen("orator_plane_radio", "ConceptBlockPlaneFull", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
			c3 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerShotCarNotBetaZoeyRVC",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsNotBetazoeyrvc],
			[ChanceToFire60Percent],
			["panictype", "CarAlarm"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerShotCarNotTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerShotCarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "BetaZoeyRVC"],
			["panictype", "CarAlarm"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerShotCarTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1ResponseSoftDispleasureSwearBetaZoeyRVC",
		criteria = 
		[
			["concept", "ResponseSoftDispleasureSwear"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IssuerMediumClose],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ResponseSoftDispleasureSwearTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorAskBillForHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "AskForHealth2"],
			["who", "BetaZoeyRVC"],
			["subject", "NamVet"],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorAskBillForHealthTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorAskForHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsSubjectNear400],
			[NoHasPainPills],
			[NoHasFirstAidKit],
			[IsNotHealthy],
			["incombat", 0],
			[IsNotSaidAskForHealth],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorAskForHealthTeenGirl,
				followup = RThen("Subject", "AskForHealth", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAskForHealth", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorAskFrancisForHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "AskForHealth2"],
			["who", "BetaZoeyRVC"],
			["subject", "Biker"],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorAskFrancisForHealthTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorAskLouisForHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "AskForHealth2"],
			["who", "BetaZoeyRVC"],
			["subject", "Manager"],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorAskLouisForHealthTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorFrancisHealthHereBetaZoeyRVC",
		criteria = 
		[
			["concept", "AskForHealth"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["hasfirstaidkit", 1],
			[IsHealthyHalf],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFrancisHealthHereTeenGirl,
				followup = RThen("self", "AskForHealth2", { from = "BetaZoeyRVC" }, 0.0),
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedBillCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
			[IsNamVetNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedBillCloseTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedBillClose2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
			[IsNamVetNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedBillCloseTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedBillFarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
			[IsNamVetFar400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedBillFarTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedFrancisCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
			[IsBikerNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedFrancisCloseTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedFrancisClose2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
			[IsBikerNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedFrancisCloseTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedFrancisFarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
			[IsBikerFar400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedFrancisFarTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedLouisCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
			[IsManagerNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedLouisCloseTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedLouisClose2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
			[IsManagerNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedLouisCloseTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedLouisFarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
			[IsManagerFar400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedLouisFarTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedWorldCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedWorldCloseTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAmmoTeenGirl,
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
		name = "SurvivorSpottedAmmoAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["weaponname", "Ammo"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAmmo],
			[IsNotSaidSpot],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAmmoTeenGirl,
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
		name = "SurvivorSpottedAmmo2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotAmmo"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAmmoTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedGrenadeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "PipeBomb"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGrenadeTeenGirl,
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
		name = "SurvivorSpottedGrenadeAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			["weaponname", "PipeBomb"],
			[IsWorldTalkBetazoeyrvc],
			["hasgrenade", 1],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGrenadeTeenGirl,
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
		name = "SurvivorSpottedHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "FirstAidKit"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedHealthTeenGirl,
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
		name = "SurvivorSpottedHealthAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			["weaponname", "FirstAidKit"],
			[IsWorldTalkBetazoeyrvc],
			["hasfirstaidkit", 1],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedHealthTeenGirl,
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
		name = "SurvivorSpottedMolotovBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Molotov"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMolotovTeenGirl,
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
		name = "SurvivorSpottedMolotovAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			["weaponname", "Molotov"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMolotovTeenGirl,
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
		name = "SurvivorSpottedVomitJarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedVomitJarTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedVomitJarAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedVomitJarTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedPillsBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "PainPills"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedPillsTeenGirl,
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
		name = "SurvivorSpottedPillsAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			["weaponname", "PainPills"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedPillsTeenGirl,
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
		name = "SurvivorSpottedAdrenalineBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Adrenaline"],
			[IsNotAlone],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedAdrenalineAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			["weaponname", "Adrenaline"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedDefibrillatorBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Defibrillator"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedDefibrillatorAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			["weaponname", "Defibrillator"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedIncendiaryAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Incendiary"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedIncendiaryAmmoAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Incendiary"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedExplosiveAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Explosive"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedExplosiveAmmoAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Explosive"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedLaserSightsBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "LaserSights"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedLaserSightsAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "LaserSights"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorBotPickupLaserSightsSpottedBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 1],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotSaidSpotWeapons],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorMovingToBattleStationBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotMovingToBattleStation"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["worldsaidcreshendostartnear", 1],
			[IsNotSaidBattleStations],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotFinaleStarted],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorMovingToBattleStationTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBattleStations", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorSpottedCreshendoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotSaidCreshendoStartNear],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedCreshendoTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCreshendoStartNear", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SpottedBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedBoomerTeenGirl,
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
		name = "L4D1SpottedBoomerAlsoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedBoomerTeenGirl,
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
		name = "L4D1SpottedBoomer2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedBoomerTeenGirl,
			},
		],
	},

	{
		name = "L4D1SpottedHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedHunterTeenGirl,
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
		name = "L4D1SpottedHunterAlsoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedHunterTeenGirl,
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
		name = "L4D1SpottedHunter2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedHunterTeenGirl,
			},
		],
	},

	{
		name = "L4D1SpottedSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedSmokerTeenGirl,
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
		name = "L4D1SpottedSmokerAlsoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedSmokerTeenGirl,
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
		name = "L4D1SpottedSmoker2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedSmokerTeenGirl,
			},
		],
	},

	{
		name = "L4D1SpottedChargerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedChargerTeenGirl,
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
		name = "L4D1SpottedChargerAlsoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedChargerTeenGirl,
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
		name = "L4D1SpottedCharger2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnCharger"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedChargerTeenGirl,
			},
		],
	},

	{
		name = "L4D1SpottedJockeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedJockeyTeenGirl,
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
		name = "L4D1SpottedJockeyAlsoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedJockeyTeenGirl,
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
		name = "L4D1SpottedJockey2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnJockey"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedJockeyTeenGirl,
			},
		],
	},

	{
		name = "L4D1SpottedSpitterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedSpitterTeenGirl,
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
		name = "L4D1SpottedSpitterAlsoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAlsoWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedSpitterTeenGirl,
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
		name = "L4D1SpottedSpitter2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpitter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedSpitterTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedInfectedBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerIncoming"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedInfectedTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedTankBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedTankTeenGirl,
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
		name = "SurvivorSpottedTank2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedTankTeenGirl,
			},
		],
	},

	{
		name = "L4D1SpottedTankBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
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
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedTankTeenGirl,
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
		name = "L4D1SpottedTank2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnTank"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			["map", "c6m3_port"],
			[IsNotVersus],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedTankTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWitchTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWitch2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsNotSaidWitchStartAttack],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWitchTeenGirl,
			},
		],
	},

	{
		name = "L4D1EmphaticArriveRunBetaZoeyRVC",
		criteria = 
		[
			["concept", "EmphaticArriveRun"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1EmphaticArriveRunTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerAlertGiveItemBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAlertGiveItemTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerFaultFriendlyFireBetaZoeyRVC",
		criteria = 
		[
			["concept", "Fault"],
			["faultname", "FriendlyFire"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFaultFriendlyFireBetazoeyrvc", value = 1, duration = 0.1 },
			c2 = { context = "SaidFaultFriendlyFire", value = 1, duration = 0.1 },
			c3 = { context = "ShotTeammateBetazoeyrvc", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerFriendlyFireBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFriendlyFireTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "L4D1PlayerFriendlyFire2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			[IsNotDamageTypeExplosive],
			["onthirdstrike", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFriendlyFire2TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "L4D1PlayerFriendlyFireFromBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "NamVet"],
			[ChanceToFire30Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFriendlyFireFromBillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "L4D1PlayerFriendlyFireFromFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Biker"],
			[ChanceToFire30Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFriendlyFireFromFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "L4D1PlayerFriendlyFireFromLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["damagetype", "DMG_BULLET"],
			["onthirdstrike", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Manager"],
			[ChanceToFire30Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFriendlyFireFromLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "L4D1PlayerFriendlyFireNoBulletBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotFriendlyFire],
			["incapacitated", 0],
			["onthirdstrike", 0],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotZombiePresentTank],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFriendlyFireNoBulletTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "FriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "L4D1PlayerToTheRescueBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotMovingToReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incombat", 0],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerToTheRescueTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRescueComing", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorTauntResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerTaunt"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorTauntResponseTeenGirl,
			},
		],
	},

	{
		name = "PlayerToTheRescueRosBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerToTheRescue"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerToTheRescueRosTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerChokeResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerChokeResponseTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1SurvivorCriticalHurtBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Critical"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorCriticalHurtTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorCriticalHurtC7M3BetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Critical"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["map", "c7m3_port"],
			["world_auto_saidc7m3bridgeleap", 1],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "L4D1SurvivorIncapacitatedHurtBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			[IsNotSpeaking],
			["painlevel", "Incapacitated"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorIncapacitatedHurtTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorMajorHurtBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorMajorHurtTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorMajorHurtC7M3BetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["map", "c7m3_port"],
			["world_auto_saidc7m3bridgeleap", 1],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "L4D1SurvivorMinorHurtBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorMinorHurtTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorMinorHurtC7M3BetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["map", "c7m3_port"],
			["world_auto_saidc7m3bridgeleap", 1],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "L4D1SurvivorReloadingBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReloading"],
			[IsASurvivor],
			[IsNotSpeaking],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkBetazoeyrvc],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorReloadingTeenGirl,
			},
		],
	},

	{
		name = "SurvivorJockeyHurtMajorBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["beingjockeyed", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorJockeyHurtMajorTeenGirl,
				followup = RThen("all", "commentjockey", null, -1.739),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMinorBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["beingjockeyed", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorJockeyHurtMajorTeenGirl,
				followup = RThen("all", "commentjockey", null, -1.739),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerHelpIncappedBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 1],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			[NotCalledForHelpRecently],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHelpIncappedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 7.5 },
		},
	},

	{
		name = "L4D1PlayerHelpIncappedBleedingBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 1],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			[NotCalledForHelpRecently],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHelpIncappedBleedingTeenGirl,
				followup = RThenAny("FriendNeedsHelp", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 15.0 },
		},
	},

	{
		name = "L4D1PlayerHelpIncappedLethargicBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 1],
			[IsIncappedLethargic],
			[NotCalledForHelpRecently],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHelpIncappedLethargicTeenGirl,
				followup = RThenAny("FriendNeedsHelp", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1HelpResponseBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "NamVet"],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1HelpResponseBillTeenGirl,
			},
		],
	},

	{
		name = "L4D1HelpResponseBillBBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "NamVet"],
			[IsNotInStartArea],
			["ismanageralive", 1],
			[IsManagerNear200],
			[ChanceToFire10Percent],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1HelpResponseBillBTeenGirl,
			},
		],
	},

	{
		name = "L4D1HelpResponseFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "Biker"],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1HelpResponseFrancisTeenGirl,
			},
		],
	},

	{
		name = "L4D1HelpResponseFrancisBBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "Biker"],
			[IsNotInStartArea],
			["ismanageralive", 1],
			[IsManagerNear200],
			[ChanceToFire10Percent],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1HelpResponseFrancisBTeenGirl,
			},
		],
	},

	{
		name = "L4D1HelpResponseLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "Manager"],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1HelpResponseLouisTeenGirl,
			},
		],
	},

	{
		name = "L4D1crashcourse01_path01zrBetaZoeyRVC",
		criteria = 
		[
			["concept", "crashcourse01_path01zresp"],
			["coughing", 0],
			["incombat", 0],
			[IsTalkBetazoeyrvc],
			["who", "BetaZoeyRVC"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1crashcourse01_path01zrTeenGirl,
			},
		],
	},

	{
		name = "L4D1L4D1PlayerRemarkSmalltown04_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path03"],
			[IsNotSaidSmalltown04_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsSmalltownBarricadeBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1L4D1PlayerRemarkSmalltown04_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path03", value = 1, duration = 0.0 },
			c2 = { context = "SmallTownBarricadeBetazoeyrvc", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerAirport02CraneStartedBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport02_creshendoCrane"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAirport02CraneStartedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Airport02CraneStarted", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerAirport02DumpsterDownBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport02_creshendo03"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAirport02DumpsterDownTeenGirl,
			},
		],
	},

	{
		name = "L4D1Playerairport03_barrieraBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport03_barriera"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IssuerClose],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSaidAirport03FireStarted],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1Playerairport03_barrieraTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerAirport03FirePathClearaBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport03FirePathCleara"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAirport03FirePathClearaTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerAirport03FirePathClearXBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport03FirePathClearX"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidAirport03FirePathClear],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAirport03FirePathClearXTeenGirl,
				followup = RThenAny("Airport03FirePathCleara", -1.072),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAirport03FirePathClear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerAirport03FireStartedXBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport03FireStartedX"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAirport03FireStartedXTeenGirl,
			},
		],
	},

	{
		name = "L4D1Playerairport04_08bBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport04_08b"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1Playerairport04_08bTeenGirl,
			},
		],
	},

	{
		name = "L4D1Playerairport04_08cBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport04_08c"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1Playerairport04_08cTeenGirl,
			},
		],
	},

	{
		name = "L4D1Playerairport04_08dBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport04_08d"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1Playerairport04_08dTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerFrancisSuggestsCraneBetaZoeyRVC",
		criteria = 
		[
			["concept", "FrancisSuggestsCrane"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFrancisSuggestsCrane],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFrancisSuggestsCraneTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFrancisSuggestsCrane", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerLaughFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "LaughFrancis"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidLaughFrancis],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLaughFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLaughFrancis", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport02_creshendo01bBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_creshendo01b"],
			[IsNotSaidairport02_creshendo01a],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[IsNotAirport02CraneStarted],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport02_creshendo01aTeenGirl,
				followup = RThenAny("BetazoeyrvcSuggestsCrane", -1.923),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_creshendo01a", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport02_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path01"],
			[IsNotSaidairport02_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport02_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path02"],
			[IsNotSaidairport02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[ChanceToFire10Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkairport02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path02"],
			[IsNotSaidairport02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport02_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path03"],
			[IsNotSaidairport02_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[ChanceToFire20Percent],
			["ismanageralive", 1],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport02_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkairport02_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path03"],
			[IsNotSaidairport02_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			["ismanageralive", 1],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport02_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path04"],
			[IsNotSaidairport02_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["isnamvetalive", 1],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport02_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport02_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path06"],
			[IsNotSaidairport02_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport02_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport03_01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_01"],
			[IsNotSaidairport03_01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport03_01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport03_02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_02"],
			[IsNotSaidairport03_02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport03_02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport03_03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_03"],
			[IsNotSaidairport03_03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport03_03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport03_04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_04"],
			[IsNotSaidairport03_04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport03_04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport03_06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_06"],
			[IsNotSaidairport03_06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport03_06TeenGirl,
				followup = RThenAny("LaughBetazoeyrvc", -2.784),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport03_barrierBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_barrier"],
			[IsNotSaidairport03_barrier],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
			[IsNotSaidAirport03FireStarted],
			[IsNotSaidAirport03FirePathClear],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport03_barrierTeenGirl,
				followup = RThenAny("airport03_barriera", -1.664),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_barrier", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport04_01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_01"],
			[IsNotSaidairport04_01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport04_01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport04_03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_03"],
			[IsNotSaidairport04_03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[ChanceToFire20Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport04_03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkairport04_03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_03"],
			[IsNotSaidairport04_03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport04_04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_04"],
			[IsNotSaidairport04_04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport04_04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport04_05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_05"],
			[IsNotSaidairport04_05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire20Percent],
			[TimeSinceGroupInCombat10],
			["ismanageralive", 1],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport04_05TeenGirl,
				followup = RThen("All", "airport04_05a", null, -1.764),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkairport04_05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_05"],
			[IsNotSaidairport04_05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat10],
			["ismanageralive", 1],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport04_06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_06"],
			[IsNotSaidairport04_06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire10Percent],
			["isbikeralive", 1],
			[IsBikerNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport04_06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkairport04_06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_06"],
			[IsNotSaidairport04_06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			["isbikeralive", 1],
			[IsBikerNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport04_07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_07"],
			[IsNotSaidairport04_07],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire10Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport04_07TeenGirl,
				followup = RThen("biker", "AynRandResponse", null, -2.679),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkairport04_07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_07"],
			[IsNotSaidairport04_07],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport04_08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_08"],
			[IsNotSaidairport04_08],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport04_08TeenGirl,
				followup = RThenAny("airport04_08a", -3.701),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport04_vanBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_van"],
			[IsNotSaidairport04_van],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsNotSaidPathClearVan],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport04_vanTeenGirl,
				followup = RThen("Biker", "airport04_vana", null, -1.224),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_van", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkcrashcourse01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path01"],
			[IsNotSaidcrashcourse01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSaidLeavingSafeArea],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkcrashcourse01_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm01_path01"],
			[IsNotSaidFarm01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm01_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm01_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm01_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm01_path02"],
			[IsNotSaidFarm01_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm01_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm01_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm01_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm01_path03"],
			[IsNotSaidFarm01_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm01_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm01_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm02_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path01"],
			[IsNotSaidFarm02_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm02_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path02"],
			[IsNotSaidFarm02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidFarm02_TracksBelow],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm02_path02TeenGirl,
				followup = RThen("Biker", "Farm02_path02b", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path02", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm02_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path06"],
			[IsNotSaidFarm02_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm02_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm02_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path09"],
			[IsNotSaidFarm02_path09],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm02_path09TeenGirl,
				followup = RThenAny("RespondAffirmative", -1.547),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm03_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path03"],
			[IsNotSaidFarm03_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm03_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm03_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path06"],
			[IsNotSaidFarm03_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm03_path06TeenGirl,
				followup = RThenAny("ResponseSoftDispleasureSwear", -1.116),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm03_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path07"],
			[IsNotSaidFarm03_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm03_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm03_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path10"],
			["worldfarm03bridgedown", 1],
			[IsNotSaidFarm03_path10],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm03_path10TeenGirl,
				followup = RThenAny("RespondAffirmative", -0.817),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm04_path01aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path01"],
			[IsNotSaidFarm04_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm04_path01aTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm04_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path04"],
			[IsNotSaidFarm04_path04],
			[IsSubjectNear1000],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm04_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path04", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm04_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm04_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path06"],
			[IsNotSaidFarm04_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm04_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm04_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path07"],
			[IsNotSaidFarm04_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm04_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm04_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path08"],
			[IsNotSaidFarm04_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm04_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm04_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path10"],
			[IsNotSaidFarm04_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm04_path10TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm05_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path06"],
			[IsNotSaidFarm05_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[FinaleAttract],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm05_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm05_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path08"],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm05_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkFarm05_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path10"],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkFarm05_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkhospital03_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital03_path04"],
			[IsNotSaidhospital03_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkhospital03_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital03_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkhospital03_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital03_path08"],
			[IsNotSaidhospital03_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkhospital03_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital03_path08", value = 1, duration = 0.0 },
		},
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkhospital03_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital03_path08"],
			[IsNotSaidhospital03_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital03_path08", value = 1, duration = 0.0 },
		},
	},

	{
		name = "L4D1PlayerRemarkhospital04_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital04_path03"],
			[IsNotSaidhospital04_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[IsManagerNear200],
			["ismanageralive", 1],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkhospital04_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital04_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkhospital04_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital04_path03"],
			[IsNotSaidhospital04_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsManagerNear200],
			["ismanageralive", 1],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital04_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkhospital05_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital05_path01"],
			["incombat", 0],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			["instartarea", 1],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkhospital05_path01TeenGirl,
				followup = RThen("Biker", "hospital05_path01a", null, -1.864),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SafeRoomStart", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkhospital05_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital05_path02"],
			[IsNotSaidhospital05_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkhospital05_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital05_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerAirport04VanStartedXBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport04VanStartedX"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAirport04VanStartedXTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAirport04VanStarted", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkPathClearVanBetaZoeyRVC",
		criteria = 
		[
			["concept", "PathClearVan"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPathClearVan],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkPathClearVanTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPathClearVan", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path01"],
			[IsNotSaidSmalltown01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown01_path01TeenGirl,
				followup = RThenAny("ResponseSoftDispleasureSwear", -2.289),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown01_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path02"],
			[IsNotSaidSmalltown01_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSaidSmalltown01_path04],
			["worldsaidsmalltown01_path01", 1],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown01_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown01_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path03"],
			[IsNotSaidSmalltown01_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown01_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown01_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path07"],
			[IsNotSaidSmalltown01_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[IsNotSaidSmalltown01_path08],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown01_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown01_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path08"],
			[IsNotSaidSmalltown01_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown01_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarksmalltown02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path02"],
			[IsNotSaidsmalltown02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarksmalltown02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarksmalltown02_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path03"],
			[IsNotSaidsmalltown02_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarksmalltown02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarksmalltown02_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path04"],
			[IsNotSaidsmalltown02_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarksmalltown02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarksmalltown02_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path05"],
			[IsNotSaidsmalltown02_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarksmalltown02_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarksmalltown02_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path06"],
			[IsNotSaidsmalltown02_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear700],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarksmalltown02_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarksmalltown02_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path08"],
			[IsNotSaidsmalltown02_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarksmalltown02_path08TeenGirl,
				followup = RThen("manager", "smalltown02_path08a", null, -0.554),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path08", value = 1, duration = 0.0 },
			c2 = { context = "Saidsmalltown02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path01"],
			[IsNotSaidSmalltown03_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path02"],
			[IsNotSaidSmalltown03_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path03"],
			[IsNotSaidSmalltown03_path03],
			[IsNotSaidSmalltown03_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path04"],
			[IsNotSaidSmalltown03_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path05"],
			[IsNotSaidSmalltown03_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path06"],
			[IsNotSaidSmalltown03_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path07"],
			[IsNotSaidSmalltown03_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path08"],
			[IsNotSaidSmalltown03_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path10"],
			[IsNotSaidSmalltown03_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path10TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path11BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path11"],
			[IsNotSaidSmalltown03_path11],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path11TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path11", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path12BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path12"],
			[IsNotSaidSmalltown03_path12],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path12TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path12", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown03_path13BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path13"],
			[IsNotSaidSmalltown03_path12],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown03_path12TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path12", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown04_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path01"],
			[IsNotSaidSmalltown04_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown04_path01TeenGirl,
				followup = RThenAny("RiversideIsDeadB", -1.776),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path01", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown04_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path02"],
			[IsNotSaidSmalltown04_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown04_path01TeenGirl,
				followup = RThenAny("RiversideIsDeadB", -1.776),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path01", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown04_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path04"],
			[IsNotSaidSmalltown04_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsSmalltownBarricadeBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown04_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path04", value = 1, duration = 0.0 },
			c2 = { context = "SmallTownBarricadeBetazoeyrvc", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown04_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path09"],
			[IsNotSaidSmalltown04_path09],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsSmalltownBarricadeBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown04_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path09", value = 1, duration = 0.0 },
			c2 = { context = "SmallTownBarricadeBetazoeyrvc", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown04_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path05"],
			[IsNotSaidSmalltown04_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown04_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown04_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path07"],
			[IsNotSaidSmalltown04_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown04_path07TeenGirl,
				followup = RThen("Manager", "Smalltown04_path07A", null, -3.039),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown04_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path10"],
			[IsNotSaidSmalltown04_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown04_path10TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown05_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown05_path01"],
			[IsNotSaidSmalltown05_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown05_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown05_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown05_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown05_path03"],
			[IsNotSaidSmalltown05_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown05_path03TeenGirl,
				followup = RThen("biker", "Smalltown05_path03a", null, -1.461),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown05_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkSmalltown05_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown05_path06"],
			[IsNotSaidSmalltown05_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkSmalltown05_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown05_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkThroughHereBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "ThroughHere"],
			[IsNotSaidThroughHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkThroughHereTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkUpThatLadderBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "UpThatLadder"],
			[IsNotSaidUpThatLadder],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkUpThatLadderTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidUpThatLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1RespondAffirmativeBetaZoeyRVC",
		criteria = 
		[
			["concept", "RespondAffirmative"],
			[IssuerMediumClose],
			["coughing", 0],
			["incombat", 0],
			["who", "BetaZoeyRVC"],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RespondAffirmativeTeenGirl,
			},
		],
	},

	{
		name = "L4D1RiversideIsDeadPlanBetaZoeyRVC",
		criteria = 
		[
			["concept", "RiversideIsDeadPlan"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RiversideIsDeadPlanTeenGirl,
			},
		],
	},

	{
		name = "PlayerRemarkc7m1_bricktopBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_bricktop"],
			[IsNotSaidc7m1_bricktop],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_bricktopTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_bricktop", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m1_pastbricksBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_pastbricks"],
			[IsNotSaidc7m1_pastbricks],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear700],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_pastbricksTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_pastbricks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m1_pretankBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_pretank"],
			[IsNotSaidc7m1_pretank],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsNotAlone],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire100Percent],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			[_auto_NotSaidC7M1OpenTankDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_pretankTeenGirl,
				followup = RThenAny("InfoRemc7m1_pretank03", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_pretank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m1_pretankLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_pretank"],
			[IsNotSaidc7m1_pretank],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire25Percent],
			["ismanageralive", 1],
			[IsManagerNear400],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			[_auto_NotSaidC7M1OpenTankDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 3
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_pretankLouisTeenGirl,
				followup = RThen("manager", "InfoRemc7m1_pretank02", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_pretank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m1_pretankFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_pretank"],
			[IsNotSaidc7m1_pretank],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["isbikeralive", 1],
			[IsBikerNear400],
			[ChanceToFire50Percent],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			[_auto_NotSaidC7M1OpenTankDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 2
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_pretankFrancisTeenGirl,
				followup = RThenAny("InfoRemc7m1_pretank03", -2.051),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_pretank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m1_tankcarBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_tankcar"],
			[IsNotSaidc7m1_tankcar],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsNotZombiePresentTank],
			["world_auto_saidc7m1opentankdoor", 1],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_tankcarTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_tankcar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m2_climbupcrapBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m2_climbupcrap"],
			[IsNotSaidc7m2_climbupcrap],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m2_climbupcrapTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m2_climbupcrap", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m2_gravelhillBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m2_gravelhill"],
			[IsNotSaidc7m2_gravelhill],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m2_gravelhillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m2_gravelhill", value = 1, duration = 0.0 },
			c2 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c3 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m2_overboatBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m2_overboat"],
			[IsNotSaidc7m2_overboat],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m2_overboatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m2_overboat", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m2_throughhereBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m2_throughhere"],
			[IsNotSaidc7m2_throughhere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m2_throughhereTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m2_throughhere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m3_seesailboatBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m3_seesailboat"],
			[IsNotSaidc7m3_seesailboat],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsFirstGenerator],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m3_seesailboatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m3_seesailboat", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorNearFinaleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorNearFinaleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerNearFinaleC7M3BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
			["map", "c7m3_port"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerNearFinaleC7M3TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinaleAheadC9M2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
			["map", "c9m2_lots"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
			c2 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorNearFinaleC11M5BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
			["map", "c11m5_runway"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorNearFinaleC11M5TeenGirl,
				followup = RThenAny("C11M5NearFinale2", 12.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerNearFinaleC12M5BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["map", "c12m5_cornfield"],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerNearFinaleC12M5TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
			c2 = { context = "WarnMegaMob", value = 1, duration = 60.0 },
			c3 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerNearFinaleC14M2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["map", "c14m2_lighthouse"],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C11M5NearFinale2BetaZoeyRVC",
		criteria = 
		[
			["concept", "C11M5NearFinale2"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C11M5NearFinale2TeenGirl,
			},
		],
	},

	{
		name = "SurvivorNearCheckpointBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointTeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", -1.48),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC8M3BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c8m3_sewers"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC8M3TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC10M2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c10m2_drainage"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC10M2TeenGirl,
				followup = RThen("biker", "smalltown02_path07a", null, -1.056),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC11M2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c11m2_offices"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC11M2TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC11M3BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c11m3_garage"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC11M3TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC11M4LouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c11m4_terminal"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			["ismanageralive", 1],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC11M4LouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC10M4BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c10m4_mainstreet"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC10M4TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC11M4BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c11m4_terminal"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			["ismanageralive", 0],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC10M4TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC12M3BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c12m3_bridge"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC10M4TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorNearCheckpointC12M4BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["map", "c12m4_barn"],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearCheckpointC10M4TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSafeSpotAhead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SafeSpotAheadResponseBetaZoeyRVC",
		criteria = 
		[
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IssuerClose],
			["concept", "SafeSpotAheadResponse"],
			[ChanceToFire30Percent],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SafeSpotAheadResponseTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerCoverMeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerCoverMe"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerCoverMeTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerFollowMeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFollowMe"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFollowMeTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerHelpBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHelpTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerHurryUpBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHurryUp"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHurryUpTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerKillThatLightBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerKillThatLight"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerKillThatLightTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerLeadOnBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLeadOn"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLeadOnTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerMoveOnBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerMoveOn"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerMoveOnTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerStayTogetherBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerStayTogetherTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerWatchOutBehindBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWatchOutBehind"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWatchOutBehindTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerAskReadyBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAskReady"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAskReadyTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerImWithYouBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerImWithYou"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerImWithYouTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerLaughBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLaugh"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLaughTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerLostCallBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLostCall"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLostCallTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerNiceJobResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNiceJob"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerNiceJobResponseTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerNiceJobResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNiceJob"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsManagerNear200],
			[ChanceToFire5Percent],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerNiceJobResponseTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerNoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerNoTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerAnswerLostCallBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAnswerLostCall"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAnswerLostCallTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerNegativeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNegative"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerNegativeTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerSorryBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSorry"],
			["coughing", 0],
			[IsNotShotTeammateBetazoeyrvc],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerSorryTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerSorryFFBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSorry"],
			["coughing", 0],
			["worldshotteammatebetazoeyrvc", 1],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerSorryFFTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerThanksBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerThanks"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerThanksTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerThanksLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerThanks"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsManagerNear200],
			[ChanceToFire2Percent],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerThanksLouisTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerYesBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerYes"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerYesTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerYouAreWelcomeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerYouAreWelcomeTeenGirl,
			},
		],
	},

	{
		name = "PlayerYellRunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerYellRun"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerYellRunTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerAreaClearBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAreaClear"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAreaClearTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorSpottedWorldFarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpottedWorldFarTeenGirl,
			},
		],
	},

	{
		name = "PlayerHurrahBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHurrah"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHurrahTeenGirl,
				followup = RThenAny("HurrahAlso", 0.0),
			},
		],
	},

	{
		name = "PlayerWarnCarefulBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnCareful"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWarnCarefulTeenGirl,
			},
		],
	},

	{
		name = "GasPourDoneSCBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["gamemode", "scavenge"],
			["towin", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.GasPourDoneSCTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
	},

	{
		name = "GasPourSCBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsNotAlone],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.GasPourSCTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "GrabbingGasSCBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerEquippedScavengeItem"],
			["who", "BetaZoeyRVC"],
			[IsNotAlone],
			[IsClosestSurvivorNear500],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[NotSaidGrabbingCan],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.GrabbingGasSCTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGrabbingCan", value = 1, duration = 8.0 },
		},
	},

	{
		name = "PlayerShotGasCanBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerShotGasCan"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerShotGasCanTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerShotGasCan", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ScavengeStartBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["gamemode", "scavenge"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ScavengeStartTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1IntroSmalltownBetaZoeyRVC",
		criteria = 
		[
			["concept", "introSmallTown"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1IntroSmalltownTeenGirl,
				followup = RThen("betazoeyrvc", "IntroSmallTown2", null, -2.288),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1IntroSmalltownEasterEggBetaZoeyRVC",
		criteria = 
		[
			["concept", "introSmallTown"],
			["who", "BetaZoeyRVC"],
			[IsEveryoneAlive],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			["randomnum", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		// 	forceweight 100
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1IntroSmalltownEasterEggTeenGirl,
				followup = RThen("betazoeyrvc", "IntroSmallTownEasterEgg", null, -2.288),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1IntroSmalltown2BetaZoeyRVC",
		criteria = 
		[
			["concept", "introSmallTown2"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1IntroSmalltown2TeenGirl,
				followup = RThenAny("IntroSmallTown3", -3.193),
			},
		],
	},

	{
		name = "L4D1IntroSmalltown2EasterEggBetaZoeyRVC",
		criteria = 
		[
			["concept", "introSmallTownEasterEgg"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1IntroSmalltown2EasterEggTeenGirl,
				followup = RThen("NamVet", "IntroSmallTownEasterEgg", null, -3.193),
			},
		],
	},

	{
		name = "L4D1IntroSmalltown2EasterEgg3BetaZoeyRVC",
		criteria = 
		[
			["concept", "introSmallTownEasterEgg3"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1IntroSmalltown2EasterEgg3TeenGirl,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "L4D1SurvivorSpawnBetaZoeyRVC",
		criteria = 
		[
			["concept", "ScenarioJoin"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorSpawnTeenGirl,
			},
		],
	},

	{
		name = "PlayerCommentJockeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "commentjockey"],
			["who", "BetaZoeyRVC"],
			[IssuerCloseEnough],
			["incapacitated", 0],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerCommentJockeyTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerBillPouncedBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "NamVet"],
			[IsNotSaidBillPounced],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerBillPouncedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBillPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerBounceReactionBetaZoeyRVC",
		criteria = 
		[
			["concept", "BounceReaction"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectAlmostNear],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerBounceReactionTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerEatPillsBetaZoeyRVC",
		criteria = 
		[
			["concept", "EatPills"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerEatPillsTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerFrancisPouncedBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Biker"],
			[IsNotSaidFrancisPounced],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerFrancisPouncedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFrancisPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerGetInsideCheckPointBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetInsideCheckPoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerGetInsideCheckPointTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerStayTogetherSaferoomBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerGetInsideCheckPointTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerGrenadeBetaZoeyRVC",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerGrenadeTeenGirl,
				followup = RThenAny("GrenadeCareful", -0.994),
			},
		],
	},

	{
		name = "L4D1PlayerIncapacitatedInitialBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerIncapacitatedInitialTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "L4D1PlayerKillConfirmationBetaZoeyRVC",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectFar300],
			[ChanceToFire40Percent],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerKillConfirmationTeenGirl,
				followup = RThenAny("L4D1PlayerNiceShot", -0.802),
			},
		],
	},

	{
		name = "L4D1PlayerKillTankConfirmationBetaZoeyRVC",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsRocking],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerKillTankConfirmationTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerKillTankNotHealthyBetaZoeyRVC",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subjectisa", "Tank"],
			[IsNotSaidTankDead],
			[IsNotAlone],
			["incapacitated", 0],
			[IsNotHealthy],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerKillTankNotHealthyTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 60.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCr0wnedWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "KilledZombie"],
			["who", "BetaZoeyRVC"],
			["subjectisa", "Witch"],
			[IsNotWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "PlayerKilledStartledWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "KilledZombie"],
			["who", "BetaZoeyRVC"],
			["subjectisa", "Witch"],
			[IsWitchAggro],
			[WitchaggroDecrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:--1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkremark_caralarmBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "remark_caralarm"],
			[IsNotSaidremark_caralarm],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear700],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkremark_caralarmTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidremark_caralarm", value = 1, duration = 300.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C9M2KillTankBetaZoeyRVC",
		criteria = 
		[
			["concept", "KilledZombie"],
			["who", "BetaZoeyRVC"],
			["map", "c9m2_lots"],
			["subjectisa", "Tank"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidTankDead],
			[IsWorldTalkBetazoeyrvc],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C9M2KillTankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidTankDead", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerLockTheDoorCheckPointBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLockTheDoorCheckPointTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerLouisPouncedBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Manager"],
			[IsNotSaidLouisPounced],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLouisPouncedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLouisPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport01_burningBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport01_burning"],
			[IsNotSaidairport01_burning],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectReallyNear],
			[ChanceToFire40Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerRemarkairport01_burningTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport01_burning", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_L4D1PlayerRemarkairport01_burningBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport01_burning"],
			[IsNotSaidairport01_burning],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectReallyNear],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport01_burning", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C11M1LeavingSafeBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidLeavingSafeArea],
			[IsNotSaidairport01_path01],
			["map", "c11m1_greenhouse"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C11M1LeavingSafeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLeavingSafeArea", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 0, duration = 0.0 },
			c3 = { context = "Saidairport01_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerRemarkairport01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport01_path01"],
			[IsNotSaidairport01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectReallyNear],
			[ChanceToFire40Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C11M1LeavingSafeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport01_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerSuggestHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerSuggestHealthTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerSuggestHealthBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "NamVet"],
			[ChanceToFire50Percent],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerSuggestHealthBillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerSuggestHealthFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Biker"],
			[ChanceToFire50Percent],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerSuggestHealthFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerSuggestHealthLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSuggestHealth"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			["from", "Manager"],
			[ChanceToFire50Percent],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerSuggestHealthLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerSuggestMeHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			["hasfirstaidkit", 1],
			["who", "BetaZoeyRVC"],
			[IsNotSuggestedHealth],
			["incapacitated", 0],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerSuggestMeHealthTeenGirl,
				followup = RThenAny("PlayerSuggestHealth", 0.0),
			},
		],
	},

	{
		name = "L4D1PlayerTransitionBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["numberofteamdead", 0],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerTransitionTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerTransitionCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotAlone],
			[IsSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerTransitionCloseTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerWarnHeardBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			["who", "BetaZoeyRVC"],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnHeardBoomerTeenGirl,
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
		name = "PlayerHeardBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnHeardBoomerTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerWarnHeardHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			["who", "BetaZoeyRVC"],
			[IsNotWarnHeardHunter],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnHeardHunterTeenGirl,
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
		name = "PlayerHeardHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnHeardHunterTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerWarnHeardSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			["who", "BetaZoeyRVC"],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnHeardSmokerTeenGirl,
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
		name = "PlayerHeardSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnHeardSmokerTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerWarnHeardWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			[IsClosestSurvivorNear1200],
			["who", "BetaZoeyRVC"],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			[IsNotAlone],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnHeardWitchTeenGirl,
				followup = RThenAny("PlayerKillThatLight", -1.472),
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
		name = "PlayerHeardWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHeardWitchTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerWarnMegaMobBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnMegaMob"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSpeaking],
			[IsWorldTalkBetazoeyrvc],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnMegaMobTeenGirl,
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
		name = "L4D1PlayerWarnMegaMobC11M5FinaleFirstWaveBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnMegaMob"],
			["map", "c11m5_runway"],
			["who", "BetaZoeyRVC"],
			["world_auto_finale", 1],
			[FinaleFirstHalf],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSpeaking],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnMegaMobTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnMegaMob", value = 1, duration = 60.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerWarnMegaMobC11M5FinaleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnMegaMob"],
			["who", "BetaZoeyRVC"],
			["map", "c11m5_runway"],
			["world_auto_finale", 1],
			[FinaleSecondHalf],
			[IsNotWarnMegaMob],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnMegaMobC11M5FinaleTeenGirl,
				followup = RThen("orator_plane_radio", "AirportRadioMegaMob", null, 3.5),
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
		name = "L4D1PlayerWarnWitchAngryBetaZoeyRVC",
		criteria = 
		[
			["concept", "WitchGettingAngry"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotWarnAngryWitch],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnWitchAngryTeenGirl,
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
		name = "L4D1SurvivorCaughtVomitBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerVomitInFace"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorCaughtVomitTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 10.0 },
		},
	},

	{
		name = "L4D1SurvivorCoughingBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorCoughing"],
			["coughing", 1],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorCoughingTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorCoughingDeathBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerDeath"],
			["coughing", 1],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorCoughingTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorDeathBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerDeath"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorDeathTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorGrabbedByTongueBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorGrabbedByTongueTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerWitchChasingBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerExertionMinor"],
			["who", "BetaZoeyRVC"],
			[IsNotSpeaking],
			["zombiepresentwitch", 1],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsTalkBetazoeyrvc],
			["saidwitchattacking", 1],
			[IsWitchAggro],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWitchChasingTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchChasing", value = 1, duration = 5.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "L4D1PlayerWitchStartAttackBetaZoeyRVC",
		criteria = 
		[
			["concept", "Fault"],
			["who", "BetaZoeyRVC"],
			["faultname", "WitchHarassment"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWitchStartAttackTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchAttacking", value = 1, duration = 15.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
			c3 = { context = "SaidWitchStartAttack", value = 1, duration = 15.0 },
		},
	},

	{
		name = "WitchAggroBetaZoeyRVC",
		criteria = 
		[
			["concept", "WitchStartAttack"],
			["who", "BetaZoeyRVC"],
			["witch_aggro_on", "BetaZoeyRVC"],
			[WitchaggroIncrease],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			//: WitchAggro:++1:None:None requires criteria function!
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorTankPoundBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGroundPoundedByTank"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorTankPoundTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1SurvivorVocalizeBackUpBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerBackUp"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorVocalizeBackUpTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorVocalizeEmphaticGoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerEmphaticGo"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorVocalizeEmphaticGoTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorVocalizeGoingToDieBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotComplainBlock],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorVocalizeGoingToDieTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "L4D1SurvivorVocalizeGoingToDie3BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["onthirdstrike", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotComplainBlock],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorVocalizeGoingToDie3TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "L4D1SurvivorVocalizeGoingToDieAloneBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["onthirdstrike", 1],
			["numberofteamalive", 1],
			["incombat", 0],
			[IsNotSaidNervous],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorVocalizeGoingToDieAloneTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidNervous", value = 1, duration = 0.0 },
		},
	},

	{
		name = "L4D1SurvivorVocalizeLookOutBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorVocalizeLookOutTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeLookOutCoachBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "Coach"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeLookOutCoachTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeLookOutNickBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "Gambler"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeLookOutNickTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeLookOutEllisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "Mechanic"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeLookOutEllisTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeLookOutRochelleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "Producer"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeLookOutRochelleTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorVocalizeThisWayBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerThisWay"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorVocalizeThisWayTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorVocalizeWaitHereBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWaitHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorVocalizeWaitHereTeenGirl,
			},
		],
	},

	{
		name = "Player_C7M2CrowsFlyBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M2CrowsFlySpeak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Player_C7M2CrowsFlyTeenGirl,
				followup = RThenAny("Player.WarnMegaMobc7m201", 1.0),
			},
		],
	},

	{
		name = "Player_C7M3BridgeLeapBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3BridgeLeapSpeak"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["worldc7m3generatorcount", 3],
			["map", "c7m3_port"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Player_C7M3BridgeLeapTeenGirl,
			},
		],
	},

	{
		name = "Player_C7M3BridgeLeapLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3BridgeLeapSpeak"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["worldc7m3generatorcount", 3],
			["ismanageralive", 1],
			[ChanceToFire10Percent],
			["map", "c7m3_port"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Player_C7M3BridgeLeapLouisTeenGirl,
			},
		],
	},

	{
		name = "SacrificeSuccessfulNotBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["worldc7m3generatorcount", 3],
			[NotSacrificedBetazoeyrvc],
			["map", "c7m3_port"],
			["world_auto_saidc7m3bridgeleap", 1],
			["world_auto_c7m3finalpress", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "SacrificeSuccessfulBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["worldc7m3generatorcount", 3],
			["worldsacrificed", "BetaZoeyRVC"],
			["map", "c7m3_port"],
			["world_auto_saidc7m3bridgeleap", 1],
			["world_auto_c7m3finalpress", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SacrificeSuccessfulTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SacrificeFinaleGenerator2OnSpkBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGenerator2OnSpk"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 3],
			["map", "c7m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "CrashFinaleGenerator2SpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGenerator2Speak"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 3],
			["map", "c7m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "SacrificeFailedBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["worldc7m3generatorcount", 3],
			["map", "c7m3_port"],
			[IsNotInRescueVehicle],
			["world_auto_saidc7m3bridgeleap", 1],
			[_auto_NotC7M3FinalPress],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SacrificeFailedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerHelpSacrificeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["map", "c7m3_port"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["world_auto_saidc7m3bridgeleap", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
	},

	{
		name = "PlayerGrabbedByJockeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerGrabbedByJockeyTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRevivedByDefibrillatorBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByDefibrillator"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRevivedByDefibrillatorTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRevivedByDefibrillator2BetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRevivedByDefibrillator2TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerUsingDefibrillatorBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerUsingDefibrillator"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerUsingDefibrillatorTeenGirl,
			},
		],
	},

	{
		name = "SurvivorchargerpoundBetaZoeyRVC",
		criteria = 
		[
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidchargerpound],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorchargerpoundTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorGooedBySpitterBetaZoeyRVC",
		criteria = 
		[
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkBetazoeyrvc],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorGooedBySpitterTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorWarnSpitterIncomingBetaZoeyRVC",
		criteria = 
		[
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorWarnSpitterIncomingTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},

	{
		name = "SurvivorPouncedByHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "ScreamWhilePounced"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPouncedByHunterTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "ChargerBeatsNickBetaZoeyRVC",
		criteria = 
		[
			["concept", "ChargerBeatsNick"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ChargerBeatsNickTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerLedgeHangEndBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeHangEnd"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLedgeHangEndTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerLedgeHangMiddleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeHangMiddle"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLedgeHangMiddleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerLedgeHangStartBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeHangStart"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLedgeHangStartTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1SurvivorFirstDeathBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["team", "Survivor"],
			["who", "BetaZoeyRVC"],
			[IsEveryoneAlive],
			[IsNotSaidSomeoneDied],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFirstDeathTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1DoubleDeathBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["team", "Survivor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSaidFaultFriendlyFireGeneral],
			["numberofteamalive", 3],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1DoubleDeathTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1DeathOneBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedNearEnough],
			["team", "Survivor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidFaultFriendlyFireGeneral],
			["numberofteamalive", 2],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1DeathOneTeenGirl,
			},
		],
	},

	{
		name = "L4D1TeamKillBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			[SurvivorDiedReallyClose],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["worldsaidfaultfriendlyfire", 1],
			[IsNotSaidFaultFriendlyFireBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1TeamKillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorPickupAutoShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "AutoShotgun"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupAutoShotgunTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupSpasShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Shotgun_Spas"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupAutoShotgunTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupFirstAidKitBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "FirstAidKit"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupFirstAidKitTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupHuntingRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "HuntingRifle"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupHuntingRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupMilitarySniperBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Sniper_Military"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMilitarySniperTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupScoutSniperBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Sniper_scout"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMilitarySniperTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupScoutAWPBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Sniper_awp"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMilitarySniperTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupLaserSightsBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			["botisavailable", 0],
			[ChanceToFire50Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupLaserSightsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupUpIncendiaryAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			["itempickedup", "IncendiaryAmmo"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupLaserSightsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupUpExplosiveAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			["itempickedup", "ExplosiveAmmo"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupLaserSightsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupMolotovBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Molotov"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMolotovTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupPainPillsBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PainPills"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupPainPillsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupAdrenalineBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Adrenaline"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupAdrenalineTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupDefibrillatorBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Defibrillator"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupAdrenalineTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupPipeBombBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PipeBomb"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupPipeBombTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupVomitJarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "VomitJar"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupVomitJarTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupPumpShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PumpShotgun"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupPumpShotgunTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupChromeShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Shotgun_Chrome"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupPumpShotgunTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Rifle"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupDesertRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Rifle_Desert"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupAK47RifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Rifle_AK47"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupSG552RifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Rifle_sg552"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupSMGBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "SMG"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[NotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupSMGTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupSilencedSMGBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Smg_silenced"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[NotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupSMGTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupMP5BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Smg_mp5"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[NotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupSMGTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorDeployUpExplosivesBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[IsNotSaidDeployUpgradePack_Explosive],
			["activeweapon", "UpgradePack_Explosive"],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorDeployUpExplosivesTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Explosive", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorDeployUpIncendiaryBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[IsNotSaidDeployUpgradePack_Incendiary],
			["activeweapon", "UpgradePack_Incendiary"],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorDeployUpIncendiaryTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Incendiary", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSecondPistolBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "SecondPistol"],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[IsNotInSafeSpot],
			[NotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupSecondPistolTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupGolfClubBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "GolfClub"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupFireAxeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "FireAxe"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupCrowbarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "CrowBar"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupGuitarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "electric_guitar"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupKatanaBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Katana"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupMacheteBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Machete"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupFryingPanBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "frying_pan"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupTonfaBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "tonfa"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupCricketBatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "cricket_bat"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupBaseballBatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "baseball_bat"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupKnifeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Knife"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupShovelBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "shovel"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupPitchforkBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Pitchfork"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupChainSawGroovyBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "chainsaw"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupChainSawGroovyTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupM60BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "m60"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupM60TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupGrenadeLauncherBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "GrenadeLauncher"],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupM60TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1PlayerChainSawUsedBetaZoeyRVC",
		criteria = 
		[
			["concept", "ChainsawUsed"],
			[IsNotSaidChainSawUsed],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IntensityOver25],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerChainSawUsedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidChainSawUsed", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorPickupUpIncendiaryBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "UpgradePack_Incendiary"],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupMeleeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1SurvivorPickupUpExplosivesBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "UpgradePack_Explosive"],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorPickupUpExplosivesTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "PickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "L4D1PlayerGettingRevivedBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerGettingRevivedTeenGirl,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "BetaZoeyRVC" }, -0.672),
			},
		],
	},

	{
		name = "L4D1PlayerHealOtherBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incombatmusic", 0],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHealOtherTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerHealOtherCombatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incombatmusic", 1],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHealOtherCombatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerHealOtherTankBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsWorldTalkBetazoeyrvc],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHealOtherCombatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerLedgeSaveLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Manager"],
			[ChanceToFire10Percent],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLedgeSaveLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendTeenGirl,
				followup = RThen("subject", "ReviveFriendDown", null, -0.981),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendCriticalBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["incombatmusic", 0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendCriticalTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendLoudBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendLoudTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendLoud2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendLoudTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendLoudCritBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendLoudTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendLoudCrit2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["zombiepresenttank", 1],
			["worldsaidtankwarn2", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		// 	forceweight 30
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendLoudTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendLoudBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			["subject", "NamVet"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendLoudBillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendLoudFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			["subject", "Biker"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendLoudFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerReviveFriendLoudLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["incombatmusic", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			["subject", "Manager"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerReviveFriendLoudLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1ReviveFriendDownFinalBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveFriendDownFinalTeenGirl,
			},
		],
	},

	{
		name = "L4D1ReviveFriendDownFinalManagerBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["from", "Manager"],
			[ChanceToFire10Percent],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveFriendDownFinalManagerTeenGirl,
			},
		],
	},

	{
		name = "L4D1ReviveFriendDownFinalNamVetBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveFriendDownFinal"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["from", "NamVet"],
			[ChanceToFire10Percent],
			[IsNotReviveInterrupt],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1ReviveFriendDownFinalNamVetTeenGirl,
			},
		],
	},

	{
		name = "PlayerLedgeSaveBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLedgeSaveTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerLedgeSaveCriticalBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLedgeSaveTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "L4D1PlayerAirportIntroBetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroAirport"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAirportIntroTeenGirl,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerAirportIntrozbBetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroAirport01zb"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerAirportIntrozbTeenGirl,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "L4D1PlayerHospitalIntro02BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroHospital02"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerHospitalIntro02TeenGirl,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "InfoReminfo_powerboat4BetaZoeyRVC",
		criteria = 
		[
			["concept", "InfoReminfo_powerboat4"],
			["who", "BetaZoeyRVC"],
			[IssuerClose],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.InfoReminfo_powerboat4TeenGirl,
				followup = RThenAny("InfoReminfo_powerboat4a", -2.953),
			},
		],
	},

	{
		name = "PlayerShotGasCanBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerShotGasCan"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerShotGasCanTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerShotGasCan", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerCoverMeHealBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerCoverMeHealTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "AskForCover", value = 1, duration = 30.0 },
		},
	},

	{
		name = "AutoPlayerLostCallBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			[IsClosestSurvivorFar3000],
			[IsNotAlone],
			[IsNotSaidPlayerLostCall],
			[_auto_NotNoLostCall],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.AutoPlayerLostCallTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedM60BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedM60TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedM60AutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedM60TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMagnumBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "magnum"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMagnumAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "magnum"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSecondPistolBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SecondPistol"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSecondPistolAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SecondPistol"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAutoShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "AutoShotgun"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAutoShotgunAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "AutoShotgun"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPumpShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "PumpShotgun"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPumpShotgunAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			["weaponname", "PumpShotgun"],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_silenced"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_ChromeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_chrome"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_ChromeAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			["weaponname", "Shotgun_chrome"],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_silenced"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_spasBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_spas"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_spasAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_spas"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifleAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_AK47BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_AK47"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_AK47AutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_AK47"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_desertBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_desert"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_desertAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_desert"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_sg552BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_sg552"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_sg552AutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_sg552"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMGBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "SMG"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMGAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "SMG"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMG_silencedBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_silenced"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMG_silencedAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_silenced"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMP5SMGBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Smg_mp5"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMP5SMGAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Smg_mp5"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHuntingRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "HuntingRifle"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHuntingRifleAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "HuntingRifle"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMilitarySniperBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_military"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMilitarySniperAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_military"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedScoutSniperBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_scout"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedScoutSniperAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_scout"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAWPSniperBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Sniper_awp"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAWPSniperAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Sniper_awp"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedCrowbarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "crowbar"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedCrowbarAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "crowbar"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGuitarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "electric_guitar"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGuitarAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "electric_guitar"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedTonfaBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "tonfa"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedTonfaAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "tonfa"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFryingPanBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "frying_pan"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFryingPanAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "frying_pan"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKatanaBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Katana"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKatanaAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Katana"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMacheteBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Machete"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMacheteAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Machete"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedCricketBatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "cricket_bat"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedCricketBatAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "cricket_bat"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedBaseballBatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "baseball_bat"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedBaseballBatAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "baseball_bat"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFireAxeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "fireaxe"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedFireAxeAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "fireaxe"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChainsawBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "chainsaw"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedM60TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChainsawAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "chainsaw"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedM60TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShovelBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Shovel"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShovelAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shovel"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPitchforkBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			["weaponname", "Pitchfork"],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPitchforkAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Pitchfork"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKnifeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["weaponname", "Knife"],
			[IsNotSmartLookAuto],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKnifeAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Knife"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMeleeWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWeaponPistolBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotPistol"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotShotgun"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedOtherWeaponBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotOtherWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsNotAlone],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotSpottedVehicle],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerLighthouseIntroBetaZoeyRVC",
		criteria = 
		[
			["concept", "introLighthouse"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLighthouseIntroTeenGirl,
				followup = RThenAny("C14M1Intro1", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "CXM1Intro", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerLighthouseIntro01aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1Intro1a"],
			["who", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerLighthouseIntro01aTeenGirl,
				followup = RThen("self", "IntroEnd", null, 0.1),
			},
		],
	},

	{
		name = "L4D1RemarkC14M1HumveeBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m1_humvee"],
			[IsNotRemarkedC14M1Humvee],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M1HumveeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M1Humvee", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C14M1PlaneFlyByBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1PlaneFlyBy"],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsNotSpottedC14M1Plane],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1PlaneFlyByTeenGirl,
				followup = RThen("self", "C14M1PlaneEngine", null, 5.5),
			},
		],
		applycontext =
		{
			c1 = { context = "SpottedC14M1Plane", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C14M1EngineBrokeBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1PlaneEngine"],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1EngineBrokeTeenGirl,
			},
		],
	},

	{
		name = "L4D1RemarkC14M1CabinUpstairsBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m1_cabin_upstairs"],
			[IsNotRemarkedC14M1CabinUpstairs],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M1CabinUpstairsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M1CabinUpstairs", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1RemarkC14M1JunkyardEntranceBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m1_junkyard_entrance"],
			[IsNotRemarkedC14M1JunkyardEntrance],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M1JunkyardEntranceTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M1JunkyardEntrance", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1RemarkC14M1TraincarBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m1_traincar"],
			[IsNotRemarkedC14M1Traincar],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M1TraincarTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M1Traincar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1RemarkC14M1PrePanicBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m1_pre_panic"],
			[IsNotRemarkedC14M1PrePanic],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M1PrePanicTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M1PrePanic", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C14M1PanicSpeakQuickReadyBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1PanicSpeak"],
			["who", "BetaZoeyRVC"],
			[IsNotRemarkedC14M1PrePanic],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1PanicSpeakQuickReadyTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M1PrePanic", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C14M1PanicSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1PanicSpeak"],
			["who", "BetaZoeyRVC"],
			["worldremarkedc14m1prepanic", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1PanicSpeakTeenGirl,
			},
		],
	},

	{
		name = "L4D1C14M1PowerOutBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1PowerOutSpeak"],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1PowerOutTeenGirl,
			},
		],
	},

	{
		name = "L4D1C14M1GeneratorActivatedSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1GeneratorActivatedSpeak"],
			["who", "BetaZoeyRVC"],
			[C14M1GeneratorTask],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1GeneratorActivatedSpeakTeenGirl,
			},
		],
	},

	{
		name = "L4D1C14M1ThirdGeneratorActivatedSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1GeneratorActivatedSpeak"],
			["who", "BetaZoeyRVC"],
			["worldc14m1generatorcount", 3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1ThirdGeneratorActivatedSpeakTeenGirl,
			},
		],
	},

	{
		name = "L4D1C14M1LastGeneratorActivatedSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1GeneratorActivatedSpeak"],
			["who", "BetaZoeyRVC"],
			["worldc14m1generatorcount", 4],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1LastGeneratorActivatedSpeakTeenGirl,
			},
		],
	},

	{
		name = "L4D1C14M1CraneDropBlankBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1CraneDropBlank"],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
	},

	{
		name = "L4D1C14M1PathClearBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M1PathClearSpeak"],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M1PathClearTeenGirl,
			},
		],
	},

	{
		name = "L4D1RemarkC14M1DownCliffBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m1_down_cliff"],
			[IsNotRemarkedC14M1DownCliff],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M1DownCliffTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M1DownCliff", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1RemarkC14M2GateBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m2_gate"],
			[IsNotRemarkedC14M2Gate],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M2GateTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M2Gate", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C14M2RadioSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M2RadioSpeak"],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingbetazoeyrvc", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M2RadioSpeakTeenGirl,
			},
		],
	},

	{
		name = "L4D1C14M2RadioDestroyedBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M2RadioDestroyed"],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_talkingbetazoeyrvc", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M2RadioDestroyedTeenGirl,
			},
		],
	},

	{
		name = "L4D1RemarkC14M2DropBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m2_drop"],
			[IsNotRemarkedC14M2Drop],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear50],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M2DropTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M2Drop", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1RemarkC14M2NoteLighthouseBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c14m2_note_lighthouse"],
			[IsNotRemarkedC14M2NoteLighthouse],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear1500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1RemarkC14M2NoteLighthouseTeenGirl,
				followup = RThenAny("C14M2NoteLighthouse2", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkedC14M2NoteLighthouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1C14M2NoteLighthouse2BetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M2NoteLighthouse2"],
			["who", "BetaZoeyRVC"],
			[IssuerClose],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M2NoteLighthouse2TeenGirl,
			},
		],
	},

	{
		name = "L4D1C14M2PowerOutAgainBetaZoeyRVC",
		criteria = 
		[
			["concept", "C14M2PowerOutAgainSpeak"],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1C14M2PowerOutAgainTeenGirl,
			},
		],
	},

	{
		name = "L4D1SurvivorFinalVehicleSpottedBoatC14M2BetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c14m2_lighthouse"],
			["world_auto_finale", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleSpottedBoatC14M2TeenGirl,
				followup = RThenAny("EmphaticArriveRun", -13.984),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
			c3 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleBoatC14M2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c14m2_lighthouse"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleBoatTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.569),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1SurvivorFinalVehicleInsideBoatC14M2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c14m2_lighthouse"],
			["coughing", 0],
			["incapacitated", 0],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["inrescuevehicle", 1],
			["world_auto_escape", 1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SurvivorFinalVehicleInsideBoatTeenGirl,
				followup = RThenAny("EmphaticArriveRun", -1.344),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_TimerLockA", value = 1, duration = 10.0 },
			c2 = { context = "_auto_TimerLockBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SafeRoomStartBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["instartarea", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
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
		name = "IntroEndBetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroEnd"],
			["who", "BetaZoeyRVC"],
			["from", "BetaZoeyRVC"],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 0, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "LeavingSafeAreaBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
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
		name = "LeavingSafeRoomBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorLeavingInitialCheckpoint"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidLeavingSafeArea],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
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
		name = "FinaleTriggeredBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["who", "BetaZoeyRVC"],
			["triggeredby", "BetaZoeyRVC"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "FinalVehicleSpottedBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["world_auto_finale", 1],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Finale", value = 2, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "FinalVehicleArrivedBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleArrived"],
			["who", "BetaZoeyRVC"],
			["world_auto_finale", 2],
			[_auto_NotEscapeReady],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_Escape", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "L4D1PlayerNiceShotBetaZoeyRVC",
		criteria = 
		[
			["concept", "L4D1PlayerNiceShot"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeaking],
			[ChanceToFire70Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerNiceShotTeenGirl,
			},
		],
	},

	{
		name = "C6M1Intro_01TeenGirl01BetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidIntroScene],
			[MoreThan0],
			[LessThan30],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl01TeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_11a", null, -0.91),
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
		name = "C6M1Intro_01TeenGirl02BetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidIntroScene],
			[MoreThan30],
			[LessThan40],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl02TeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_13a", null, -4.002),
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
		name = "C6M1Intro_01TeenGirl03BetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidIntroScene],
			[MoreThan40],
			[LessThan60],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl03TeenGirl,
				followup = RThen("Producer", "C6M1Intro_22a", null, -1.117),
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
		name = "C6M1Intro_01TeenGirl04BetaZoeyRVC",
		criteria = 
		[
			["concept", "introC6M1"],
			["who", "BetaZoeyRVC"],
			["introactor", "BetaZoeyRVC"],
			[IsNotSaidIntroScene],
			[MoreThan60],
			[LessThan100],
			[IsNotVersus],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_01TeenGirl04TeenGirl,
				followup = RThen("Coach", "C6M1Intro_08a", null, -5.459),
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
		name = "C6M1Intro_03aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_03a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_03aTeenGirl,
				followup = RThenAny("WorldC6M1_HistoricTour", 1.0),
			},
		],
	},

	{
		name = "C6M1Intro_04aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_04a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_04aTeenGirl,
				followup = RThen("Coach", "C6M1Intro_04b", null, -1.676),
			},
		],
	},

	{
		name = "C6M1Intro_04cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_04c"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_04cTeenGirl,
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
		name = "C6M1Intro_11bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_11b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_11bTeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_11c", null, -7.175),
			},
		],
	},

	{
		name = "C6M1Intro_13dBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_13d"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_13dTeenGirl,
				followup = RThen("Coach", "C6M1Intro_13e", null, -3.13),
			},
		],
	},

	{
		name = "C6M1Intro_15bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_15b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_15bTeenGirl,
				followup = RThen("Producer", "C6M1Intro_15c", null, -4.693),
			},
		],
	},

	{
		name = "C6M1Intro_15dBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_15d"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_15dTeenGirl,
				followup = RThen("Gambler", "C6M1Intro_15e", null, -2.385),
			},
		],
	},

	{
		name = "C6M1Intro_17aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_17a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_17aTeenGirl,
				followup = RThen("Producer", "C6M1Intro_17b", null, -9.916),
			},
		],
	},

	{
		name = "C6M1Intro_17cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_17c"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_17cTeenGirl,
				followup = RThen("Producer", "C6M1Intro_17d", null, -2.035),
			},
		],
	},

	{
		name = "C6M1Intro_22bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_22b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_22bTeenGirl,
				followup = RThen("Producer", "C6M1Intro_22c", null, -1.387),
			},
		],
	},

	{
		name = "C6M1Intro_22dBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_22d"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_22dTeenGirl,
				followup = RThen("Producer", "C6M1Intro_22f", null, -7.98),
			},
		],
	},

	{
		name = "C6M1Intro_22gBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_22g"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_22gTeenGirl,
				followup = RThen("Producer", "C6M1Intro_22h", null, -0.623),
			},
		],
	},

	{
		name = "C6M1Intro_23aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_23a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_23aTeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_23b", null, -1.285),
			},
		],
	},

	{
		name = "C6M1Intro_23cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C6M1Intro_23c"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M1Intro_23cTeenGirl,
				followup = RThen("Mechanic", "C6M1Intro_23d", null, -9.236),
			},
		],
	},

	{
		name = "c6m3_outroL4D1BetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			[IsNotVersus],
			[IsNotSaidc6m3_outro3],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc6m3_outro3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c6m3_outroL4D101aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D101a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D101aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D102bBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D102b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D102bTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D103aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D103a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D103aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D104aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D104a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D104aTeenGirl,
				followup = RThen("Biker", "c6m3_outroL4D104b", null, -4.872),
			},
		],
	},

	{
		name = "c6m3_outroL4D105aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D105a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D105aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D107aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D107a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D107aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D109aBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outroL4D109a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D109aTeenGirl,
			},
		],
	},

	{
		name = "c6m3_outroL4D1AllBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			[IsEveryoneAliveWeight0],
			[IsNotVersus],
			[IsNotSaidc6m3_outro3],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1AllTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc6m3_outro3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c6m3_outroL4D1MechanicBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			["ismechanicalive", 1],
			[IsNotVersus],
			[IsNotSaidc6m3_outro3],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1MechanicTeenGirl,
				followup = RThen("Biker", "c6m3_outroL4D108a", null, -5.788),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc6m3_outro3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c6m3_outroL4D1MechanicZoeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			["introactor", "BetaZoeyRVC"],
			[BetazoeyrvcGroup1],
			["ismechanicalive", 1],
			[IsNotVersus],
			[IsNotSaidc6m3_outro3],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1MechanicZoeyTeenGirl,
				followup = RThen("Biker", "c6m3_outroL4D1010a", null, -1.261),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc6m3_outro3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "c6m3_outroL4D1MechanicZoey2BetaZoeyRVC",
		criteria = 
		[
			["concept", "c6m3_outro3"],
			["who", "BetaZoeyRVC"],
			["map", "c6m3_port"],
			["introactor", "BetaZoeyRVC"],
			[BetazoeyrvcGroup2],
			["ismechanicalive", 1],
			[IsNotVersus],
			[IsNotSaidc6m3_outro3],
		],
		// 	forceweight 1
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.c6m3_outroL4D1MechanicZoey2TeenGirl,
				followup = RThen("Biker", "c6m3_outroL4D1010a", null, -1.261),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc6m3_outro3", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C6M3VocalizeLookOutBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C6M3VocalizeLookOutTeenGirl,
			},
		],
	},

	{
		name = "L4D1_AttractPlayerForThrowBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotAttractPlayerForThrow"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1_AttractPlayerForThrowTeenGirl,
			},
		],
	},

	{
		name = "L4D1_SurvivorBotTakeThisItemBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotTakeThisItem"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1_SurvivorBotTakeThisItemTeenGirl,
			},
		],
	},

	{
		name = "WorldC6M3_ByBridge01BetaZoeyRVC",
		criteria = 
		[
			["concept", "WorldC6M3_ByBridge01"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.WorldC6M3_ByBridge01TeenGirl,
			},
		],
	},

	{
		name = "WorldC6M3_ByBridge01EllisBetaZoeyRVC",
		criteria = 
		[
			["concept", "WorldC6M3_ByBridge01Ellis"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.WorldC6M3_ByBridge01EllisTeenGirl,
			},
		],
	},

	{
		name = "L4D1AlsoSpottedBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1AlsoSpottedBoomerTeenGirl,
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
		name = "L4D1AlsoSpottedHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1AlsoSpottedHunterTeenGirl,
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
		name = "L4D1AlsoSpottedSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1AlsoSpottedSmokerTeenGirl,
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
		name = "L4D1AlsoSpottedTankBetaZoeyRVC",
		criteria = 
		[
			[ConceptPlayerAlsoWarnTank],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["map", "c6m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1AlsoSpottedTankTeenGirl,
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
		name = "L4D1SpottedBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Boomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedBoomerTeenGirl,
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
		name = "L4D1SpottedChargerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Charger"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedChargerTeenGirl,
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
		name = "L4D1SpottedHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Hunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedHunterTeenGirl,
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
		name = "L4D1SpottedJockeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Jockey"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedJockeyTeenGirl,
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
		name = "L4D1SpottedSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Smoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedSmokerTeenGirl,
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
		name = "L4D1SpottedSpitterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Spitter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedSpitterTeenGirl,
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
		name = "L4D1SpottedTankBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["map", "c6m3_port"],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1SpottedTankTeenGirl,
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
		name = "L4D1_ReloadingBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReloading"],
			[IsNotSpeaking],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1_ReloadingTeenGirl,
			},
		],
	},

	{
		name = "L4D1PlayerKillConfirmationBetaZoeyRVC",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectFar300],
			[ChanceToFire80Percent],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerKillConfirmationTeenGirl,
				followup = RThenAny("L4D1PlayerNiceShot", -0.802),
			},
		],
	},

	{
		name = "L4D1PlayerWarnMegaMobBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnMegaMob"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSpeaking],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.L4D1PlayerWarnMegaMobTeenGirl,
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
		name = "PlayerNiceShotBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNiceShot"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IssuerClose],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerNiceShotTeenGirl,
			},
		],
	},

	{
		name = "ReviveMeINterruptedBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveMeInterrupted"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ReviveMeINterruptedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveInterrupt", value = 1, duration = 2.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorMournBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "namvet"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorMournBillTeenGirl,
			},
		],
	},

	{
		name = "SurvivorMournFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "biker"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorMournFrancisTeenGirl,
			},
		],
	},

	{
		name = "SurvivorMournLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSeeDeadPlayer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "manager"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorMournLouisTeenGirl,
			},
		],
	},

	{
		name = "PlayerRemarkFarm01_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm01_path09"],
			[IsNotSaidFarm01_path09],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm01_path09TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm01_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path14BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path14"],
			[IsNotSaidSmalltown03_path14],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path14TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path14", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ThanksGotItemBetaZoeyRVC",
		criteria = 
		[
			["concept", "Award"],
			["awardname", "Sharing"],
			["coughing", 0],
			["subject", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ThanksGotItemTeenGirl,
			},
		],
	},

	{
		name = "HealThanksBetaZoeyRVC",
		criteria = 
		[
			["concept", "HealedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsNotBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HealThanksTeenGirl,
				followup = RThen("Subject", "YouWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ReviveThanksTeenGirl,
				followup = RThen("Subject", "YouWelcome", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "NamVet"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ReviveThanksBillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "Biker"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ReviveThanksFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "ReviveThanksLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["subject", "Manager"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ReviveThanksLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "AutoYouAreWelcomeBetaZoeyRVC",
		criteria = 
		[
			["concept", "YouWelcome"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.AutoYouAreWelcomeTeenGirl,
			},
		],
	},

	{
		name = "BotAttentionBattleBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotNoteHumanAttention"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["inbattlefield", 1],
			[TimeSinceGroupInCombat20],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.BotAttentionBattleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBotAttention", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "BotHurrahAlsoBetaZoeyRVC",
		criteria = 
		[
			["concept", "HurrahAlso"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidHurrahAlso],
			["botisavailable", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.BotHurrahAlsoTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidHurrahAlso", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "BotPlayer_YourWelcomeBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotYouAreWelcome"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.BotPlayer_YourWelcomeTeenGirl,
			},
		],
	},

	{
		name = "BotReassureComingBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotReassureComing"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.BotReassureComingTeenGirl,
			},
		],
	},

	{
		name = "BotReassureNearbyBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotReassureNearby"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.BotReassureNearbyTeenGirl,
			},
		],
	},

	{
		name = "BotYesReadyBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotYesReady"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.BotYesReadyTeenGirl,
			},
		],
	},

	{
		name = "PlayerCallForRescueBetaZoeyRVC",
		criteria = 
		[
			["concept", "CallForRescue"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerCallForRescueTeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR14BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR14"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR14TeenGirl,
			},
		],
	},

	{
		name = "crashHowitzerNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotHowitzerFired],
			[IsHowitzerNag],
			["worldhowitzerseen", 1],
			[NotNagCrashBetazoeyrvc],
			[ChanceToFire80Percent],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.crashHowitzerNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "NagHowitzer", value = 1, duration = 30.0 },
			c2 = { context = "NagCrashBetazoeyrvc", value = 1, duration = 32.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "HowitzerBurnEnd00BetaZoeyRVC",
		criteria = 
		[
			["concept", "HowitzerBurnEnd00"],
			["who", "BetaZoeyRVC"],
			[NotCrash01ThroughBridge],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HowitzerBurnEnd00TeenGirl,
				followup = RThen("self", "HowitzerBurnEnd02", null, 0.1),
			},
		],
	},

	{
		name = "HowitzerBurnEnd02BetaZoeyRVC",
		criteria = 
		[
			["concept", "HowitzerBurnEnd02"],
			["who", "BetaZoeyRVC"],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HowitzerBurnEnd02TeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGenerator2OnSpkBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGenerator2OnSpk"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGenerator2OnSpkTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGenerator2SpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGenerator2Speak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGenerator2SpeakTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGeneratorBreakSpkBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGeneratorBreakSpk"],
			["who", "BetaZoeyRVC"],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGeneratorBreakSpkTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGeneratorNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire60Percent],
			["worldcrashfinalegeneratorbroken", 1],
			[NotCrashFinaleSaidGeneratorBroken],
			[NotNagCrashBetazoeyrvc],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGeneratorNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "CrashFinaleSaidGeneratorBroken", value = 1, duration = 15.0 },
			c2 = { context = "NagCrashBetazoeyrvc", value = 1, duration = 25.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashFinaleGeneratorSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGeneratorSpeak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGeneratorSpeakTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleGenUnPressSpeakBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleGeneratorUnPressSpeak"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleGenUnPressSpeakTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleTruckNagBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["worldcrashfinaletruckready", 1],
			[NotCrashFinaleTruckNagPaused],
			[ChanceToFire60Percent],
			[NotNagCrashBetazoeyrvc],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleTruckNagTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "CrashFinaleTruckNagPaused", value = 1, duration = 6.0 },
			c2 = { context = "NagCrashBetazoeyrvc", value = 1, duration = 11.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashFinaleTruckReadySpkBetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleTruckReadySpk"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleTruckReadySpkTeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleTruckResp01BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleTruckResp01"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleTruckResp01TeenGirl,
			},
		],
	},

	{
		name = "CrashFinaleTruckResp02BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashFinaleTruckResp02"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashFinaleTruckResp02TeenGirl,
				followup = RThenAny("CrashFinaleTruckResp01", 0.05),
			},
		],
	},

	{
		name = "IntroCrashWalkingBetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashWalking"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashWalkingTeenGirl,
				followup = RThen("Manager", "IntroCrashWalkingB", null, 0.05),
			},
		],
	},

	{
		name = "PlayerRemarkcrashcourse02_path14BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path14"],
			[IsNotSaidcrashcourse02_path14],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[NotCrash02FinaleStarted],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_path14TeenGirl,
				followup = RThenAny("CrashFinaleTruckResp01", 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path14", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "CrashCourseR01BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR01"],
			["who", "BetaZoeyRVC"],
			[IsBikerNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR01TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR03BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR03"],
			["who", "BetaZoeyRVC"],
			[IsBikerNear500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR03TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR06BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR06"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR06TeenGirl,
				followup = RThen("biker", "CrashCourseR07", null, 0.05),
			},
		],
	},

	{
		name = "CrashCourseR10BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR10"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR10TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR11BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR11"],
			["who", "BetaZoeyRVC"],
			[IsBikerNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR11TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseR12BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseR12"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseR12TeenGirl,
				followup = RThen("biker", "CrashCourseR13", null, 0.0),
			},
		],
	},

	{
		name = "PlayerRemarkcrashcourse01_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path05"],
			[IsNotSaidcrashcourse01_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path06"],
			[IsNotSaidcrashcourse01_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path10"],
			[IsNotSaidcrashcourse01_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			["isbikeralive", 1],
			[IsBikerNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path10TeenGirl,
				followup = RThen("Biker", "CrashCourseR02", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path13BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path13"],
			[IsNotSaidcrashcourse01_path13],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path13TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path13", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path14BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path14"],
			[IsNotSaidcrashcourse01_path14],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path14TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path14", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path17BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path17"],
			[IsNotSaidcrashcourse01_path17],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[NotHowitzerFired],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path17TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path17", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path18BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path18"],
			[IsNotSaidcrashcourse01_path18],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[NotHowitzerFired],
			[NotSurvivalMode],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path18TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path18", value = 1, duration = 0.0 },
			c2 = { context = "HowitzerSeen", value = 1, duration = 0.0 },
			c3 = { context = "NagHowitzer", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path20BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path20"],
			[IsNotSaidcrashcourse01_path20],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path20TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path20", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path24BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path24"],
			[IsNotSaidcrashcourse01_path24],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidCrash01SafeHouse],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path24TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path24", value = 1, duration = 0.0 },
			c2 = { context = "SaidCrash01Safehouse", value = 1, duration = 250.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path25BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path25"],
			[IsNotSaidcrashcourse01_path25],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[NotSaidCrash01SafeHouse],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path25TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path25", value = 1, duration = 0.0 },
			c2 = { context = "SaidCrash01SafeHouse", value = 1, duration = 250.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path02"],
			[IsNotSaidcrashcourse02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[ChanceToFire20Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkcrashcourse02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path02"],
			[IsNotSaidcrashcourse02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path05"],
			[IsNotSaidcrashcourse02_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path06"],
			[IsNotSaidcrashcourse02_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_path06TeenGirl,
				followup = RThen("Biker", "CrashCourseR10", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path07"],
			[IsNotSaidcrashcourse02_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path09"],
			[IsNotSaidcrashcourse02_path09],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_path09TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path10"],
			[IsNotSaidcrashcourse02_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_path10TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_path12BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_path12"],
			[IsNotSaidcrashcourse02_path12],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_path12TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_path12", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "IntroCrashR01BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR01"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR01TeenGirl,
				followup = RThen("Biker", "IntroCrashR02", null, 0.05),
			},
		],
	},

	{
		name = "IntroCrashR07BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR07"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR07TeenGirl,
				followup = RThen("Biker", "IntroCrashR08", null, 0.05),
			},
		],
	},

	{
		name = "IntroCrashR09BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR09"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR09TeenGirl,
				followup = RThenAny("IntroCrashR10", 0.05),
			},
		],
	},

	{
		name = "IntroCrashR10BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR10"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR10TeenGirl,
			},
		],
	},

	{
		name = "IntroCrashR11BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR11"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR11TeenGirl,
				followup = RThen("Biker", "IntroCrashR12", null, -1.1),
			},
		],
	},

	{
		name = "IntroCrashR19BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR19"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR19TeenGirl,
				followup = RThen("Biker", "IntroCrashR20", null, 0.05),
			},
		],
	},

	{
		name = "IntroCrashR28BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR28"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR28TeenGirl,
			},
		],
	},

	{
		name = "IntroCrashR33BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR33"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR33TeenGirl,
				followup = RThen("Biker", "IntroCrashR27", null, 0.05),
			},
		],
	},

	{
		name = "IntroCrashR34BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR34"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR34TeenGirl,
				followup = RThen("Biker", "IntroCrashR29", null, 0.05),
			},
		],
	},

	{
		name = "IntroCrashR35BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR35"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR35TeenGirl,
				followup = RThenAny("IntroCrashR31", 0.05),
			},
		],
	},

	{
		name = "IntroCrashR39BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroCrashR39"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroCrashR39TeenGirl,
			},
		],
	},

	{
		name = "CrashCourseI01BetaZoeyRVC",
		criteria = 
		[
			["concept", "CrashCourseI01"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.CrashCourseI01TeenGirl,
			},
		],
	},

	{
		name = "PlayerRemarkcrashcourse02_introBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_intro"],
			[IsNotSaidcrashcourse02_intro],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			["worldcrash02introready", 1],
			[NotCrash02IntroPaused],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_introTeenGirl,
				followup = RThenAny("CrashCourseI01", 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse02_intro", value = 1, duration = 0.0 },
			c2 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_startaBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_starta"],
			[NotCrash02IntroReady],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_startaTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Crash02IntroReady", value = 1, duration = 0.0 },
			c2 = { context = "Crash02IntroPaused", value = 1, duration = 7.0 },
			c3 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
			c4 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_startbBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_startb"],
			[NotCrash02IntroReady],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_startaTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Crash02IntroReady", value = 1, duration = 0.0 },
			c2 = { context = "Crash02IntroPaused", value = 1, duration = 7.0 },
			c3 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
			c4 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_startcBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_startc"],
			[NotCrash02IntroReady],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_startaTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Crash02IntroReady", value = 1, duration = 0.0 },
			c2 = { context = "Crash02IntroPaused", value = 1, duration = 7.0 },
			c3 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
			c4 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse02_startdBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse02_startd"],
			[NotCrash02IntroReady],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse02_startaTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Crash02IntroReady", value = 1, duration = 0.0 },
			c2 = { context = "Crash02IntroPaused", value = 1, duration = 7.0 },
			c3 = { context = "SaidFinaleAhead", value = 1, duration = 0.0 },
			c4 = { context = "SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "IntroFarm4BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroFarm4"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroFarm4TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "talk", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorBoomerBlunderBetaZoeyRVC",
		criteria = 
		[
			["concept", "Fault"],
			["faultname", "BoomerBlunder"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsHealthy],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorBoomerBlunderTeenGirl,
			},
		],
	},

	{
		name = "SurvivorFinaleTriggeredBoatBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["triggeredby", "BetaZoeyRVC"],
			["map", "c10m5_houseboat"],
			[IsNotSaidRadioTriggered],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinaleTriggeredBoatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRadioTriggered", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinaleTriggeredFarmBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["triggeredby", "BetaZoeyRVC"],
			["map", "c12m5_cornfield"],
			[IsNotSaidRadioTriggered],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinaleTriggeredFarmTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRadioTriggered", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinaleTriggeredRooftopBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinaleTriggered"],
			["triggeredby", "BetaZoeyRVC"],
			["map", "c8m5_rooftop"],
			[IsNotSaidRadioTriggered],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinaleTriggeredRooftopTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRadioTriggered", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinalVehicleBoatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c10m5_houseboat"],
			[IsNotSaidFinalVehicleArrived],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinalVehicleBoatTeenGirl,
				followup = RThenAny("EmphaticArriveRun", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinalVehicleArrived", value = 1, duration = 20.0 },
			c2 = { context = "Talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinalVehicleFarmBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c12m5_cornfield"],
			[IsNotSaidFinalVehicleArrived],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinalVehicleFarmTeenGirl,
				followup = RThenAny("EmphaticArriveRun", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinalVehicleArrived", value = 1, duration = 20.0 },
			c2 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinalVehicleFarmSpottedBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c12m5_cornfield"],
			[IsNotSaidFinalVehicleSpotted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinalVehicleFarmSpottedTeenGirl,
				followup = RThenAny("EmphaticArriveRunFarm", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinalVehicleSpotted", value = 1, duration = 20.0 },
			c2 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinalVehicleRooftopBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c8m5_rooftop"],
			[IsNotSaidFinalVehicleArrived],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinalVehicleRooftopTeenGirl,
				followup = RThenAny("EmphaticArriveRun", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinalVehicleArrived", value = 1, duration = 20.0 },
			c2 = { context = "Talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinalVehicleRunwayBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c11m5_runway"],
			[IsNotSaidFinalVehicleArrived],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinalVehicleRunwayTeenGirl,
				followup = RThenAny("EmphaticArriveRun", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinalVehicleArrived", value = 1, duration = 20.0 },
			c2 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinalVehicleSpottedBoatBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c10m5_houseboat"],
			[IsNotSaidFinalVehicleSpotted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinalVehicleSpottedBoatTeenGirl,
				followup = RThenAny("EmphaticArriveRun", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinalVehicleSpotted", value = 1, duration = 20.0 },
			c2 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinalVehicleSpottedRooftopBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c8m5_rooftop"],
			[IsNotSaidFinalVehicleSpotted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinalVehicleSpottedRooftopTeenGirl,
				followup = RThenAny("EmphaticArriveRun", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinalVehicleSpotted", value = 1, duration = 20.0 },
			c2 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorFinalVehicleSpottedRunwayBetaZoeyRVC",
		criteria = 
		[
			["concept", "FinalVehicleSpotted"],
			["who", "BetaZoeyRVC"],
			["map", "c11m5_runway"],
			[IsNotSaidFinalVehicleSpotted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFinalVehicleSpottedRunwayTeenGirl,
				followup = RThenAny("EmphaticArriveRun", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinalVehicleSpotted", value = 1, duration = 20.0 },
			c2 = { context = "Talk", value = 1, duration = 6.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ResponseLoudDispleasureSwearBetaZoeyRVC",
		criteria = 
		[
			["concept", "PanicEvent"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire60Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ResponseLoudDispleasureSwearTeenGirl,
			},
		],
	},

	{
		name = "ResponseSoftDispleasureSwearBetaZoeyRVC",
		criteria = 
		[
			["concept", "ResponseSoftDispleasureSwear"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IssuerMediumClose],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ResponseSoftDispleasureSwearTeenGirl,
			},
		],
	},

	{
		name = "SurvivorAskBillForHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "AskForHealth2"],
			["who", "BetaZoeyRVC"],
			["subject", "NamVet"],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorAskBillForHealthTeenGirl,
			},
		],
	},

	{
		name = "SurvivorAskForHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsSubjectNear400],
			[NoHasPainPills],
			[NoHasFirstAidKit],
			[IsNotHealthyHalf],
			["incombat", 0],
			[IsNotSaidAskForHealth],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorAskForHealthTeenGirl,
				followup = RThen("Subject", "AskForHealth", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAskForHealth", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorAskFrancisForHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "AskForHealth2"],
			["who", "BetaZoeyRVC"],
			["subject", "Biker"],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorAskFrancisForHealthTeenGirl,
			},
		],
	},

	{
		name = "SurvivorAskLouisForHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "AskForHealth2"],
			["who", "BetaZoeyRVC"],
			["subject", "Manager"],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorAskLouisForHealthTeenGirl,
			},
		],
	},

	{
		name = "SurvivorFrancisHealthHereBetaZoeyRVC",
		criteria = 
		[
			["concept", "AskForHealth"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["hasfirstaidkit", 1],
			[IsHealthyHalf],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorFrancisHealthHereTeenGirl,
				followup = RThen("self", "AskForHealth2", { from = "BetaZoeyRVC" }, 0.0),
			},
		],
	},

	{
		name = "SurvivorSpottedAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsWorldTalkBetazoeyrvc],
			["weaponname", "Ammo"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAmmoTeenGirl,
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
		name = "SurvivorSpottedBillCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
			[IsNamVetNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedBillCloseTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedBillClose2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
			[IsNamVetNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedBillClose2TeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedBillFarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "NamVet"],
			[IsNamVetFar400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedBillFarTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedFrancisCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
			[IsBikerNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedFrancisCloseTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedFrancisClose2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
			[IsBikerNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedFrancisClose2TeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedFrancisFarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Biker"],
			[IsBikerFar400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedFrancisFarTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedGrenadeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "PipeBomb"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGrenadeTeenGirl,
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
		name = "SurvivorSpottedGrenadeAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			["weaponname", "PipeBomb"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGrenadeAutoTeenGirl,
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
		name = "SurvivorSpottedHealthBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "FirstAidKit"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedHealthTeenGirl,
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
		name = "SurvivorSpottedHealthAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			["weaponname", "FirstAidKit"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedHealthAutoTeenGirl,
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
		name = "SurvivorSpottedLouisCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
			[IsManagerNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedLouisCloseTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedLouisClose2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
			[IsManagerNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedLouisClose2TeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedLouisFarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["subject", "Manager"],
			[IsManagerFar400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedLouisFarTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedMolotovBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Molotov"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMolotovTeenGirl,
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
		name = "SurvivorSpottedMolotovAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			["weaponname", "Molotov"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMolotovAutoTeenGirl,
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
		name = "SurvivorSpottedPillsBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "PainPills"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedPillsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotPIlls", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPillsAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			["weaponname", "PainPills"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedPillsAutoTeenGirl,
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
		name = "SurvivorSpottedWorldCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWorldCloseTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedAmmoAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			["weaponname", "Ammo"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAmmo],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAmmoTeenGirl,
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
		name = "SurvivorMovingToBattleStationBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotMovingToBattleStation"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["worldsaidcreshendostartnear", 1],
			[IsNotSaidBattleStationsBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorMovingToBattleStationTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBattleStationsBetazoeyrvc", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedBoomerTeenGirl,
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
		name = "SurvivorSpottedHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedHunterTeenGirl,
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
		name = "SurvivorSpottedInfectedBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerIncoming"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedInfectedTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedSmokerTeenGirl,
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
		name = "SurvivorSpottedTankBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Tank"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedTankTeenGirl,
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
		name = "SurvivorSpottedWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSpecial"],
			["specialtype", "Witch"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWitchTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorAlsoSpottedBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnBoomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedBoomerTeenGirl,
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
		name = "SurvivorAlsoSpottedHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedHunterTeenGirl,
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
		name = "SurvivorAlsoSpottedSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnSmoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedSmokerTeenGirl,
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
		name = "SurvivorAlsoSpottedTankBetaZoeyRVC",
		criteria = 
		[
			[ConceptPlayerAlsoWarnTank],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedTankTeenGirl,
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
		name = "SurvivorAlsoSpottedWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnWitch"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWitchTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWitchWarn", value = 1, duration = 20.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "EmphaticArriveRunBetaZoeyRVC",
		criteria = 
		[
			["concept", "EmphaticArriveRun"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.EmphaticArriveRunTeenGirl,
			},
		],
	},

	{
		name = "PlayerAlertGiveItemBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAlertGiveItem"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAlertGiveItemTeenGirl,
			},
		],
	},

	{
		name = "PlayerFriendlyFireBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBetazoeyrvcFriendlyFire],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFriendlyFireTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcFriendlyFire", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerFriendlyFire2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBetazoeyrvcFriendlyFire],
			["damagetype", "DMG_BULLET"],
			["worldbetazoeyrvcfriendlyfire", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFriendlyFire2TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcFriendlyFire", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerFriendlyFireFromBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBetazoeyrvcFriendlyFire],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "NamVet"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFriendlyFireFromBillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcFriendlyFire", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerFriendlyFireFromFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBetazoeyrvcFriendlyFire],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Biker"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFriendlyFireFromFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcFriendlyFire", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerFriendlyFireFromLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBetazoeyrvcFriendlyFire],
			["damagetype", "DMG_BULLET"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Manager"],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFriendlyFireFromLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcFriendlyFire", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerFriendlyFireNoBulletBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFriendlyFire"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotBetazoeyrvcFriendlyFire],
			[IsNotDamageTypeBullet],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFriendlyFireNoBulletTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcFriendlyFire", value = 1, duration = 10.0 },
		},
	},

	{
		name = "PlayerToTheRescueBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorBotMovingToReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incombat", 0],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerToTheRescueTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRescueComing", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorTauntResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerTaunt"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorTauntResponseTeenGirl,
			},
		],
	},

	{
		name = "EmphaticArriveRunFarmBetaZoeyRVC",
		criteria = 
		[
			["concept", "EmphaticArriveRunFarm"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.EmphaticArriveRunTeenGirl,
			},
		],
	},

	{
		name = "PlayerChokeResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerChoke"],
			["team", "Survivor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerChokeResponseTeenGirl,
			},
		],
	},

	{
		name = "PlayerTonguePullStartResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerTonguePullStart"],
			["team", "Survivor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerTonguePullStartResponseTeenGirl,
			},
		],
	},

	{
		name = "SurvivorCriticalHurtBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Critical"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorCriticalHurtTeenGirl,
			},
		],
	},

	{
		name = "SurvivorIncapacitatedHurtBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			[IsNotSpeaking],
			["painlevel", "Incapacitated"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorIncapacitatedHurtTeenGirl,
			},
		],
	},

	{
		name = "SurvivorMajorHurtBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorMajorHurtTeenGirl,
			},
		],
	},

	{
		name = "SurvivorMinorHurtBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorMinorHurtTeenGirl,
			},
		],
	},

	{
		name = "SurvivorReloadingBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReloading"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["who", "BetaZoeyRVC"],
			["incapacitated", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[RecentGroupInCombat10],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorReloadingTeenGirl,
			},
		],
	},

	{
		name = "PlayerHelpIncappedBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 1],
			[NotCalledForHelpRecently],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHelpIncappedTeenGirl,
				followup = RThenAny("FriendNeedsHelp", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "CalledForHelp", value = 1, duration = 20.0 },
		},
	},

	{
		name = "HelpResponseBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "NamVet"],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HelpResponseBillTeenGirl,
			},
		],
	},

	{
		name = "HelpResponseBillBBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "NamVet"],
			[IsNotInStartArea],
			[IsManagerNear200],
			[ChanceToFire10Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HelpResponseBillBTeenGirl,
			},
		],
	},

	{
		name = "HelpResponseFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "Biker"],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HelpResponseFrancisTeenGirl,
			},
		],
	},

	{
		name = "HelpResponseFrancisBBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "Biker"],
			[IsNotInStartArea],
			[IsManagerNear200],
			[ChanceToFire10Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HelpResponseFrancisBTeenGirl,
			},
		],
	},

	{
		name = "HelpResponseLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "FriendNeedsHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["insafespot", 1],
			["from", "Manager"],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HelpResponseLouisTeenGirl,
			},
		],
	},

	{
		name = "crashcourse01_path01zrBetaZoeyRVC",
		criteria = 
		[
			["concept", "crashcourse01_path01zresp"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.crashcourse01_path01zrTeenGirl,
			},
		],
	},

	{
		name = "PlayerAirport02CraneStartedBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport02_creshendoCrane"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAirport02CraneStartedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Airport02CraneStarted", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerAirport02DumpsterDownBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport02_creshendo03"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAirport02DumpsterDownTeenGirl,
			},
		],
	},

	{
		name = "Playerairport03_barrieraBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport03_barriera"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidairport03_barriera],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
			[IsNotSaidairport03_barrier],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Playerairport03_barrieraTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_barriera", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerAirport03FirePathClearaBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport03FirePathCleara"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire10Percent],
			[RecentGroupInCombat2],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAirport03FirePathClearaTeenGirl,
				followup = RThen("all", "Airport03FirePathCleara", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAirport03FirePathClear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerAirport03FirePathClearXBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport03FirePathClearX"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidAirport03FirePathClear],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAirport03FirePathClearXTeenGirl,
				followup = RThen("all", "Airport03FirePathCleara", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAirport03FirePathClear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerAirport03FireStartedXBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport03FireStartedX"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAirport03FireStartedXTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAirport03FireStarted", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Playerairport04_08bBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport04_08b"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Playerairport04_08bTeenGirl,
			},
		],
	},

	{
		name = "Playerairport04_08cBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport04_08c"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Playerairport04_08cTeenGirl,
			},
		],
	},

	{
		name = "Playerairport04_08dBetaZoeyRVC",
		criteria = 
		[
			["concept", "airport04_08d"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Playerairport04_08dTeenGirl,
			},
		],
	},

	{
		name = "PlayerFrancisSuggestsCraneBetaZoeyRVC",
		criteria = 
		[
			["concept", "FrancisSuggestsCrane"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFrancisSuggestsCrane],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFrancisSuggestsCraneTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFrancisSuggestsCrane", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerLaughFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "LaughFrancis"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidLaughFrancis],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLaughFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidLaughFrancis", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport02_creshendo01aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_creshendo01a"],
			[IsNotSaidairport02_creshendo01a],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport02_creshendo01aTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_creshendo01a", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport02_creshendo01bBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_creshendo01b"],
			[IsNotSaidairport02_creshendo01a],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[IsNotAirport02CraneStarted],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport02_creshendo01bTeenGirl,
				followup = RThenAny("BetazoeyrvcSuggestsCrane", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_creshendo01b", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport02_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path01"],
			[IsNotSaidairport02_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport02_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path02"],
			[IsNotSaidairport02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[ChanceToFire10Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkairport02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path02"],
			[IsNotSaidairport02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport02_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path03"],
			[IsNotSaidairport02_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[ChanceToFire20Percent],
			["ismanageralive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport02_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkairport02_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path03"],
			[IsNotSaidairport02_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			["ismanageralive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport02_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path04"],
			[IsNotSaidairport02_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport02_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport02_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path05"],
			[IsNotSaidairport02_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport02_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport02_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport02_path06"],
			[IsNotSaidairport02_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport02_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_01"],
			[IsNotSaidairport03_01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_02aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_02a"],
			[IsNotSaidairport03_02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_02aTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_02bBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_02b"],
			[IsNotSaidairport03_02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_02bTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_03aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_03a"],
			[IsNotSaidairport03_03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_03aTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_03bBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_03b"],
			[IsNotSaidairport03_03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_03bTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_03cBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_03c"],
			[IsNotSaidairport03_03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_03cTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_04"],
			[IsNotSaidairport03_04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_06"],
			[IsNotSaidairport03_06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_06TeenGirl,
				followup = RThenAny("LaughBetazoeyrvc", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_07"],
			[IsNotSaidairport03_07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSafeSpotAhead],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_07", value = 1, duration = 0.0 },
			c2 = { context = "SaidSafeSpotAhead", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport03_barrierBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport03_barrier"],
			[IsNotSaidairport03_barrier],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
			[IsNotSaidAirport03FireStarted],
			[IsNotSaidAirport03FirePathClear],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport03_barrierTeenGirl,
				followup = RThenAny("airport03_barriera", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport03_barrier", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_01"],
			[IsNotSaidairport04_01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_03"],
			[IsNotSaidairport04_03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[ChanceToFire20Percent],
			[TimeSinceGroupInCombat10],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkairport04_03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_03"],
			[IsNotSaidairport04_03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[TimeSinceGroupInCombat10],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_04"],
			[IsNotSaidairport04_04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_05"],
			[IsNotSaidairport04_05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire20Percent],
			[TimeSinceGroupInCombat10],
			["ismanageralive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_05TeenGirl,
				followup = RThen("All", "airport04_05a", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkairport04_05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_05"],
			[IsNotSaidairport04_05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat10],
			["ismanageralive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_06"],
			[IsNotSaidairport04_06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire10Percent],
			["isbikeralive", 1],
			[IsBikerNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkairport04_06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_06"],
			[IsNotSaidairport04_06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			["isbikeralive", 1],
			[IsBikerNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_07"],
			[IsNotSaidairport04_07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire10Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_07TeenGirl,
				followup = RThen("biker", "AynRandResponse", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkairport04_07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_07"],
			[IsNotSaidairport04_07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_08aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_08a"],
			[IsNotSaidairport04_08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_08aTeenGirl,
				followup = RThenAny("airport04_08a", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_08bBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_08b"],
			[IsNotSaidairport04_08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_08bTeenGirl,
				followup = RThenAny("airport04_08a", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_08cBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_08c"],
			[IsNotSaidairport04_08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_08cTeenGirl,
				followup = RThenAny("airport04_08a", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_08dBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_08d"],
			[IsNotSaidairport04_08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_08dTeenGirl,
				followup = RThenAny("airport04_08a", 0.0),
			},
		],
	},

	{
		name = "PlayerRemarkairport04_08eBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_08e"],
			[IsNotSaidairport04_08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_08eTeenGirl,
				followup = RThenAny("airport04_08a", 0.0),
			},
		],
	},

	{
		name = "PlayerRemarkairport04_08fBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_08f"],
			[IsNotSaidairport04_08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_08fTeenGirl,
				followup = RThenAny("airport04_08a", 0.0),
			},
		],
	},

	{
		name = "PlayerRemarkairport04_09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_09"],
			[IsNotSaidairport04_09],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			["ismanageralive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_09TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport04_vanBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport04_van"],
			[IsNotSaidairport04_van],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
			[IsNotSaidPathClearVan],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport04_vanTeenGirl,
				followup = RThen("Biker", "airport04_vana", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport04_van", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkcrashcourse01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "crashcourse01_path01"],
			[IsNotSaidcrashcourse01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkcrashcourse01_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidcrashcourse01_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm01_path01"],
			[IsNotSaidFarm01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm01_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm01_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm01_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm01_path02"],
			[IsNotSaidFarm01_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm01_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm01_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm01_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm01_path03"],
			[IsNotSaidFarm01_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm01_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm01_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm01_path09ZoeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm01_path09"],
			[IsNotSaidFarm01_path09],
			["coughing", 0],
			[IsTalk],
			["incombat", 0],
			[IsWithThree],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm01_path09ZoeyTeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path01"],
			[IsNotSaidFarm02_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path02"],
			[IsNotSaidFarm02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidFarm02_TracksBelow],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path02", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path02aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path02"],
			[IsNotSaidFarm02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsBikerNear125],
			[NotSaidFarm02_TracksBelow],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path02aTeenGirl,
				followup = RThen("Biker", "Farm02_path02b", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path02", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path03"],
			[IsNotSaidFarm02_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidFarm02_TracksBelow],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path03", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path03aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path03"],
			[IsNotSaidFarm02_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidFarm02_TracksBelow],
			[IsBikerNear125],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path02aTeenGirl,
				followup = RThen("Biker", "Farm02_path02b", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path03", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path04"],
			[IsNotSaidFarm02_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidFarm02_TracksBelow],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path04", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path04aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path04"],
			[IsNotSaidFarm02_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidFarm02_TracksBelow],
			[IsBikerNear125],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path02aTeenGirl,
				followup = RThen("Biker", "Farm02_path02b", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path04", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path05"],
			[IsNotSaidFarm02_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidFarm02_TracksBelow],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path05", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path05aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path05"],
			[IsNotSaidFarm02_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[NotSaidFarm02_TracksBelow],
			[IsBikerNear125],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path02aTeenGirl,
				followup = RThen("Biker", "Farm02_path02b", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path05", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm02_TracksBelow", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path06"],
			[IsNotSaidFarm02_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path06TeenGirl,
				followup = RThenAny("RespondAffirmative", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path09"],
			[IsNotSaidFarm02_path09],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path09TeenGirl,
				followup = RThenAny("RespondAffirmative", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm02_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm02_path10"],
			[IsNotSaidFarm02_path10],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path14TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm02_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm03_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path03"],
			[IsNotSaidFarm03_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm03_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm03_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path06"],
			[IsNotSaidFarm03_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm03_path06TeenGirl,
				followup = RThenAny("ResponseSoftDispleasureSwear", 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm03_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path07"],
			[IsNotSaidFarm03_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm03_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm03_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path09"],
			[IsNotSaidFarm03_path09],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm01_path09TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm03_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm03_path10"],
			["worldfarm03bridgedown", 1],
			[IsNotSaidFarm03_path10],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm03_path10TeenGirl,
				followup = RThenAny("RespondAffirmative", 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm03_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm04_path01aBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path01"],
			[IsNotSaidFarm04_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm04_path01aTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm04_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path04"],
			[IsNotSaidFarm04_path04],
			[IsSubjectNear1000],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm04_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path04", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm04_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm04_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path05"],
			[IsNotSaidFarm04_path05],
			[IsSubjectNear600],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm04_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path05", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm04_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm04_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path06"],
			[IsNotSaidFarm04_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm04_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm04_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path07"],
			[IsNotSaidFarm04_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm04_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm04_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path08"],
			[IsNotSaidFarm04_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm04_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm04_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path09"],
			[IsNotSaidFarm04_path09],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm04_path09TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm04_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm04_path10"],
			[IsNotSaidFarm04_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm04_path10TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm04_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm05_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path01"],
			[IsNotSaidFarm05_path01],
			[IsNotSaidFarm05_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm03_path06TeenGirl,
				followup = RThenAny("ResponseSoftDispleasureSwear", 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm05_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path02"],
			[IsNotSaidFarm05_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm02_path09TeenGirl,
				followup = RThenAny("RespondAffirmative", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm05_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path06"],
			[IsNotSaidFarm05_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm05_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm05_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path08"],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path10],
			[IsNotSaidFarm05_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm05_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm05_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path09"],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path08],
			[IsNotSaidFarm05_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm05_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkFarm05_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Farm05_path10"],
			[IsNotSaidFarm05_path10],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkFarm05_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFarm05_path10", value = 1, duration = 0.0 },
			c2 = { context = "SaidFarm05_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkhospital01_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital01_path03"],
			[IsNotSaidhospital01_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkhospital01_path03TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital01_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkhospital02_safehouseBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital02_safehouse"],
			[IsNotSaidhospital02_safehouse],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkhospital02_safehouseTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital02_safehouse", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkhospital03_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital03_path04"],
			[IsNotSaidhospital03_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkhospital03_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital03_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkhospital03_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital03_path08"],
			[IsNotSaidhospital03_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkhospital03_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital03_path08", value = 1, duration = 0.0 },
		},
	},

	{
		name = "AUTOBLANK_PlayerRemarkhospital03_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital03_path08"],
			[IsNotSaidhospital03_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital03_path08", value = 1, duration = 0.0 },
		},
	},

	{
		name = "PlayerRemarkhospital03_path11BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital03_path11"],
			[IsNotSaidhospital03_path11],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkhospital03_path11TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital03_path11", value = 1, duration = 0.0 },
			c2 = { context = "SaidSafeSpotAhead", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkhospital04_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital04_path03"],
			[IsNotSaidhospital04_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[IsManagerNear200],
			["ismanageralive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkhospital04_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital04_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "AUTOBLANK_PlayerRemarkhospital04_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital04_path03"],
			[IsNotSaidhospital04_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsManagerNear200],
			["ismanageralive", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital04_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkhospital05_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital05_path01"],
			[IsNotSaidhospital05_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkhospital05_path01TeenGirl,
				followup = RThen("Biker", "hospital05_path01a", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital05_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkhospital05_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "hospital05_path02"],
			[IsNotSaidhospital05_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkhospital05_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidhospital05_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkPathClearVanBetaZoeyRVC",
		criteria = 
		[
			["concept", "PathClearVan"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPathClearVan],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkPathClearVanTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPathClearVan", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path01"],
			[IsNotSaidSmalltown01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown01_path01TeenGirl,
				followup = RThenAny("ResponseSoftDispleasureSwear", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown01_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path02"],
			[IsNotSaidSmalltown01_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSaidSmalltown01_path04],
			["worldsaidsmalltown01_path01", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown01_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown01_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path03"],
			[IsNotSaidSmalltown01_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown01_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown01_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path07"],
			[IsNotSaidSmalltown01_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
			[IsNotSaidSmalltown01_path08],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown01_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown01_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path08"],
			[IsNotSaidSmalltown01_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown01_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown01_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown01_path09"],
			[IsNotSaidSmalltown01_path09],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1500],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown01_path09TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown01_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarksmalltown02_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path02"],
			[IsNotSaidsmalltown02_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarksmalltown02_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarksmalltown02_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path03"],
			[IsNotSaidsmalltown02_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarksmalltown02_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarksmalltown02_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path04"],
			[IsNotSaidsmalltown02_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarksmalltown02_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarksmalltown02_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path05"],
			[IsNotSaidsmalltown02_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarksmalltown02_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarksmalltown02_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path06"],
			[IsNotSaidsmalltown02_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear700],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarksmalltown02_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarksmalltown02_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path07"],
			[IsNotSaidsmalltown02_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear600],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarksmalltown02_path07TeenGirl,
				followup = RThen("biker", "smalltown02_path07a", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarksmalltown02_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "smalltown02_path08"],
			[IsNotSaidsmalltown02_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarksmalltown02_path08TeenGirl,
				followup = RThen("manager", "smalltown02_path08a", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidsmalltown02_path08", value = 1, duration = 0.0 },
			c2 = { context = "Saidsmalltown02_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown02_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown02_path09"],
			[IsNotSaidSmalltown02_path09],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown02_path09TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown02_path09", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path01"],
			[IsNotSaidSmalltown03_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path02"],
			[IsNotSaidSmalltown03_path01],
			[IsNotSaidSmalltown03_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path03"],
			[IsNotSaidSmalltown03_path03],
			[IsNotSaidSmalltown03_path04],
			[IsNotSaidSmalltown03_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path04"],
			[IsNotSaidSmalltown03_path04],
			[IsNotSaidSmalltown03_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path04", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path05"],
			[IsNotSaidSmalltown03_path04],
			[IsNotSaidSmalltown03_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path06"],
			[IsNotSaidSmalltown03_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path07"],
			[IsNotSaidSmalltown03_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path07TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path08BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path08"],
			[IsNotSaidSmalltown03_path08],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path08TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path08", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path10"],
			[IsNotSaidSmalltown03_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path10TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path11BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path11"],
			[IsNotSaidSmalltown03_path11],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path11TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path11", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path12BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path12"],
			[IsNotSaidSmalltown03_path12],
			[IsNotSaidSmalltown03_path13],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path12TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path12", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown03_path13BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown03_path13"],
			[IsNotSaidSmalltown03_path13],
			[IsNotSaidSmalltown03_path12],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path13TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown03_path13", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path01"],
			[IsNotSaidSmalltown04_path01],
			[IsNotSaidSmalltown04_path02],
			["coughing", 0],
			["incombat", 0],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown04_path01TeenGirl,
				followup = RThenAny("RiversideIsDead", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path01", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path02BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path02"],
			[IsNotSaidSmalltown04_path02],
			[IsNotSaidSmalltown04_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown04_path02TeenGirl,
				followup = RThenAny("RiversideIsDead", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path02", value = 1, duration = 0.0 },
			c2 = { context = "Talk", value = 1, duration = 12.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path03"],
			[IsNotSaidSmalltown04_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsSmalltownBarricadeBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown04_path03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path03", value = 1, duration = 0.0 },
			c2 = { context = "SmallTownBarricadeBetazoeyrvc", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path04BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path04"],
			[IsNotSaidSmalltown04_path04],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsSmalltownBarricadeBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown04_path04TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path04", value = 1, duration = 0.0 },
			c2 = { context = "SmallTownBarricadeBetazoeyrvc", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path05BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path05"],
			[IsNotSaidSmalltown04_path05],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown04_path05TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path05", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path07BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path07"],
			[IsNotSaidSmalltown04_path07],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown04_path07TeenGirl,
				followup = RThen("Manager", "Smalltown04_path07A", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path07", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path09BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path09"],
			[IsNotSaidSmalltown04_path09],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsSmalltownBarricadeBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown04_path09TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path09", value = 1, duration = 0.0 },
			c2 = { context = "SmallTownBarricadeBetazoeyrvc", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path10BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path10"],
			[IsNotSaidSmalltown04_path10],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown04_path10TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path10", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown04_path11BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown04_path11"],
			[IsNotSaidSmalltown04_path11],
			["coughing", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown03_path14TeenGirl,
				followup = RThenAny("SafeSpotAheadResponse", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path11", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown05_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown05_path01"],
			[IsNotSaidSmalltown05_path01],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear1000],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown05_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown05_path01", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown05_path03BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown05_path03"],
			[IsNotSaidSmalltown05_path03],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown05_path03TeenGirl,
				followup = RThen("biker", "Smalltown05_path03a", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown05_path03", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkSmalltown05_path06BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "Smalltown05_path06"],
			[IsNotSaidSmalltown05_path06],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkSmalltown05_path06TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown05_path06", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkThroughHereBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "ThroughHere"],
			[IsNotSaidThroughHere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkThroughHereTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidThroughHere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkUpThatLadderBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "UpThatLadder"],
			[IsNotSaidUpThatLadder],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkUpThatLadderTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidUpThatLadder", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RespondAffirmativeBetaZoeyRVC",
		criteria = 
		[
			["concept", "RespondAffirmative"],
			[IssuerMediumClose],
			["coughing", 0],
			["incombat", 0],
			["who", "BetaZoeyRVC"],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.RespondAffirmativeTeenGirl,
			},
		],
	},

	{
		name = "RiversideIsDeadBetaZoeyRVC",
		criteria = 
		[
			["concept", "RiversideIsDead"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.RiversideIsDeadTeenGirl,
				followup = RThenAny("RiversideIsDeadB", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "RiversideIsDeadPlanBetaZoeyRVC",
		criteria = 
		[
			["concept", "RiversideIsDeadPlan"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.RiversideIsDeadPlanTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSmalltown04_path02", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerNearFinaleFarmBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			["map", "c12m5_cornfield"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerNearFinaleFarmTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCoverMeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerCoverMe"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerCoverMeTeenGirl,
			},
		],
	},

	{
		name = "PlayerFollowMeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFollowMe"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFollowMeTeenGirl,
			},
		],
	},

	{
		name = "PlayerHelpBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHelp"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHelpTeenGirl,
			},
		],
	},

	{
		name = "PlayerHurryUpBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHurryUp"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHurryUpTeenGirl,
			},
		],
	},

	{
		name = "PlayerKillThatLightBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerKillThatLight"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerKillThatLightTeenGirl,
			},
		],
	},

	{
		name = "PlayerLeadOnBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLeadOn"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLeadOnTeenGirl,
			},
		],
	},

	{
		name = "PlayerMoveOnBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerMoveOn"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerMoveOnTeenGirl,
			},
		],
	},

	{
		name = "PlayerStayTogetherBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerStayTogetherTeenGirl,
			},
		],
	},

	{
		name = "PlayerWatchOutBehindBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWatchOutBehind"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWatchOutBehindTeenGirl,
			},
		],
	},

	{
		name = "PlayerAskReadyBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAskReady"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAskReadyTeenGirl,
			},
		],
	},

	{
		name = "PlayerImWithYouBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerImWithYou"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerImWithYouTeenGirl,
			},
		],
	},

	{
		name = "PlayerLaughBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLaugh"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLaughTeenGirl,
			},
		],
	},

	{
		name = "PlayerLostCallBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLostCall"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLostCallTeenGirl,
			},
		],
	},

	{
		name = "PlayerNiceJobResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNiceJob"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerNiceJobResponseTeenGirl,
			},
		],
	},

	{
		name = "PlayerNoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNo"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerNoTeenGirl,
			},
		],
	},

	{
		name = "PlayerProfanityBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAnswerLostCall"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerProfanityTeenGirl,
			},
		],
	},

	{
		name = "PlayerSorryBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSorry"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSorryTeenGirl,
			},
		],
	},

	{
		name = "PlayerThanksBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerThanks"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerThanksTeenGirl,
			},
		],
	},

	{
		name = "PlayerYesBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerYes"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerYesTeenGirl,
			},
		],
	},

	{
		name = "PlayerYouAreWelcomeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerYouAreWelcome"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerYouAreWelcomeTeenGirl,
			},
		],
	},

	{
		name = "PlayerFriendlyFireInflictorBetaZoeyRVC",
		criteria = 
		[
			[ConceptPlayerFriendlyFireInflictor],
			["coughing", 0],
			[IsNotSpeaking],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSorryTeenGirl,
			},
		],
	},

	{
		name = "PlayerNegativeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNegative"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerNegativeTeenGirl,
			},
		],
	},

	{
		name = "PlayerAreaClearBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerAreaClear"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAreaClearTeenGirl,
			},
		],
	},

	{
		name = "PlayerHeardBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardBoomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHeardBoomerTeenGirl,
			},
		],
	},

	{
		name = "PlayerHeardHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardHunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHeardHunterTeenGirl,
			},
		],
	},

	{
		name = "PlayerHeardSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardSmoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHeardSmokerTeenGirl,
			},
		],
	},

	{
		name = "PlayerHeardTankBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardTank"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHeardTankTeenGirl,
			},
		],
	},

	{
		name = "PlayerHeardWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHeardWitch"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHeardWitchTeenGirl,
			},
		],
	},

	{
		name = "PlayerHurrahBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHurrah"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHurrahTeenGirl,
				followup = RThenAny("HurrahAlso", 0.0),
			},
		],
	},

	{
		name = "PlayerWarnCarefulBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnCareful"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWarnCarefulTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpottedWorldFarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLook"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWorldFarTeenGirl,
			},
		],
	},

	{
		name = "IntroSmalltownBetaZoeyRVC",
		criteria = 
		[
			["concept", "introSmallTown"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroSmalltownTeenGirl,
				followup = RThen("betazoeyrvc", "IntroSmallTown2", null, 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "talk", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "IntroSmalltown2BetaZoeyRVC",
		criteria = 
		[
			["concept", "introSmallTown2"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.IntroSmalltown2TeenGirl,
				followup = RThenAny("IntroSmallTown3", 0.05),
			},
		],
		applycontext =
		{
			c1 = { context = "talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpawnBetaZoeyRVC",
		criteria = 
		[
			["concept", "ScenarioJoin"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpawnTeenGirl,
			},
		],
	},

	{
		name = "SurvivorSpawnLastMainstreetBetaZoeyRVC",
		criteria = 
		[
			["concept", "ScenarioJoinLast"],
			["who", "BetaZoeyRVC"],
			["map", "l4d_smalltown04_mainstreet"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpawnLastMainstreetTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "RemarkableReadyToGo", value = 1, duration = 500.0 },
			c2 = { context = "RemarkableBlocker", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerBillPouncedBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "NamVet"],
			[IsNotSaidBillPounced],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerBillPouncedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BillPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerBounceReactionBetaZoeyRVC",
		criteria = 
		[
			["concept", "BounceReaction"],
			["who", "BetaZoeyRVC"],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectAlmostNear],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerBounceReactionTeenGirl,
			},
		],
	},

	{
		name = "PlayerEatPillsBetaZoeyRVC",
		criteria = 
		[
			["concept", "EatPills"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerEatPillsTeenGirl,
			},
		],
	},

	{
		name = "PlayerFrancisPouncedBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Biker"],
			[IsNotSaidFrancisPounced],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerFrancisPouncedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "FrancisPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerGetInsideCheckPointBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetInsideCheckPoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SomeoneOutsideSafeSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerGetInsideCheckPointTeenGirl,
			},
		],
	},

	{
		name = "PlayerGrenadeBetaZoeyRVC",
		criteria = 
		[
			["concept", "ThrewGrenade"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerGrenadeTeenGirl,
				followup = RThenAny("GrenadeCareful", 0.0),
			},
		],
	},

	{
		name = "PlayerGrenadeCarefulBetaZoeyRVC",
		criteria = 
		[
			["concept", "GrenadeCareful"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["zombiepresentwitch", 1],
			["incombat", 0],
			[IssuerClose],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerGrenadeCarefulTeenGirl,
			},
		],
	},

	{
		name = "PlayerIncapacitatedInitialBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerIncapacitated"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerIncapacitatedInitialTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "PlayerKillConfirmationBetaZoeyRVC",
		criteria = 
		[
			["concept", "KilledZombie"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectFar300],
			[ChanceToFire40Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerKillConfirmationTeenGirl,
				followup = RThenAny("PlayerNiceShot", 0.0),
			},
		],
	},

	{
		name = "PlayerLockTheDoorCheckPointBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLockTheDoorCheckpoint"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLockTheDoorCheckPointTeenGirl,
			},
		],
	},

	{
		name = "PlayerLouisPouncedBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorWasPounced"],
			[ChanceToFire30Percent],
			["coughing", 0],
			["subject", "Manager"],
			[IsNotSaidLouisPounced],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLouisPouncedTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "LouisPounced", value = 1, duration = 60.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkairport01_burningBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport01_burning"],
			[IsNotSaidairport01_burning],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectReallyNear],
			[ChanceToFire40Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport01_burningTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport01_burning", value = 1, duration = 0.0 },
		},
	},

	{
		name = "AUTOBLANK_PlayerRemarkairport01_burningBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport01_burning"],
			[IsNotSaidairport01_burning],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectReallyNear],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport01_burning", value = 1, duration = 0.0 },
		},
	},

	{
		name = "PlayerRemarkairport01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport01_path01"],
			[IsNotSaidairport01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectReallyNear],
			[ChanceToFire40Percent],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkairport01_path01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport01_path01", value = 1, duration = 0.0 },
		},
	},

	{
		name = "AUTOBLANK_PlayerRemarkairport01_path01BetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "airport01_path01"],
			[IsNotSaidairport01_path01],
			["coughing", 0],
			["incombat", 0],
			[IsSubjectReallyNear],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC._PlayerInfoRemarkableBlankTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidairport01_path01", value = 1, duration = 0.0 },
		},
	},

	{
		name = "PlayerStayTogetherInsideBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerStayTogether"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["insafespot", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SomeoneOutsideSafeSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerStayTogetherInsideTeenGirl,
			},
		],
	},

	{
		name = "PlayerSuggestHealthBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSuggestHealthNamVet"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			[IsNotSuggestedHealth],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incombat", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSuggestHealthBillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSuggestHealthBiker"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			[IsNotSuggestedHealth],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incombat", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSuggestHealthFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestHealthLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSuggestHealthManager"],
			["who", "BetaZoeyRVC"],
			[IssuerReallyClose],
			[IsNotSuggestedHealth],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incombat", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSuggestHealthLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SuggestedHealth", value = 1, duration = 120.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerSuggestMeHealthBikerBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			["incombat", 0],
			["hasfirstaidkit", 1],
			["who", "biker"],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSuggestMeHealthBikerTeenGirl,
				followup = RThenAny("PlayerSuggestHealthBiker", 0.0),
			},
		],
	},

	{
		name = "PlayerSuggestMeHealthManagerBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			["incombat", 0],
			["hasfirstaidkit", 1],
			["who", "manager"],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSuggestMeHealthManagerTeenGirl,
				followup = RThenAny("PlayerSuggestHealthManager", 0.0),
			},
		],
	},

	{
		name = "PlayerSuggestMeHealthNamVetBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			["incombat", 0],
			["hasfirstaidkit", 1],
			["who", "namvet"],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSuggestMeHealthNamVetTeenGirl,
				followup = RThenAny("PlayerSuggestHealthNamVet", 0.0),
			},
		],
	},

	{
		name = "PlayerSuggestMeHealthTeenGirlBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			[IsNotHealthy],
			["incombat", 0],
			["hasfirstaidkit", 1],
			["who", "BetaZoeyRVC"],
			["beinghealed", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerSuggestMeHealthTeenGirlTeenGirl,
				followup = RThenAny("PlayerSuggestHealthBetazoeyrvc", 0.0),
			},
		],
	},

	{
		name = "PlayerTransitionBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerTransitionTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerTransitionCloseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerTransition"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IntensityOver75],
			[RecentGroupInCombat10],
			[IsEveryoneNotAlive],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerTransitionCloseTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerTransition", value = 1, duration = 90.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWarnHeardBoomerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Boomer"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotWarnHeardBoomer],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWarnHeardBoomerTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardBoomer ", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWarnHeardHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Hunter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotWarnHeardHunter],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWarnHeardHunterTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardHunter ", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWarnHeardSmokerBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Smoker"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotWarnHeardSmoker],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWarnHeardSmokerTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnHeardSmoker ", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerWarnHeardWitchBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnHearZombie"],
			["zombieclass", "Witch"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotWarnHeardWitch],
			["incombat", 0],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWarnHeardWitchTeenGirl,
				followup = RThen("Self", "PlayerKillThatLight", null, 0.0),
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
		name = "PlayerWarnMegaMobBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWarnMegaMob"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSpeaking],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWarnMegaMobTeenGirl,
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
		name = "PlayerWarnWitchAngryBetaZoeyRVC",
		criteria = 
		[
			["concept", "WitchGettingAngry"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotWarnAngryWitch],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerWarnWitchAngryTeenGirl,
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
		name = "SurvivorCaughtVomitBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerVomitInFace"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorCaughtVomitTeenGirl,
			},
		],
	},

	{
		name = "SurvivorCoughingBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorCoughing"],
			["coughing", 1],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorCoughingTeenGirl,
			},
		],
	},

	{
		name = "SurvivorCoughingDeathBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerDeath"],
			["coughing", 1],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorCoughingDeathTeenGirl,
			},
		],
	},

	{
		name = "SurvivorDeathBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerDeath"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorDeathTeenGirl,
			},
		],
	},

	{
		name = "SurvivorGrabbedByTongueBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGrabbedByTongue"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorGrabbedByTongueTeenGirl,
			},
		],
	},

	{
		name = "SurvivorNearFinaleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorNearFinaleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorTankPoundBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGroundPoundedByTank"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorTankPoundTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeBackUpBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerBackUp"],
			["who", "BetaZoeyRVC"],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeBackUpTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeEmphaticGoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerEmphaticGo"],
			["who", "BetaZoeyRVC"],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeEmphaticGoTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeFollowMeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerFollowMe"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeFollowMeTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeGoingToDieBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotComplainBlock],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeGoingToDieTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "SurvivorVocalizeGoingToDie3BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["onthirdstrike", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotComplainBlock],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeGoingToDie3TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "IsComplain", value = 1, duration = 25.0 },
		},
	},

	{
		name = "SurvivorVocalizeGoingToDieAloneBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGoingToDie"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["onthirdstrike", 1],
			["numberofteamalive", 1],
			["incombat", 0],
			[IsNotSaidNervous],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeGoingToDieAloneTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidNervous", value = 1, duration = 0.0 },
		},
	},

	{
		name = "SurvivorVocalizeLookOutBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLookOut"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeLookOutTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeThisWayBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerThisWay"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeThisWayTeenGirl,
			},
		],
	},

	{
		name = "SurvivorVocalizeWaitHereBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerWaitHere"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorVocalizeWaitHereTeenGirl,
			},
		],
	},

	{
		name = "PlayerLedgeHangEndBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeHangEnd"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLedgeHangEndTeenGirl,
			},
		],
	},

	{
		name = "PlayerLedgeHangMiddleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeHangMiddle"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLedgeHangMiddleTeenGirl,
			},
		],
	},

	{
		name = "PlayerLedgeHangStartBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeHangStart"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLedgeHangStartTeenGirl,
			},
		],
	},

	{
		name = "DoubleDeathBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["worldsaidsomeonedied", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDiedDouble],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.DoubleDeathTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "SaidSomeoneDiedDouble", value = 1, duration = 10.0 },
			c3 = { context = "SaidSomeoneDiedKill", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "DoubleDeath2BetaZoeyRVC",
		criteria = 
		[
			["concept", "Death2Left"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDiedDouble2],
			["numberofteamalive", 2],
			["incapacitated", 0],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.DoubleDeath2TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDiedDouble2", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorDiedBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "namvet"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorDiedBillTeenGirl,
				followup = RThenAny("Death2Left", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "SaidSomeoneDiedKill", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorDiedFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "biker"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorDiedFrancisTeenGirl,
				followup = RThenAny("Death2Left", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "SaidSomeoneDiedKill", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorDiedLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorDied"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["deadcharacter", "manager"],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorDiedLouisTeenGirl,
				followup = RThenAny("Death2Left", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSomeoneDied", value = 1, duration = 10.0 },
			c2 = { context = "SaidSomeoneDiedKill", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPickupAutoShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "AutoShotgun"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupAutoShotgunTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFirstAidKitBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "FirstAidKit"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupFirstAidKitTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupHuntingRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "HuntingRifle"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupHuntingRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMolotovBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Molotov"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupMolotovTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPainPillsBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PainPills"],
			[IsNotSpeaking],
			["insafespot", 1],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupPainPillsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPipeBombBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PipeBomb"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupPipeBombTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPumpShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PumpShotgun"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupPumpShotgunTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Rifle"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSecondPistolBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "SecondPistol"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupSecondPistolTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSMGBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "SMG"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupSMGTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAutoShotgunAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "AutoShotgun"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupAutoShotgunTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFirstAidKitAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "FirstAidKit"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupFirstAidKitTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupHuntingRifleAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "HuntingRifle"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupHuntingRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMolotovAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Molotov"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupMolotovTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPainPillsAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PainPills"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupPainPillsTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPipeBombAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PipeBomb"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupPipeBombTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupPumpShotgunAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "PumpShotgun"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupPumpShotgunTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupRifleAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Rifle"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupRifleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSecondPistolBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "SecondPistol"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupSecondPistolTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupSMGAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "SMG"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupSMGTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "PlayerGettingRevivedBetaZoeyRVC",
		criteria = 
		[
			["concept", "ReviveFriendDown"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerGettingRevivedTeenGirl,
				followup = RThen("self", "ReviveFriendDownFinal", { from = "BetaZoeyRVC" }, 0.0),
			},
		],
	},

	{
		name = "PlayerHealOtherBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHealOtherTeenGirl,
			},
		],
	},

	{
		name = "PlayerHealOtherCombatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHealingOther"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incombat", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHealOtherCombatTeenGirl,
			},
		],
	},

	{
		name = "PlayerLedgeSaveBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLedgeSaveTeenGirl,
			},
		],
	},

	{
		name = "PlayerLedgeSaveLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeSave"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Manager"],
			["incombat", 0],
			[IsEveryoneAlive],
			[ChanceToFire10Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLedgeSaveLouisTeenGirl,
			},
		],
	},

	{
		name = "PlayerReviveFriendBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 1.0 },
		},
	},

	{
		name = "PlayerReviveFriendCriticalBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendCriticalTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 1.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["zombiepresenttank", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 1.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudBillBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["zombiepresenttank", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "NamVet"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudBillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudFrancisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["zombiepresenttank", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Biker"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudLouisBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["zombiepresenttank", 1],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Manager"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerReviveFriendShortBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["revivetalk", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendShortTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
		},
	},

	{
		name = "PlayerLedgeSaveCriticalBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerLedgeSaveCritical"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendCriticalTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 1.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoud2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IntensityHigh],
			[IsTalk],
			[IsTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 1.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudBill2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IntensityHigh],
			[IsTalkBetazoeyrvc],
			["subject", "NamVet"],
			[ChanceToFire15Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudBillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 4.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudCritBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriendCritical"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IntensityHigh],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IntensityHigh],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 1.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudFrancis2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IntensityHigh],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Biker"],
			[ChanceToFire15Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudFrancisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 4.0 },
		},
	},

	{
		name = "PlayerReviveFriendLoudLouis2BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerReviveFriend"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IntensityHigh],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subject", "Manager"],
			[ChanceToFire15Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerReviveFriendLoudLouisTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "ReviveTalk", value = 1, duration = 5.0 },
			c2 = { context = "Talk", value = 1, duration = 4.0 },
		},
	},

	{
		name = "PlayerAirportIntroBetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroAirport"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAirportIntroTeenGirl,
				followup = RThen("NamVet", "IntroAirport01bb", null, 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "talk", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerAirportIntrozbBetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroAirport01zb"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerAirportIntrozbTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "talk", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerHospitalIntro02BetaZoeyRVC",
		criteria = 
		[
			["concept", "IntroHospital02"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerHospitalIntro02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "talk", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCoverMeHealBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerHealing"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotAskedForCoverBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotAlone],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerCoverMeHealTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcAskForCover", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorSpottedWeaponBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotPistol"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWeaponPistolAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotPistol"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponPistolAutoTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotRifle"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifleAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotRifle"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotShotgun"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgunAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotShotgun"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMGBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotSMG"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMGAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotSMG"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSniperRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotSniperRifle"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSniperRifleAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotSniperRifle"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWeaponBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotOtherWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedWeaponAShotgunAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotAutoShotgun"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_spasBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Shotgun_spas"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_spasAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_spas"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_desertBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_desert"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_desertAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_desert"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRelaxedSighBetaZoeyRVC",
		criteria = 
		[
			["concept", "RelaxedSigh"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRelaxedSighTeenGirl,
			},
		],
	},

	{
		name = "PlayerUseAdrenalineBetaZoeyRVC",
		criteria = 
		[
			["concept", "UseAdrenaline"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerUseAdrenalineTeenGirl,
			},
		],
	},

	{
		name = "PlayerUsingDefibrillatorBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerUsingDefibrillator"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerUsingDefibrillatorTeenGirl,
			},
		],
	},

	{
		name = "PlayerRevivedByDefibrillatorBetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByDefibrillator"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRevivedByDefibrillatorTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRevivedByDefibrillator2BetaZoeyRVC",
		criteria = 
		[
			["concept", "RevivedByDefibrillatorDelayed"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRevivedByDefibrillator2TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPouncedByHunterBetaZoeyRVC",
		criteria = 
		[
			["concept", "ScreamWhilePounced"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPouncedByHunterTeenGirl,
			},
		],
	},

	{
		name = "PlayerGrabbedByJockeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorJockeyed"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerGrabbedByJockeyTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "_auto_NoSpotting", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMajorBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Major"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["beingjockeyed", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorJockeyHurtMajorTeenGirl,
				followup = RThen("all", "commentjockey", null, -1.739),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "_auto_NoSpotting", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorJockeyHurtMinorBetaZoeyRVC",
		criteria = 
		[
			["team", "Survivor"],
			["concept", "Pain"],
			["painlevel", "Minor"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["subjectisa", "Jockey"],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["beingjockeyed", 1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorJockeyHurtMinorTeenGirl,
				followup = RThen("all", "commentjockey", null, -1.739),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidBeenJockeyedBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "_auto_NoSpotting", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerCommentJockeyBetaZoeyRVC",
		criteria = 
		[
			["concept", "commentjockey"],
			["who", "BetaZoeyRVC"],
			[IssuerCloseEnough],
			["incapacitated", 0],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerCommentJockeyTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidCommentJockey", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorchargerpoundBetaZoeyRVC",
		criteria = 
		[
			["concept", "chargerpound"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidchargerpound],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorchargerpoundTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidchargerpound", value = 1, duration = 5.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 5.0 },
		},
	},

	{
		name = "SurvivorGooedBySpitterBetaZoeyRVC",
		criteria = 
		[
			["concept", "GooedBySpitter"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorGooedBySpitterTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGooedBySpitter", value = 1, duration = 20.0 },
			c2 = { context = "TalkBetazoeyrvc", value = 1, duration = 3.0 },
		},
	},

	{
		name = "SurvivorWarnSpitterIncomingBetaZoeyRVC",
		criteria = 
		[
			["concept", "WarnSpitterIncoming"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorWarnSpitterIncomingTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidWarnSpitterIncoming", value = 1, duration = 10.0 },
		},
	},

	{
		name = "SurvivorDeployUpExplosivesBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSaidDeployUpgradePack_Explosive],
			["activeweapon", "UpgradePack_Explosive"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorDeployUpExplosivesTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Explosive", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorDeployUpIncendiaryBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerDeployingUpgradeAmmo"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSaidDeployUpgradePack_Incendiary],
			["activeweapon", "UpgradePack_Incendiary"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorDeployUpIncendiaryTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidDeployUpgradePack_Incendiary", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorSpottedM60BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "m60"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedM60AutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "m60"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPickupM60BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "m60"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupM60TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "C7M1_saferoom02BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom02"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom02TeenGirl,
			},
		],
	},

	{
		name = "C7M1_saferoom09bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom09b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom09bTeenGirl,
			},
		],
	},

	{
		name = "C7M1_saferoom10aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom10a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom10aTeenGirl,
				followup = RThenAny("C7M1_saferoom10b", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom11BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom11"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom11TeenGirl,
				followup = RThenAny("C7M1_saferoom11a", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom15aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom15a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom15aTeenGirl,
				followup = RThenAny("C7M1_saferoom15b", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom18BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom18"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom18TeenGirl,
				followup = RThenAny("C7M1_saferoom18a", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom19aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom19a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom19aTeenGirl,
				followup = RThenAny("C7M1_saferoom19b", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom20aBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom20a"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom20aTeenGirl,
				followup = RThenAny("C7M1_saferoom20b", 0.1),
			},
		],
	},

	{
		name = "C7M1_saferoom23BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1_saferoom23"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1_saferoom23TeenGirl,
				followup = RThenAny("C7M1_saferoom23a", 0.1),
			},
		],
	},

	{
		name = "C7M1OpenTankDoorBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M1OpenTankDoorSpeak"],
			["who", "BetaZoeyRVC"],
			[_auto_NotsaidC7M1OpenTankDoor],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1OpenTankDoorTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_saidC7M1OpenTankDoor", value = 1, duration = 10.0 },
			c2 = { context = "_auto_saidC7M1OpenTankDoorLong", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M1SafeRoomIdleBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["map", "c7m1_docks"],
			["instartarea", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[_auto_NotC7M1SafeRoomConvo],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1SafeRoomIdleTeenGirl,
				followup = RThenAny("C7M1_saferoom05", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 8.0 },
			c2 = { context = "_auto_C7M1SafeRoomConvo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M1SafeRoomStartBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["map", "c7m1_docks"],
			["instartarea", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M1SafeRoomStartTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 8.0 },
			c2 = { context = "_auto_SafeRoomStart", value = 1, duration = 300.0 },
			c3 = { context = "_auto_SafeRoomQuiet", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M2_saferoom01BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M2_saferoom01"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M2_saferoom01TeenGirl,
				followup = RThenAny("C7M2_saferoom01a", 0.1),
			},
		],
	},

	{
		name = "C7M2_saferoom01bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M2_saferoom01b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M2_saferoom01bTeenGirl,
			},
		],
	},

	{
		name = "C7M2_saferoom05bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M2_saferoom05b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M2_saferoom05bTeenGirl,
				followup = RThenAny("C7M2_saferoom05c", 0.1),
			},
		],
	},

	{
		name = "C7M2SafeRoomIdleBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["map", "c7m2_barge"],
			["instartarea", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["world_auto_saferoomstart", 1],
			[_auto_NotSafeRoomQuiet],
			[_auto_NotC7M2SafeRoomConvo],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M2SafeRoomIdleTeenGirl,
				followup = RThenAny("C7M2_saferoom06", 0.1),
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 8.0 },
			c2 = { context = "_auto_C7M2SafeRoomConvo", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M2SafeRoomStartBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["map", "c7m2_barge"],
			["instartarea", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M2SafeRoomStartTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 8.0 },
			c2 = { context = "_auto_SafeRoomStart", value = 1, duration = 300.0 },
			c3 = { context = "_auto_SafeRoomQuiet", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Player_WarnMegaMobc7m201BetaZoeyRVC",
		criteria = 
		[
			["concept", "Player.WarnMegaMobc7m201"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Player_WarnMegaMobc7m201TeenGirl,
			},
		],
	},

	{
		name = "C7M3_saferoom004bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom004b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom004bTeenGirl,
			},
		],
	},

	{
		name = "C7M3_saferoom005BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom005"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom005TeenGirl,
			},
		],
	},

	{
		name = "C7M3_saferoom006cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom006c"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom006cTeenGirl,
			},
		],
	},

	{
		name = "C7M3_saferoom007BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom007"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom007TeenGirl,
				followup = RThenAny("C7M3_saferoom007a", 0.1),
			},
		],
	},

	{
		name = "C7M3_saferoom007bBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom007b"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom007bTeenGirl,
				followup = RThenAny("C7M3_saferoom007c", 0.1),
			},
		],
	},

	{
		name = "C7M3_saferoom016BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom016"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom016TeenGirl,
				followup = RThenAny("C7M3_saferoom016a", 0.1),
			},
		],
	},

	{
		name = "C7M3_saferoom016cBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3_saferoom016c"],
			["who", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3_saferoom016cTeenGirl,
			},
		],
	},

	{
		name = "C7M3BridgeBreaksBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3BridgeBreaks"],
			["who", "BetaZoeyRVC"],
			[_auto_NotSaidC7M3BridgeBreaks],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3BridgeBreaksTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SaidC7M3BridgeBreaks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3FinalPressBikerBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3FinalSpeakBiker"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 3],
			[IsNotBiker],
			[_auto_NotC7M3FinalPress],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3FinalPressBikerTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C7M3FinalPress", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3FinalPressManagerBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3FinalSpeakManager"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 3],
			[IsNotManager],
			[_auto_NotC7M3FinalPress],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3FinalPressManagerTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C7M3FinalPress", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3FinalPressNamVetBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3FinalSpeakNamVet"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 3],
			[IsNotNamVet],
			[_auto_NotC7M3FinalPress],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3FinalPressNamVetTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C7M3FinalPress", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3GeneratorPress01BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3GeneratorSpeak"],
			["who", "BetaZoeyRVC"],
			[IsFirstGenerator],
			[_auto_NotC7M3PressingBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3GeneratorPress01TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C7M3PressingBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "_auto_SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3GeneratorPress02BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3GeneratorSpeak"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 1],
			[_auto_NotC7M3PressingBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3GeneratorPress02TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C7M3PressingBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "_auto_SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3GeneratorPress03BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3GeneratorSpeak"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 2],
			[_auto_NotC7M3PressingBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3GeneratorPress03TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C7M3PressingBetazoeyrvc", value = 1, duration = 6.0 },
			c2 = { context = "_auto_SaidCreshendoStartNear", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3PlayerGetToRescueVehicleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerGetToRescueVehicle"],
			["who", "BetaZoeyRVC"],
			["map", "c7m3_port"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotC7M3ToBridgeBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3PlayerGetToRescueVehicleTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C7M3ToBridgeBetazoeyrvc", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3SafeRoomStartBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			["map", "c7m3_port"],
			["instartarea", 1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3SafeRoomStartTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 8.0 },
			c2 = { context = "_auto_SafeRoomStart", value = 1, duration = 300.0 },
			c3 = { context = "_auto_SafeRoomQuiet", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3WaveOverGen1BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3WaveOver"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 1],
			[_auto_NotSaidC7M3WaveOverGen1],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3WaveOverGen1TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SaidC7M3WaveOverGen1", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "C7M3WaveOverGen2BetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3WaveOver"],
			["who", "BetaZoeyRVC"],
			["worldc7m3generatorcount", 2],
			[_auto_NotSaidC7M3WaveOverGen2],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.C7M3WaveOverGen2TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_SaidC7M3WaveOverGen2", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAdrenalineBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Adrenaline"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedAdrenalineAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			["weaponname", "Adrenaline"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedAdrenalineAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedGrenadeLauncherBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "GrenadeLauncher"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGrenadeLauncherTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedGrenadeLauncherAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			["weaponname", "GrenadeLauncher"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGrenadeLauncherAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedUpPack_ExplosiveBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Explosive"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedUpPack_ExplosiveTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedUpPack_ExplosiveAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Explosive"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedUpPack_ExplosiveAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedUpPack_IncendiaryBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "UpgradePack_Incendiary"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedUpPack_IncendiaryTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedUpPack_IncendiAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			["weaponname", "UpgradePack_Incendiary"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedUpPack_IncendiAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedVomitJarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "VomitJar"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedVomitJarTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpoVomitJar", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedVomitJarAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			["weaponname", "VomitJar"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedVomitJarAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "PlayerToTheRescueRosBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerToTheRescue"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerToTheRescueRosTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidRescueComing", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorTauntResponseBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerTaunt"],
			["team", "Survivor"],
			[IsNotSpeaking],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorTauntResponseTeenGirl,
			},
		],
	},

	{
		name = "PlayerRemarkc7m1_bricktopBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_bricktop"],
			[IsNotSaidc7m1_bricktop],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_bricktopTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_bricktop", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m1_pastbricksBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_pastbricks"],
			[IsNotSaidc7m1_pastbricks],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear700],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_pastbricksTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_pastbricks", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m1_pretankBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_pretank"],
			[IsNotSaidc7m1_pretank],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			[_auto_NotsaidC7M1OpenTankDoorLong],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_pretankTeenGirl,
				followup = RThenAny("InfoRemc7m1_pretank03", 0.0),
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_pretank", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m1_tankcarBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m1_tankcar"],
			[IsNotSaidc7m1_tankcar],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m1_tankcarTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m1_tankcar", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m2_climbupcrapBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m2_climbupcrap"],
			[IsNotSaidc7m2_climbupcrap],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m2_climbupcrapTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m2_climbupcrap", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m2_gravelhillBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m2_gravelhill"],
			[IsNotSaidc7m2_gravelhill],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m2_gravelhillTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m2_gravelhill", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m2_overboatBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m2_overboat"],
			[IsNotSaidc7m2_overboat],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m2_overboatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m2_overboat", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m2_throughhereBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m2_throughhere"],
			[IsNotSaidc7m2_throughhere],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m2_throughhereTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m2_throughhere", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerRemarkc7m3_seesailboatBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_REMARK"],
			["who", "BetaZoeyRVC"],
			["subject", "c7m3_seesailboat"],
			[IsNotSaidc7m3_seesailboat],
			["coughing", 0],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsFirstGenerator],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerRemarkc7m3_seesailboatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Saidc7m3_seesailboat", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerYellRunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerYellRun"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerYellRunTeenGirl,
			},
		],
	},

	{
		name = "GrabbingGasSCBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerEquippedScavengeItem"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[BetazoeyrvcNotSaidGrabbingCan],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.GrabbingGasSCTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidGrabbingCan", value = 1, duration = 5.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "PlayerShotGasCanBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerShotGasCan"],
			["who", "BetaZoeyRVC"],
			[IsNotSaidPlayerShotGasCan],
			["gamemode", "scavenge"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerShotGasCanTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerShotGasCan", value = 1, duration = 10.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "ScavengeStartBetaZoeyRVC",
		criteria = 
		[
			["concept", "SurvivorLeavingCheckpoint"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["gamemode", "scavenge"],
			[IsNotSaidStartScavenge],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.ScavengeStartTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidStartScavenge", value = 1, duration = 4.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "GasPourSCBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPourStarted"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["gamemode", "scavenge"],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.GasPourSCTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "TalkBetazoeyrvc", value = 1, duration = 2.0 },
		},
	},

	{
		name = "GasPourDoneSCBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPourFinished"],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			["gamemode", "scavenge"],
			["towin", 0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.GasPourDoneSCTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "Talk", value = 1, duration = 3.0 },
		},
	},

	{
		name = "FinaleAheadc7m3BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerNearFinale"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsNotSaidFinaleAhead],
			["incombat", 0],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["incapacitated", 0],
			[IsWorldTalkBetazoeyrvc],
			["map", "c7m3_port"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.FinaleAheadc7m3TeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidFinaleAhead", value = 1, duration = 30.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Player_C7M2CrowsFlyBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M2CrowsFlySpeak"],
			["map", "c7m2_barge"],
			["who", "BetaZoeyRVC"],
			[_auto_NotC7M2CrowsFlySpeak],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Player_C7M2CrowsFlyTeenGirl,
				followup = RThenAny("Player.WarnMegaMobc7m201", 1.0),
			},
		],
		applycontext =
		{
			c1 = { context = "_auto_C7M2CrowsFlySpeak", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Player_C7M3BridgeLeapBetaZoeyRVC",
		criteria = 
		[
			["concept", "C7M3BridgeLeapSpeak"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSpeaking],
			["map", "c7m3_port"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotScavenge],
			[_auto_NotSaidC7M3BridgeLeap],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Player_C7M3BridgeLeapTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "WarnMegaMob", value = 1, duration = 300.0 },
			c2 = { context = "SaidSpecialWarn", value = 1, duration = 30.0 },
			c3 = { context = "_auto_SaidC7M3BridgeLeap", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorPickupAdrenalineBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Adrenaline"],
			[IsNotSpeaking],
			["insafespot", 1],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupAdrenalineTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupAdrenalineAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Adrenaline"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupAdrenalineAlwaysTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupbaseball_batBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "baseball_bat"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupbaseball_batTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupchainsawBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "chainsaw"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupchainsawTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupcricket_batBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "cricket_bat"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupcricket_batTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupCricketBatBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "cricket_bat"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupCricketBatTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupCrowBarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "CrowBar"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupCrowBarTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupelectric_guitarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "electric_guitar"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupelectric_guitarTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFireAxeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "FireAxe"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupFireAxeTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupFryingPanBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "frying_pan"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupFryingPanTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupGrenadeLauncherBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "GrenadeLauncher"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupGrenadeLauncherTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupIncendiaryAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "IncendiaryAmmo"],
			[IsNotSpeaking],
			[ChanceToFire40Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupIncendiaryAmmoTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupKatanaBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Katana"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupKatanaTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupLaserSightsAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "LaserSight"],
			[IsNotSpeaking],
			[ChanceToFire50Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupLaserSightsAlwaysTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMacheteBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Machete"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupMacheteTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMagnumBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Magnum"],
			[IsNotSpeaking],
			["insafespot", 1],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupMagnumTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupMagnumAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Magnum"],
			[IsNotSpeaking],
			[IsNotInSafeSpot],
			[ChanceToFire30Percent],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupMagnumAlwaysTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickuptonfaBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "tonfa"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickuptonfaTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupGolfClubBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "GolfClub"],
			[IsNotSpeaking],
			[BetazoeyrvcNotPickedUpItem],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupGolfClubTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpExplosiveAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "ExplosiveAmmo"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupUpExplosiveAmmoTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpExplosivesBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "UpgradePack_Explosive"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupUpExplosivesTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpIncendiaryBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "UpgradePack_Incendiary"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupUpIncendiaryTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupUpIncendiaryAmmoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "IncendiaryAmmo"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupUpIncendiaryAmmoTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupVomitJarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "VomitJar"],
			[IsNotSpeaking],
			["insafespot", 1],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupVomitJarTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "SurvivorPickupVomitJarAlwaysBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "VomitJar"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire30Percent],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupVomitJarAlwaysTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "InfoReminfo_powerboat4BetaZoeyRVC",
		criteria = 
		[
			["concept", "InfoReminfo_powerboat4"],
			["who", "BetaZoeyRVC"],
			[IsBetazoeyrvcNear800],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.InfoReminfo_powerboat4TeenGirl,
				followup = RThenAny("InfoReminfo_powerboat4a", -2.953),
			},
		],
	},

	{
		name = "PlayerLostCallBetaZoeyRVC",
		criteria = 
		[
			["concept", "TLK_IDLE"],
			["who", "BetaZoeyRVC"],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			[_auto_NotNoLostCall],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.PlayerLostCallTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidPlayerLostCall", value = 1, duration = 50.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChainsawBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "chainsaw"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedChainsawTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedChainsawAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "chainsaw"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedChainsawAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedcricket_batBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "cricket_bat"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedcricket_batTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedcricket_batAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "cricket_bat"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedcricket_batAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedcrowbarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "crowbar"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedcrowbarTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedcrowbarAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "crowbar"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedcrowbarAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGuitarBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "electric_guitar"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGuitarTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGuitarAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "electric_guitar"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGuitarAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKatanaBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Katana"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedKatanaTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedKatanaAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Katana"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedKatanaAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedLaserSightsBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "LaserSights"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedLaserSightsTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedLaserSightsAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "LaserSights"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedLaserSightsAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMacheteBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Machete"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMacheteTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMacheteAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Machete"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMacheteAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMagnumBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "magnum"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMagnumTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedMagnumAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "magnum"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedMagnumAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedtonfaBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "tonfa"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedtonfaTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedtonfaAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "tonfa"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedtonfaAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "golfclub"],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGolfClubTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedGolfClubAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "golfclub"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedGolfClubAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAutoShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "AutoShotgun"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedAutoShotgunAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "AutoShotgun"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHuntingRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "HuntingRifle"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedHuntingRifleAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "HuntingRifle"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedPumpShotgunBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "PumpShotgun"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifleBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_AK47BetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Rifle_AK47"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifle_AK47AutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle_AK47"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedRifleAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			["weaponname", "Rifle"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSecondPistolBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "SecondPistol"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedShotgun_ChromeBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Shotgun_chrome"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedSMGBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "SMG"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedWeaponTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "SaidSpotWeapons", value = 1, duration = 5.0 },
			c2 = { context = "SaidSpot", value = 1, duration = 20.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "SurvivorSpottedDefibrillatorBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			["weaponname", "Defibrillator"],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedDefibrillatorTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorSpottedDefibrillatorAutoBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerSpotWeapon"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			["smartlooktype", "auto"],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			["weaponname", "Defibrillator"],
			[IsWorldTalkBetazoeyrvc],
			[_auto_NotNoSpotting],
			[IsNotSpeakingWeight0],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorSpottedDefibrillatorAutoTeenGirl,
				followup = RThenAny("_SpotStuffResponse", 0.01),
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
		name = "SurvivorPickupDefibrillatorBetaZoeyRVC",
		criteria = 
		[
			["concept", "PlayerPickup"],
			["coughing", 0],
			["who", "BetaZoeyRVC"],
			["itempickedup", "Defibrillator"],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.SurvivorPickupDefibrillatorTeenGirl,
			},
		],
		applycontext =
		{
			c1 = { context = "BetazoeyrvcPickedUpItem", value = 1, duration = 30.0 },
		},
	},

	{
		name = "HitCraneButtonBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport02CraneStarted"],
			["whodidit", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HitCraneButtonTeenGirl,
				followup = RThen("Betazoeyrvc", "airport02_creshendoCrane", null, 0.01),
			},
		],
	},

	{
		name = "Airport03FireStartedBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport03FireStarted"],
			["whodidit", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Airport03FireStartedTeenGirl,
				followup = RThen("Betazoeyrvc", "Airport03FireStartedX", null, 0.01),
			},
		],
	},

	{
		name = "HitCraneButtonBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport02CraneStarted"],
			["whodidit", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.HitCraneButtonTeenGirl,
				followup = RThen("Betazoeyrvc", "airport02_creshendoCrane", null, 0.01),
			},
		],
	},

	{
		name = "Airport03FireStartedBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport03FireStarted"],
			["whodidit", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Airport03FireStartedTeenGirl,
				followup = RThen("Betazoeyrvc", "Airport03FireStartedX", null, 0.01),
			},
		],
		applycontext =
		{
			c1 = { context = "SaidAirport03FireStarted", value = 1, duration = 0.0 },
		},
		applycontexttoworld = true,
	},

	{
		name = "Airport04VanStartedBetaZoeyRVC",
		criteria = 
		[
			["concept", "Airport04VanStarted"],
			["whodidit", "BetaZoeyRVC"],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.Airport04VanStartedTeenGirl,
				followup = RThen("Betazoeyrvc", "Airport04VanStartedX", null, 0.01),
			},
		],
	},

];

rr_ProcessRules(beta_zoey_rvc_rules);
