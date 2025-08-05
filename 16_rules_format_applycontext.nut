local beta_zoey_rvc_rules = 
[
	{
		name = "ConceptHospitalRadioTalkBetaZoeyRVC",
		criteria = 
		[
			[ConceptHospitalRadioTalk],
			[IsBetazoeyrvc],
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
			[ConceptHospitalReadyConfirmed],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IssuerNotSoClose],
			[IsC6M3_Port],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IssuerClose],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptReviveMeInterrupted],
			[IsBetazoeyrvc],
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
			[ConceptReviveMeInterrupted],
			[IsBetazoeyrvc],
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
			[ConceptReviveMeInterrupted],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadNamVet],
			[IsNotSaidSomeoneDied],
			[HasNotDefibrillator],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadBiker],
			[IsNotSaidSomeoneDied],
			[HasNotDefibrillator],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadManager],
			[IsNotSaidSomeoneDied],
			[HasNotDefibrillator],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptRelaxedSigh],
			[IsBetazoeyrvc],
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
			[ConceptUseAdrenaline],
			[IsBetazoeyrvc],
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
			[IsAwardConcept],
			[IsSharingSubject],
			[IsNotCoughing],
			[SubjectIsBetazoeyrvc],
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
			[IsAwardConcept],
			[IsRescuer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerGivenItem],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerPickup],
			[IsBetazoeyrvc],
			[IsDonorProducer],
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
			[ConceptPlayerPickup],
			[IsBetazoeyrvc],
			[IsDonorCoach],
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
			[ConceptPlayerPickup],
			[IsBetazoeyrvc],
			[IsDonorGambler],
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
			[ConceptPlayerPickup],
			[IsBetazoeyrvc],
			[IsDonorMechanic],
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
			[ConceptPlayerPickup],
			[IsBetazoeyrvc],
			[IsDonorBiker],
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
			[ConceptPlayerPickup],
			[IsBetazoeyrvc],
			[IsDonorManager],
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
			[ConceptPlayerPickup],
			[IsBetazoeyrvc],
			[IsDonorNamVet],
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
			[ConceptHealedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsBiker],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptHurrahAlso],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidHurrahAlso],
			[IsBotIsAvailable],
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
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[FromIsNamVet],
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
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[FromIsManager],
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
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInBattlefield],
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
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
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
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorBotReassureComing],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorBotReassureNearby],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorBotYesReady],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
			[IsNotSaidCXM1Intro],
			[IsGamblerAlive],
			[IsProducerAlive],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
			[IsNotSaidCXM1Intro],
			[IsProducerAlive],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
			[IsNotSaidCXM1Intro],
			[IsMechanicAlive],
			[IsProducerAlive],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
			[IsNotSaidCXM1Intro],
			[IsMechanicAlive],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
			[IsNotSaidCXM1Intro],
			[IsMechanicAlive],
			[IsCoachAlive],
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
			[ConceptC6M1Intro_03a],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_04a],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_04c],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_11b],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_13d],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_15b],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_15d],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_17a],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_17c],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_22b],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_22d],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_22g],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_23a],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_23c],
			[IsBetazoeyrvc],
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
			[ConceptC6M3_BridgeDown],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
			[IsNotVersus],
			[IsNotIncapacitated],
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
			[Conceptc6m3_outroL4D101a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D102b],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D103a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D104a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D105a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D107a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D109a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
			[IsEveryoneAlive],
			[ChanceToFire20Percent],
			[IsNotVersus],
			[IsNotIncapacitated],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
			[IsMechanicAlive],
			[ChanceToFire30Percent],
			[IsNotVersus],
			[IsNotIncapacitated],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
			[IsBetazoeyrvcIntroActor],
			[ChanceToFire100Percent],
			[IsMechanicAlive],
			[IsNotVersus],
			[IsNotIncapacitated],
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
			[ConceptIncapBounce2],
			[IsBetazoeyrvc],
			[isC6m3_port],
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
			[ConceptL4D1_NiceJobPour],
			[IsBetazoeyrvc],
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
			[ConceptL4D1_AttractPlayerForThrow],
			[IsBetazoeyrvc],
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
			[ConceptL4D1_SurvivorBotTakeThisItem],
			[IsBetazoeyrvc],
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
			[ConceptWorldC6M3_ByBridge01],
			[IsBetazoeyrvc],
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
			[ConceptWorldC6M3_ByBridge01],
			[IsBetazoeyrvc],
			[FromIsMechanic],
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
			[ConceptC7M1_saferoom02],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom09b],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom10a],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom11],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom15a],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom18],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom19a],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom20a],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom23],
			[IsBetazoeyrvc],
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
			[ConceptC7M1OpenTankDoorSpeak],
			[IsBetazoeyrvc],
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
			[ConceptIntroSacrifice],
			[IsBetazoeyrvc],
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
			[ConceptC7M2_saferoom01],
			[IsBetazoeyrvc],
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
			[ConceptC7M2_saferoom01b],
			[IsBetazoeyrvc],
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
			[ConceptC7M2_saferoom05b],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[NotInCombat],
			[IsMapc7m2_barge],
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
			[ConceptPlayer_WarnMegaMobc7m201],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom004b],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom005],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom006c],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom007],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom007b],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom016],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom016c],
			[IsBetazoeyrvc],
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
			[conceptC7M3BridgeBreaks],
			[IsBetazoeyrvc],
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
			[ConceptC7M3FinalSpeakBiker],
			[IsBetazoeyrvc],
			[IsLastGenerator],
			[IsNotIncapacitated],
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
			[ConceptC7M3FinalSpeakManager],
			[IsBetazoeyrvc],
			[IsLastGenerator],
			[IsNotIncapacitated],
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
			[ConceptC7M3FinalSpeakNamVet],
			[IsBetazoeyrvc],
			[IsLastGenerator],
			[IsNotIncapacitated],
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
			[ConceptC7M3GeneratorSpeak],
			[IsBetazoeyrvc],
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
			[ConceptC7M3GeneratorSpeak],
			[IsBetazoeyrvc],
			[IsSecondGenerator],
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
			[ConceptC7M3GeneratorSpeak],
			[IsBetazoeyrvc],
			[IsThirdGenerator],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[ismapc7m3_port],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_IsFinaleStarted],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[ismapc7m3_port],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsManagerAlive],
			[ChanceToFire20Percent],
			[_auto_IsFinaleStarted],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[ismapc7m3_port],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[ismapc7m3_port],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockBetazoeyrvc],
			[_auto_IsC7M3BridgeReady],
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
			[ConceptC7M3BridgeButtonSpeak],
			[IsBetazoeyrvc],
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
			[ConceptC7M3WaveOverSpeak],
			[IsBetazoeyrvc],
			[IsSecondGenerator],
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
			[ConceptC7M3WaveOverSpeak],
			[IsBetazoeyrvc],
			[IsThirdGenerator],
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
			[ConceptCallForRescue],
			[IsBetazoeyrvc],
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
			[ConceptHowitzerBurnEnd00],
			[IsBetazoeyrvc],
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
			[ConceptHowitzerBurnEnd01],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseR14],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotHowitzerFired],
			[IsHowitzerSeen],
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
			[ConceptHowitzerFiredResponse],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGenerator2OnSpk],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGenerator2Speak],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGeneratorBreakSpk],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGeneratorSpeak],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsCrashCourse2],
			[IsCrashGenerator1Nag],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsCrashCourse2],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsCrashCourse2],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptCrashFinaleTruckResp01],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleTruckResp02],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleTruckRespZombie2],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[IsCrashCourse2],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire60Percent],
			[IsCrashFinaleGeneratorBroken],
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
			[ConceptCrashFinaleGeneratorUnPressSpeak],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGenerator2UnPressSpeak],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGeneratorUnPressSpeak],
			[IsBetazoeyrvc],
			[IsMapc7m3_port],
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
			[ConceptCrashFinaleTruckReadySpk],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptCrashFinaleTruckReadyResp],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path14],
			[IsNotSaidcrashcourse02_path14],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptCrashCourseR01],
			[IsBetazoeyrvc],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptCrashCourseR03],
			[IsBetazoeyrvc],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptCrashCourseR10],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptCrashCourseR11],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptCrashCourseR12],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path05],
			[IsNotSaidcrashcourse01_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path06],
			[IsNotSaidcrashcourse01_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path10],
			[IsNotSaidcrashcourse01_path10],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsBikerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path10],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsBikerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path13],
			[IsNotSaidcrashcourse01_path13],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path14],
			[IsNotSaidcrashcourse01_path14],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path17],
			[IsNotSaidcrashcourse01_path17],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path18],
			[IsNotSaidcrashcourse01_path18],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path24],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path02],
			[IsNotSaidcrashcourse02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path02],
			[IsNotSaidcrashcourse02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path05],
			[IsNotSaidcrashcourse02_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path06],
			[IsNotSaidcrashcourse02_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path26],
			[IsNotSaidcrashcourse01_path26],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path27],
			[IsNotSaidcrashcourse01_path27],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path10],
			[IsNotSaidcrashcourse02_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path12],
			[IsNotSaidcrashcourse02_path12],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptIntroCrashR01],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR04],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR07],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR09],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR10],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR11],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR19],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR28],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrash],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseI01],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseB01],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[IsCrashCourse2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
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
			[ConceptIntroFarm4],
			[IsBetazoeyrvc],
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
			[IsFaultConcept],
			[IsFaultBoomerBlunder],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptFinaleTriggered],
			[IsTriggeredByBetazoeyrvc],
			[IsDeathToll5],
			[_auto_NotFinaleStarted],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptFinaleTriggered],
			[IsTriggeredByBetazoeyrvc],
			[IsDeadAir5],
			[_auto_NotFinaleStarted],
			[IsBetazoeyrvc],
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
			[ConceptFinaleTriggered],
			[IsTriggeredByBetazoeyrvc],
			[IsBloodHarvest5],
			[_auto_NotFinaleStarted],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptFinaleTriggered],
			[IsTriggeredByBetazoeyrvc],
			[IsNoMercy5],
			[_auto_NotFinaleStarted],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsDeathToll5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsDeathToll5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsBloodHarvest5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsBloodHarvest5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[IsBloodHarvest5],
			[_auto_IsFinaleStarted],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsNoMercy5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsNoMercy5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsDeadAir5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsDeadAir5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[IsDeathToll5],
			[_auto_IsFinaleStarted],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[IsNoMercy5],
			[_auto_IsFinaleStarted],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[IsDeadAir5],
			[_auto_IsFinaleStarted],
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
			[ConceptPanicEvent],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsNotBetazoeyrvc],
			[ChanceToFire60Percent],
			[IsCarAlarm],
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
			[ConceptPanicEvent],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsBetazoeyrvc],
			[IsCarAlarm],
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
			[ConceptResponseSoftDispleasureSwear],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptAskForHealth2],
			[IsBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsSubjectNear400],
			[NoHasPainPills],
			[NoHasFirstAidKit],
			[IsNotHealthy],
			[NotInCombat],
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
			[ConceptAskForHealth2],
			[IsBetazoeyrvc],
			[SubjectIsBiker],
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
			[ConceptAskForHealth2],
			[IsBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptAskForHealth],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[YesHasFirstAidKit],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
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
			[ConceptPlayerSpotAmmo],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsPipeBomb],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			[IsPipeBomb],
			[IsWorldTalkBetazoeyrvc],
			[YesHasGrenade],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsFirstAidKit],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			[IsFirstAidKit],
			[IsWorldTalkBetazoeyrvc],
			[YesHasFirstAidKit],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsMolotov],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			[IsMolotov],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsVomitjar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			[IsVomitjar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsPainPills],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsAdrenaline],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			[IsAdrenaline],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsDefibrillator],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			[IsDefibrillator],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Incendiary],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			[IsUpgradePack_Incendiary],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Explosive],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			[IsUpgradePack_Explosive],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsLaserSights],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsLaserSights],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotIsAvailable],
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
			[ConceptBotMovingToBattleStation],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSaidCreshendoStartNear],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerIncoming],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
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
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[Isc6m3_port],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptEmphaticArriveRun],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[IsFaultConcept],
			[IsFaultFriendlyFire],
			[IsBetazoeyrvc],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeExplosive],
			[IsOnThirdStrike],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsBiker],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotOnThirdStrike],
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
			[ConceptSurvivorBotMovingToReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotInCombat],
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
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerToTheRescue],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[Ismapc7m3_port],
			[_auto_IsSaidC7M3BridgeLeap],
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
			[IsSurvivor],
			[InPain],
			[IsNotSpeaking],
			[IsIncapacitatedPain],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[Ismapc7m3_port],
			[_auto_IsSaidC7M3BridgeLeap],
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
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[Ismapc7m3_port],
			[_auto_IsSaidC7M3BridgeLeap],
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
			[ConceptPlayerReloading],
			[IsASurvivor],
			[IsNotSpeaking],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsBeingJockeyed],
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
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsBeingJockeyed],
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
			[ConceptPlayerHelp],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsIncapacitated],
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
			[ConceptPlayerHelp],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsIncapacitated],
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
			[ConceptPlayerHelp],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsIncapacitated],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsNamVet],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsNamVet],
			[IsNotInStartArea],
			[IsManagerAlive],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsBiker],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsBiker],
			[IsNotInStartArea],
			[IsManagerAlive],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsManager],
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
			[Conceptcrashcourse01_path01zresp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkBetazoeyrvc],
			[IsBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path03],
			[IsNotSaidSmalltown04_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[Conceptairport02_creshendoCrane],
			[IsBetazoeyrvc],
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
			[Conceptairport02_creshendo03],
			[IsBetazoeyrvc],
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
			[Conceptairport03_barriera],
			[IsBetazoeyrvc],
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
			[ConceptAirport03FirePathCleara],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptAirport03FirePathClearX],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptAirport03FireStartedX],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[Conceptairport04_08b],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[Conceptairport04_08c],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[Conceptairport04_08d],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptFrancisSuggestsCrane],
			[IsBetazoeyrvc],
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
			[ConceptLaughFrancis],
			[IsBetazoeyrvc],
			[IsNotSaidLaughFrancis],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_creshendo01b],
			[IsNotSaidairport02_creshendo01a],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path01],
			[IsNotSaidairport02_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path02],
			[IsNotSaidairport02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path02],
			[IsNotSaidairport02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path03],
			[IsNotSaidairport02_path03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[ChanceToFire20Percent],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path03],
			[IsNotSaidairport02_path03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path04],
			[IsNotSaidairport02_path04],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNamvetAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path06],
			[IsNotSaidairport02_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_01],
			[IsNotSaidairport03_01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_02],
			[IsNotSaidairport03_02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_03],
			[IsNotSaidairport03_03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_04],
			[IsNotSaidairport03_04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_06],
			[IsNotSaidairport03_06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_barrier],
			[IsNotSaidairport03_barrier],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_01],
			[IsNotSaidairport04_01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_03],
			[IsNotSaidairport04_03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_03],
			[IsNotSaidairport04_03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_04],
			[IsNotSaidairport04_04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_05],
			[IsNotSaidairport04_05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire20Percent],
			[TimeSinceGroupInCombat10],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_05],
			[IsNotSaidairport04_05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat10],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_06],
			[IsNotSaidairport04_06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire10Percent],
			[IsBikerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_06],
			[IsNotSaidairport04_06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsBikerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_07],
			[IsNotSaidairport04_07],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_07],
			[IsNotSaidairport04_07],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_08],
			[IsNotSaidairport04_08],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_van],
			[IsNotSaidairport04_van],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path01],
			[IsNotSaidcrashcourse01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm01_path01],
			[IsNotSaidFarm01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm01_path02],
			[IsNotSaidFarm01_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm01_path03],
			[IsNotSaidFarm01_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path01],
			[IsNotSaidFarm02_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path02],
			[IsNotSaidFarm02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path06],
			[IsNotSaidFarm02_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path09],
			[IsNotSaidFarm02_path09],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path03],
			[IsNotSaidFarm03_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path06],
			[IsNotSaidFarm03_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path07],
			[IsNotSaidFarm03_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path10],
			[Farm03BridgeDown],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path01],
			[IsNotSaidFarm04_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path04],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path06],
			[IsNotSaidFarm04_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path07],
			[IsNotSaidFarm04_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path08],
			[IsNotSaidFarm04_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path10],
			[IsNotSaidFarm04_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path06],
			[IsNotSaidFarm05_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path08],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path10],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital03_path04],
			[IsNotSaidhospital03_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital03_path08],
			[IsNotSaidhospital03_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital03_path08],
			[IsNotSaidhospital03_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital04_path03],
			[IsNotSaidhospital04_path03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[IsManagerNear200],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital04_path03],
			[IsNotSaidhospital04_path03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsManagerNear200],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital05_path01],
			[NotInCombat],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[_auto_IsSafeRoomStart],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital05_path02],
			[IsNotSaidhospital05_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptAirport04VanStartedX],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptPathClearVan],
			[IsBetazoeyrvc],
			[IsNotSaidPathClearVan],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path01],
			[IsNotSaidSmalltown01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path02],
			[IsNotSaidSmalltown01_path02],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSaidSmalltown01_path04],
			[IsSaidSmalltown01_path01],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path03],
			[IsNotSaidSmalltown01_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path07],
			[IsNotSaidSmalltown01_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path08],
			[IsNotSaidSmalltown01_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path02],
			[IsNotSaidsmalltown02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path03],
			[IsNotSaidsmalltown02_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path04],
			[IsNotSaidsmalltown02_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path05],
			[IsNotSaidsmalltown02_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path06],
			[IsNotSaidsmalltown02_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path08],
			[IsNotSaidsmalltown02_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path01],
			[IsNotSaidSmalltown03_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path02],
			[IsNotSaidSmalltown03_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path03],
			[IsNotSaidSmalltown03_path03],
			[IsNotSaidSmalltown03_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path04],
			[IsNotSaidSmalltown03_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path05],
			[IsNotSaidSmalltown03_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path06],
			[IsNotSaidSmalltown03_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path07],
			[IsNotSaidSmalltown03_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path08],
			[IsNotSaidSmalltown03_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path10],
			[IsNotSaidSmalltown03_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path11],
			[IsNotSaidSmalltown03_path11],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path12],
			[IsNotSaidSmalltown03_path12],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path13],
			[IsNotSaidSmalltown03_path12],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path01],
			[IsNotSaidSmalltown04_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path02],
			[IsNotSaidSmalltown04_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path04],
			[IsNotSaidSmalltown04_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path09],
			[IsNotSaidSmalltown04_path09],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path05],
			[IsNotSaidSmalltown04_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path07],
			[IsNotSaidSmalltown04_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path10],
			[IsNotSaidSmalltown04_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown05_path01],
			[IsNotSaidSmalltown05_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown05_path03],
			[IsNotSaidSmalltown05_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown05_path06],
			[IsNotSaidSmalltown05_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsThroughHere],
			[IsNotSaidThroughHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsUpThatLadder],
			[IsNotSaidUpThatLadder],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRespondAffirmative],
			[IssuerMediumClose],
			[IsNotCoughing],
			[NotInCombat],
			[isBetazoeyrvc],
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
			[ConceptRiversideIsDeadPlan],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_bricktop],
			[IsNotSaidc7m1_bricktop],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_pastbricks],
			[IsNotSaidc7m1_pastbricks],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_pretank],
			[IsNotSaidc7m1_pretank],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_pretank],
			[IsNotSaidc7m1_pretank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[ChanceToFire25Percent],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_pretank],
			[IsNotSaidc7m1_pretank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsBikerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_tankcar],
			[IsNotSaidc7m1_tankcar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsNotZombiePresentTank],
			[_auto_SaidC7M1OpenTankDoor],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m2_climbupcrap],
			[IsNotSaidc7m2_climbupcrap],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m2_gravelhill],
			[IsNotSaidc7m2_gravelhill],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m2_overboat],
			[IsNotSaidc7m2_overboat],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m2_throughhere],
			[IsNotSaidc7m2_throughhere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m3_seesailboat],
			[IsNotSaidc7m3_seesailboat],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsWorldTalkBetazoeyrvc],
			[Ismapc7m3_port],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsWorldTalkBetazoeyrvc],
			[IsCrashCourse2],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsWorldTalkBetazoeyrvc],
			[IsDeadAir5],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsBloodHarvest5],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsLastStand2],
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
			[ConceptC11M5NearFinale2],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNoMercy3],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeathToll2],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadAir2],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadAir3],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadAir4],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsManagerAlive],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeathToll4],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadAir4],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[NotManagerAlive],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsBloodHarvest3],
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
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsBloodHarvest4],
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
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IssuerClose],
			[ConceptSafeSpotAheadResponse],
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
			[ConceptPlayerCoverMe],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHelp],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[IsNotIncapacitated],
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
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerKillThatLight],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLeadOn],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerMoveOn],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWatchOutBehind],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerImWithYou],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLaugh],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLostCall],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAnswerLostCall],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNegative],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsNotShotTeammateBetazoeyrvc],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsShotTeammateBetazoeyrvc],
			[IsBetazoeyrvc],
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
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerYes],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerYellRun],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAreaClear],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHurrah],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnCareful],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerPourFinished],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsScavenge],
			[ScoreDoneSC],
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
			[ConceptPlayerPourStarted],
			[IsBetazoeyrvc],
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
			[ConceptPlayerEquippedScavengeItem],
			[IsBetazoeyrvc],
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
			[ConceptPlayerShotGasCan],
			[IsBetazoeyrvc],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsScavenge],
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
			[ConceptIntroSmalltown],
			[IsBetazoeyrvc],
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
			[ConceptIntroSmalltown],
			[IsBetazoeyrvc],
			[IsEveryoneAlive],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[ChanceToFire1Percent],
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
			[ConceptIntroSmalltown2],
			[IsBetazoeyrvc],
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
			[ConceptIntroSmalltownEasterEgg],
			[IsBetazoeyrvc],
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
			[ConceptIntroSmalltownEasterEgg3],
			[IsBetazoeyrvc],
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
			[ConceptPlayerScenarioJoin],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptCommentJockey],
			[IsBetazoeyrvc],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsNamVet],
			[IsNotSaidBillPounced],
			[IsBetazoeyrvc],
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
			[ConceptBounceReaction],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptEatPills],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsBiker],
			[IsNotSaidFrancisPounced],
			[IsBetazoeyrvc],
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
			[ConceptPlayerGetInsideCheckPoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsInSafeSpot],
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
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsInSafeSpot],
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
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
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
			[ConceptKilledZombie],
			[IsBetazoeyrvc],
			[SubjectIsAWitch],
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
			[ConceptKilledZombie],
			[IsBetazoeyrvc],
			[SubjectIsAWitch],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isremark_caralarm],
			[IsNotSaidremark_caralarm],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptKilledZombie],
			[IsBetazoeyrvc],
			[IsCrashCourse2],
			[SubjectIsTank],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidTankDead],
			[IsWorldTalkBetazoeyrvc],
			[_auto_IsFinaleStarted],
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
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsInSafeSpot],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsManager],
			[IsNotSaidLouisPounced],
			[IsBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport01_burning],
			[IsNotSaidairport01_burning],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport01_burning],
			[IsNotSaidairport01_burning],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsBetazoeyrvc],
			[IsNotSaidLeavingSafeArea],
			[IsNotSaidairport01_path01],
			[IsDeadAir1],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport01_path01],
			[IsNotSaidairport01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptPlayerSuggestHealth],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerSuggestHealth],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsNamVet],
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
			[ConceptPlayerSuggestHealth],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsBiker],
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
			[ConceptPlayerSuggestHealth],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsManager],
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
			[ConceptTalkIdle],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[YesHasFirstAidKit],
			[IsBetazoeyrvc],
			[IsNotSuggestedHealth],
			[IsNotIncapacitated],
			[IsNotBeingHealed],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSomeoneDied],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsBetazoeyrvc],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
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
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsBetazoeyrvc],
			[IsNotWarnHeardHunter],
			[NotInCombat],
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
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsBetazoeyrvc],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
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
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsClosestSurvivorNear1200],
			[IsBetazoeyrvc],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotWarnHeardWitch],
			[IsNotAlone],
			[NotInCombat],
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
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnMegaMob],
			[IsDeadAir5],
			[IsBetazoeyrvc],
			[_auto_IsFinaleStarted],
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
			[ConceptPlayerWarnMegaMob],
			[IsBetazoeyrvc],
			[IsDeadAir5],
			[_auto_IsFinaleStarted],
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
			[ConceptWitchGettingAngry],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerVomitInFace],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorCoughing],
			[IsCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerDeath],
			[IsCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerDeath],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerExertionMinor],
			[IsBetazoeyrvc],
			[IsNotSpeaking],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsTalkBetazoeyrvc],
			[IsSaidWitchAttacking],
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
			[IsFaultConcept],
			[IsBetazoeyrvc],
			[IsFaultWitchHarassment],
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
			[ConceptWitchStartAttack],
			[IsBetazoeyrvc],
			[Iswitch_aggro_onBetazoeyrvc],
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
			[ConceptPlayerGroundPoundedByTank],
			[IsBetazoeyrvc],
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
			[ConceptPlayerBackUp],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptPlayerEmphaticGo],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsOnThirdStrike],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsOnThirdStrike],
			[IsAlone],
			[NotInCombat],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsCoach],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsGambler],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsMechanic],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsProducer],
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
			[ConceptPlayerThisWay],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWaitHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptC7M2CrowsFlySpeak],
			[IsBetazoeyrvc],
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
			[ConceptC7M3BridgeLeapSpeak],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsLastGenerator],
			[ismapc7m3_port],
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
			[ConceptC7M3BridgeLeapSpeak],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsLastGenerator],
			[IsManagerAlive],
			[ChanceToFire10Percent],
			[ismapc7m3_port],
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
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsLastGenerator],
			[NotSacrificedBetazoeyrvc],
			[ismapc7m3_port],
			[_auto_IsSaidC7M3BridgeLeap],
			[_auto_IsC7M3FinalPress],
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
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsLastGenerator],
			[SacrificedBetazoeyrvc],
			[ismapc7m3_port],
			[_auto_IsSaidC7M3BridgeLeap],
			[_auto_IsC7M3FinalPress],
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
			[ConceptCrashFinaleGenerator2OnSpk],
			[IsBetazoeyrvc],
			[IsLastGenerator],
			[IsMapc7m3_port],
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
			[ConceptCrashFinaleGenerator2Speak],
			[IsBetazoeyrvc],
			[IsLastGenerator],
			[IsMapc7m3_port],
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
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsLastGenerator],
			[ismapc7m3_port],
			[IsNotInRescueVehicle],
			[_auto_IsSaidC7M3BridgeLeap],
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
			[ConceptPlayerHelp],
			[ismapc7m3_port],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[_auto_IsSaidC7M3BridgeLeap],
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
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRevivedByDefibrillator],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRevivedByDefibrillatorDelayed],
			[IsBetazoeyrvc],
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
			[ConceptPlayerUsingDefibrillator],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptScreamWhilePounced],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptChargerBeatsNick],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLedgeHangEnd],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLedgeHangMiddle],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLedgeHangStart],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsSurvivor],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsSurvivor],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWithOnlyThree],
			[IsNotIncapacitated],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsSurvivor],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWithTwo],
			[IsNotIncapacitated],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpAutoShotgun],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpShotgun_Spas],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpFirstAidKit],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpHuntingRifle],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSniper_Military],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSniper_scout],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSniper_awp],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotNotAvailable],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsPickedUpIncendiaryAmmo],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsPickedUpExplosiveAmmo],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpMolotov],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPainPills],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpAdrenaline],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpDefibrillator],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPipeBomb],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpVomitJar],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPumpShotgun],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpShotgun_Chrome],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpRifle],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpRifle_Desert],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpRifle_AK47],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpRifle_sg552],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSMG],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSmg_silenced],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSmg_mp5],
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
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[IsNotSaidDeployUpgradePack_Explosive],
			[HasUpgradePack_Explosive],
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
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotInStartArea],
			[IsNotSaidDeployUpgradePack_Incendiary],
			[HasUpgradePack_Incendiary],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSecondPistol],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpGolfClub],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpFireAxe],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpCrowBar],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpelectric_guitar],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpKatana],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpMachete],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpFryingPan],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUptonfa],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpcricket_bat],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpbaseball_bat],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpKnife],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpShovel],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPitchfork],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpChainSaw],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpM60],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpGrenadeLauncher],
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
			[ConceptChainsawUsed],
			[IsNotSaidChainSawUsed],
			[IsBetazoeyrvc],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpUpgradePack_Incendiary],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpUpgradePack_Explosive],
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
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotInIntenseCombat],
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
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[InIntenseCombat],
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
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[NotInIntenseCombat],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[NotInIntenseCombat],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[InIntenseCombat],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[InIntenseCombat],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			[SubjectIsNamVet],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			[SubjectIsBiker],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire30Percent],
			[SubjectIsManager],
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
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[FromIsManager],
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
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[FromIsNamVet],
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
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptIntroAirport],
			[IsBetazoeyrvc],
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
			[ConceptIntroAirport01zb],
			[IsBetazoeyrvc],
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
			[ConceptIntroHospital02],
			[IsBetazoeyrvc],
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
			[ConceptInfoReminfo_powerboat4],
			[IsBetazoeyrvc],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptPlayerShotGasCan],
			[IsBetazoeyrvc],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
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
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsM60],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMagnum],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMagnum],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSecondPistol],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSecondPistol],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsAutoShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsAutoShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPumpShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsPumpShotgun],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_silenced],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_Chrome],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsShotgun_Chrome],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_silenced],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_spas],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_spas],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_AK47],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_AK47],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_desert],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_desert],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_sg552],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_sg552],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSMG],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSMG],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_silenced],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_silenced],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_mp5],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_mp5],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsHuntingRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsHuntingRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_military],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_military],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_scout],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_scout],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_awp],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_awp],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGolfClub],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscrowbar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscrowbar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGuitar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGuitar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Istonfa],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Istonfa],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFryingPan],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFryingPan],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsKatana],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKatana],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMachete],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMachete],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscricket_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscricket_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Isbaseball_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Isbaseball_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFireAxe],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFireAxe],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsChainsaw],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsChainsaw],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShovel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShovel],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPitchfork],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPitchfork],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsKnife],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKnife],
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
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotOtherWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptintroLighthouse],
			[IsBetazoeyrvc],
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
			[ConceptC14M1Intro1a],
			[IsBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M1Humvee],
			[IsNotRemarkedC14M1Humvee],
			[NotInCombat],
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
			[ConceptC14M1PlaneFlyBy],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptC14M1EngineBroke],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M1CabinUpstairs],
			[IsNotRemarkedC14M1CabinUpstairs],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M1JunkyardEntrance],
			[IsNotRemarkedC14M1JunkyardEntrance],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M1Traincar],
			[IsNotRemarkedC14M1Traincar],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M1PrePanic],
			[IsNotRemarkedC14M1PrePanic],
			[NotInCombat],
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
			[ConceptC14M1PanicSpeak],
			[IsBetazoeyrvc],
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
			[ConceptC14M1PanicSpeak],
			[IsBetazoeyrvc],
			[IsRemarkedC14M1PrePanic],
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
			[ConceptC14M1PowerOutSpeak],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptC14M1GeneratorActivatedSpeak],
			[IsBetazoeyrvc],
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
			[ConceptC14M1GeneratorActivatedSpeak],
			[IsBetazoeyrvc],
			[C14M1LastGenerator],
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
			[ConceptC14M1GeneratorActivatedSpeak],
			[IsBetazoeyrvc],
			[C14M1AllGenerators],
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
			[ConceptC14M1CraneDropBlank],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptC14M1PathClearSpeak],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M1DownCliff],
			[IsNotRemarkedC14M1DownCliff],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M2Gate],
			[IsNotRemarkedC14M2Gate],
			[NotInCombat],
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
			[ConceptC14M2RadioSpeak],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingBetazoeyrvc],
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
			[ConceptC14M2RadioDestroyed],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M2Drop],
			[IsNotRemarkedC14M2Drop],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsC14M2NoteLighthouse],
			[IsNotRemarkedC14M2NoteLighthouse],
			[NotInCombat],
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
			[ConceptC14M2NoteLighthouse2],
			[IsBetazoeyrvc],
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
			[ConceptC14M2PowerOutAgainSpeak],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[IsLastStand2],
			[_auto_IsFinaleStarted],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsLastStand2],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[IsLastStand2],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsInStartArea],
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
			[ConceptIntroEnd],
			[IsBetazoeyrvc],
			[FromIsBetazoeyrvc],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsBetazoeyrvc],
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
			[ConceptFinaleTriggered],
			[IsBetazoeyrvc],
			[IsTriggeredByBetazoeyrvc],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[_auto_IsFinaleStarted],
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
			[ConceptFinalVehicleArrived],
			[IsBetazoeyrvc],
			[_auto_HasSpottedVehicle],
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
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
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
			[ConceptintroC6M1],
			[IsBetazoeyrvc],
			[IsBetazoeyrvcIntroActor],
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
			[ConceptC6M1Intro_03a],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_04a],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_04c],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_11b],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_13d],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_15b],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_15d],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_17a],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_17c],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_22b],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_22d],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_22g],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_23a],
			[IsBetazoeyrvc],
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
			[ConceptC6M1Intro_23c],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
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
			[Conceptc6m3_outroL4D101a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D102b],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D103a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D104a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D105a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D107a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outroL4D109a],
			[IsBetazoeyrvc],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
			[IsMechanicAlive],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
			[IsBetazoeyrvcIntroActor],
			[BetazoeyrvcGroup1],
			[IsMechanicAlive],
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
			[Conceptc6m3_outro3],
			[IsBetazoeyrvc],
			[isC6m3_port],
			[IsBetazoeyrvcIntroActor],
			[BetazoeyrvcGroup2],
			[IsMechanicAlive],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptL4D1_AttractPlayerForThrow],
			[IsBetazoeyrvc],
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
			[ConceptL4D1_SurvivorBotTakeThisItem],
			[IsBetazoeyrvc],
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
			[ConceptWorldC6M3_ByBridge01],
			[IsBetazoeyrvc],
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
			[ConceptWorldC6M3_ByBridge01Ellis],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlsoWarnBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlsoWarnHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlsoWarnSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[Isc6m3_port],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[Isc6m3_port],
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
			[ConceptPlayerReloading],
			[IsNotSpeaking],
			[IsBetazoeyrvc],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptReviveMeInterrupted],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadNamVet],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadBiker],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadManager],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm01_path09],
			[IsNotSaidFarm01_path09],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path14],
			[IsNotSaidSmalltown03_path14],
			[IsNotCoughing],
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
			[IsAwardConcept],
			[IsSharingSubject],
			[IsNotCoughing],
			[SubjectIsBetazoeyrvc],
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
			[ConceptHealedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsBiker],
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
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptYouWelcome],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInBattlefield],
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
			[ConceptHurrahAlso],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidHurrahAlso],
			[IsBotIsAvailable],
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
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorBotReassureComing],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorBotReassureNearby],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorBotYesReady],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptCallForRescue],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseR14],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotHowitzerFired],
			[IsHowitzerNag],
			[IsHowitzerSeen],
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
			[ConceptHowitzerBurnEnd00],
			[IsBetazoeyrvc],
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
			[ConceptHowitzerBurnEnd02],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGenerator2OnSpk],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGenerator2Speak],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGeneratorBreakSpk],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[ChanceToFire60Percent],
			[IsCrashFinaleGeneratorBroken],
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
			[ConceptCrashFinaleGeneratorSpeak],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleGeneratorUnPressSpeak],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[IsCrashFinaleTruckReady],
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
			[ConceptCrashFinaleTruckReadySpk],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptCrashFinaleTruckResp01],
			[IsBetazoeyrvc],
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
			[ConceptCrashFinaleTruckResp02],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashWalking],
			[IsBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path14],
			[IsNotSaidcrashcourse02_path14],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptCrashCourseR01],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseR03],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseR06],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseR10],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseR11],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseR12],
			[IsBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path05],
			[IsNotSaidcrashcourse01_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path06],
			[IsNotSaidcrashcourse01_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path10],
			[IsNotSaidcrashcourse01_path10],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear100],
			[IsBikerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path13],
			[IsNotSaidcrashcourse01_path13],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path14],
			[IsNotSaidcrashcourse01_path14],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path17],
			[IsNotSaidcrashcourse01_path17],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path18],
			[IsNotSaidcrashcourse01_path18],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path20],
			[IsNotSaidcrashcourse01_path20],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path24],
			[IsNotSaidcrashcourse01_path24],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path25],
			[IsNotSaidcrashcourse01_path25],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path02],
			[IsNotSaidcrashcourse02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path02],
			[IsNotSaidcrashcourse02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path05],
			[IsNotSaidcrashcourse02_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path06],
			[IsNotSaidcrashcourse02_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path07],
			[IsNotSaidcrashcourse02_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path09],
			[IsNotSaidcrashcourse02_path09],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path10],
			[IsNotSaidcrashcourse02_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_path12],
			[IsNotSaidcrashcourse02_path12],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptIntroCrashR01],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR07],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR09],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR10],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR11],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR19],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR28],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR33],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR34],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR35],
			[IsBetazoeyrvc],
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
			[ConceptIntroCrashR39],
			[IsBetazoeyrvc],
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
			[ConceptCrashCourseI01],
			[IsBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_intro],
			[IsNotSaidcrashcourse02_intro],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsCrash02IntroReady],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_starta],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_startb],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_startc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse02_startd],
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
			[ConceptIntroFarm4],
			[IsBetazoeyrvc],
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
			[IsFaultConcept],
			[IsFaultBoomerBlunder],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptFinaleTriggered],
			[IsTriggeredByBetazoeyrvc],
			[ismap_l4d_smalltown05_houseboat],
			[IsNotSaidRadioTriggered],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptFinaleTriggered],
			[IsTriggeredByBetazoeyrvc],
			[ismap_l4d_farm05_cornfield],
			[IsNotSaidRadioTriggered],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptFinaleTriggered],
			[IsTriggeredByBetazoeyrvc],
			[ismap_l4d_hospital05_rooftop],
			[IsNotSaidRadioTriggered],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[ismap_l4d_smalltown05_houseboat],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[ismap_l4d_farm05_cornfield],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[ismap_l4d_farm05_cornfield],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[ismap_l4d_hospital05_rooftop],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[isrunway],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[ismap_l4d_smalltown05_houseboat],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[ismap_l4d_hospital05_rooftop],
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
			[ConceptFinalVehicleSpotted],
			[IsBetazoeyrvc],
			[ismap_urban05a_finale_runway],
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
			[ConceptPanicEvent],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptResponseSoftDispleasureSwear],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptAskForHealth2],
			[IsBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsSubjectNear400],
			[NoHasPainPills],
			[NoHasFirstAidKit],
			[IsNotHealthyHalf],
			[NotInCombat],
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
			[ConceptAskForHealth2],
			[IsBetazoeyrvc],
			[SubjectIsBiker],
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
			[ConceptAskForHealth2],
			[IsBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptAskForHealth],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[YesHasFirstAidKit],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsWorldTalkBetazoeyrvc],
			[IsAmmo],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsNamVet],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsBiker],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsPipeBomb],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsPipeBomb],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsFirstAidKit],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsFirstAidKit],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[SubjectIsManager],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsMolotov],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsMolotov],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsPainPills],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsPainPills],
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
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsAmmo],
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
			[ConceptBotMovingToBattleStation],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSaidCreshendoStartNear],
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
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerIncoming],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlsoWarnBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlsoWarnHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlsoWarnSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlsoWarnWitch],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptEmphaticArriveRun],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotBetazoeyrvcFriendlyFire],
			[IsDamageTypeBullet],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotBetazoeyrvcFriendlyFire],
			[IsDamageTypeBullet],
			[IsBetazoeyrvcFriendlyFire],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotBetazoeyrvcFriendlyFire],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotBetazoeyrvcFriendlyFire],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsBiker],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotBetazoeyrvcFriendlyFire],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorBotMovingToReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotInCombat],
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
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptEmphaticArriveRunFarm],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsBetazoeyrvc],
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
			[ConceptPlayerTonguePullStart],
			[IsSurvivor],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsNotSpeaking],
			[IsIncapacitatedPain],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsBetazoeyrvc],
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
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsIncapacitated],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsNamVet],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsNamVet],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsBiker],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsBiker],
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
			[ConceptFriendNeedsHelp],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsManager],
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
			[Conceptcrashcourse01_path01zresp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsBetazoeyrvc],
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
			[Conceptairport02_creshendoCrane],
			[IsBetazoeyrvc],
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
			[Conceptairport02_creshendo03],
			[IsBetazoeyrvc],
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
			[Conceptairport03_barriera],
			[IsBetazoeyrvc],
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
			[ConceptAirport03FirePathCleara],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptAirport03FirePathClearX],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptAirport03FireStartedX],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[Conceptairport04_08b],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[Conceptairport04_08c],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[Conceptairport04_08d],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptFrancisSuggestsCrane],
			[IsBetazoeyrvc],
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
			[ConceptLaughFrancis],
			[IsBetazoeyrvc],
			[IsNotSaidLaughFrancis],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_creshendo01a],
			[IsNotSaidairport02_creshendo01a],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_creshendo01b],
			[IsNotSaidairport02_creshendo01a],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path01],
			[IsNotSaidairport02_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path02],
			[IsNotSaidairport02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path02],
			[IsNotSaidairport02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path03],
			[IsNotSaidairport02_path03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[ChanceToFire20Percent],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path03],
			[IsNotSaidairport02_path03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path04],
			[IsNotSaidairport02_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path05],
			[IsNotSaidairport02_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport02_path06],
			[IsNotSaidairport02_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_01],
			[IsNotSaidairport03_01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_02a],
			[IsNotSaidairport03_02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_02b],
			[IsNotSaidairport03_02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_03a],
			[IsNotSaidairport03_03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_03b],
			[IsNotSaidairport03_03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_03c],
			[IsNotSaidairport03_03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_04],
			[IsNotSaidairport03_04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_06],
			[IsNotSaidairport03_06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_07],
			[IsNotSaidairport03_07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport03_barrier],
			[IsNotSaidairport03_barrier],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_01],
			[IsNotSaidairport04_01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_03],
			[IsNotSaidairport04_03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_03],
			[IsNotSaidairport04_03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_04],
			[IsNotSaidairport04_04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_05],
			[IsNotSaidairport04_05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire20Percent],
			[TimeSinceGroupInCombat10],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_05],
			[IsNotSaidairport04_05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat10],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_06],
			[IsNotSaidairport04_06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[ChanceToFire10Percent],
			[IsBikerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_06],
			[IsNotSaidairport04_06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear300],
			[IsBikerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_07],
			[IsNotSaidairport04_07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_07],
			[IsNotSaidairport04_07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_08a],
			[IsNotSaidairport04_08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_08b],
			[IsNotSaidairport04_08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_08c],
			[IsNotSaidairport04_08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_08d],
			[IsNotSaidairport04_08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_08e],
			[IsNotSaidairport04_08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_08f],
			[IsNotSaidairport04_08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_09],
			[IsNotSaidairport04_09],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear500],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport04_van],
			[IsNotSaidairport04_van],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Iscrashcourse01_path01],
			[IsNotSaidcrashcourse01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm01_path01],
			[IsNotSaidFarm01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm01_path02],
			[IsNotSaidFarm01_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm01_path03],
			[IsNotSaidFarm01_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm01_path09],
			[IsNotSaidFarm01_path09],
			[IsNotCoughing],
			[IsTalk],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path01],
			[IsNotSaidFarm02_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path02],
			[IsNotSaidFarm02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path02],
			[IsNotSaidFarm02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path03],
			[IsNotSaidFarm02_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path03],
			[IsNotSaidFarm02_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path04],
			[IsNotSaidFarm02_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path04],
			[IsNotSaidFarm02_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path05],
			[IsNotSaidFarm02_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path05],
			[IsNotSaidFarm02_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path06],
			[IsNotSaidFarm02_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path09],
			[IsNotSaidFarm02_path09],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm02_path10],
			[IsNotSaidFarm02_path10],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path03],
			[IsNotSaidFarm03_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path06],
			[IsNotSaidFarm03_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path07],
			[IsNotSaidFarm03_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path09],
			[IsNotSaidFarm03_path09],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm03_path10],
			[Farm03BridgeDown],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path01],
			[IsNotSaidFarm04_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path04],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path05],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path06],
			[IsNotSaidFarm04_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path07],
			[IsNotSaidFarm04_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path08],
			[IsNotSaidFarm04_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path09],
			[IsNotSaidFarm04_path09],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm04_path10],
			[IsNotSaidFarm04_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path01],
			[IsNotSaidFarm05_path01],
			[IsNotSaidFarm05_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path02],
			[IsNotSaidFarm05_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path06],
			[IsNotSaidFarm05_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path08],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path10],
			[IsNotSaidFarm05_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path09],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path08],
			[IsNotSaidFarm05_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsFarm05_path10],
			[IsNotSaidFarm05_path10],
			[IsNotSaidFarm05_path09],
			[IsNotSaidFarm05_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital01_path03],
			[IsNotSaidhospital01_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital02_safehouse],
			[IsNotSaidhospital02_safehouse],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital03_path04],
			[IsNotSaidhospital03_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital03_path08],
			[IsNotSaidhospital03_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital03_path08],
			[IsNotSaidhospital03_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital03_path11],
			[IsNotSaidhospital03_path11],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital04_path03],
			[IsNotSaidhospital04_path03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[IsManagerNear200],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital04_path03],
			[IsNotSaidhospital04_path03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear400],
			[IsManagerNear200],
			[IsManagerAlive],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital05_path01],
			[IsNotSaidhospital05_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Ishospital05_path02],
			[IsNotSaidhospital05_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptPathClearVan],
			[IsBetazoeyrvc],
			[IsNotSaidPathClearVan],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path01],
			[IsNotSaidSmalltown01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path02],
			[IsNotSaidSmalltown01_path02],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSubjectNear200],
			[IsNotSaidSmalltown01_path04],
			[IsSaidSmalltown01_path01],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path03],
			[IsNotSaidSmalltown01_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path07],
			[IsNotSaidSmalltown01_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path08],
			[IsNotSaidSmalltown01_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown01_path09],
			[IsNotSaidSmalltown01_path09],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path02],
			[IsNotSaidsmalltown02_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path03],
			[IsNotSaidsmalltown02_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path04],
			[IsNotSaidsmalltown02_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path05],
			[IsNotSaidsmalltown02_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path06],
			[IsNotSaidsmalltown02_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path07],
			[IsNotSaidsmalltown02_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Issmalltown02_path08],
			[IsNotSaidsmalltown02_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown02_path09],
			[IsNotSaidSmalltown02_path09],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path01],
			[IsNotSaidSmalltown03_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path02],
			[IsNotSaidSmalltown03_path01],
			[IsNotSaidSmalltown03_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path03],
			[IsNotSaidSmalltown03_path03],
			[IsNotSaidSmalltown03_path04],
			[IsNotSaidSmalltown03_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path04],
			[IsNotSaidSmalltown03_path04],
			[IsNotSaidSmalltown03_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path05],
			[IsNotSaidSmalltown03_path04],
			[IsNotSaidSmalltown03_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path06],
			[IsNotSaidSmalltown03_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path07],
			[IsNotSaidSmalltown03_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path08],
			[IsNotSaidSmalltown03_path08],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path10],
			[IsNotSaidSmalltown03_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path11],
			[IsNotSaidSmalltown03_path11],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path12],
			[IsNotSaidSmalltown03_path12],
			[IsNotSaidSmalltown03_path13],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown03_path13],
			[IsNotSaidSmalltown03_path13],
			[IsNotSaidSmalltown03_path12],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path01],
			[IsNotSaidSmalltown04_path01],
			[IsNotSaidSmalltown04_path02],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path02],
			[IsNotSaidSmalltown04_path02],
			[IsNotSaidSmalltown04_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path03],
			[IsNotSaidSmalltown04_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path04],
			[IsNotSaidSmalltown04_path04],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path05],
			[IsNotSaidSmalltown04_path05],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path07],
			[IsNotSaidSmalltown04_path07],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path09],
			[IsNotSaidSmalltown04_path09],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path10],
			[IsNotSaidSmalltown04_path10],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown04_path11],
			[IsNotSaidSmalltown04_path11],
			[IsNotCoughing],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown05_path01],
			[IsNotSaidSmalltown05_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown05_path03],
			[IsNotSaidSmalltown05_path03],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsSmalltown05_path06],
			[IsNotSaidSmalltown05_path06],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsThroughHere],
			[IsNotSaidThroughHere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[IsUpThatLadder],
			[IsNotSaidUpThatLadder],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRespondAffirmative],
			[IssuerMediumClose],
			[IsNotCoughing],
			[NotInCombat],
			[isBetazoeyrvc],
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
			[ConceptRiversideIsDead],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptRiversideIsDeadPlan],
			[IsBetazoeyrvc],
			[IsNotCoughing],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[ismap_l4d_farm05_cornfield],
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
			[ConceptPlayerCoverMe],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHelp],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerKillThatLight],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLeadOn],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerMoveOn],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWatchOutBehind],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerImWithYou],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLaugh],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLostCall],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAnswerLostCall],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerYes],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNegative],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerAreaClear],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHeardTank],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHurrah],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnCareful],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptIntroSmalltown],
			[IsBetazoeyrvc],
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
			[ConceptIntroSmalltown2],
			[IsBetazoeyrvc],
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
			[ConceptPlayerScenarioJoin],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerScenarioJoinLast],
			[IsBetazoeyrvc],
			[IsSmalltown04],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsNamVet],
			[IsNotSaidBillPounced],
			[IsBetazoeyrvc],
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
			[ConceptBounceReaction],
			[IsBetazoeyrvc],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptEatPills],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsBiker],
			[IsNotSaidFrancisPounced],
			[IsBetazoeyrvc],
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
			[ConceptPlayerGetInsideCheckPoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsInSafeSpot],
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
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptGrenadeCareful],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsWitchPresent],
			[NotInCombat],
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
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsInSafeSpot],
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
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsManager],
			[IsNotSaidLouisPounced],
			[IsBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport01_burning],
			[IsNotSaidairport01_burning],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport01_burning],
			[IsNotSaidairport01_burning],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport01_path01],
			[IsNotSaidairport01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isairport01_path01],
			[IsNotSaidairport01_path01],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsInSafeSpot],
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
			[ConceptPlayerSuggestHealthNamVet],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotSuggestedHealth],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotInCombat],
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
			[ConceptPlayerSuggestHealthBiker],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotSuggestedHealth],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotInCombat],
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
			[ConceptPlayerSuggestHealthManager],
			[IsBetazoeyrvc],
			[IssuerReallyClose],
			[IsNotSuggestedHealth],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[NotInCombat],
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
			[ConceptTalkIdle],
			[IsNotHealthy],
			[NotInCombat],
			[YesHasFirstAidKit],
			[IsBiker],
			[IsNotBeingHealed],
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
			[ConceptTalkIdle],
			[IsNotHealthy],
			[NotInCombat],
			[YesHasFirstAidKit],
			[IsManager],
			[IsNotBeingHealed],
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
			[ConceptTalkIdle],
			[IsNotHealthy],
			[NotInCombat],
			[YesHasFirstAidKit],
			[IsNamVet],
			[IsNotBeingHealed],
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
			[ConceptTalkIdle],
			[IsNotHealthy],
			[NotInCombat],
			[YesHasFirstAidKit],
			[IsBetazoeyrvc],
			[IsNotBeingHealed],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotWarnHeardHunter],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
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
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotWarnHeardWitch],
			[NotInCombat],
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
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptWitchGettingAngry],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerVomitInFace],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorCoughing],
			[IsCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerDeath],
			[IsCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerDeath],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
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
			[ConceptPlayerGroundPoundedByTank],
			[IsBetazoeyrvc],
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
			[ConceptPlayerBackUp],
			[IsBetazoeyrvc],
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
			[ConceptPlayerEmphaticGo],
			[IsBetazoeyrvc],
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
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsOnThirdStrike],
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
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsOnThirdStrike],
			[IsAlone],
			[NotInCombat],
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
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerThisWay],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerWaitHere],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLedgeHangEnd],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLedgeHangMiddle],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLedgeHangStart],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsSaidSomeoneDied],
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
			[ConceptDeath2Left],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSaidSomeoneDiedDouble2],
			[IsWithTwo],
			[IsNotIncapacitated],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadNamVet],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadBiker],
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
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsDeadManager],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpAutoShotgun],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpFirstAidKit],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpHuntingRifle],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpMolotov],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPainPills],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPipeBomb],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPumpShotgun],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpRifle],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSecondPistol],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSMG],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpAutoShotgun],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpFirstAidKit],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpHuntingRifle],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpMolotov],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPainPills],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPipeBomb],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpPumpShotgun],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpRifle],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSecondPistol],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpSMG],
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
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[InCombat],
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
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsManager],
			[NotInCombat],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsZombiePresentTank],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsZombiePresentTank],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsZombiePresentTank],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsBiker],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsZombiePresentTank],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsReviveTalk],
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
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IntensityHigh],
			[IsTalkBetazoeyrvc],
			[SubjectIsNamVet],
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
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IntensityHigh],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsBiker],
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
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IntensityHigh],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsManager],
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
			[ConceptIntroAirport],
			[IsBetazoeyrvc],
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
			[ConceptIntroAirport01zb],
			[IsBetazoeyrvc],
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
			[ConceptIntroHospital02],
			[IsBetazoeyrvc],
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
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
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
			[ConceptPlayerSpotRifle],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotRifle],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
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
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
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
			[ConceptPlayerSpotSMG],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotSMG],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
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
			[ConceptPlayerSpotSniperRifle],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotSniperRifle],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
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
			[ConceptPlayerSpotOtherWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotAutoShotgun],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_spas],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsShotgun_spas],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsRifle_desert],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_desert],
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
			[ConceptRelaxedSigh],
			[IsBetazoeyrvc],
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
			[ConceptUseAdrenaline],
			[IsBetazoeyrvc],
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
			[ConceptPlayerUsingDefibrillator],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRevivedByDefibrillator],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRevivedByDefibrillatorDelayed],
			[IsBetazoeyrvc],
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
			[ConceptScreamWhilePounced],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsBeingJockeyed],
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
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsBeingJockeyed],
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
			[ConceptCommentJockey],
			[IsBetazoeyrvc],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
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
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSaidDeployUpgradePack_Explosive],
			[HasUpgradePack_Explosive],
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
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsNotSaidDeployUpgradePack_Incendiary],
			[HasUpgradePack_Incendiary],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsM60],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpM60],
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
			[ConceptC7M1_saferoom02],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom09b],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom10a],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom11],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom15a],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom18],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom19a],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom20a],
			[IsBetazoeyrvc],
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
			[ConceptC7M1_saferoom23],
			[IsBetazoeyrvc],
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
			[Conceptc7m1opentankdoorspeakBetazoeyrvc],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsMapc7m1_docks],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsMapc7m1_docks],
			[IsInStartArea],
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
			[ConceptC7M2_saferoom01],
			[IsBetazoeyrvc],
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
			[ConceptC7M2_saferoom01b],
			[IsBetazoeyrvc],
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
			[ConceptC7M2_saferoom05b],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsMapc7m2_barge],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsMapc7m2_barge],
			[IsInStartArea],
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
			[ConceptPlayer_WarnMegaMobc7m201],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom004b],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom005],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom006c],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom007],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom007b],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom016],
			[IsBetazoeyrvc],
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
			[ConceptC7M3_saferoom016c],
			[IsBetazoeyrvc],
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
			[conceptC7M3BridgeBreaks],
			[IsBetazoeyrvc],
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
			[ConceptC7M3FinalSpeakBiker],
			[IsBetazoeyrvc],
			[IsLastGenerator],
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
			[ConceptC7M3FinalSpeakManager],
			[IsBetazoeyrvc],
			[IsLastGenerator],
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
			[ConceptC7M3FinalSpeakNamVet],
			[IsBetazoeyrvc],
			[IsLastGenerator],
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
			[ConceptC7M3GeneratorSpeakBetazoeyrvc],
			[IsBetazoeyrvc],
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
			[ConceptC7M3GeneratorSpeakBetazoeyrvc],
			[IsBetazoeyrvc],
			[IsSecondGenerator],
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
			[ConceptC7M3GeneratorSpeakBetazoeyrvc],
			[IsBetazoeyrvc],
			[IsThirdGenerator],
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
			[ConceptGetToVehicle],
			[IsBetazoeyrvc],
			[ismapc7m3_port],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
			[IsMapc7m3_port],
			[IsInStartArea],
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
			[conceptC7M3WaveOverGen1],
			[IsBetazoeyrvc],
			[IsSecondGenerator],
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
			[conceptC7M3WaveOverGen2],
			[IsBetazoeyrvc],
			[IsThirdGenerator],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsAdrenaline],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			[IsAdrenaline],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[Isgrenade_launcher],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			[Isgrenade_launcher],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Explosive],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			[IsUpgradePack_Explosive],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Incendiary],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			[IsUpgradePack_Incendiary],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsVomitJar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
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
			[ConceptPlayerToTheRescue],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_bricktop],
			[IsNotSaidc7m1_bricktop],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_pastbricks],
			[IsNotSaidc7m1_pastbricks],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_pretank],
			[IsNotSaidc7m1_pretank],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m1_tankcar],
			[IsNotSaidc7m1_tankcar],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m2_climbupcrap],
			[IsNotSaidc7m2_climbupcrap],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m2_gravelhill],
			[IsNotSaidc7m2_gravelhill],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m2_overboat],
			[IsNotSaidc7m2_overboat],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m2_throughhere],
			[IsNotSaidc7m2_throughhere],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptRemark],
			[IsBetazoeyrvc],
			[Isc7m3_seesailboat],
			[IsNotSaidc7m3_seesailboat],
			[IsNotCoughing],
			[NotInCombat],
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
			[ConceptPlayerYellRun],
			[IsNotCoughing],
			[IsBetazoeyrvc],
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
			[ConceptPlayerEquippedScavengeItem],
			[IsBetazoeyrvc],
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
			[ConceptPlayerShotGasCan],
			[IsBetazoeyrvc],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
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
			[ConceptSurvivorLeavingCheckpoint],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsScavenge],
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
			[ConceptPlayerPourStarted],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsScavenge],
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
			[ConceptPlayerPourFinished],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsWorldTalkBetazoeyrvc],
			[IsScavenge],
			[ScoreDoneSC],
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
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotIncapacitated],
			[IsWorldTalkBetazoeyrvc],
			[Ismapc7m3_port],
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
			[ConceptC7M2CrowsFlySpeakBetazoeyrvc],
			[ismapc7m2_barge],
			[IsBetazoeyrvc],
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
			[ConceptC7M3BridgeLeapSpeakBetazoeyrvc],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSpeaking],
			[ismapc7m3_port],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpAdrenaline],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpAdrenaline],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpbaseball_bat],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpchainsaw],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpcricket_bat],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpcricket_bat],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpCrowBar],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpelectric_guitar],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpFireAxe],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpFryingPan],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpGrenadeLauncher],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpIncendiaryAmmo],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpKatana],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpLaserSights],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpMachete],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpMagnum],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpMagnum],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUptonfa],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpGolfClub],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpExplosiveAmmo],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpUpgradePack_Explosive],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpUpgradePack_Incendiary],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpIncendiaryAmmo],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpVomitJar],
			[IsNotSpeaking],
			[IsInSafeSpot],
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
			[ConceptPlayerPickup],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpVomitJar],
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
			[ConceptInfoReminfo_powerboat4],
			[IsBetazoeyrvc],
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
			[ConceptTalkIdle],
			[IsBetazoeyrvc],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsChainsaw],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsChainsaw],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[Iscricket_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscricket_bat],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[Iscrowbar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscrowbar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsGuitar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGuitar],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsKatana],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKatana],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsLaserSights],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsLaserSights],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsMachete],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMachete],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsMagnum],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMagnum],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[Istonfa],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Istonfa],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsGolfClub],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsAutoShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsAutoShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsHuntingRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsHuntingRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsPumpShotgun],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsRifle_AK47],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_AK47],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsSecondPistol],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsShotgun_Chrome],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsSMG],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsNotSmartLookAuto],
			[IsDefibrillator],
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
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsTalk],
			[IsTalkBetazoeyrvc],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			[IsDefibrillator],
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
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsBetazoeyrvc],
			[IsPickedUpDefibrillator],
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
			[ConceptAirport02CraneStarted],
			[PanicEventBetazoeyrvc],
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
			[ConceptAirport03FireStarted],
			[PanicEventBetazoeyrvc],
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
			[ConceptAirport02CraneStarted],
			[PanicEventBetazoeyrvc],
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
			[ConceptAirport03FireStarted],
			[PanicEventBetazoeyrvc],
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
			[ConceptAirport04VanStarted],
			[PanicEventBetazoeyrvc],
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
