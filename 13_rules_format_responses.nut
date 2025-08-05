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
			},
		],
		then pilot ConceptHospitalRadioPrepare foo:0 -0.636
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
			},
		],
		then pilot ConceptHospitalPilotOnTheWay foo:0 -0.875
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
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
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
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
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
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
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
			},
		],
		then producer YouAreWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
			},
		],
		then coach YouAreWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
			},
		],
		then gambler YouAreWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
			},
		],
		then mechanic YouAreWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
			},
		],
		then biker YouAreWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
			},
		],
		then manager YouAreWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
			},
		],
		then namvet YouAreWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
			},
		],
		then Subject YouAreWelcome foo:0 0.3
		ApplyContext "TalkBetazoeyrvc:1:2"
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
			},
		],
		then Subject YouAreWelcome foo:0 0.3
		ApplyContext "TalkBetazoeyrvc:1:2"
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
			},
		],
		then Subject YouAreWelcome foo:0 0.3
		ApplyContext "TalkBetazoeyrvc:1:2"
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
			},
		],
		then Subject YouAreWelcome foo:0 0.3
		ApplyContext "TalkBetazoeyrvc:1:2"
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
			},
		],
		then Subject YouAreWelcome foo:0 0.3
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "SaidHurrahAlso:1:5"
		applycontexttoworld
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
		ApplyContext "SaidBotAttention:1:30"
		applycontexttoworld
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
		ApplyContext "SaidBotAttention:1:30"
		applycontexttoworld
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
			},
		],
		then Mechanic C6M1Intro_11a foo:0 -0.910
		ApplyContext "CXM1Intro:1:0,Talk:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
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
			},
		],
		then Gambler C6M1Intro_15a foo:0 -1.855
		ApplyContext "CXM1Intro:1:0,Talk:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
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
			},
		],
		then Producer C6M1Intro_22a foo:0 -1.117
		ApplyContext "CXM1Intro:1:0,Talk:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
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
			},
		],
		then Producer C6M1Intro_12a foo:0 -9.087
		ApplyContext "CXM1Intro:1:0,Talk:1:0,EllisInLoveC6M1:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
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
			},
		],
		then Mechanic C6M1Intro_11a foo:0 -0.910
		ApplyContext "CXM1Intro:1:0,Talk:1:0,EllisInLoveC6M1:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
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
			},
		],
		then Mechanic C6M1Intro_13a foo:0 -4.002
		ApplyContext "CXM1Intro:1:0,Talk:1:0,EllisInLoveC6M1:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
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
			},
		],
		then Any WorldC6M1_HistoricTour foo:0 1
		ApplyContext "Talk:1:7"
		applycontexttoworld
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
			},
		],
		then Coach C6M1Intro_04b foo:0 -1.676
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
			},
		],
		then Any WorldC6M1_HistoricTour foo:0 1
		ApplyContext "Talk:1:7"
		applycontexttoworld
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
			},
		],
		then Mechanic C6M1Intro_11c foo:0 -7.175
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
			},
		],
		then Coach C6M1Intro_13e foo:0 -3.130
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
			},
		],
		then Producer C6M1Intro_15c foo:0 -4.693
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
			},
		],
		then Gambler C6M1Intro_15e foo:0 -2.385
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
			},
		],
		then Producer C6M1Intro_17b foo:0 -9.916
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
			},
		],
		then Producer C6M1Intro_17d foo:0 -2.035
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
			},
		],
		then Producer C6M1Intro_22c foo:0 -1.387
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
			},
		],
		then Producer C6M1Intro_22f foo:0 -7.980
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
			},
		],
		then Producer C6M1Intro_22h foo:0 -0.623
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
			},
		],
		then Mechanic C6M1Intro_23b foo:0 -1.285
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
			},
		],
		then Mechanic C6M1Intro_23d foo:0 -9.236
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
			},
		],
		then Biker c6m3_outroL4D104b foo:0 -4.872
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
			},
		],
		then Biker c6m3_outroL4D108a foo:0 -5.788
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
			},
		],
		then Biker c6m3_outroL4D1010a foo:0 -1.261
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
			},
		],
		then Any C7M1_saferoom10b foo:0 .1
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
			},
		],
		then Any C7M1_saferoom11a foo:0 .1
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
			},
		],
		then Any C7M1_saferoom15b foo:0 .1
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
			},
		],
		then Any C7M1_saferoom18a foo:0 .1
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
			},
		],
		then Any C7M1_saferoom19b foo:0 .1
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
			},
		],
		then Any C7M1_saferoom20b foo:0 .1
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
			},
		],
		then Any C7M1_saferoom23a foo:0 .1
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
			},
		],
		then Any C7M1_saferoom05 foo:0 .1
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
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
			},
		],
		then Any C7M2_saferoom01a foo:0 .1
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
			},
		],
		then Any C7M2_saferoom05c foo:0 .1
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
			},
		],
		then Any C7M2_saferoom06 foo:0 .1
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
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
		ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
			},
		],
		then Any C7M3_saferoom007a foo:0 .1
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
			},
		],
		then Any C7M3_saferoom007c foo:0 .1
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
			},
		],
		then Any C7M3_saferoom016a foo:0 .1
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
		ApplyContext "_auto_TimerLockBetazoeyrvc:1:6,_auto_NoLostCall:1:0,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockBetazoeyrvc:1:6,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockBetazoeyrvc:1:6,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30,_auto_Finale:2:0"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30,_auto_Finale:2:0"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "CalledForRescue:1:5"
		applycontexttoworld
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
			},
		],
		then self HowitzerBurnEnd02 foo:0 0.1
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
		ApplyContext "_auto_TimerLockA:1:15,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockA:1:15,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "_auto_TimerLockA:1:10,CrashGenerator1Nag:1:0"
		applycontexttoworld
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
			},
		],
		then any CrashFinaleTruckResp01 foo:0 0.05
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
		ApplyContext "_auto_TimerLockA:1:15,_auto_TimerLockBetazoeyrvc:1:25"
		applycontexttoworld
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
			},
		],
		then any CrashFinaleTruckReadyResp foo:0 0.1
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
			},
		],
		then any CrashFinaleTruckResp01 foo:0 -2.954
		ApplyContext "Saidcrashcourse02_path14:1:0,_auto_NoLostCall:1:0"
		applycontexttoworld
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
			},
		],
		then biker CrashCourseR13 foo:0 0
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
		ApplyContext "Saidcrashcourse01_path05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path06:1:0"
		applycontexttoworld
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
			},
		],
		then Biker CrashCourseR02 foo:0 -4.193
		ApplyContext "Saidcrashcourse01_path10:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path10:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path13:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path14:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path17:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path18:1:0,HowitzerSeen:1:0,_auto_TimerLockA:1:15,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path05:1:0"
		applycontexttoworld
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
			},
		],
		then Biker CrashCourseR10 foo:0 -3.614
		ApplyContext "Saidcrashcourse02_path06:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path26:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path09:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path10:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path12:1:0"
		applycontexttoworld
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
			},
		],
		then Biker IntroCrashR02 foo:0 0.05
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
			},
		],
		then self IntroEnd foo:0 0.1
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
			},
		],
		then Biker IntroCrashR08 foo:0 0.05
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
			},
		],
		then any IntroCrashR10 foo:0 0.05
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
			},
		],
		then Biker IntroCrashR12 foo:0 -1.1
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
			},
		],
		then Biker IntroCrashR20 foo:0 0.05
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
			},
		],
		then Biker IntroCrashR27 foo:0 -2.147
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
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
			},
		],
		then biker CrashCourseB02 foo:0 -3.052
		ApplyContext "CanadaBikerHate:1:0"
		applycontexttoworld
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
			},
		],
		then any CrashCourseI01 foo:0 0.1
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
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
			},
		],
		then self IntroEnd foo:0 0.1
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
		ApplyContext "_auto_Finale:1:0"
		applycontexttoworld
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
			},
		],
		then orator_plane_radio ConceptBlock570 foo:0 0
		ApplyContext "_auto_Finale:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_Finale:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_Finale:1:0"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.569
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.344
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.776
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.225
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRunFarm foo:0 -1.615
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30,_auto_Finale:2:0"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.318
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.303
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.644
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 0.1
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.984
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30,_auto_Finale:2:0"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -2.255
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30,_auto_Finale:2:0"
		applycontexttoworld
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
			},
		],
		then orator_plane_radio ConceptBlockPlaneFull foo:0 0
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30,_auto_Finale:2:0"
		applycontexttoworld
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
		ApplyContext "Saidremark_caralarm:1:300"
		applycontexttoworld
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
		ApplyContext "Saidremark_caralarm:1:300"
		applycontexttoworld
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
			},
		],
		then Subject AskForHealth foo:0 0
		ApplyContext "SaidAskForHealth:1:10"
		applycontexttoworld
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
			},
		],
		then From AskForHealth2 foo:0 0
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
		ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidBattleStations:1:30"
		applycontexttoworld
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
		ApplyContext "SaidCreshendoStartNear:1:10"
		applycontexttoworld
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
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
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
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
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
		ApplyContext "SaidWitchWarn:1:20"
		applycontexttoworld
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
		ApplyContext "SaidFaultFriendlyFireBetazoeyrvc:1:0.1,SaidFaultFriendlyFire:1:0.1,ShotTeammateBetazoeyrvc:1:6"
		applycontexttoworld
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
		ApplyContext "FriendlyFire:1:10"
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
		ApplyContext "FriendlyFire:1:10"
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
		ApplyContext "FriendlyFire:1:10"
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
		ApplyContext "FriendlyFire:1:10"
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
		ApplyContext "FriendlyFire:1:10"
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
		ApplyContext "FriendlyFire:1:10"
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
		ApplyContext "SaidRescueComing:1:20"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
			},
		],
		then all commentjockey foo:0 -1.739
		ApplyContext "SaidBeenJockeyedBetazoeyrvc:1:6,TalkBetazoeyrvc:1:6"
		applycontexttoworld
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
			},
		],
		then all commentjockey foo:0 -1.739
		ApplyContext "SaidBeenJockeyedBetazoeyrvc:1:6,TalkBetazoeyrvc:1:6"
		applycontexttoworld
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
		ApplyContext "CalledForHelp:1:7.5"
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
			},
		],
		then any FriendNeedsHelp foo:0 0
		ApplyContext "CalledForHelp:1:15"
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
			},
		],
		then any FriendNeedsHelp foo:0 0
		ApplyContext "CalledForHelp:1:30"
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
		ApplyContext "SaidSmalltown04_path03:1:0,SmallTownBarricadeBetazoeyrvc:1:0"
		applycontexttoworld
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
		ApplyContext "Airport02CraneStarted:1:0"
		applycontexttoworld
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
			},
		],
		then any Airport03FirePathCleara foo:0 -1.072
		ApplyContext "SaidAirport03FirePathClear:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFrancisSuggestsCrane:1:0"
		applycontexttoworld
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
		ApplyContext "SaidLaughFrancis:1:0"
		applycontexttoworld
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
			},
		],
		then Any BetazoeyrvcSuggestsCrane foo:0 -1.923
		ApplyContext "Saidairport02_creshendo01a:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path01:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path04:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path06:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_01:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_04:1:0"
		applycontexttoworld
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
			},
		],
		then Any LaughBetazoeyrvc foo:0 -2.784
		ApplyContext "Saidairport03_06:1:0"
		applycontexttoworld
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
			},
		],
		then Any airport03_barriera foo:0 -1.664
		ApplyContext "Saidairport03_barrier:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_01:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_04:1:0"
		applycontexttoworld
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
			},
		],
		then All airport04_05a foo:0 -1.764
		ApplyContext "Saidairport04_05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_06:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_06:1:0"
		applycontexttoworld
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
			},
		],
		then biker AynRandResponse foo:0 -2.679
		ApplyContext "Saidairport04_07:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_07:1:0"
		applycontexttoworld
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
			},
		],
		then Any airport04_08a foo:0 -3.701
		ApplyContext "Saidairport04_08:1:0"
		applycontexttoworld
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
			},
		],
		then Biker airport04_vana foo:0 -1.224
		ApplyContext "Saidairport04_van:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm01_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm01_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm01_path03:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm02_path01:1:0"
		applycontexttoworld
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
			},
		],
		then Biker Farm02_path02b foo:0 0
		ApplyContext "SaidFarm02_path02:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm02_path06:1:0"
		applycontexttoworld
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
			},
		],
		then any RespondAffirmative foo:0 -1.547
		ApplyContext "SaidFarm02_path09:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm03_path03:1:0"
		applycontexttoworld
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
			},
		],
		then any ResponseSoftDispleasureSwear foo:0 -1.116
		ApplyContext "SaidFarm03_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm03_path07:1:0"
		applycontexttoworld
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
			},
		],
		then any RespondAffirmative foo:0 -0.817
		ApplyContext "SaidFarm03_path10:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path04:1:0,SaidFarm04_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path07:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path08:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path10:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm05_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm05_path08:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm05_path08:1:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital03_path04:1:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital03_path08:1:0"
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
		ApplyContext "Saidhospital03_path08:1:0"
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
		ApplyContext "Saidhospital04_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital04_path03:1:0"
		applycontexttoworld
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
			},
		],
		then Biker hospital05_path01a foo:0 -1.864
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital05_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidAirport04VanStarted:1:0"
		applycontexttoworld
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
		ApplyContext "SaidPathClearVan:1:0"
		applycontexttoworld
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
			},
		],
		then any ResponseSoftDispleasureSwear foo:0 -2.289
		ApplyContext "SaidSmalltown01_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown01_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown01_path03:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown01_path07:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown01_path08:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path04:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path06:1:0"
		applycontexttoworld
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
			},
		],
		then manager smalltown02_path08a foo:0 -0.554
		ApplyContext "Saidsmalltown02_path08:1:0,Saidsmalltown02_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path03:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path04:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path04:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path07:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path08:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path10:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path11:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path12:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path12:1:0"
		applycontexttoworld
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
			},
		],
		then any RiversideIsDeadB foo:0 -1.776
		ApplyContext "SaidSmalltown04_path01:1:0,Talk:1:12"
		applycontexttoworld
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
			},
		],
		then any RiversideIsDeadB foo:0 -1.776
		ApplyContext "SaidSmalltown04_path01:1:0,Talk:1:12"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path04:1:0,SmallTownBarricadeBetazoeyrvc:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path09:1:0,SmallTownBarricadeBetazoeyrvc:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path05:1:0"
		applycontexttoworld
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
			},
		],
		then Manager Smalltown04_path07A foo:0 -3.039
		ApplyContext "SaidSmalltown04_path07:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path10:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown05_path01:1:0"
		applycontexttoworld
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
			},
		],
		then biker Smalltown05_path03a foo:0 -1.461
		ApplyContext "SaidSmalltown05_path03:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown05_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidThroughHere:1:0"
		applycontexttoworld
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
		ApplyContext "SaidUpThatLadder:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m1_bricktop:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m1_pastbricks:1:0"
		applycontexttoworld
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
			},
		],
		then Any InfoRemc7m1_pretank03 foo:0 0.000
		ApplyContext "Saidc7m1_pretank:1:0"
		applycontexttoworld
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
			},
		],
		then manager InfoRemc7m1_pretank02 foo:0 0.1
		ApplyContext "Saidc7m1_pretank:1:0"
		applycontexttoworld
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
			},
		],
		then Any InfoRemc7m1_pretank03 foo:0 -2.051
		ApplyContext "Saidc7m1_pretank:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m1_tankcar:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m2_climbupcrap:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m2_gravelhill:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "Saidc7m2_overboat:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m2_throughhere:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m3_seesailboat:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFinaleAhead:1:0,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
			},
		],
		then any C11M5NearFinale2 foo:0 12
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFinaleAhead:1:0,WarnMegaMob:1:60,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 -1.480
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
			},
		],
		then biker smalltown02_path07a foo:0 -1.056
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
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
			},
		],
		then Any HurrahAlso foo:0 0
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
		ApplyContext "Talk:1:3"
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
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "SaidGrabbingCan:1:8"
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
		ApplyContext "SaidPlayerShotGasCan:1:10"
		applycontexttoworld
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
		ApplyContext "SaidLeavingSafeArea:1:0"
		applycontexttoworld
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
			},
		],
		then betazoeyrvc IntroSmallTown2 foo:0 -2.288
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
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
			},
		],
		then betazoeyrvc IntroSmallTownEasterEgg foo:0 -2.288
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
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
			},
		],
		then any IntroSmallTown3 foo:0 -3.193
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
			},
		],
		then NamVet IntroSmallTownEasterEgg foo:0 -3.193
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
			},
		],
		then self IntroEnd foo:0 0.1
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
		ApplyContext "SaidCommentJockey:1:0"
		applycontexttoworld
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
		ApplyContext "SaidBillPounced:1:60"
		applycontexttoworld
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
		ApplyContext "SaidFrancisPounced:1:60"
		applycontexttoworld
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
			},
		],
		then Any GrenadeCareful foo:0 -0.994
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
		ApplyContext "TalkBetazoeyrvc:1:2"
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
			},
		],
		then Any L4D1PlayerNiceShot foo:0 -0.802
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
		ApplyContext "SaidTankDead:1:60,TalkBetazoeyrvc:1:5"
		applycontexttoworld
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
		ApplyContext "SaidTankDead:1:60,TalkBetazoeyrvc:1:5"
		applycontexttoworld
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
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		ApplyContext "WitchAggro:--1"
		applycontexttoworld
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
		ApplyContext "Saidremark_caralarm:1:300"
		applycontexttoworld
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
		ApplyContext "SaidTankDead:1:0"
		applycontexttoworld
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
		ApplyContext "SaidLouisPounced:1:60"
		applycontexttoworld
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
		ApplyContext "Saidairport01_burning:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport01_burning:1:0"
		applycontexttoworld
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
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0,Saidairport01_path01:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport01_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
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
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
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
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
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
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
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
			},
		],
		then Any PlayerSuggestHealth foo:0 0
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
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
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
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
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
		ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
			},
		],
		then Any PlayerKillThatLight foo:0 -1.472
		ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnMegaMob:1:60,SaidSpecialWarn:1:30"
		applycontexttoworld
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
			},
		],
		then orator_plane_radio AirportRadioMegaMob foo:0 3.5
		ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnAngryWitch:1:5,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:10"
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
		ApplyContext "SaidWitchChasing:1:5,TalkBetazoeyrvc:1:2"
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
		ApplyContext "SaidWitchAttacking:1:15,TalkBetazoeyrvc:1:2,SaidWitchStartAttack:1:15"
	},

	{
		name = "WitchAggroBetaZoeyRVC",
		criteria = 
		[
			[ConceptWitchStartAttack],
			[IsBetazoeyrvc],
			[Iswitch_aggro_onBetazoeyrvc],
		],
		responses = 
		[
			{
				func = Custom_Talker_BetaZoeyRVC.NoResponse,
			},
		],
		ApplyContext "WitchAggro:++1"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "IsComplain:1:25"
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
		ApplyContext "IsComplain:1:25"
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
		ApplyContext "SaidNervous:1:0"
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
			},
		],
		then Any Player.WarnMegaMobc7m201 3 1
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
		ApplyContext "Talk:1:0"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "SaidBeenJockeyedBetazoeyrvc:1:6,TalkBetazoeyrvc:1:6"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
		ApplyContext "Saidchargerpound:1:5,TalkBetazoeyrvc:1:5"
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
		ApplyContext "SaidGooedBySpitter:1:20,TalkBetazoeyrvc:1:3"
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
		ApplyContext "SaidWarnSpitterIncoming:1:10"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
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
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
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
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "SaidDeployUpgradePack_Explosive:1:30"
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
		ApplyContext "SaidDeployUpgradePack_Incendiary:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "SaidChainSawUsed:1:90"
		applycontexttoworld
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
		ApplyContext "PickedUpItem:1:30"
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
		ApplyContext "PickedUpItem:1:30"
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
			},
		],
		then From ReviveFriendDownFinal foo:0 -0.672
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
			},
		],
		then subject ReviveFriendDown foo:0 -0.981
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
		ApplyContext "TalkBetazoeyrvc:1:5"
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
			},
		],
		then self IntroEnd foo:0 0.1
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
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
			},
		],
		then self IntroEnd foo:0 0.1
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
			},
		],
		then self IntroEnd foo:0 0.1
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
			},
		],
		then Any InfoReminfo_powerboat4a foo:0 -2.953
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
		ApplyContext "SaidPlayerShotGasCan:1:10"
		applycontexttoworld
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
		ApplyContext "AskForCover:1:30"
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
		ApplyContext "SaidPlayerLostCall:1:50"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any C14M1Intro1 foo:0 0.1
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
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
			},
		],
		then self IntroEnd foo:0 0.1
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
		ApplyContext "RemarkedC14M1Humvee:1:0"
		applycontexttoworld
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
			},
		],
		then self C14M1PlaneEngine foo:0 5.5
		ApplyContext "SpottedC14M1Plane:1:0"
		applycontexttoworld
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
		ApplyContext "RemarkedC14M1CabinUpstairs:1:0"
		applycontexttoworld
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
		ApplyContext "RemarkedC14M1JunkyardEntrance:1:0"
		applycontexttoworld
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
		ApplyContext "RemarkedC14M1Traincar:1:0"
		applycontexttoworld
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
		ApplyContext "RemarkedC14M1PrePanic:1:0"
		applycontexttoworld
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
		ApplyContext "RemarkedC14M1PrePanic:1:0"
		applycontexttoworld
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
		ApplyContext "RemarkedC14M1DownCliff:1:0"
		applycontexttoworld
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
		ApplyContext "RemarkedC14M2Gate:1:0"
		applycontexttoworld
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
		ApplyContext "RemarkedC14M2Drop:1:0"
		applycontexttoworld
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
			},
		],
		then any C14M2NoteLighthouse2 foo:0 0.1
		ApplyContext "RemarkedC14M2NoteLighthouse:1:0"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -13.984
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30,_auto_Finale:2:0"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.569
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 -1.344
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "Talk:1:45,_auto_SafeRoomStart:1:0,_auto_SafeRoomQuiet:1:5"
		applycontexttoworld
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
		ApplyContext "Talk:0:0"
		applycontexttoworld
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
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
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
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
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
		ApplyContext "_auto_Finale:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_Finale:2:0"
		applycontexttoworld
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
		ApplyContext "_auto_Escape:1:0"
		applycontexttoworld
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
			},
		],
		then Mechanic C6M1Intro_11a foo:0 -0.910
		ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		applycontexttoworld
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
			},
		],
		then Mechanic C6M1Intro_13a foo:0 -4.002
		ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		applycontexttoworld
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
			},
		],
		then Producer C6M1Intro_22a foo:0 -1.117
		ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		applycontexttoworld
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
			},
		],
		then Coach C6M1Intro_08a foo:0 -5.459
		ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		applycontexttoworld
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
			},
		],
		then Any WorldC6M1_HistoricTour foo:0 1
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
			},
		],
		then Coach C6M1Intro_04b foo:0 -1.676
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
			},
		],
		then Any WorldC6M1_HistoricTour foo:0 1
		ApplyContext "Talk:0:0"
		applycontexttoworld
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
			},
		],
		then Mechanic C6M1Intro_11c foo:0 -7.175
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
			},
		],
		then Coach C6M1Intro_13e foo:0 -3.130
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
			},
		],
		then Producer C6M1Intro_15c foo:0 -4.693
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
			},
		],
		then Gambler C6M1Intro_15e foo:0 -2.385
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
			},
		],
		then Producer C6M1Intro_17b foo:0 -9.916
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
			},
		],
		then Producer C6M1Intro_17d foo:0 -2.035
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
			},
		],
		then Producer C6M1Intro_22c foo:0 -1.387
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
			},
		],
		then Producer C6M1Intro_22f foo:0 -7.980
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
			},
		],
		then Producer C6M1Intro_22h foo:0 -0.623
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
			},
		],
		then Mechanic C6M1Intro_23b foo:0 -1.285
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
			},
		],
		then Mechanic C6M1Intro_23d foo:0 -9.236
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
		ApplyContext "Saidc6m3_outro3:1:0"
		applycontexttoworld
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
			},
		],
		then Biker c6m3_outroL4D104b foo:0 -4.872
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
		ApplyContext "Saidc6m3_outro3:1:0"
		applycontexttoworld
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
			},
		],
		then Biker c6m3_outroL4D108a foo:0 -5.788
		ApplyContext "Saidc6m3_outro3:1:0"
		applycontexttoworld
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
			},
		],
		then Biker c6m3_outroL4D1010a foo:0 -1.261
		ApplyContext "Saidc6m3_outro3:1:0"
		applycontexttoworld
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
			},
		],
		then Biker c6m3_outroL4D1010a foo:0 -1.261
		ApplyContext "Saidc6m3_outro3:1:0"
		applycontexttoworld
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
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		applycontexttoworld
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
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		applycontexttoworld
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
			},
		],
		then Any L4D1PlayerNiceShot foo:0 -0.802
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
		ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0
		ApplyContext "SaidFarm01_path09:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0
		ApplyContext "SaidSmalltown03_path14:1:0"
		applycontexttoworld
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
			},
		],
		then Subject YouWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:2"
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
			},
		],
		then Subject YouWelcome foo:0 0
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "SaidBotAttention:1:30"
		applycontexttoworld
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
		ApplyContext "SaidHurrahAlso:1:5"
		applycontexttoworld
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
		ApplyContext "NagHowitzer:1:30,NagCrashBetazoeyrvc:1:32"
		applycontexttoworld
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
			},
		],
		then self HowitzerBurnEnd02 foo:0 0.1
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
		ApplyContext "CrashFinaleSaidGeneratorBroken:1:15,NagCrashBetazoeyrvc:1:25"
		applycontexttoworld
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
		ApplyContext "CrashFinaleTruckNagPaused:1:6,NagCrashBetazoeyrvc:1:11"
		applycontexttoworld
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
			},
		],
		then any CrashFinaleTruckResp01 foo:0 0.05
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
			},
		],
		then Manager IntroCrashWalkingB foo:0 0.05
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
			},
		],
		then any CrashFinaleTruckResp01 foo:0 0.05
		ApplyContext "Saidcrashcourse02_path14:1:0"
		applycontexttoworld
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
			},
		],
		then biker CrashCourseR07 foo:0 0.05
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
			},
		],
		then biker CrashCourseR13 foo:0 0
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
		ApplyContext "Saidcrashcourse01_path05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path06:1:0"
		applycontexttoworld
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
			},
		],
		then Biker CrashCourseR02 foo:0 0.05
		ApplyContext "Saidcrashcourse01_path10:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path13:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path14:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path17:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path18:1:0,HowitzerSeen:1:0,NagHowitzer:1:30"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path20:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path24:1:0,SaidCrash01Safehouse:1:250"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path25:1:0,SaidCrash01SafeHouse:1:250"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path05:1:0"
		applycontexttoworld
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
			},
		],
		then Biker CrashCourseR10 foo:0 0.05
		ApplyContext "Saidcrashcourse02_path06:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path07:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path09:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path10:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse02_path12:1:0"
		applycontexttoworld
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
			},
		],
		then Biker IntroCrashR02 foo:0 0.05
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
			},
		],
		then Biker IntroCrashR08 foo:0 0.05
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
			},
		],
		then any IntroCrashR10 foo:0 0.05
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
			},
		],
		then Biker IntroCrashR12 foo:0 -1.1
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
			},
		],
		then Biker IntroCrashR20 foo:0 0.05
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
			},
		],
		then Biker IntroCrashR27 foo:0 0.05
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
			},
		],
		then Biker IntroCrashR29 foo:0 0.05
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
			},
		],
		then any IntroCrashR31 foo:0 0.05
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
			},
		],
		then any CrashCourseI01 foo:0 0.05
		ApplyContext "Saidcrashcourse02_intro:1:0,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "Crash02IntroReady:1:0,Crash02IntroPaused:1:7,SaidFinaleAhead:1:0,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "Crash02IntroReady:1:0,Crash02IntroPaused:1:7,SaidFinaleAhead:1:0,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "Crash02IntroReady:1:0,Crash02IntroPaused:1:7,SaidFinaleAhead:1:0,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "Crash02IntroReady:1:0,Crash02IntroPaused:1:7,SaidFinaleAhead:1:0,SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "talk:1:4"
		applycontexttoworld
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
		ApplyContext "SaidRadioTriggered:1:30"
		applycontexttoworld
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
		ApplyContext "SaidRadioTriggered:1:30"
		applycontexttoworld
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
		ApplyContext "SaidRadioTriggered:1:30"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 0
		ApplyContext "SaidFinalVehicleArrived:1:20,Talk:1:3"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 0
		ApplyContext "SaidFinalVehicleArrived:1:20,Talk:1:6"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRunFarm foo:0 0
		ApplyContext "SaidFinalVehicleSpotted:1:20,Talk:1:6"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 0
		ApplyContext "SaidFinalVehicleArrived:1:20,Talk:1:5"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 0
		ApplyContext "SaidFinalVehicleArrived:1:20,Talk:1:6"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 0
		ApplyContext "SaidFinalVehicleSpotted:1:20,Talk:1:6"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 0
		ApplyContext "SaidFinalVehicleSpotted:1:20,Talk:1:6"
		applycontexttoworld
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
			},
		],
		then any EmphaticArriveRun foo:0 0
		ApplyContext "SaidFinalVehicleSpotted:1:20,Talk:1:6"
		applycontexttoworld
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
			},
		],
		then Subject AskForHealth foo:0 0
		ApplyContext "SaidAskForHealth:1:10"
		applycontexttoworld
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
			},
		],
		then From AskForHealth2 foo:0 0
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
		ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotPIlls:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidBattleStationsBetazoeyrvc:1:30"
		applycontexttoworld
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
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		applycontexttoworld
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
		ApplyContext "SaidWitchWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		applycontexttoworld
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
		ApplyContext "SaidWitchWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcFriendlyFire:1:10"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcFriendlyFire:1:3"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcFriendlyFire:1:10"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcFriendlyFire:1:10"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcFriendlyFire:1:10"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcFriendlyFire:1:10"
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
		ApplyContext "SaidRescueComing:1:20"
		applycontexttoworld
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
			},
		],
		then any FriendNeedsHelp foo:0 0
		ApplyContext "CalledForHelp:1:20"
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
		ApplyContext "Airport02CraneStarted:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_barriera:1:0"
		applycontexttoworld
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
			},
		],
		then all Airport03FirePathCleara foo:0 0
		ApplyContext "SaidAirport03FirePathClear:1:0"
		applycontexttoworld
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
			},
		],
		then all Airport03FirePathCleara foo:0 0
		ApplyContext "SaidAirport03FirePathClear:1:0"
		applycontexttoworld
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
		ApplyContext "SaidAirport03FireStarted:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFrancisSuggestsCrane:1:0"
		applycontexttoworld
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
		ApplyContext "SaidLaughFrancis:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_creshendo01a:1:30"
		applycontexttoworld
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
			},
		],
		then Any BetazoeyrvcSuggestsCrane foo:0 0
		ApplyContext "Saidairport02_creshendo01b:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path01:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path04:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport02_path06:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_01:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_04:1:0"
		applycontexttoworld
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
			},
		],
		then Any LaughBetazoeyrvc foo:0 0
		ApplyContext "Saidairport03_06:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport03_07:1:0,SaidSafeSpotAhead:1:90"
		applycontexttoworld
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
			},
		],
		then Any airport03_barriera foo:0 0
		ApplyContext "Saidairport03_barrier:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_01:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_04:1:0"
		applycontexttoworld
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
			},
		],
		then All airport04_05a foo:0 0
		ApplyContext "Saidairport04_05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_06:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_06:1:0"
		applycontexttoworld
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
			},
		],
		then biker AynRandResponse foo:0 0.05
		ApplyContext "Saidairport04_07:1:0"
		applycontexttoworld
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
		ApplyContext "Saidairport04_07:1:0"
		applycontexttoworld
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
			},
		],
		then Any airport04_08a foo:0 0
		ApplyContext "Saidairport04_08:1:0"
		applycontexttoworld
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
			},
		],
		then Any airport04_08a foo:0 0
		ApplyContext "Saidairport04_08:1:0"
		applycontexttoworld
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
			},
		],
		then Any airport04_08a foo:0 0
		ApplyContext "Saidairport04_08:1:0"
		applycontexttoworld
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
			},
		],
		then Any airport04_08a foo:0 0
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
			},
		],
		then Any airport04_08a foo:0 0
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
			},
		],
		then Any airport04_08a foo:0 0
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
		ApplyContext "Saidairport04_09:1:0"
		applycontexttoworld
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
			},
		],
		then Biker airport04_vana foo:0 0
		ApplyContext "Saidairport04_van:1:0"
		applycontexttoworld
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
		ApplyContext "Saidcrashcourse01_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm01_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm01_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm01_path03:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0
		ApplyContext "SaidFarm03_path09:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm02_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm02_path02:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
			},
		],
		then Biker Farm02_path02b foo:0 0.05
		ApplyContext "SaidFarm02_path02:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm02_path03:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
			},
		],
		then Biker Farm02_path02b foo:0 0.05
		ApplyContext "SaidFarm02_path03:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm02_path04:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
			},
		],
		then Biker Farm02_path02b foo:0 0.05
		ApplyContext "SaidFarm02_path04:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm02_path05:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
			},
		],
		then Biker Farm02_path02b foo:0 0.05
		ApplyContext "SaidFarm02_path05:1:0,SaidFarm02_TracksBelow:1:0"
		applycontexttoworld
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
			},
		],
		then any RespondAffirmative foo:0 0
		ApplyContext "SaidFarm02_path06:1:0"
		applycontexttoworld
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
			},
		],
		then any RespondAffirmative foo:0 0
		ApplyContext "SaidFarm02_path09:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0
		ApplyContext "SaidFarm02_path10:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm03_path03:1:0"
		applycontexttoworld
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
			},
		],
		then any ResponseSoftDispleasureSwear foo:0 0.05
		ApplyContext "SaidFarm03_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm03_path07:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0
		ApplyContext "SaidFarm03_path09:1:0"
		applycontexttoworld
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
			},
		],
		then any RespondAffirmative foo:0 0.05
		ApplyContext "SaidFarm03_path10:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path04:1:0,SaidFarm04_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path05:1:0,SaidFarm04_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path07:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path08:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0.05
		ApplyContext "SaidFarm04_path09:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm04_path10:1:0"
		applycontexttoworld
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
			},
		],
		then any ResponseSoftDispleasureSwear foo:0 0.05
		ApplyContext "SaidFarm05_path01:1:0"
		applycontexttoworld
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
			},
		],
		then any RespondAffirmative foo:0 0
		ApplyContext "SaidFarm05_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm05_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm05_path08:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm05_path09:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFarm05_path10:1:0,SaidFarm05_path08:1:0"
		applycontexttoworld
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
			},
		],
		then Any SafeSpotAheadResponse foo:0 0
		ApplyContext "Saidhospital01_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital02_safehouse:1:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital03_path04:1:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital03_path08:1:0"
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
		ApplyContext "Saidhospital03_path08:1:0"
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
		ApplyContext "Saidhospital03_path11:1:0,SaidSafeSpotAhead:1:90"
		applycontexttoworld
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
		ApplyContext "Saidhospital04_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital04_path03:1:0"
		applycontexttoworld
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
			},
		],
		then Biker hospital05_path01a foo:0 0
		ApplyContext "Saidhospital05_path01:1:0"
		applycontexttoworld
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
		ApplyContext "Saidhospital05_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidPathClearVan:1:0"
		applycontexttoworld
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
			},
		],
		then any ResponseSoftDispleasureSwear foo:0 0
		ApplyContext "SaidSmalltown01_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown01_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown01_path03:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown01_path07:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown01_path08:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0
		ApplyContext "SaidSmalltown01_path09:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path02:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path03:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path04:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path05:1:0"
		applycontexttoworld
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
		ApplyContext "Saidsmalltown02_path06:1:0"
		applycontexttoworld
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
			},
		],
		then biker smalltown02_path07a foo:0 0
		ApplyContext "Saidsmalltown02_path07:1:0"
		applycontexttoworld
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
			},
		],
		then manager smalltown02_path08a foo:0 0
		ApplyContext "Saidsmalltown02_path08:1:0,Saidsmalltown02_path06:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0
		ApplyContext "SaidSmalltown02_path09:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path01:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path03:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path04:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path05:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path07:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path08:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path10:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path11:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path12:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown03_path13:1:0"
		applycontexttoworld
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
			},
		],
		then any RiversideIsDead foo:0 0
		ApplyContext "SaidSmalltown04_path01:1:0,Talk:1:12"
		applycontexttoworld
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
			},
		],
		then any RiversideIsDead foo:0 0
		ApplyContext "SaidSmalltown04_path02:1:0,Talk:1:12"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path03:1:0,SmallTownBarricadeBetazoeyrvc:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path04:1:0,SmallTownBarricadeBetazoeyrvc:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path05:1:0"
		applycontexttoworld
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
			},
		],
		then Manager Smalltown04_path07A foo:0 0
		ApplyContext "SaidSmalltown04_path07:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path09:1:0,SmallTownBarricadeBetazoeyrvc:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path10:1:0"
		applycontexttoworld
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
			},
		],
		then any SafeSpotAheadResponse foo:0 0
		ApplyContext "SaidSmalltown04_path11:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown05_path01:1:0"
		applycontexttoworld
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
			},
		],
		then biker Smalltown05_path03a foo:0 0
		ApplyContext "SaidSmalltown05_path03:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown05_path06:1:0"
		applycontexttoworld
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
		ApplyContext "SaidThroughHere:1:0"
		applycontexttoworld
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
		ApplyContext "SaidUpThatLadder:1:0"
		applycontexttoworld
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
			},
		],
		then any RiversideIsDeadB foo:0 0
		ApplyContext "SaidSmalltown04_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidSmalltown04_path02:1:0"
		applycontexttoworld
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
		ApplyContext "SaidFinaleAhead:1:30"
		applycontexttoworld
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
			},
		],
		then Any HurrahAlso foo:0 0
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
			},
		],
		then betazoeyrvc IntroSmallTown2 foo:0 0.05
		ApplyContext "talk:1:10"
		applycontexttoworld
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
			},
		],
		then any IntroSmallTown3 foo:0 0.05
		ApplyContext "talk:1:5"
		applycontexttoworld
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
		ApplyContext "RemarkableReadyToGo:1:500,RemarkableBlocker:1:5"
		applycontexttoworld
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
		ApplyContext "BillPounced:1:60"
		applycontexttoworld
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
		ApplyContext "FrancisPounced:1:60"
		applycontexttoworld
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
			},
		],
		then Any GrenadeCareful foo:0 0
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
		ApplyContext "TalkBetazoeyrvc:1:2"
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
			},
		],
		then Any PlayerNiceShot foo:0 0
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
		ApplyContext "LouisPounced:1:60"
		applycontexttoworld
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
		ApplyContext "Saidairport01_burning:1:0"
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
		ApplyContext "Saidairport01_burning:1:0"
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
		ApplyContext "Saidairport01_path01:1:0"
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
		ApplyContext "Saidairport01_path01:1:0"
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
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
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
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
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
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
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
			},
		],
		then Any PlayerSuggestHealthBiker foo:0 0
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
			},
		],
		then Any PlayerSuggestHealthManager foo:0 0
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
			},
		],
		then Any PlayerSuggestHealthNamVet foo:0 0
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
			},
		],
		then Any PlayerSuggestHealthBetazoeyrvc foo:0 0
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
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
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
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
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
		ApplyContext "WarnHeardBoomer :1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnHeardHunter :1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnHeardSmoker :1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
			},
		],
		then Self PlayerKillThatLight foo:0 0
		ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "WarnAngryWitch:1:5,SaidSpecialWarn:1:30"
		applycontexttoworld
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
		ApplyContext "SaidFinaleAhead:1:30"
		applycontexttoworld
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
		ApplyContext "IsComplain:1:25"
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
		ApplyContext "IsComplain:1:25"
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
		ApplyContext "SaidNervous:1:0"
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
		ApplyContext "SaidSomeoneDied:1:10,SaidSomeoneDiedDouble:1:10,SaidSomeoneDiedKill:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSomeoneDiedDouble2:1:10"
		applycontexttoworld
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
			},
		],
		then Any Death2Left foo:0 0
		ApplyContext "SaidSomeoneDied:1:10,SaidSomeoneDiedKill:1:20"
		applycontexttoworld
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
			},
		],
		then Any Death2Left foo:0 0
		ApplyContext "SaidSomeoneDied:1:10,SaidSomeoneDiedKill:1:20"
		applycontexttoworld
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
			},
		],
		then Any Death2Left foo:0 0
		ApplyContext "SaidSomeoneDied:1:10,SaidSomeoneDiedKill:1:20"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
			},
		],
		then From ReviveFriendDownFinal foo:0 0
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
		ApplyContext "ReviveTalk:1:5,Talk:1:1"
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
		ApplyContext "ReviveTalk:1:5,Talk:1:1"
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
		ApplyContext "ReviveTalk:1:5,Talk:1:1"
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
		ApplyContext "ReviveTalk:1:5"
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
		ApplyContext "ReviveTalk:1:5"
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
		ApplyContext "ReviveTalk:1:5"
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
		ApplyContext "ReviveTalk:1:5"
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
		ApplyContext "ReviveTalk:1:5,Talk:1:1"
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
		ApplyContext "ReviveTalk:1:5,Talk:1:1"
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
		ApplyContext "ReviveTalk:1:5,Talk:1:4"
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
		ApplyContext "ReviveTalk:1:5,Talk:1:1"
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
		ApplyContext "ReviveTalk:1:5,Talk:1:4"
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
		ApplyContext "ReviveTalk:1:5,Talk:1:4"
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
			},
		],
		then NamVet IntroAirport01bb foo:0 0
		ApplyContext "talk:1:10"
		applycontexttoworld
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
		ApplyContext "talk:1:3"
		applycontexttoworld
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
		ApplyContext "talk:1:5"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcAskForCover:1:30"
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:3"
		applycontexttoworld
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
		ApplyContext "SaidBeenJockeyedBetazoeyrvc:1:6,_auto_NoSpotting:1:4"
		applycontexttoworld
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
			},
		],
		then all commentjockey foo:0 -1.739
		ApplyContext "SaidBeenJockeyedBetazoeyrvc:1:6,_auto_NoSpotting:1:4"
		applycontexttoworld
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
			},
		],
		then all commentjockey foo:0 -1.739
		ApplyContext "SaidBeenJockeyedBetazoeyrvc:1:6,_auto_NoSpotting:1:4"
		applycontexttoworld
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
		ApplyContext "SaidCommentJockey:1:0"
		applycontexttoworld
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
		ApplyContext "Saidchargerpound:1:5,TalkBetazoeyrvc:1:5"
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
		ApplyContext "SaidGooedBySpitter:1:20,TalkBetazoeyrvc:1:3"
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
		ApplyContext "SaidWarnSpitterIncoming:1:10"
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
		ApplyContext "SaidDeployUpgradePack_Explosive:1:30"
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
		ApplyContext "SaidDeployUpgradePack_Incendiary:1:30"
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
			},
		],
		then Any C7M1_saferoom10b foo:0 .1
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
			},
		],
		then Any C7M1_saferoom11a foo:0 .1
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
			},
		],
		then Any C7M1_saferoom15b foo:0 .1
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
			},
		],
		then Any C7M1_saferoom18a foo:0 .1
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
			},
		],
		then Any C7M1_saferoom19b foo:0 .1
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
			},
		],
		then Any C7M1_saferoom20b foo:0 .1
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
			},
		],
		then Any C7M1_saferoom23a foo:0 .1
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
		ApplyContext "_auto_saidC7M1OpenTankDoor:1:10,_auto_saidC7M1OpenTankDoorLong:1:0"
		applycontexttoworld
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
			},
		],
		then Any C7M1_saferoom05 foo:0 .1
		ApplyContext "Talk:1:8,_auto_C7M1SafeRoomConvo:1:0"
		applycontexttoworld
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
		ApplyContext "Talk:1:8,_auto_SafeRoomStart:1:300,_auto_SafeRoomQuiet:1:5"
		applycontexttoworld
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
			},
		],
		then Any C7M2_saferoom01a foo:0 .1
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
			},
		],
		then Any C7M2_saferoom05c foo:0 .1
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
			},
		],
		then Any C7M2_saferoom06 foo:0 .1
		ApplyContext "Talk:1:8,_auto_C7M2SafeRoomConvo:1:0"
		applycontexttoworld
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
		ApplyContext "Talk:1:8,_auto_SafeRoomStart:1:300,_auto_SafeRoomQuiet:1:5"
		applycontexttoworld
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
			},
		],
		then Any C7M3_saferoom007a foo:0 .1
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
			},
		],
		then Any C7M3_saferoom007c foo:0 .1
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
			},
		],
		then Any C7M3_saferoom016a foo:0 .1
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
		ApplyContext "_auto_SaidC7M3BridgeBreaks:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_C7M3FinalPress:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_C7M3FinalPress:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_C7M3FinalPress:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_C7M3PressingBetazoeyrvc:1:6,_auto_SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_C7M3PressingBetazoeyrvc:1:6,_auto_SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_C7M3PressingBetazoeyrvc:1:6,_auto_SaidCreshendoStartNear:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_C7M3ToBridgeBetazoeyrvc:1:0"
		applycontexttoworld
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
		ApplyContext "Talk:1:8,_auto_SafeRoomStart:1:300,_auto_SafeRoomQuiet:1:5"
		applycontexttoworld
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
		ApplyContext "_auto_SaidC7M3WaveOverGen1:1:0"
		applycontexttoworld
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
		ApplyContext "_auto_SaidC7M3WaveOverGen2:1:0"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpoVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidRescueComing:1:20"
		applycontexttoworld
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
		ApplyContext "Saidc7m1_bricktop:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m1_pastbricks:1:0"
		applycontexttoworld
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
			},
		],
		then Any InfoRemc7m1_pretank03 foo:0 0.000
		ApplyContext "Saidc7m1_pretank:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m1_tankcar:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m2_climbupcrap:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m2_gravelhill:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m2_overboat:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m2_throughhere:1:0"
		applycontexttoworld
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
		ApplyContext "Saidc7m3_seesailboat:1:0"
		applycontexttoworld
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
		ApplyContext "SaidGrabbingCan:1:5"
		applycontexttoworld
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
		ApplyContext "SaidPlayerShotGasCan:1:10"
		applycontexttoworld
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
		ApplyContext "SaidStartScavenge:1:4"
		applycontexttoworld
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
		ApplyContext "TalkBetazoeyrvc:1:2"
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
		ApplyContext "Talk:1:3"
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
		ApplyContext "SaidFinaleAhead:1:30"
		applycontexttoworld
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
			},
		],
		then Any Player.WarnMegaMobc7m201 3 1
		ApplyContext "_auto_C7M2CrowsFlySpeak:1:0"
		applycontexttoworld
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
		ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30,_auto_SaidC7M3BridgeLeap:1:0"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
			},
		],
		then Any InfoReminfo_powerboat4a foo:0 -2.953
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
		ApplyContext "SaidPlayerLostCall:1:50"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		applycontexttoworld
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
			},
		],
		then any _SpotStuffResponse foo:0 0.01
		ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		applycontexttoworld
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
		ApplyContext "BetazoeyrvcPickedUpItem:1:30"
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
			},
		],
		then Betazoeyrvc airport02_creshendoCrane foo:0  .01
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
			},
		],
		then Betazoeyrvc Airport03FireStartedX foo:0  .01
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
			},
		],
		then Betazoeyrvc airport02_creshendoCrane foo:0  .01
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
			},
		],
		then Betazoeyrvc Airport03FireStartedX foo:0  .01
		ApplyContext "SaidAirport03FireStarted:1:0"
		applycontexttoworld
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
			},
		],
		then Betazoeyrvc Airport04VanStartedX foo:0  .01
	},

];

rr_ProcessRules(beta_zoey_rvc_rules);
