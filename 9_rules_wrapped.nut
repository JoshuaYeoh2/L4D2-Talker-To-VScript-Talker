local trevor_philips_rules = 
[
	{
		Rule C3M1CallFerryTrevor
		{
		    criteria ConceptC3M1CallFerry PanicEventTrevor IsNotSaidC3M1CallFerry2
		    Response C3M1CallFerryMechanic
		    then any C3M1CallFerry2 TrevorActor:1 0
		    ApplyContext "SaidC3M1CallFerry2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C3M2OpenDoorTrevor
		{
		    criteria ConceptC3M2OpenDoor PanicEventTrevor
		    Response C3M2OpenDoorMechanic
		    then Trevor C3M2OpenDoor2 TrevorActor:1 0
		    ApplyContext "SaidC3M2OpenDoor:1:0,Talk:1:2.157,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule c5m4floatstartTrevor
		{
		    criteria Conceptc5m4floatstart PanicEventTrevor
		    Response c5m4floatstartMechanic
		    then trevor c5m4floatstart2 foo:0 0
		    ApplyContext "Saidc5m4floatstart:1:0,_auto_TractorStarted:1:0,_auto_InMiniFinale:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C1M1InSmokeTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsSaidC1M1InSmoke ismap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response C1M1InSmokeMechanic
		    then any C1M1Cough foo:0 -1.399
		}
	},

	{
		Rule C1M3AlarmOffTrevor
		{
		    criteria ConceptC1M3AlarmOff2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3AlarmOffMechanic
		    then any C1M3AlarmOffa foo:0 .5
		}
	},

	{
		Rule C1M3AlarmActiveTrevor
		{
		    criteria ConceptC1M3AlarmActive IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3AlarmActiveMechanic
		}
	},

	{
		Rule C4M3SaferoomTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea isc4m3 AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response C4M3SaferoomMechanic
		    then any _c4m3_startsafe02 foo:0 0.01
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule L4D1PlayerNiceShotFrancisC6M3Trevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerNotSoClose IsC6M3_Port IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsBiker ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotFrancisC6M3Mechanic
		}
	},

	{
		Rule PlayerNiceShotFrancisTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerClose IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsBiker ChanceToFire30Percent IsNotSpeaking
		    Response PlayerNiceShotFrancisMechanic
		}
	},

	{
		Rule L4D1PlayerNiceShotLouisC6M3Trevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerNotSoClose IsC6M3_Port IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsManager ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotLouisC6M3Mechanic
		}
	},

	{
		Rule PlayerNiceShotLouisTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerClose IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsManager ChanceToFire10Percent IsNotSpeaking
		    Response PlayerNiceShotLouisMechanic
		}
	},

	{
		Rule L4D1PlayerNiceShotZoeyC6M3Trevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerNotSoClose IsC6M3_Port IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsTeenGirl ChanceToFire70Percent IsFrancisIntroActor IsNotSpeaking
		    Response L4D1PlayerNiceShotZoeyC6M3Mechanic
		}
	},

	{
		Rule L4D1PlayerNiceShotZoeyC6M3IntroTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerNotSoClose IsC6M3_Port IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsTeenGirl ChanceToFire70Percent IsZoeyIntroActor IsNotSpeaking
		    Response L4D1PlayerNiceShotZoeyC6M3IntroMechanic
		}
	},

	{
		Rule PlayerNiceShotZoeyTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerClose IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsTeenGirl ChanceToFire10Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotZoeyC6M3Mechanic
		}
	},

	{
		Rule PlayerNiceShotTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerClose IsTalk IsTalkTrevor ChanceToFire30Percent IsWorldTalkTrevor
		    Response PlayerNiceShotMechanic
		}
	},

	{
		Rule L4D1PlayerNiceShotTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerNotSoClose IsC6M3_Port SubjectIsNotProducer SubjectIsNotGambler SubjectIsNotCoach IsTalk IsTalkTrevor ChanceToFire30Percent IsWorldTalkTrevor
		    Response PlayerNiceShotMechanic
		}
	},

	{
		Rule PlayerNiceShotCoachTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerClose IsTalk IsTalkTrevor ChanceToFire10Percent IsWorldTalkTrevor SubjectIsCoach
		    Response PlayerNiceShotCoachMechanic
		}
	},

	{
		Rule PlayerNiceShotGamblerTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerClose IsTalk IsTalkTrevor ChanceToFire10Percent IsWorldTalkTrevor SubjectIsGambler
		    Response PlayerNiceShotGamblerMechanic
		}
	},

	{
		Rule PlayerNiceShotProducerTrevor
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsTrevor IssuerClose IsTalk IsTalkTrevor ChanceToFire10Percent IsWorldTalkTrevor SubjectIsProducer
		    Response PlayerNiceShotProducerMechanic
		}
	},

	{
		Rule SurvivorMournCoachTrevor
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsTrevor IsDeadCoach IsNotSaidSomeoneDied IsTalk IsTalkTrevor IsNotIncapacitated HasNotDefibrillator IsWorldTalkTrevor
		    Response SurvivorMournCoachMechanic
		}
	},

	{
		Rule SurvivorMournCoachC1Trevor
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsTrevor IsDeadCoach IsNotSaidSomeoneDied IsTalk IsTalkTrevor IsNotIncapacitated HasNotDefibrillator IsWorldTalkTrevor NoKnowNames ismap_c1m1_hotel
		    Response SurvivorMournCoachC1Mechanic
		}
	},

	{
		Rule SurvivorMournGamblerTrevor
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsTrevor IsDeadGambler IsNotSaidSomeoneDied IsTalk IsTalkTrevor IsNotIncapacitated HasNotDefibrillator IsWorldTalkTrevor
		    Response SurvivorMournGamblerMechanic
		}
	},

	{
		Rule SurvivorMournGamblerC1Trevor
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsTrevor IsDeadGambler IsNotSaidSomeoneDied IsTalk IsTalkTrevor IsNotIncapacitated HasNotDefibrillator IsWorldTalkTrevor NoKnowNames ismap_c1m1_hotel
		    Response SurvivorMournGamblerC1Mechanic
		}
	},

	{
		Rule SurvivorMournProducerTrevor
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsTrevor IsDeadProducer IsNotSaidSomeoneDied IsTalk IsTalkTrevor IsNotIncapacitated HasNotDefibrillator IsWorldTalkTrevor
		    Response SurvivorMournProducerMechanic
		}
	},

	{
		Rule SurvivorMournProducerC1Trevor
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsTrevor IsDeadProducer IsNotSaidSomeoneDied IsTalk IsTalkTrevor IsNotIncapacitated HasNotDefibrillator IsWorldTalkTrevor NoKnowNames ismap_c1m1_hotel
		    Response SurvivorMournProducerC1Mechanic
		}
	},

	{
		Rule _C1M1_ElevatorHelloStartAllAliveTrevor
		{
		    criteria Concept_C1M1_ElevatorHelloStart IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsEveryoneAlive
		    Response _C1M1_ElevatorHelloStartAllAliveMechanic
		    then any _C1M1_ElevatorHello01c foo:0 -8.677
		}
	},

	{
		Rule _C1M1_ElevatorHelloStart3AliveTrevor
		{
		    criteria Concept_C1M1_ElevatorHelloStart IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsWithOnlyThree
		    Response _C1M1_ElevatorHelloStart3AliveMechanic
		    then any _C1M1_ElevatorHello3AliveExtra1 foo:0 -3.112
		}
	},

	{
		Rule _C1M1_ElevatorHelloStart2AliveTrevor
		{
		    criteria Concept_C1M1_ElevatorHelloStart IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsWithTwo
		    Response _C1M1_ElevatorHelloStart2AliveMechanic
		    then any _C1M1_ElevatorHello2AliveName2 foo:0 -2.926
		}
	},

	{
		Rule C3M1FerryInTransitTrevor
		{
		    criteria ConceptC3M1FerryInTransit IsTrevor IsTalk IsTalkTrevor IsNotSaidC3M1FerryInTransit IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M1FerryInTransitMechanic
		    ApplyContext "SaidC3M1FerryInTransit:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule Playerc1m1_enter_elevatorTrevor
		{
		    criteria Conceptc1m1_enter_elevator IsTrevor IsTalk IsTalkTrevor IsNotSaidc1m1_enter_elevator AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor
		    Response Playerc1m1_enter_elevatorMechanic
		    ApplyContext "Saidc1m1_enter_elevator:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule Playerc1m1_elevator_pushbuttonTrevor
		{
		    criteria Conceptc1m1_elevator_pushbutton IsTrevor IsTalk IsTalkTrevor IsNotSaidc1m1_elevator_pushbutton AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor
		    Response Playerc1m1_elevator_pushbuttonMechanic
		    ApplyContext "Saidc1m1_elevator_pushbutton:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M2PreAlarmDoorTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2PreStoreAlarm IsNotSaidWorldC1M2PreStoreAlarm IsNotSaidC1M2AlarmSetoff IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerRemarkC1M2PreAlarmDoorMechanic
		    ApplyContext "SaidWorldC1M2PreStoreAlarm:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C1M2AlarmDoor2Trevor
		{
		    criteria ConceptC1M2AlarmDoor2 IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2AlarmDoor2Mechanic
		    then orator C1M2StoreAlarm foo:0 0.3
		}
	},

	{
		Rule PlayerRemarkC1M2PostAlarmDoorTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2StoreAlarm IsSaidC1M2AlarmSetoff IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_SaidC1M2GrabbedCola
		    Response PlayerRemarkC1M2PostAlarmDoorMechanic
		    then orator C1M2WhitakerErrandInProgress foo:0 1
		    ApplyContext "C1M2AlarmSetOff:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerC1M2GrabbingColaTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsTalk IsTalkTrevor IsNotSaidC1M2GrabbingCola2 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsPickedUpColaBottles ismap_c1m2_streets _auto_NotSaidC1M2GrabbedCola
		    Response PlayerC1M2GrabbingColaMechanic
		    ApplyContext "SaidC1M2GrabbingCola2:1:5,_auto_SaidC1M2GrabbedCola:1:0,Talk:1:3.092"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerC1M2GrabbingCola2Trevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsTalk IsTalkTrevor IsNotSaidC1M2GrabbingCola2 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsPickedUpColaBottles ismap_c1m2_streets _auto_SaidC1M2GrabbedCola
		    Response PlayerC1M2GrabbingCola2Mechanic
		    ApplyContext "SaidC1M2GrabbingCola2:1:5,Talk:1:3.092"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerC1M2FirstOutsideResponseTrevor
		{
		    criteria ConceptC1M2FirstOutsideResponse IsTrevor FromIsAnOrator IsNotSaidC1M2AlarmSetoff AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2FirstOutsideResponseMechanic
		    then orator Whitaker.Nags foo:0 10
		}
	},

	{
		Rule C1M2GunRoomDoorResponseGratitudeTrevor
		{
		    criteria ConceptC1M2GunRoomDoorResponseGratitude IsTrevor ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2GunRoomDoorResponseGratitudeMechanic
		}
	},

	{
		Rule PlayerC1M2InsideGunShop2Trevor
		{
		    criteria ConceptC1M2InsideGunShop2 IsTrevor IsTalk IsTalkTrevor IsNotSaidC1M2InsideGunShop IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2InsideGunShop2Mechanic
		    ApplyContext "Talk:1:2,SaidC1M2InsideGunShop:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerC1M2InsideGunShop3Trevor
		{
		    criteria ConceptC1M2InsideGunShop3 IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2InsideGunShop3Mechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerC1M2InsideGunShopPickupResponseTrevor
		{
		    criteria ConceptC1M2InsideGunShopPickupResponse IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2InsideGunShopPickupResponseMechanic
		}
	},

	{
		Rule PlayerC1M2InsideGunShopPickupResponse2Trevor
		{
		    criteria ConceptC1M2InsideGunShopPickupResponse2 IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival ChanceToFire30Percent
		    Response PlayerC1M2InsideGunShopPickupResponse2Mechanic
		}
	},

	{
		Rule PlayerC1M2GunShopKillTrevor
		{
		    criteria ConceptC1M2Gunshopkill IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2GunShopKillMechanic
		    ApplyContext "Talk:1:7"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerC3M1CallFerry2Trevor
		{
		    criteria ConceptC3M1CallFerry2 IsTrevor IsTalk IsTalkTrevor IsTrevorActor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M1CallFerry2Mechanic
		    then any C3M1FerryInTransit foo:0 25
		}
	},

	{
		Rule PlayerC3M1FerryLandedIdleTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsTalk IsTalkTrevor C3M1Ferry IsNotIncapacitated NotInCombat IsNotAlone IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M1FerryLandedIdleMechanic
		    ApplyContext "Talk:1:4"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerC3M1FerryLaunched2aTrevor
		{
		    criteria ConceptC3M1FerryLaunched2 IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M1FerryLaunched2aMechanic
		}
	},

	{
		Rule PlayerC3M2ComingHomeTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsTalk IsTalkTrevor IsNotSaidSafeSpotAhead IsSaidC3M2Village1 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M2ComingHomeMechanic
		    ApplyContext "Talk:1:1"
		    applycontexttoworld
		}
	},

	{
		Rule _C3M2BloodFarmersTrevor
		{
		    criteria Concept_C3M2BloodFarmers IsTrevor IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C3M2BloodFarmersMechanic
		}
	},

	{
		Rule PlayerC3M2OpenDoor2Trevor
		{
		    criteria ConceptC3M2OpenDoor2 IsTrevor IsTalkTrevor IsTrevorActor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M2OpenDoor2Mechanic
		}
	},

	{
		Rule Playerc5m4floatendTrevor
		{
		    criteria Conceptc5m4floatend2 IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response Playerc5m4floatendMechanic
		}
	},

	{
		Rule Playerc5m4floatstart2Trevor
		{
		    criteria Conceptc5m4floatstart2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response Playerc5m4floatstart2Mechanic
		}
	},

	{
		Rule PlayerintroC1M1Trevor
		{
		    criteria ConceptintroC1M1 IsTrevor IsNotAlone IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerintroC1M1Mechanic
		    then any _introc1m1 foo:0 4
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerintroC1M1AloneTrevor
		{
		    criteria ConceptintroC1M1 IsTrevor IsAlone IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerintroC1M1AloneMechanic
		    then self _introc1m1 foo:0 4
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule WhitakerC1M2DeliverColaTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2DeliverCola IsC1M2WhitakerErrand IsSubjectNear300 HasWhitakerCola AutoIsNotScavenge AutoIsNotSurvival _auto_SaidC1M2GrabbedCola
		    Response WhitakerC1M2DeliverColaMechanic
		    then orator whitakerputcola foo:0 0
		    ApplyContext "C1M2AlarmSetOff:3:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerPlayerUsingColaBottlesTrevor
		{
		    criteria ConceptPlayerUsingColaBottles IsTrevor IsNotSaidPlayerUsingColaBottles
		    Response NoResponse
		    ApplyContext "SaidPlayerUsingColaBottles:1:20,WhoPutCola:Trevor:35"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRelaxedSighTrevor
		{
		    criteria ConceptRelaxedSigh IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerRelaxedSighMechanic
		}
	},

	{
		Rule PlayerStayTogetherInsideReponseTrevor
		{
		    criteria ConceptStayTogetherInsideReponse IsTrevor IsTalk IsTalkTrevor IsNotSaidStayTogetherInsideReponse IsNotHealthySlow IsNotInSafeSpot IsWorldTalkTrevor
		    Response PlayerStayTogetherInsideReponseMechanic
		    ApplyContext "SaidStayTogetherInsideReponse:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerUseAdrenalineTrevor
		{
		    criteria ConceptUseAdrenaline IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerUseAdrenalineMechanic
		}
	},

	{
		Rule PlayerWorldC3M1FeedGator2Trevor
		{
		    criteria ConceptWorldC3M1FeedGator2 IsTrevor IsTalk IsTalkTrevor IssuerClose ChanceToFire30Percent IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FeedGator2Mechanic
		}
	},

	{
		Rule PlayerWorldC3M1FerryCrossingA01Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingA01 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingA01Mechanic
		}
	},

	{
		Rule PlayerWorldC3M1FerryCrossingB01Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingB01 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingB01Mechanic
		    then producer WorldC3M1FerryCrossingB02 foo:0 -3.058
		}
	},

	{
		Rule PlayerWorldC3M1FerryCrossingD03Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingD03 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingD03Mechanic
		    then producer WorldC3M1FerryCrossingD04 foo:0 -1.705
		}
	},

	{
		Rule PlayerWorldC3M1FerryCrossingE02Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingE02 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingE02Mechanic
		    then any WorldC3M1FerryCrossingE03 foo:0 -5.643
		}
	},

	{
		Rule PlayerWorldC3M1FerryCrossingE04Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingE04 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingE04Mechanic
		}
	},

	{
		Rule PlayerWorldC3M1FerryCrossingG02Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingG02 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingG02Mechanic
		}
	},

	{
		Rule PlayerWorldC3M1FerryCrossingI02Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingI02 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingI02Mechanic
		    then coach WorldC3M1FerryCrossingI03 foo:0 -3.258
		}
	},

	{
		Rule WorldC3M1FerryCrossingM2Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingM2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC3M1FerryCrossingM2Mechanic
		    then gambler WorldC3M1FerryCrossingM3 foo:0 0.1
		}
	},

	{
		Rule WorldC3M1FerryCrossingM4Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingM4 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC3M1FerryCrossingM4Mechanic
		    then coach WorldC3M1FerryCrossingM5 foo:0 0.1
		}
	},

	{
		Rule PlayerWorldIntroC31Trevor
		{
		    criteria ConceptWorldIntroC31 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldIntroC31Mechanic
		    then gambler WorldIntroC31a1 foo:0 -1.960
		}
	},

	{
		Rule ThanksGotItemTrevor
		{
		    criteria IsAwardConcept IsSharingSubject IsNotCoughing SubjectIsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response NoResponse
		}
	},

	{
		Rule RescuedSurvivorTrevor
		{
		    criteria IsAwardConcept IsRescuer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response RescuedSurvivorMechanic
		}
	},

	{
		Rule PlayerGivenItemTrevor
		{
		    criteria ConceptPlayerGivenItem IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerGivenItemMechanic
		}
	},

	{
		Rule ItemDonorProducerTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorProducer ChanceToFire30Percent isNotmap_c1m1_hotel IsPickedUpValidHealingItem
		    Response ItemDonorProducerMechanic
		    then producer YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule ItemDonorCoachTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorCoach ChanceToFire30Percent isNotmap_c1m1_hotel IsPickedUpValidHealingItem
		    Response ItemDonorCoachMechanic
		    then Coach YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule ItemDonorGamblerTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorGambler ChanceToFire30Percent isNotmap_c1m1_hotel IsPickedUpValidHealingItem
		    Response ItemDonorGamblerMechanic
		    then gambler YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule ItemDonorBikerTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorBiker ChanceToFire30Percent IsPickedUpValidHealingItem
		    Response ItemDonorBikerMechanic
		    then gambler YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule ItemDonorTeenGirlTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorTeenGirl ChanceToFire30Percent IsPickedUpValidHealingItem
		    Response ItemDonorTeenGirlMechanic
		    then teengirl YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule ItemDonorManagerTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorManager ChanceToFire30Percent IsPickedUpValidHealingItem
		    Response ItemDonorManagerMechanic
		    then manager YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule ItemDonorNamVetTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorNamVet ChanceToFire30Percent IsPickedUpValidHealingItem
		    Response ItemDonorNamVetMechanic
		    then namvet YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule ReviveMeInterruptedMinorTrevor
		{
		    criteria ConceptReviveMeInterrupted IsTrevor IsIncappedStarted IsIncappedStarted2
		    Response ReviveMeInterruptedMinorMechanic
		    ApplyContext "ReviveInterrupt:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule ReviveMeInterruptedMajorTrevor
		{
		    criteria ConceptReviveMeInterrupted IsTrevor IsIncappedBleeding1 IsIncappedBleeding2
		    Response ReviveMeInterruptedMajorMechanic
		    ApplyContext "ReviveInterrupt:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule ReviveMeInterruptedCriticalTrevor
		{
		    criteria ConceptReviveMeInterrupted IsTrevor IsIncappedLethargic
		    Response ReviveMeInterruptedCriticalMechanic
		    ApplyContext "ReviveInterrupt:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule ReviveThanksTrevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor
		    Response ReviveThanksMechanic
		    then subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksCoachTrevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsCoach ChanceToFire30Percent
		    Response ReviveThanksCoachMechanic
		    then Subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksCoachC1Trevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsCoach ChanceToFire30Percent ismap_c1m1_hotel NoKnowNames
		    Response ReviveThanksCoachC1Mechanic
		    then subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksGamblerTrevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsGambler ChanceToFire30Percent
		    Response ReviveThanksGamblerMechanic
		    then Subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksGamblerC1Trevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsGambler ChanceToFire30Percent ismap_c1m1_hotel NoKnowNames
		    Response ReviveThanksMechanic
		    then subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksProducerTrevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsProducer ChanceToFire30Percent
		    Response ReviveThanksProducerMechanic
		    then subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksBikerTrevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsBiker ChanceToFire30Percent
		    Response ReviveThanksBikerMechanic
		    then subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksManagerTrevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsManager ChanceToFire30Percent
		    Response ReviveThanksManagerMechanic
		    then subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksNamVetTrevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsNamVet ChanceToFire30Percent
		    Response ReviveThanksManagerMechanic
		    then subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule ReviveThanksTeenGirlTrevor
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsTrevor SubjectIsTeenGirl ChanceToFire30Percent
		    Response ReviveThanksTeenGirlMechanic
		    then subject YouAreWelcome foo:0 0
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule BotPlayer_YourWelcomeTrevor
		{
		    criteria ConceptSurvivorBotYouAreWelcome IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response BotPlayer_YourWelcomeMechanic
		}
	},

	{
		Rule BotReassureComingTrevor
		{
		    criteria ConceptSurvivorBotReassureComing IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSpeaking
		    Response BotReassureComingMechanic
		}
	},

	{
		Rule BotYesReadyTrevor
		{
		    criteria ConceptSurvivorBotYesReady IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSpeaking
		    Response BotReassureComingMechanic
		}
	},

	{
		Rule BotReassureNearbyTrevor
		{
		    criteria ConceptSurvivorBotReassureNearby IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSpeaking
		    Response BotReassureNearbyMechanic
		}
	},

	{
		Rule C1M2LeavingSafeRoomTrevor
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsTrevor IsNotSaidLeavingSafeArea ismap_c1m2_streets _auto_NotTellingStory
		    Response C1M2LeavingSafeRoomMechanic
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:1:1.547"
		    applycontexttoworld
		}
	},

	{
		Rule C1M2SafeRooma2Trevor
		{
		    criteria ConceptC1M2SafeRooma2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRooma2Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C1M2SafeRoomc1Trevor
		{
		    criteria ConceptC1M2SafeRoomc1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRoomc1Mechanic
		    then gambler C1M2SafeRoomc2 foo:0 -3.765
		}
	},

	{
		Rule C1M2TankerAttackTrevor
		{
		    criteria ConceptC1M2TankerAttack2 IsTrevor WhoPutColaTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2TankerAttackMechanic
		    then orator C1M2GoodLuckGettingToTheMall foo:0 3
		}
	},

	{
		Rule c1m4escapeTrevor
		{
		    criteria Conceptc1m4escape IsTrevor NotSaidOutro AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4escapeMechanic
		    ApplyContext "Talk:1:0,SaidOutro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule c1m4escapeCheckSuccessTrevor
		{
		    criteria Conceptc1m4escapeTrevorCheck IsTrevor IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4escapeCheckSuccessMechanic
		    then from c1m4escapeTrevorCheckSuccess foo:0 0
		}
	},

	{
		Rule c1m4escapeCheckFailTrevor
		{
		    criteria Conceptc1m4escapeTrevorCheck IsTrevor IsIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4escapeCheckFailMechanic
		    then from c1m4escapeTrevorCheckFail foo:0 0
		}
	},

	{
		Rule C1M4GasPourTrevor
		{
		    criteria ConceptPlayerPourStarted IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotScavenge ismap_c1m4_atrium _auto_NotNoGasPourLine
		    Response C1M4GasPourMechanic
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule C1M4PlayerGetToRescueVehicleTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor ismap_c1m4_atrium IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C1M4PlayerGetToRescueVehicleMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule c1m4startelevatorTrevor
		{
		    criteria Conceptc1m4startelevator IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4startelevatorMechanic
		    then trevor _c1m4startelevator2 foo:0 -4.816
		    ApplyContext "Talk:1:0,ElevatorTimer:1:25"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3GasPourTrevor
		{
		    criteria ConceptPlayerPourStarted IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotScavenge isC6M3_Port ChanceToFire70Percent
		    Response C6M3GasPourMechanic
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule FinaleStartC1M4Trevor
		{
		    criteria ConceptFinaleTriggered IsTrevor IsTalkTrevor IsWorldTalkTrevor ismap_c1m4_atrium IsNotScavenge _auto_NotFinaleStarted
		    Response FinaleStartC1M4Mechanic
		    ApplyContext "Talk:1:3,_auto_Finale:1:0,_auto_NoLostCall:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule GasPourDoneC1M4Trevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotScavenge ismap_c1m4_atrium ScoreDoneSC
		    Response GasPourDoneC1M4Mechanic
		    ApplyContext "_auto_TimerLockA:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule C2M2CarouselIdleTrevor
		{
		    criteria ConceptTalkIdle IsTrevor ChanceToFire30Percent IsNotIncapacitated ismap_c2m2 IsNotInSafeSpot IsNotSaidSafeSpotAhead AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C2M2CarouselIdleMechanic
		    ApplyContext "_auto_TimerLockA:1:13,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C2M3RubbleNagIdleTrevor
		{
		    criteria ConceptTalkIdle IsTrevor ChanceToFire50Percent IsNotIncapacitated ismap_c2m3 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTeamNearCoaster _auto_NotAlarm _auto_NotTimerLockA _auto_NotTimerLockTrevor _auto_IsCoasterExpo IsNotSpeakingWeight0
		    Response C2M3RubbleNagIdleMechanic
		    ApplyContext "Talk:1:0.903,_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:13"
		    applycontexttoworld
		}
	},

	{
		Rule C2M2SaferoomTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea Ismap_c2m2 AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response C2M2SaferoomMechanic
		    then any _C2M2_Riders01 foo:0 0.1
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule _C2M2_Riders02Trevor
		{
		    criteria Concept_C2M2_Riders02 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Riders02Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule _C2M2_Riders03Trevor
		{
		    criteria Concept_C2M2_Riders03 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Riders03Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule _C2M2_Riders04Trevor
		{
		    criteria Concept_C2M2_Riders04 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Riders04Mechanic
		    then coach _C2M2_Riders04 foo:0 0.1
		}
	},

	{
		Rule _C2M2_Riders06Trevor
		{
		    criteria Concept_C2M2_Riders06 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Riders06Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule _C2M2_Riders07Trevor
		{
		    criteria Concept_C2M2_Riders07 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Riders07Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C2M1Intro_400Trevor
		{
		    criteria ConceptC2M1Intro_400 IsTrevor IsSaidLeavingSafeArea IsInStartArea AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1Intro_400Mechanic
		    then trevor C2M1Intro_405 foo:0 0.1
		    ApplyContext "Talk:1:5.363"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro_401Trevor
		{
		    criteria ConceptC2M1Intro_401 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro_401Mechanic
		    then trevor C2M1Intro_402 foo:0 0.3
		    ApplyContext "Talk:1:3.772"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro_402Trevor
		{
		    criteria ConceptC2M1Intro_402 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro_402Mechanic
		    ApplyContext "Talk:1:0.790"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro_403Trevor
		{
		    criteria ConceptC2M1Intro_403 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro_403Mechanic
		    then trevor C2M1Intro_404 foo:0 0.1
		    ApplyContext "Talk:1:1.198"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro_404Trevor
		{
		    criteria ConceptC2M1Intro_404 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro_404Mechanic
		    ApplyContext "Talk:1:1.506"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro_405Trevor
		{
		    criteria ConceptC2M1Intro_405 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro_405Mechanic
		    then trevor C2M1Intro_406 foo:0 0.1
		    ApplyContext "Talk:1:1.411"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro_406Trevor
		{
		    criteria ConceptC2M1Intro_406 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro_406Mechanic
		    ApplyContext "Talk:1:1.506"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro_407Trevor
		{
		    criteria ConceptC2M1Intro_407 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro_407Mechanic
		    then trevor C2M1Intro_408 foo:0 0.1
		    ApplyContext "Talk:1:2.846"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro_408Trevor
		{
		    criteria ConceptC2M1Intro_408 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro_408Mechanic
		    ApplyContext "Talk:1:1.098"
		    applycontexttoworld
		}
	},

	{
		Rule c2m3_DownHoleTrevor
		{
		    criteria Conceptc2m3downhole IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m3_DownHoleMechanic
		    ApplyContext "_auto_DownHole:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule c2m3CoasterEndTrevor
		{
		    criteria Conceptc2m3CoasterEnd IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m3CoasterEndMechanic
		    ApplyContext "_auto_Alarm:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M3CoasterRunGoTrevor
		{
		    criteria ConceptC2M3CoasterRunGo IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3CoasterRunGoMechanic
		}
	},

	{
		Rule C2M3CoasterStartTrevor
		{
		    criteria Conceptc2m3CoasterStart IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3CoasterStartMechanic
		    then trevor _c2m3_howcool foo:0 1.0
		    ApplyContext "WarnMegaMob:1:30,_auto_Alarm:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M3SaferoomTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea Ismap_c2m3 AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response C2M3SaferoomMechanic
		    then producer C2M3SafeIntro009 foo:0 0.2
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M3SafeIntro006Trevor
		{
		    criteria ConceptC2M3SafeIntro006 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3SafeIntro006Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C2M3SafeIntro010Trevor
		{
		    criteria ConceptC2M3SafeIntro010 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3SafeIntro010Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule c2m3SeeChopperTrevor
		{
		    criteria Conceptc2m3SeeChopper IsTrevor IsTalk IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m3SeeChopperMechanic
		    ApplyContext "_auto_OutOfTunnel:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule c2m3SpotIncendiaryTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsIncendiary IsTrevor IsTalk NotInCombat Ismap_c2m3 _auto_NotOutOfTunnel
		    Response c2m3SpotIncendiaryMechanic
		}
	},

	{
		Rule c2m3SpotKatanaTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsKatana IsTrevor IsTalk NotInCombat Ismap_c2m3 _auto_NotOutOfTunnel
		    Response c2m3SpotKatanaMechanic
		}
	},

	{
		Rule C2M4ButtonPressedTrevor
		{
		    criteria ConceptC2M4ButtonPressed IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M4ButtonPressedMechanic
		    ApplyContext "_auto_ButtonPressed:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M4Gate004Trevor
		{
		    criteria ConceptC2M4Gate004 IsTrevor IsTalk NotInCombat IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M4Gate004Mechanic
		    then coach C2M4Gate005 foo:0 0.01
		}
	},

	{
		Rule C2M4Gate000Trevor
		{
		    criteria ConceptC2M4Gate000 IsTrevor IsNotIncapacitated ismap_c2m4 NotInCombat TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsNearGate _auto_NotNearGateNag _auto_NotTimerLockA _auto_NotTimerLockTrevor _auto_NotButtonPressed IsNotSpeakingWeight0
		    Response C2M4Gate000Mechanic
		    ApplyContext "Talk:1:1.116,_auto_TimerLockA:1:20,_auto_TimerLockTrevor:1:23,_auto_NearGateNag:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M4GateIdleTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsNotIncapacitated ismap_c2m4 NotInCombat TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsNearGateNag _auto_IsNearGate _auto_NotTimerLockA _auto_NotTimerLockTrevor _auto_NotButtonPressed IsNotSpeakingWeight0
		    Response C2M4GateIdleMechanic
		    ApplyContext "Talk:1:1.645,_auto_TimerLockA:1:20,_auto_TimerLockTrevor:1:23"
		    applycontexttoworld
		}
	},

	{
		Rule C2M4GateOpenCalloutTrevor
		{
		    criteria ConceptC2M4GateOpenCallout IsTrevor IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response C2M4GateOpenCalloutMechanic
		    then any _C2M4_GateOpen001 foo:0 0.1
		    ApplyContext "Talk:1:0.878"
		    applycontexttoworld
		}
	},

	{
		Rule c2m4SeeChopperTrevor
		{
		    criteria Conceptc2m4SeeChopper IsTrevor IsTalk NotInCombat IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m4SeeChopperMechanic
		}
	},

	{
		Rule C2M5_Button2YellTrevor
		{
		    criteria ConceptC2M5_Button2Yell IsTrevor NotCoachMadAtRiders IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_Button2YellMechanic
		}
	},

	{
		Rule C2M5_Button2YellCoachMadTrevor
		{
		    criteria ConceptC2M5_Button2Yell IsTrevor CoachMadAtRiders IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_Button2YellMechanic
		}
	},

	{
		Rule C2M5_ChoppercomingTrevor
		{
		    criteria ConceptC2M5_Choppercoming IsTrevor IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_ChoppercomingMechanic
		    then any C2M5_PlanWorked foo:0 0.01
		}
	},

	{
		Rule c2m5_intro003Trevor
		{
		    criteria Conceptc2m5_intro003 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro003Mechanic
		    then self c2m5_intro009 foo:0 0.4
		}
	},

	{
		Rule c2m5_intro005Trevor
		{
		    criteria Conceptc2m5_intro005 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro005Mechanic
		    then any c2m5_intro006 foo:0 0.1
		}
	},

	{
		Rule c2m5_intro008Trevor
		{
		    criteria Conceptc2m5_intro008 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro008Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule c2m5_intro009Trevor
		{
		    criteria Conceptc2m5_intro009 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro009Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule c2m5_intro011Trevor
		{
		    criteria Conceptc2m5_intro011 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro011Mechanic
		    then any c2m5_intro012 foo:0 0.1
		}
	},

	{
		Rule c2m5_intro012Trevor
		{
		    criteria Conceptc2m5_intro012 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro012Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule c2m5_intro015Trevor
		{
		    criteria Conceptc2m5_intro015 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro012Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule c2m5_intro016Trevor
		{
		    criteria Conceptc2m5_intro016 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro012Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule c2m5_intro020Trevor
		{
		    criteria Conceptc2m5_intro020 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro012Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule c2m5_intro025Trevor
		{
		    criteria Conceptc2m5_intro025 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro012Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule c2m5_intro019Trevor
		{
		    criteria Conceptc2m5_intro019 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro019Mechanic
		    then any c2m5_intro020 foo:0 0.1
		}
	},

	{
		Rule c2m5_intro024Trevor
		{
		    criteria Conceptc2m5_intro024 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro024Mechanic
		    then any c2m5_intro025 foo:0 0.01
		}
	},

	{
		Rule C2M5_PlanWorkedTrevor
		{
		    criteria ConceptC2M5_PlanWorked IsTrevor NotCoachMadAtRiders IsNotIncapacitated NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_PlanWorkedMechanic
		}
	},

	{
		Rule C2M5_PlanWorkedCoachMadTrevor
		{
		    criteria ConceptC2M5_PlanWorked IsTrevor CoachMadAtRiders IsNotIncapacitated NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_PlanWorkedMechanic
		}
	},

	{
		Rule C2M5Button1Trevor
		{
		    criteria ConceptC2M5Button1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1
		    Response C2M5Button1Mechanic
		    ApplyContext "_auto_Button1:1:0,_auto_NoLostCall:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M5ChopperNagTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor Ismap_c2m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C2M5ChopperNagMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C2M5InChopperNagTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor Ismap_c2m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C2M5InChopperNagMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C2M5InArenaNagTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat Ismap_c2m5 IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1 _auto_NotTimerLockA _auto_NotTimerLockTrevor _auto_IsC2M5InArena IsNotSpeakingWeight0
		    Response C2M5InArenaNagMechanic
		    ApplyContext "_auto_TimerLockA:1:30,_auto_TimerLockTrevor:1:34"
		    applycontexttoworld
		}
	},

	{
		Rule C2M5SingingTrevor
		{
		    criteria ConceptC2M5Microphone IsTrevor NotInCombat Ismap_c2m5 TimeSinceGroupInCombat02 IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton2 _auto_IsButton1
		    Response C2M5SingingMechanic
		}
	},

	{
		Rule SurvivorReloadingC2M5Trevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotZombiePresentTank IsNotSpeaking Ismap_c2m5 IsRocking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkTrevor _auto_ConcertIsLive _auto_NotRockingOut
		    Response SurvivorReloadingC2M5Mechanic
		    ApplyContext "_auto_RockingOut:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorReloadingC2M5RockedOutTrevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotZombiePresentTank IsNotSpeaking IsRocking Ismap_c2m5 IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkTrevor _auto_ConcertIsLive _auto_IsRockingOut
		    Response NoResponse
		}
	},

	{
		Rule SurvivorVocalizeLookOutC2M5Trevor
		{
		    criteria ConceptPlayerLookOut IsNotCoughing Ismap_c2m5 IsRocking IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_ConcertIsLive _auto_NotRockingOut
		    Response SurvivorVocalizeLookOutC2M5Mechanic
		    ApplyContext "_auto_RockingOut:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorVocalizeLookOutC2M5RockedOutTrevor
		{
		    criteria ConceptPlayerLookOut IsNotCoughing Ismap_c2m5 IsRocking IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_ConcertIsLive _auto_IsRockingOut
		    Response NoResponse
		}
	},

	{
		Rule C2M5LeaveSafeTrevor
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsTrevor ismap_c2m5 IsNotSaidLeavingSafeArea
		    Response C2M5LeaveSafeMechanic
		    ApplyContext "Talk:0:0,SaidLeavingSafeArea:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M5ReloadingTankTrevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkTrevor Ismap_c2m5 _auto_ConcertIsLive
		    Response C2M5ReloadingTankMechanic
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerKillTankConfirmationC2M5Trevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor IsTalk IsTalkTrevor SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsWorldTalkTrevor Ismap_c2m5 _auto_ConcertIsLive IsNotSpeakingWeight0
		    Response PlayerKillTankConfirmationC2M5Mechanic
		    ApplyContext "SaidTankDead:1:60,TalkTrevor:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule C2M5ThankYouTrevor
		{
		    criteria ConceptC2M5Microphone IsTrevor NotInCombat Ismap_c2m5 IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival _auto_IsEscapeReady
		    Response C2M5ThankYouMechanic
		    ApplyContext "Talk:1:5.287"
		    applycontexttoworld
		}
	},

	{
		Rule C3M1FerryEnd2Trevor
		{
		    criteria ConceptC3M1FerryEnd2 IsTrevor IsNotSaidC3M1FerryEnd AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M1FerryEnd2Mechanic
		    ApplyContext "SaidC3M1FerryEnd:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule WorldC3M1FerryCrossingRochelleTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1FerryCrossing IsNotSaidWorldC3M1FerryCrossing IsNotCoughing NotInCombat IsTalkTrevor IsSubjectNear200 IsProducerAlive ChanceToFire25Percent IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 4
		    Response WorldC3M1FerryCrossingRochelleMechanic
		    then producer WorldC3M1FerryCrossingJ2 foo:0 -2.908
		    ApplyContext "SaidWorldC3M1FerryCrossing:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule WorldC3M1FerryCrossingJ3Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingJ3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC3M1FerryCrossingJ3Mechanic
		}
	},

	{
		Rule WorldC3M1FerryCrossingk3Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingk3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC3M1FerryCrossingk3Mechanic
		}
	},

	{
		Rule WorldC3M1FerryCrossingL3Trevor
		{
		    criteria ConceptWorldC3M1FerryCrossingL3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC3M1FerryCrossingL3Mechanic
		    then coach WorldC3M1FerryCrossingD01 foo:0 0.1
		}
	},

	{
		Rule C3M2DisgustTrevor
		{
		    criteria Conceptc3m2disgust IsTrevor NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M2DisgustMechanic
		    ApplyContext "Talk:1:1.803"
		    applycontexttoworld
		}
	},

	{
		Rule C3M2SafeRooma2Trevor
		{
		    criteria ConceptC3M2SafeRooma2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M2SafeRooma2Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C3M2SafeRoomb3Trevor
		{
		    criteria ConceptC3M2SafeRoomb3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M2SafeRoomb3Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule InfoRemc3m2_parachutist1Trevor
		{
		    criteria ConceptRemark IsTrevor Isc3m2_parachutist IsNotSaidc3m2_parachutist IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 10
		    Response InfoRemc3m2_parachutist1Mechanic
		    then coach InfoRemc3m2_parachutist2 foo:0 -1.466
		    ApplyContext "Saidc3m2_parachutist:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_InfoRemc3m2_parachutist1Trevor
		{
		    criteria ConceptRemark IsTrevor Isc3m2_parachutist IsNotSaidc3m2_parachutist IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "Saidc3m2_parachutist:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule InfoRemC3M2Bathtub2Trevor
		{
		    criteria ConceptInfoRemC3M2Bathtub2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response InfoRemC3M2Bathtub2Mechanic
		    then producer InfoRemC3M2Bathtub3 foo:0 -1.559
		    ApplyContext "Talk:1:1.659"
		    applycontexttoworld
		}
	},

	{
		Rule _C3M2Pirogue2Trevor
		{
		    criteria Concept_C3M2Pirogue2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C3M2Pirogue2Mechanic
		    then any _C3M2Pirogue2 foo:0 0.1
		    ApplyContext "Talk:1:1.750"
		    applycontexttoworld
		}
	},

	{
		Rule C3M3SafeRoomTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat Ismapc3m3_shantytown IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response C3M3SafeRoomMechanic
		    then coach C3M3SafeRoom2b2 foo:0 .05
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C3M3SafeRoom2a2Trevor
		{
		    criteria ConceptC3M3SafeRoom2a2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M3SafeRoom2a2Mechanic
		    then producer C3M3SafeRoom2a3 foo:0 .05
		}
	},

	{
		Rule C3M3SafeRoom2c3Trevor
		{
		    criteria ConceptC3M3SafeRoom2c3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M3SafeRoom2c3Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C3M3SafeRoom2d2Trevor
		{
		    criteria ConceptC3M3SafeRoom2d2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M3SafeRoom2d2Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule InfoRemC3M3Bodies2Trevor
		{
		    criteria ConceptInfoRemC3M3Bodies2 IsTrevor IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response InfoRemC3M3Bodies2Mechanic
		    then producer InfoRemC3M3Bodies3 foo:0 -1.429
		}
	},

	{
		Rule InfoRemC3M3LowerGateaTrevor
		{
		    criteria ConceptInfoRemC3M3LowerGatea IsTrevor IsNotSaidC3M3BridgeButton IntensityUnder25 AutoIsNotScavenge AutoIsNotSurvival
		    Response InfoRemC3M3LowerGateaMechanic
		}
	},

	{
		Rule InfoRemC3M3Unsanitarya1Trevor
		{
		    criteria ConceptInfoRemC3M3Unsanitarya1 IsTrevor IssuerClose ChanceToFire30Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response InfoRemC3M3Unsanitarya1Mechanic
		    then gambler InfoRemC3M3Unsanitarya2 foo:0 -3.766
		}
	},

	{
		Rule C3M4BoatNagsTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor IsNotCoughing ismapc3m4_plantation IsNotIncapacitated IsRunning IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C3M4BoatNagsMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C3M4InBoatNagsTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor IsNotCoughing ismapc3m4_plantation IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C3M4InBoatNagsMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C3M4Button1ATrevor
		{
		    criteria ConceptC3M4Button1A IsTrevor FromIsAnOrator _auto_IsTalkingTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M4Button1AMechanic
		    then orator C3M4Button101 foo:0 0.3
		}
	},

	{
		Rule C3M4ButtonPickUsUpTrevor
		{
		    criteria ConceptC3M4ButtonPickUsUp IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response C3M4ButtonPickUsUpMechanic
		    then orator C3M4ButtonHowMany foo:0 0.3
		}
	},

	{
		Rule C3M4ButtonNameTrevor
		{
		    criteria ConceptC3M4ButtonName IsTrevor FromIsAnOrator _auto_IsTalkingTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response C3M4ButtonNameMechanic
		    then orator C3M4ButtonHowMany foo:0 0.1
		}
	},

	{
		Rule C3M4HowManyAnswerTrevor
		{
		    criteria ConceptC3M4ButtonHowManyAnswer IsTrevor FromIsAnOrator IsEveryoneAlive _auto_IsTalkingTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response C3M4HowManyAnswerMechanic
		    then orator C3M4Button102 foo:0 0.1
		}
	},

	{
		Rule C3M4HowManyAnswerNot4Trevor
		{
		    criteria ConceptC3M4ButtonHowManyAnswer IsTrevor FromIsAnOrator IsEveryoneNotAlive _auto_IsTalkingTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response C3M4HowManyAnswerNot4Mechanic
		    then orator C3M4Button102 foo:0 0.1
		}
	},

	{
		Rule C3M4Button201Trevor
		{
		    criteria ConceptC3M4Button201 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingTrevor
		    Response C3M4Button201Mechanic
		    then orator C3M4Button202 foo:0 0.01
		    ApplyContext "Talk:1:2.509"
		    applycontexttoworld
		}
	},

	{
		Rule C3M4Button202Trevor
		{
		    criteria ConceptC3M4Button202 FromIsAnOrator _auto_IsTalkingTrevor IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M4Button202Mechanic
		    then orator C3M4Button201 foo:0 0.01
		    ApplyContext "Talk:1:3.424"
		    applycontexttoworld
		}
	},

	{
		Rule C3M4Button203Trevor
		{
		    criteria ConceptC3M4Button203 IsTrevor FromIsAnOrator _auto_IsTalkingTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M4Button203Mechanic
		}
	},

	{
		Rule C3M4ReloadingTankTrevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkTrevor ismapc3m4_plantation _auto_IsFinaleStarted
		    Response C3M4ReloadingTankMechanic
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerKillTankConfirmationC3M4Trevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor IsTalk IsTalkTrevor SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsWorldTalkTrevor ismapc3m4_plantation IsNotSpeakingWeight0 _auto_IsFinaleStarted
		    Response PlayerKillTankConfirmationC3M4Mechanic
		    ApplyContext "SaidTankDead:1:60,TalkTrevor:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule C3M4GateBlow01Trevor
		{
		    criteria ConceptC3M4GateBlow01 IsTrevor FromIsAnOrator IsTalk AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M4GateBlow01Mechanic
		    then orator C3M4GateBlow02 foo:0 0.01
		    ApplyContext "_auto_TimerLockA:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule C4StormBlindIdleTrevor
		{
		    criteria ConceptTalkIdle IsTrevor ChanceToFire30Percent IsNotIncapacitated _auto_NotTimerLockA _auto_IsTimerA _auto_NotC4TrevorInCover IsNotSpeakingWeight0
		    Response C4StormBlindIdleMechanic
		    ApplyContext "_auto_TimerA:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4M2IdleWitchville01Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsWitchClass IsSurvivor ismap_c4m2_sugarmill_a IsNotSpeaking IsNotAlone IsClosestSurvivorNear1200 IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor NotInCombat IsWorldTalkTrevor NotSaidLotsOfWitches IsNotSaidSafeSpotAhead _auto_IsTrevorInWitchville
		    Response C4M2IdleWitchville01Mechanic
		    then any _c4m2_Witchville05 foo:0 0.01
		    ApplyContext "SaidWitchWarn:1:20,WarnHeardWitch:1:300,SaidLotsOfWitches:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule C4M2IdleWitchville02Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsWitchClass IsSurvivor ismap_c4m2_sugarmill_a IsNotSpeaking IsGamblerAlive IsTrevor IsNotIncapacitated IsTalkTrevor NotInCombat IsWorldTalkTrevor IsGamblerNear400 ChanceToFire10Percent NotSaidLotsOfWitches IsNotSaidSafeSpotAhead _auto_IsTrevorInWitchville
		    Response C4M2IdleWitchville02Mechanic
		    then gambler _c4m2_Witchville01 foo:0 0.01
		    ApplyContext "SaidWitchWarn:1:20,WarnHeardWitch:1:300,SaidLotsOfWitches:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule C4M2PushedButtonTrevor
		{
		    criteria Conceptc4m2_elevator_top_button IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C4M2PushedButtonMechanic
		    ApplyContext "SaidActivatedC4M2Elevator:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4M5BoatNagsTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor Isc4m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C4M5BoatNagsMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C4M5InBoatNagsTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor Isc4m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C4M5InBoatNagsMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C5M1_intro002Trevor
		{
		    criteria ConceptC5M1_intro002 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro002Mechanic
		    then orator C5M1_intro003 foo:0 0.01
		}
	},

	{
		Rule C5M1_intro004Trevor
		{
		    criteria ConceptC5M1_intro004 IsTrevor IsEveryoneAlive AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro004Mechanic
		    then coach C5M1_intro008 foo:0 0.01
		}
	},

	{
		Rule C5M1_intro005Trevor
		{
		    criteria ConceptC5M1_intro005 IsTrevor IsEveryoneAlive AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro005Mechanic
		    then coach C5M1_intro008 foo:0 0.01
		}
	},

	{
		Rule C5M1_intro007Trevor
		{
		    criteria ConceptC5M1_intro007 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro007Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C5M1_intro008Trevor
		{
		    criteria ConceptC5M1_intro008 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro008Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C5M1_intro009Trevor
		{
		    criteria ConceptC5M1_intro009 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro009Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C5M1Flyby01Trevor
		{
		    criteria ConceptC5M1Flyby01 IsTrevor IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival ChanceToFire80Percent
		    Response C5M1Flyby01Mechanic
		    then any C5M1Flyby02 foo:0 0.1
		}
	},

	{
		Rule C5M2AlarmNagTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsMapc5m2_park AutoIsNotScavenge AutoIsNotSurvival ChanceToFire80Percent _auto_IsAlarm _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C5M2AlarmNagMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:13"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC502HorseTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC502Horse IsNotSaidWorldC502Horse IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear600 ChanceToFire50Percent IsWorldTalkTrevor IsNotScavenge AutoIsNotSurvival TimeSinceGroupInCombat02 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC502HorseMechanic
		    then Gambler WorldC502Horse2 foo:0 -2.947
		    ApplyContext "SaidWorldC502Horse:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkWorldC502HorseTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC502Horse IsNotSaidWorldC502Horse IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear600 IsWorldTalkTrevor IsNotScavenge AutoIsNotSurvival TimeSinceGroupInCombat02 IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "SaidWorldC502Horse:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC502Horse3Trevor
		{
		    criteria ConceptWorldC502Horse3 IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor IsNotScavenge TimeSinceGroupInCombat02
		    Response PlayerRemarkWorldC502Horse3Mechanic
		}
	},

	{
		Rule C5M3AlarmFieldNagsTrevor
		{
		    criteria ConceptTalkIdle IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery NotInCombat IsNotCoughing IsTalk _auto_IsInAlarmField _auto_NotTimerLockA _auto_NotAlarmFieldOn IsNotSpeakingWeight0
		    // 	forceweight 200
		    Response C5M3AlarmFieldNagsMechanic
		    then self C5M3AlarmFieldNags01 foo:0 0.2
		    ApplyContext "Talk:1:3.125,_auto_TimerLockA:1:12"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3AlarmFieldNags01Trevor
		{
		    criteria ConceptC5M3AlarmFieldNags01 IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival _auto_IsInAlarmField _auto_NotAlarmFieldOn
		    Response C5M3AlarmFieldNags01Mechanic
		}
	},

	{
		Rule C5M3AlarmFieldNags03Trevor
		{
		    criteria ConceptC5M3AlarmFieldNags03 IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3AlarmFieldNags03Mechanic
		}
	},

	{
		Rule C5M3AlarmFieldNags2Trevor
		{
		    criteria ConceptTalkIdle IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery NotInCombat IsNotCoughing IsTalk ChanceToFire10Percent IsGamblerAlive _auto_IsInAlarmField _auto_NotTimerLockA _auto_NotAlarmFieldOn IsNotSpeakingWeight0
		    // 	forceweight 300
		    Response C5M3AlarmFieldNags2Mechanic
		    then gambler C5M3AlarmFieldNags02 foo:0 0.2
		    ApplyContext "Talk:1:2.583,_auto_TimerLockA:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3Bodies01Trevor
		{
		    criteria ConceptC5M3Bodies01 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Bodies01Mechanic
		}
	},

	{
		Rule C5M3Bodies02Trevor
		{
		    criteria ConceptC5M3Bodies02 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Bodies01Mechanic
		}
	},

	{
		Rule C5M3FirstInAlarmTrevor
		{
		    criteria ConceptC5M3FirstInAlarmField IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3FirstInAlarmMechanic
		    ApplyContext "Saidremark_caralarm:1:0,Talk:1:2.675"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3GraveNagsTrevor
		{
		    criteria ConceptTalkIdle IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery NotInCombat IsNotCoughing IsTalk ChanceToFire10Percent IsNotAlone TimeSinceGroupInCombat02 IsNotSaidSafeSpotAhead IsGamblerAlive _auto_IsOffHighway IsNotSpeakingWeight0
		    Response C5M3GraveNagsMechanic
		    then self _C5M3GraveSmells foo:0 0.1
		    ApplyContext "Talk:1:2.810"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3GraveNagsNOFactTrevor
		{
		    criteria ConceptTalkIdle IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery NotInCombat IsNotCoughing IsTalk ChanceToFire10Percent IsNotAlone TimeSinceGroupInCombat02 IsNotSaidSafeSpotAhead IsGamblerAlive IsGamblerNear400 _auto_IsOffHighway _auto_NotSaidC5M3NewOrleansFact IsNotSpeakingWeight0
		    Response C5M3GraveNagsNOFactMechanic
		    then self C5M3GraveNags01 foo:0 0.4
		    ApplyContext "Talk:1:2.810,_auto_C5M3NewOrleansFact:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3GraveNags01Trevor
		{
		    criteria ConceptC5M3GraveNags01 IsTrevor NotInCombat IsNotCoughing IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3GraveNags01Mechanic
		    then any C5M3GraveNags02 foo:0 0.01
		    ApplyContext "Talk:1:2.810"
		    applycontexttoworld
		}
	},

	{
		Rule _C5M3GraveSmellsTrevor
		{
		    criteria Concept_C5M3GraveSmells IsTrevor NotInCombat IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		    Response _C5M3GraveSmellsMechanic
		    ApplyContext "Talk:1:0.950"
		    applycontexttoworld
		}
	},

	{
		Rule _C5M3SmallFavorsTrevor
		{
		    criteria Concept_C5M3SmallFavors IsTrevor AutoIsNotScavenge AutoIsNotSurvival NotInCombat IssuerClose IsNotCoughing IsTalk IsNotSpeakingWeight0
		    Response _C5M3SmallFavorsMechanic
		    ApplyContext "Talk:1:1.850"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3Jets2Trevor
		{
		    criteria Conceptc5m3Jets2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Jets2Mechanic
		    then self C5M3Jets3 foo:0 1
		    ApplyContext "Talk:1:3.709"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3Jets3Trevor
		{
		    criteria ConceptC5M3Jets3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Jets3Mechanic
		    then gambler C5M3StopZombies foo:0 0.1
		    ApplyContext "Talk:1:3.709"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3StopZombiesTrevor
		{
		    criteria ConceptC5M3StopZombies IsTrevor IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3StopZombiesMechanic
		}
	},

	{
		Rule C5M3OnBridgeTrevor
		{
		    criteria Conceptc5m3OnBridge IsTrevor IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "Talk:1:1.267,_auto_AlarmFieldOn:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3SeeGraveyard01Trevor
		{
		    criteria ConceptC5M3SeeGraveyard01 IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3SeeGraveyard01Mechanic
		    then self C5M3SeeGraveyard03 foo:0 1.0
		    ApplyContext "Talk:1:2.855"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3SeeGraveyard04Trevor
		{
		    criteria ConceptC5M3SeeGraveyard04 IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3SeeGraveyard04Mechanic
		    ApplyContext "Talk:1:3.887"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3SeeGraveyard03Trevor
		{
		    criteria ConceptC5M3SeeGraveyard03 IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3SeeGraveyard03Mechanic
		    then gambler C5M3SeeGraveyard05 foo:0 0.01
		    ApplyContext "Talk:1:3.887"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3SeeGraveyard06Trevor
		{
		    criteria ConceptC5M3SeeGraveyard06 IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3SeeGraveyard06Mechanic
		    ApplyContext "Talk:1:4.504"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3ShootCarTrevor
		{
		    criteria ConceptPanicEvent IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsTrevor IsCarAlarm _auto_IsInAlarmField _auto_NotAlarmFieldOn
		    Response C5M3ShootCarMechanic
		    ApplyContext "_auto_AlarmFieldOn:1:0,_auto_TimerLockA:1:1.5,WarnMegaMob:1:300"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3ShootCarNotTrevor
		{
		    criteria ConceptPanicEvent IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsNotTrevor IsCarAlarm ChanceToFire25Percent _auto_IsInAlarmField _auto_NotAlarmFieldOn
		    // 	forceweight 500
		    Response C5M3ShootCarNotMechanic
		    ApplyContext "_auto_AlarmFieldOn:1:0,_auto_TimerLockA:1:3,WarnMegaMob:1:300"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3ShootCar2Trevor
		{
		    criteria ConceptPanicEvent IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsNotTrevor IsCarAlarm ChanceToFire25Percent _auto_ShotSecondCar _auto_IsInAlarmField _auto_IsAlarmFieldOn _auto_NotTimerLockA
		    Response C5M3ShootCar2Mechanic
		    ApplyContext "_auto_ShotCar:++1,_auto_TimerLockA:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3ShootCar3Trevor
		{
		    criteria ConceptPanicEvent IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsNotTrevor IsCarAlarm ChanceToFire25Percent IsNotSpeaking _auto_IsInAlarmField _auto_IsAlarmFieldOn _auto_ShotThirdCar _auto_NotTimerLockA
		    Response C5M3ShootCar3Mechanic
		    ApplyContext "Talk:1:1.931,_auto_ShotCar:++1"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3ShootCar3SelfTrevor
		{
		    criteria ConceptPanicEvent IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsTrevor IsCarAlarm ChanceToFire25Percent IsNotSpeaking _auto_IsInAlarmField _auto_IsAlarmFieldOn _auto_ShotThirdCar _auto_NotTimerLockA
		    Response C5M3ShootCar3SelfMechanic
		    ApplyContext "Talk:1:1.931,_auto_ShotCar:++1"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3Sniper01Trevor
		{
		    criteria ConceptC5M3Sniper01 IsTrevor IsNotCoughing NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Sniper01Mechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3bodiesTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3bodies NotInCombat IsSubjectNear100 IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3bodiesMechanic
		    then any WorldC502NotZombies2 foo:0 0.1
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m2peopleTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m2people IsNotSaidc5m2people IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m2peopleMechanic
		    ApplyContext "Saidc5m2people:1:0,Talk:1:1.850"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkc5m2peopleTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m2people IsNotSaidc5m2people IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "Saidc5m2people:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3BeenShotTrevor
		{
		    criteria ConceptC5M3BeenShot IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3BeenShotMechanic
		}
	},

	{
		Rule PlayerRemarkc5m3crashedheliTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3crashedheli IsNotSaidc5m3crashedheli IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3crashedheliMechanic
		    ApplyContext "Saidc5m3crashedheli:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3insewerTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3insewer IsNotSaidc5m3insewer IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear250 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3insewerMechanic
		    ApplyContext "Saidc5m3insewer:1:0,_auto_InSewer:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3safezoneTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3safezone NotInCombat IsSubjectNear150 IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3safezoneMechanic
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3manholeTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3manhole IsNotSaidc5m3manhole IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_NotInSewer IsNotSpeakingWeight0
		    // 	forceweight 100
		    Response PlayerRemarkc5m3manholeMechanic
		    then any TrevorInterrupt foo:0 -11.59
		    ApplyContext "Saidc5m3manhole:1:0,Talk:1:12,_auto_TellingStory:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3offhighwayTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3offhighway IsNotSaidc5m3offhighway IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3offhighwayMechanic
		    ApplyContext "Saidc5m3offhighway:1:0,_auto_OffHighway:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3seegraveyardTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3seegraveyard IsNotSaidc5m3seegraveyard IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotAlone _auto_IsBridgeBomb _auto_NotTimerLockA _auto_NotOffHighway IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3seegraveyardMechanic
		    then self C5M3SeeGraveyard04 foo:0 0.1
		    ApplyContext "Saidc5m3seegraveyard:1:0,Talk:1:2.855"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3seegraveyardEllisTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3seegraveyard IsNotSaidc5m3seegraveyard IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotAlone _auto_IsBridgeBomb _auto_NotTimerLockA _auto_NotOffHighway IsNotSpeakingWeight0 _auto_C5M3TrevorReacted
		    Response PlayerRemarkc5m3seegraveyardEllisMechanic
		    ApplyContext "Saidc5m3seegraveyard:1:0,Talk:1:2.855"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3upladderTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3upladder IsNotSaidc5m3upladder IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3upladderMechanic
		    ApplyContext "Saidc5m3upladder:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m3upstepsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m3upsteps IsNotSaidc5m3upsteps IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3upstepsMechanic
		    ApplyContext "Saidc5m3upsteps:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4BombExtTrevor
		{
		    criteria ConceptC5M4BombExt IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M4BombExtMechanic
		    ApplyContext "Talk:1:3.411"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4BombInt01Trevor
		{
		    criteria ConceptC5M4BombInt IsTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NoAirstrikes
		    Response C5M4BombInt01Mechanic
		    then any C5M4BombIntA foo:0 0.01
		    ApplyContext "_auto_Airstrike:++1"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4BombIntATrevor
		{
		    criteria ConceptC5M4BombIntA IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M4BombIntAMechanic
		}
	},

	{
		Rule C5M4BombInt02Trevor
		{
		    criteria ConceptC5M4BombInt IsTrevor NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_FirstAirstrike
		    Response C5M4BombInt02Mechanic
		    ApplyContext "Talk:1:1.534,_auto_Airstrike:++1"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4BombInt03Trevor
		{
		    criteria ConceptC5M4BombInt IsTrevor NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_SecondAirstrike
		    Response C5M4BombInt03Mechanic
		    ApplyContext "Talk:1:1.990,_auto_Airstrike:++1"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4BombIntManyTrevor
		{
		    criteria ConceptC5M4BombInt IsTrevor NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_ManyAirstrikes
		    Response C5M4BombInt03Mechanic
		    ApplyContext "Talk:1:1.990,_auto_Airstrike:++1"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4JetPlanesTrevor
		{
		    criteria ConceptC5M4JetPlanes IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea
		    Response C5M4JetPlanesMechanic
		    then Gambler C5M4JetPlanes foo:0 0.01
		}
	},

	{
		Rule PlayerRemarkc5m4alleyTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m4alley IsNotSaidc5m4alley IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4alleyMechanic
		    ApplyContext "Saidc5m4alley:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4PoolTableTrevor
		{
		    criteria ConceptC5M4PoolTable IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response C5M4PoolTableMechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4PoolTableRoTrevor
		{
		    criteria ConceptC5M4PoolTable IsTrevor IsNotCoughing IssuerClose IsProducerAlive IsProducerNear400 ChanceToFire40Percent IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response C5M4PoolTableRoMechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m4inminifinaleTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m4inminifinale IsNotSaidc5m4inminifinale IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4inminifinaleMechanic
		    ApplyContext "Saidc5m4inminifinale:1:0,_auto_InMiniFinale:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m4seebridgeTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m4seebridge IsNotSaidc5m4seebridge IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4seebridgeMechanic
		    ApplyContext "Saidc5m4seebridge:1:0,_auto_SawBridge:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc5m4tractornagTrevor
		{
		    criteria ConceptRemark IsTrevor Isc5m4tractornag IsNotSaidc5m4tractornag IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival _auto_NotTractorStarted IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4tractornagMechanic
		    ApplyContext "Saidc5m4tractornag:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4TractorTrevor
		{
		    criteria ConceptC5M4Tractor IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response C5M4TractorMechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5_Button2Trevor
		{
		    criteria ConceptC5M5_Button2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2Mechanic
		    then trevor C5M5_Button2200 foo:0 0.01
		    ApplyContext "_auto_BridgeNag:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5_GateDownTrevor
		{
		    criteria ConceptC5M5_GateDown IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_GateDownMechanic
		}
	},

	{
		Rule C5M5_Button2100Trevor
		{
		    criteria ConceptC5M5_Button2100 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2100Mechanic
		}
	},

	{
		Rule C5M5_Button2200Trevor
		{
		    criteria ConceptC5M5_Button2200 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2200Mechanic
		    then trevor C5M5_Button2201 foo:0 0.01
		}
	},

	{
		Rule C5M5_Button2201Trevor
		{
		    criteria ConceptC5M5_Button2201 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2201Mechanic
		    then trevor C5M5_Button2202 foo:0 0.3
		}
	},

	{
		Rule C5M5_Button2202Trevor
		{
		    criteria ConceptC5M5_Button2202 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2202Mechanic
		    then trevor C5M5_Button2203 foo:0 0.3
		}
	},

	{
		Rule C5M5_Button2203Trevor
		{
		    criteria ConceptC5M5_Button2203 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2203Mechanic
		    then trevor C5M5_Button2204 foo:0 0.3
		}
	},

	{
		Rule C5M5_Button2204Trevor
		{
		    criteria ConceptC5M5_Button2204 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2204Mechanic
		    then trevor C5M5_Button2205 foo:0 0.2
		}
	},

	{
		Rule C5M5_Button2205Trevor
		{
		    criteria ConceptC5M5_Button2205 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2205Mechanic
		    then self C5M5_Button2206 foo:0 0.2
		}
	},

	{
		Rule C5M5_Button2206Trevor
		{
		    criteria ConceptC5M5_Button2206 IsTrevor IsProducerAlive AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2206Mechanic
		    then producer C5M5_Button2207 foo:0 0.2
		}
	},

	{
		Rule C5M5_SurvivorConv01Trevor
		{
		    criteria ConceptC5M5_SurvivorConv01 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingTrevor _auto_NotButton2
		    Response C5M5_SurvivorConv01Mechanic
		    then orator C5M5_Soldier1Conv03 foo:0 0.01
		}
	},

	{
		Rule C5M5_SurvivorConv01BombTrevor
		{
		    criteria ConceptC5M5_SurvivorConv01 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsBuzzardRunMentioned _auto_IsTalkingTrevor _auto_NotButton2
		    Response C5M5_SurvivorConv01BombMechanic
		    then orator C5M5_Soldier1Conv03 foo:0 0.01
		}
	},

	{
		Rule C5M5_SurvivorConv02Trevor
		{
		    criteria ConceptC5M5_SurvivorConv02 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingTrevor _auto_NotButton2
		    Response C5M5_SurvivorConv02Mechanic
		    then orator C5M5_Soldier1Conv04 foo:0 0.01
		}
	},

	{
		Rule C5M5_SurvivorConv03Trevor
		{
		    criteria ConceptC5M5_SurvivorConv03 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingTrevor _auto_NotButton2
		    Response C5M5_SurvivorConv03Mechanic
		    then orator C5M5_Soldier1Conv05 foo:0 0.01
		}
	},

	{
		Rule C5M5_SurvivorConv04Trevor
		{
		    criteria ConceptC5M5_SurvivorConv04 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingTrevor _auto_NotButton2
		    Response C5M5_SurvivorConv04Mechanic
		    then orator C5M5_Soldier1Conv08 foo:0 0.01
		}
	},

	{
		Rule C5M5_SurvivorConv05Trevor
		{
		    criteria ConceptC5M5_SurvivorConv05 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingTrevor _auto_NotButton2
		    Response C5M5_SurvivorConv05Mechanic
		    then orator C5M5_Soldier1Conv08 foo:0 0.01
		}
	},

	{
		Rule C5M5_LowerTheBridgeTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsMapc5m5_bridge ChanceToFire90Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotTimerLockA _auto_NotTimerLockTrevor _auto_IsBridgeNag IsNotSpeakingWeight0
		    Response C5M5_LowerTheBridgeMechanic
		    ApplyContext "_auto_TimerLockA:1:30,_auto_TimerLockTrevor:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5Button1Trevor
		{
		    criteria ConceptC5M5Button1 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingTrevor _auto_NotButton2
		    Response C5M5Button1Mechanic
		    then Orator C5M5_Soldier1Conv01 foo:0 0.01
		}
	},

	{
		Rule C5M5Button1BuzzardRunTrevor
		{
		    criteria ConceptC5M5Button1 IsTrevor FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingTrevor _auto_IsBuzzardRunMentioned _auto_NotButton2
		    Response C5M5Button1BuzzardRunMechanic
		    then Orator C5M5_Soldier1Conv01 foo:0 0.01
		}
	},

	{
		Rule C5M5HearSoldiersNagTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsMapc5m5_bridge ChanceToFire90Percent AutoIsNotScavenge AutoIsNotSurvival _auto_IsSoldierChatter _auto_NotButton1 _auto_IsRadioNag _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C5M5HearSoldiersNagMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5HearSoldiersNagBuzzardTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsMapc5m5_bridge ChanceToFire90Percent AutoIsNotScavenge AutoIsNotSurvival _auto_IsBuzzardRunMentioned _auto_IsSoldierChatter _auto_NotButton1 _auto_IsRadioNag _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C5M5HearSoldiersNagBuzzardMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5LeaveSafeTrevor
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsTrevor IsMapc5m5_bridge IsNotSaidLeavingSafeArea
		    Response C5M5LeaveSafeMechanic
		    then orator C5M5_Soldier1 foo:0 0.01
		    ApplyContext "Talk:0:0,SaidLeavingSafeArea:1:0,_auto_TimerLockA:1:5,_auto_SoldierChatter:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5RescueStartTrevor
		{
		    criteria ConceptFinalVehicleSpotted IsTrevor IsMapc5m5_bridge _auto_IsFinaleStarted
		    Response C5M5RescueStartMechanic
		    then orator_chopper C5M5SoldierHeliNag foo:0 0.01
		    ApplyContext "_auto_Finale:2:0,_auto_TimerLockA:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5SurvivorVocalizeLookOutTrevor
		{
		    criteria ConceptPlayerLookOut IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsMapc5m5_bridge _auto_IsFinaleStarted
		    Response C5M5SurvivorVocalizeLookOutMechanic
		}
	},

	{
		Rule C5M5SpottedTankTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsMapc5m5_bridge _auto_IsFinaleStarted
		    Response C5M5SpottedTankMechanic
		    ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5ReloadingTankTrevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkTrevor IsMapc5m5_bridge _auto_IsFinaleStarted
		    Response C5M5ReloadingTankMechanic
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerKillTankConfirmationC5M5Trevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor IsTalk IsTalkTrevor SubjectIsTank IsNotAlone IsNotIncapacitated IsWorldTalkTrevor IsMapc5m5_bridge IsNotSurvival
		    Response PlayerKillTankConfirmationC5M5Mechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule C5M5RunToHeliTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor IsMapc5m5_bridge IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C5M5RunToHeliMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5InsideHeliTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor IsMapc5m5_bridge IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C5M5InsideHeliMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5BridgeDestroyed2Trevor
		{
		    criteria ConceptC5M5BridgeDestroyed2 IsTrevor IsNotIncapacitated IsEveryoneAlive CanSpeakC5M5SurvivorOutro
		    Response C5M5BridgeDestroyed2Mechanic
		}
	},

	{
		Rule C5M5SafeRoomTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat IsMapc5m5_bridge IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response C5M5SafeRoomMechanic
		    then gambler C5M5_saferoom001 foo:0 0.1
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5_saferoom002Trevor
		{
		    criteria ConceptC5M5_saferoom002 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_saferoom002Mechanic
		    then gambler C5M5_saferoom004 foo:0 0.01
		}
	},

	{
		Rule C5M5_saferoom004Trevor
		{
		    criteria ConceptC5M5_saferoom004 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_saferoom004Mechanic
		}
	},

	{
		Rule C6M1_IntotheparkNoHealthTrevor
		{
		    criteria ConceptC6M1_IntotheparkNoHealth IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1_IntotheparkNoHealthMechanic
		}
	},

	{
		Rule C6M1Intro_01aTrevor
		{
		    criteria ConceptC6M1Intro_01a IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_01aMechanic
		    then Biker C6M1Intro_01b foo:0 -6.365
		}
	},

	{
		Rule C6M1Intro_01Biker02Trevor
		{
		    criteria ConceptintroC6M1 IsTrevor IsFrancisIntroActor IsNotSaidCXM1Intro IsNotVersus ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival
		    // 	forceweight 1
		    Response C6M1Intro_01Biker02Mechanic
		    then Biker C6M1Intro_24b foo:0 -12.798
		    ApplyContext "CXM1Intro:1:0,Talk:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1Intro_01cTrevor
		{
		    criteria ConceptC6M1Intro_01c IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_01cMechanic
		    then Biker C6M1Intro_01d foo:0 -0.982
		}
	},

	{
		Rule C6M1Intro_01TeenGirl04Trevor
		{
		    criteria ConceptintroC6M1 IsTrevor IsZoeyIntroActor IsNotSaidCXM1Intro IsNotVersus ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival
		    // 	forceweight 1
		    Response C6M1Intro_01TeenGirl04Mechanic
		    then TeenGirl C6M1Intro_23a foo:0 -2.512
		    ApplyContext "CXM1Intro:1:0,Talk:1:0,TrevorInLoveC6M1:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1Intro_02aTrevor
		{
		    criteria ConceptC6M1Intro_02a IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_02aMechanic
		    then Biker C6M1Intro_02b foo:0 -4.221
		}
	},

	{
		Rule C6M1Intro_11aTrevor
		{
		    criteria ConceptC6M1Intro_11a IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_11aMechanic
		    then TeenGirl C6M1Intro_11b foo:0 -5.419
		}
	},

	{
		Rule C6M1Intro_11cTrevor
		{
		    criteria ConceptC6M1Intro_11c IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_11cMechanic
		    then Any WorldC6M1_HistoricTour foo:0 1
		}
	},

	{
		Rule C6M1Intro_11cGamblerTrevor
		{
		    criteria ConceptC6M1Intro_11c IsTrevor IsGamblerAlive ChanceToFire10Percent IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_11cGamblerMechanic
		    then Gambler C6M1Intro_11d foo:0 -13.161
		}
	},

	{
		Rule C6M1Intro_12bTrevor
		{
		    criteria ConceptC6M1Intro_12b IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_12bMechanic
		    then Producer C6M1Intro_12c foo:0 -4.691
		}
	},

	{
		Rule C6M1Intro_13aTrevor
		{
		    criteria ConceptC6M1Intro_13a IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_13aMechanic
		    then Coach C6M1Intro_13b foo:0 -14.217
		}
	},

	{
		Rule C6M1Intro_13cTrevor
		{
		    criteria ConceptC6M1Intro_13c IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_13cMechanic
		    then TeenGirl C6M1Intro_13d foo:0 -3.537
		}
	},

	{
		Rule C6M1Intro_13fTrevor
		{
		    criteria ConceptC6M1Intro_13f IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_13fMechanic
		}
	},

	{
		Rule C6M1Intro_23bTrevor
		{
		    criteria ConceptC6M1Intro_23b IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_23bMechanic
		    then TeenGirl C6M1Intro_23c foo:0 -7.488
		}
	},

	{
		Rule C6M1Intro_23dTrevor
		{
		    criteria ConceptC6M1Intro_23d IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_23dMechanic
		    then Any WorldC6M1_HistoricTour foo:0 -4.369
		}
	},

	{
		Rule C6M1Intro_24cTrevor
		{
		    criteria ConceptC6M1Intro_24c IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_24cMechanic
		    then Biker C6M1Intro_24d foo:0 -2.841
		}
	},

	{
		Rule C6M1Intro_24eTrevor
		{
		    criteria ConceptC6M1Intro_24e IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_24eMechanic
		}
	},

	{
		Rule C6M1Intro_ConfirmObjectiveTrevor
		{
		    criteria ConceptC6M1Intro_ConfirmObjective IsTrevor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_ConfirmObjectiveMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule LeavingC6M1StartTrevor
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsNotSaidLeavingSafeArea IsTrevor IsNotAlone YesHasFirstAidKit isc6m1_riverbank AutoIsNotScavenge AutoIsNotSurvival IsNotSpeaking
		    Response LeavingC6M1StartMechanic
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule LeavingC6M1StartnoHealthTrevor
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsNotSaidLeavingSafeArea IsTrevor IsNotAlone NoHasFirstAidKit isc6m1_riverbank AutoIsNotScavenge AutoIsNotSurvival
		    Response LeavingC6M1StartnoHealthMechanic
		    then any C6M1_IntotheparkNoHealth foo:0 0.1
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1Start2Trevor
		{
		    criteria ConceptC6M1Start2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Start2Mechanic
		    then self C6M1Start3 foo:0 1
		}
	},

	{
		Rule C6M1Start3Trevor
		{
		    criteria ConceptC6M1Start3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Start3Mechanic
		    ApplyContext "Talk:1:4"
		    applycontexttoworld
		}
	},

	{
		Rule RemWorldC6M1_WeddingWarn02Trevor
		{
		    criteria ConceptRemWorldC6M1_WeddingWarn02 IsTrevor IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response RemWorldC6M1_WeddingWarn02Mechanic
		    ApplyContext "CoachCake:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule WorldC6M1_WeddingWarn03aTrevor
		{
		    criteria ConceptWorldC6M1_WeddingWarn03a IsTrevor IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M1_WeddingWarn03aMechanic
		    then Producer WorldC6M1_WeddingWarn03b foo:0 -0.799
		}
	},

	{
		Rule WorldC6M1_WeddingWarn03bTrevor
		{
		    criteria ConceptWorldC6M1_WeddingWarn03b IsTrevor IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M1_WeddingWarn03aMechanic
		    then Producer WorldC6M1_WeddingWarn03b foo:0 -0.799
		}
	},

	{
		Rule WorldC6M1_WeddingWarn03cTrevor
		{
		    criteria ConceptWorldC6M1_WeddingWarn03c IsTrevor IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M1_WeddingWarn03cMechanic
		}
	},

	{
		Rule WorldC6M1_WeddingWarn03dTrevor
		{
		    criteria ConceptWorldC6M1_WeddingWarn03d IsTrevor IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M1_WeddingWarn03dMechanic
		}
	},

	{
		Rule C6M2_OpenGate1Trevor
		{
		    criteria ConceptC6M2_OpenGate1 IsTrevor
		    Response C6M2_OpenGate1Mechanic
		    ApplyContext "SaidOpenedGate1:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2_OpenGate1bTrevor
		{
		    criteria ConceptC6M2_OpenGate1b IsTrevor
		    Response C6M2_OpenGate1bMechanic
		}
	},

	{
		Rule C6M2_OpenGate1BlameTrevor
		{
		    criteria ConceptC6M2_OpenGate1 IsTrevor IsGamblerNear400 ChanceToFire30Percent
		    Response C6M2_OpenGate1BlameMechanic
		    then Gambler C6M2_OpenGate1a foo:0 0.01
		    ApplyContext "SaidOpenedGate1:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30,SaidOpenedGate1BlameTrevor:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2_OpenGate2Trevor
		{
		    criteria ConceptC6M2_OpenGate2 IsTrevor
		    Response C6M2_OpenGate2Mechanic
		    ApplyContext "SaidOpenedGate2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2LeavingSafeRoomTrevor
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsTrevor IsNotSaidLeavingSafeArea isc6m2_bedlam AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M2LeavingSafeRoomMechanic
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo02aTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo02a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo02aMechanic
		    then Gambler DLC1_C6M2_SafeRoomConvo02b foo:0 -3.509
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvoProducerStartTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat Isc6m2_bedlam IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsProducerAlive ChanceToFire50Percent _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M2_SafeRoomConvoProducerStartMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo03a foo:0 -3.330
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo03bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo03b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo03bMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo03c foo:0 -16.180
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvoZoeyStartTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat Isc6m2_bedlam IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsZoeyIntroActor IsProducerAlive ChanceToFire50Percent _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M2_SafeRoomConvoZoeyStartMechanic
		    then Any DLC1_C6M2_SafeRoomConvo07a foo:0 -6.763
		    ApplyContext "_auto_SafeRoomStart:2:0,MentionedZoeyC6M2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo08Trevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat Isc6m2_bedlam IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M2_SafeRoomConvo08Mechanic
		    then Producer DLC1_C6M2_SafeRoomConvo15a foo:0 -4.114
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo11aTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo11a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo11aMechanic
		    then Gambler DLC1_C6M2_SafeRoomConvo11b foo:0 -4.069
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo14bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo14b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo14bMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo14c foo:0 -2.922
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo16bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo16b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo16bMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo16c foo:0 -1.763
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo16dRochelleTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo16d IsTrevor FromIsProducer AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo16dRochelleMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo16dCoachTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo16d IsTrevor FromIsCoach AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo16dCoachMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo17aTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo17a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo17aMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo17b foo:0 -7.751
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo18bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo18b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo18bMechanic
		    then Coach DLC1_C6M2_SafeRoomConvo18c foo:0 -2.705
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo19aTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo19a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo19aMechanic
		    then Coach DLC1_C6M2_SafeRoomConvo19b foo:0 -2.249
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo19cTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo19c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo19cMechanic
		    then Coach DLC1_C6M2_SafeRoomConvo19d foo:0 -6.193
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo19eTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo19e IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo19eMechanic
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo19gTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo19g IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo19gMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo21bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo21b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo21bMechanic
		}
	},

	{
		Rule WorldC6M2_FinalWater01bTrevor
		{
		    criteria ConceptWorldC6M2_FinalWater01b IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_FinalWater01bMechanic
		}
	},

	{
		Rule WorldC6M2_InSewer101aTrevor
		{
		    criteria ConceptWorldC6M2_InSewer101a IsTrevor IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_InSewer101aMechanic
		    then Gambler WorldC6M2_InSewer101c foo:0 -0.999
		}
	},

	{
		Rule WorldC6M2_OnTourWalk102bTrevor
		{
		    criteria ConceptWorldC6M2_OnTourWalk102b IsTrevor IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_OnTourWalk102bMechanic
		}
	},

	{
		Rule WorldC6M2_Tattoo03bTrevor
		{
		    criteria ConceptWorldC6M2_Tattoo03b IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_Tattoo03bMechanic
		}
	},

	{
		Rule C6M3_BridgeDownTrevor
		{
		    criteria ConceptC6M3_BridgeDown IsTrevor
		    Response C6M3_BridgeDownMechanic
		}
	},

	{
		Rule C6M3_BridgeGettoCarTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor Isc6m3_port IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C6M3_BridgeGettoCarMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_elevatorCancelTrevor
		{
		    criteria ConceptC6M3_ElevatorCancel IsTrevor IsC6M3_port AutoIsNotScavenge AutoIsNotSurvival
		    // 	forceweight 1
		    Response _PlayerInfoRemarkableBlankMechanic
		}
	},

	{
		Rule C6M3_elevatorTrevor
		{
		    criteria Conceptc6m3_elevator IsTrevor IsC6M3_port IsNotSaidC6M3Elevator AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M3_elevatorMechanic
		    ApplyContext "SaidC6M3Elevator:1:0,Talk:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_elevatorZoeyTrevor
		{
		    criteria Conceptc6m3_elevator IsTrevor IsC6M3_port IsNotSaidC6M3Elevator IsZoeyIntroActor IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M3_elevatorZoeyMechanic
		    ApplyContext "SaidC6M3Elevator:1:0,Talk:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_GivenItemBikerTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorBiker Isc6m3_port
		    Response C6M3_GivenItemBikerMechanic
		}
	},

	{
		Rule C6M3_GivenItemTeenGirlTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorTeenGirl Isc6m3_port
		    Response C6M3_GivenItemTeenGirlMechanic
		}
	},

	{
		Rule C6M3_GivenItemTeenGirlIntroTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorTeenGirl Isc6m3_port IsZoeyIntroActor
		    Response C6M3_GivenItemTeenGirlIntroMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo01aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo01a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo01aMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo01b foo:0 -7.373
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo01cTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo01c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo01cMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo02eTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo02e IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo02eMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo03aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo03a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo03aMechanic
		    then Gambler DLC1_C6M3_SafeRoomConvo03b foo:0 -1.144
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo03cTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo03c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo03cMechanic
		    then Gambler DLC1_C6M3_SafeRoomConvo03d foo:0 -1.799
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo04aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo04a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo04aMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo04b foo:0 -3.659
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo04dTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo04d IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo04dMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo05aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo05a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo05aMechanic
		    then Gambler DLC1_C6M3_SafeRoomConvo05b foo:0 -2.546
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvoFrancisStartTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat isC6m3_port IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsFrancisIntroActor IsProducerAlive _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M3_SafeRoomConvoFrancisStartMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo06a foo:0 -5.805
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo06bTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo06b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo06bMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo07aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo07a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo07aMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo07b foo:0 -2.804
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo07cTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo07c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo07cMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo08aMechanic
		    then Coach DLC1_C6M3_SafeRoomConvo08b foo:0 -1.669
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08cTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo08cMechanic
		    then Trevor DLC1_C6M3_SafeRoomConvo08d foo:0 -0.936
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08dTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08d IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo08dMechanic
		    then Trevor DLC1_C6M3_SafeRoomConvo08f foo:0 -1.479
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08eTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08e IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo08eMechanic
		    then Trevor DLC1_C6M3_SafeRoomConvo08f foo:0 -2.608
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08fTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08f IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo08fMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo08g foo:0 -5.514
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo09aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo09a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo09aMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo09b foo:0 -13.536
		}
	},

	{
		Rule IncapBounceTrevor
		{
		    criteria ConceptSurvivorIncapacitated IsTrevor IsNotSaidInCapBounce isC6m3_port
		    Response IncapBounceMechanic
		    then Biker InCapBounce2 foo:0 0
		    ApplyContext "SaidInCapBounce:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerCallForRescueTrevor
		{
		    criteria ConceptCallForRescue IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor HasNotCalledForRescue
		    Response PlayerCallForRescueMechanic
		    ApplyContext "CalledForRescue:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule C1M2EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismap_c1m2_streets IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C1M2EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -19.75
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C1M3EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismap_c1m3_mall IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C1M3EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -7.93
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C1M4EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismap_c1m4_atrium IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C1M4EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -12.29
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M2EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismap_c2m2 IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C2M2EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -13.43
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M3EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismap_c2m3 IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C2M3EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -15.02
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M4EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismap_c2m4 IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C2M4EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -10.17
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M5EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismap_c2m5 IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C2M5EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -14.33
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C3M2EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismapc3m2_swamp IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C3M2EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -13.34
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C3M3EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismapc3m3_shantytown IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C3M3EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -23.98
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C3M4EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismapc3m4_plantation IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C3M4EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -15.53
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4M2EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking ismap_c4m2_sugarmill_a IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C4M2EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -16.69
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4M3EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking isc4m3 IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C4M3EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -9.99
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4M4EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking isc4m4 IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C4M4EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -15.21
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M2EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking IsMapc5m2_park IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C5M2EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -8.54
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M3EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking IsMapc5m3_cemetery IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C5M3EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -3.46
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M4EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking IsMapc5m4_quarter IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C5M4EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -17.96
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C5M5EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking IsMapc5m5_bridge IsACoopMode ChanceToFire10Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    // 	forceweight 1
		    Response C5M5EllisStoryMechanic
		    then any TrevorInterrupt foo:0 -18.21
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2EllisStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea IsNotSaidLeavingSafeArea IsNotSpeaking isc6m2_bedlam IsACoopMode ChanceToFire20Percent IsNotSrcGrp_TREVORSTORY _auto_IsStoryWait _auto_NotStoryGate
		    Response C6M2EllisStoryMechanic
		    then any TrevorInterrupt foo:0 0.1
		    ApplyContext "_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2EllisStoryStart1Trevor
		{
		    criteria ConceptC6M2TrevorStoryStart1 IsTrevor _auto_NotDidInterrupt
		    Response C6M2EllisStoryStart1Mechanic
		    then any TrevorInterrupt foo:0 -26.93
		}
	},

	{
		Rule C6M3EllisBridgeStoryTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsNotSpeaking isc6m3_port IsACoopMode IsNotInStartArea ChanceToFire20Percent IsSaidFinaleExchange IsEndTrevorBridgeStoryStart IsNotSaidTrevorBridgeStoryStart IsNotSaidC6M3Elevator
		    // 	forceweight 1
		    Response C6M3EllisBridgeStoryMechanic
		    then any TrevorInterrupt foo:0 0.1
		    ApplyContext "Talk:1:0,_auto_TellingStory:1:0,SrcGrp_TREVORSTORY:1:0,SaidTrevorBridgeStoryStart:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3EllisBridgeStory1Trevor
		{
		    criteria ConceptC6M3TrevorBridgeStory1 IsTrevor IsNotSaidC6M3Elevator _auto_NotDidInterrupt
		    Response C6M3EllisBridgeStory1Mechanic
		    then self C6M3TrevorBridgeStory1a foo:0 -24.62
		}
	},

	{
		Rule C6M3EllisBridgeStory1aTrevor
		{
		    criteria ConceptC6M3TrevorBridgeStory1a IsTrevor IsNotSaidC6M3Elevator _auto_NotDidInterrupt
		    Response C6M3EllisBridgeStory1aMechanic
		    then any TrevorInterrupt foo:0 0.1
		}
	},

	{
		Rule EllisStoryReac01Trevor
		{
		    criteria ConceptTrevorStoryReac01 IsTrevor
		    Response EllisStoryReac01Mechanic
		}
	},

	{
		Rule EllisStoryReac01GoatTrevor
		{
		    criteria ConceptTrevorStoryReac01 IsTrevor ismap_c1m4_atrium
		    // 	forceweight 100
		    Response EllisStoryReac01GoatMechanic
		}
	},

	{
		Rule c6m3_outroTrevor
		{
		    criteria Conceptc6m3_outro3 IsTrevor isC6m3_port IsNotVersus IsNotIncapacitated ChanceToFire100Percent FromIsBiker
		    // 	forceweight 1
		    Response c6m3_outroMechanic
		}
	},

	{
		Rule c6m3_outroZoeyOutroTrevor
		{
		    criteria Conceptc6m3_outro3 IsTrevor isC6m3_port IsZoeyIntroActor IsNotVersus IsNotIncapacitated ChanceToFire100Percent FromIsBiker
		    // 	forceweight 2
		    Response c6m3_outroZoeyOutroMechanic
		    then gambler c6m3_outroL4D1011a foo:0 0.1
		}
	},

	{
		Rule c6m3_outroRochelleOutroTrevor
		{
		    criteria Conceptc6m3_outroL4D1012a IsTrevor IsNotIncapacitated FromIsProducer
		    Response c6m3_outroRochelleOutroMechanic
		}
	},

	{
		Rule SurvivorSpotFirstWeaponsTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotPickedUpFirstAidKit ismap_c1m1_hotel IsNotSaidFirstWeapon IsNotSaidWorldC1M1First IsWorldTalkTrevor
		    Response SurvivorSpotFirstWeaponsMechanic
		    ApplyContext "SaidFirstWeapon:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAdrenalineTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsAdrenaline IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedAdrenalineMechanic
		    ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAdrenalineAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotAdrenaline IsNotSaidSpot IsAdrenaline IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedAdrenalineMechanic
		    ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAmmoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsAmmo IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedAmmoMechanic
		    ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAmmoAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsAmmo IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotAmmo IsNotSaidSpot IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedAmmoMechanic
		    ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAmmo2Trevor
		{
		    criteria ConceptPlayerSpotAmmo IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotInSafeSpot IsNotAlone IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedAmmo2Mechanic
		}
	},

	{
		Rule SurvivorSpottedCoachCloseTrevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedCoachCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedCoachClose2Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedCoachCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedCoachClose2C1Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response SurvivorSpottedCoachClose2C1Mechanic
		}
	},

	{
		Rule SurvivorSpottedCoachCloseC1Trevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response SurvivorSpottedCoachClose2C1Mechanic
		}
	},

	{
		Rule SurvivorSpottedCoachFarTrevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsCoach IsCoachFar400 IsWorldTalkTrevor
		    Response SurvivorSpottedCoachFarMechanic
		}
	},

	{
		Rule SurvivorSpottedDefibrillatorTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsDefibrillator IsWorldTalkTrevor
		    Response SurvivorSpottedDefibrillatorMechanic
		    ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedDefibrillatorAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidDefibrillator IsNotSaidSpot IsDefibrillator IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response SurvivorSpottedDefibrillatorMechanic
		    ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGamblerCloseTrevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsGambler IsGamblerNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedGamblerCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedGamblerClose2Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsGambler IsGamblerNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedGamblerClose2Mechanic
		}
	},

	{
		Rule SurvivorSpottedGamblerClose2C1Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsGambler IsGamblerNear400 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response SurvivorSpottedGamblerClose2C1Mechanic
		}
	},

	{
		Rule SurvivorSpottedGamblerCloseC1Trevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsGambler IsGamblerNear400 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response SurvivorSpottedGamblerClose2C1Mechanic
		}
	},

	{
		Rule SurvivorSpottedGamblerFarTrevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsGambler IsGamblerFar400 IsWorldTalkTrevor
		    Response SurvivorSpottedGamblerFarMechanic
		}
	},

	{
		Rule SurvivorSpottedGamblerFarC1Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsGambler IsGamblerFar400 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response SurvivorSpottedGamblerFarC1Mechanic
		}
	},

	{
		Rule SurvivorSpottedGrenadeTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsPipeBomb IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedGrenadeMechanic
		    ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGrenadeAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotGrenade IsNotSaidSpot IsPipeBomb IsWorldTalkTrevor YesHasGrenade IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedGrenadeMechanic
		    ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGrenadeLauncherTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto Isgrenade_launcher IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedGrenadeLauncherMechanic
		    ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGrenadeLauncherAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotgrenade_launcher IsNotSaidSpot Isgrenade_launcher IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedGrenadeLauncherMechanic
		    ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHealthTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsFirstAidKit IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedHealthMechanic
		    ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHealthAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotHealth IsNotSaidSpot IsFirstAidKit IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedHealthMechanic
		    ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMolotovTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsMolotov IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedMolotovMechanic
		    ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMolotovAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotMolotov IsNotSaidSpot IsMolotov IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMolotovMechanic
		    ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedPillsTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsPainPills IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedPillsMechanic
		    ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedPillsAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotPills IsNotSaidSpot IsPainPills IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedPillsMechanic
		    ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedProducerCloseTrevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsProducer IsProducerNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedProducerCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedProducerClose2Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsProducer IsProducerNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedProducerClose2Mechanic
		}
	},

	{
		Rule SurvivorSpottedProducerClose2C1Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsProducer IsProducerNear400 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response SurvivorSpottedProducerClose2C1Mechanic
		}
	},

	{
		Rule SurvivorSpottedProducerCloseC1Trevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsProducer IsProducerNear400 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response SurvivorSpottedProducerClose2C1Mechanic
		}
	},

	{
		Rule SurvivorSpottedProducerFarTrevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsProducer IsProducerFar400 IsWorldTalkTrevor
		    Response SurvivorSpottedProducerFarMechanic
		}
	},

	{
		Rule SurvivorSpottedProducerFarC1Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsProducer IsProducerFar400 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response SurvivorSpottedProducerFarC1Mechanic
		}
	},

	{
		Rule SurvivorSpottedUpPack_ExplosiveTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsUpgradePack_Explosive IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedUpPack_ExplosiveMechanic
		    ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedUpPack_ExplosiveAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotAlone IsNotSaidSpotUpgradePack_Explosive IsNotSaidSpot IsUpgradePack_Explosive IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedUpPack_ExplosiveMechanic
		    ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedUpPack_IncendiaryTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsUpgradePack_Incendiary IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedUpPack_IncendiaryMechanic
		    ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedUpPack_IncendiAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotAlone IsNotSaidSpotUpgradePack_Incendiary IsNotSaidSpot IsUpgradePack_Incendiary IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedUpPack_IncendiaryMechanic
		    ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedVomitJarTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsVomitJar IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedVomitJarMechanic
		    ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedVomitJarAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotVomitJar IsNotSaidSpot IsVomitJar IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedVomitJarMechanic
		    ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedVomitJarAutoC1Trevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotVomitJar IsNotSaidSpot IsVomitJar IsWorldTalkTrevor ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedVomitJarAutoC1Mechanic
		    ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedVomitJarC1Trevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsVomitJar IsWorldTalkTrevor ismap_c1m1_hotel
		    Response SurvivorSpottedVomitJarAutoC1Mechanic
		    ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedWorldCloseTrevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsWorldTalkTrevor
		    Response SurvivorSpottedWorldCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedArmoredTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeArmored IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidArmoredWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedArmoredMechanic
		    ApplyContext "SaidArmoredWarn:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedArmoredC5M1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeArmored IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidArmoredWarn ismap_c5m1_waterfront IsNotSpeakingWeight0
		    Response SurvivorSpottedArmoredC5M1Mechanic
		    ApplyContext "SaidArmoredWarn:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedBoomerTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedBoomerMechanic
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedBoomerAlsoTrevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedBoomerMechanic
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30,TrevorAlsoWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedBoomer2Trevor
		{
		    criteria ConceptPlayerWarnBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedBoomerMechanic
		}
	},

	{
		Rule SurvivorSpottedBoomerC1M1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedBoomerC1M1Mechanic
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedBoomerAlsoC1M1Trevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated ismap_c1m1_hotel
		    Response SurvivorSpottedBoomerC1M1Mechanic
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedBoomer2C1Trevor
		{
		    criteria ConceptPlayerWarnBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowBoomer IsNotSurvival
		    Response SurvivorSpottedBoomerC1M1Mechanic
		}
	},

	{
		Rule SurvivorSpottedBoomerC1M2Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated ismap_c1m2_streets NoKnowBoomer IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedBoomerC1M2Mechanic
		    then any Player.KnowBoomer foo:0 0.1
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30,KnowBoomer:1:0,Talk:1:6"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedBoomerAlsoC1M2Trevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated ismap_c1m2_streets NoKnowBoomer IsNotSurvival
		    Response SurvivorSpottedBoomerC1M1Mechanic
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedCedaTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCeda IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidCedaWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedCedaMechanic
		    ApplyContext "SaidCedaWarn:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedCedaC1M1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCeda IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidCedaWarn ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedCedaC1M1Mechanic
		    ApplyContext "SaidCedaWarn:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedChargerTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCharger IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedChargerMechanic
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedChargerAlsoTrevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeCharger IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedChargerMechanic
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30,TrevorAlsoWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedCharger2Trevor
		{
		    criteria ConceptPlayerWarnCharger IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedChargerMechanic
		}
	},

	{
		Rule SurvivorSpottedChargerC1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCharger IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowCharger IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedChargerC1Mechanic
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedChargerAlsoC1Trevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeCharger IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowCharger IsNotSurvival
		    Response SurvivorSpottedChargerC1Mechanic
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedCharger2C1Trevor
		{
		    criteria ConceptPlayerWarnCharger IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowCharger IsNotSurvival
		    Response SurvivorSpottedChargerC1Mechanic
		}
	},

	{
		Rule SurvivorSpottedClownTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeClown IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidClownWarn IsNotSpeakingWeight0 _auto_ConcertNotLive _auto_NotSpottedVehicle
		    Response SurvivorSpottedClownMechanic
		    ApplyContext "SaidClownWarn:1:20,SawClowns:++1"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedFallenTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeFallen IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidFallenWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedFallenMechanic
		    ApplyContext "SaidFallenWarn:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedFirstClownTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeClown IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidClownWarn ismap_c2m2 IsNotSpeakingWeight0
		    Response SurvivorSpottedFirstClownMechanic
		    ApplyContext "SaidClownWarn:1:0,SawClowns:++1"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHunterTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeHunter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedHunterMechanic
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHunterAlsoTrevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeHunter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedHunterMechanic
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30,TrevorAlsoWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHunter2Trevor
		{
		    criteria ConceptPlayerWarnHunter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedHunterMechanic
		}
	},

	{
		Rule SurvivorSpottedHunterC1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeHunter IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowHunter IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedHunterC1Mechanic
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHunterAlsoC1Trevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeHunter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowHunter IsNotSurvival
		    Response SurvivorSpottedHunterC1Mechanic
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHunter2C1Trevor
		{
		    criteria ConceptPlayerWarnHunter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowHunter IsNotSurvival
		    Response SurvivorSpottedHunterC1Mechanic
		}
	},

	{
		Rule SurvivorSpottedInfectedTrevor
		{
		    criteria ConceptPlayerIncoming IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedInfectedMechanic
		}
	},

	{
		Rule SurvivorSpottedJimmyTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeJimmy IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidJimmyWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedJimmyMechanic
		    ApplyContext "SaidJimmyWarn:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedJockeyTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeJockey IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedJockeyMechanic
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedJockeyAlsoTrevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeJockey IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedJockeyMechanic
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30,TrevorAlsoWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedJockey2Trevor
		{
		    criteria ConceptPlayerWarnJockey IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedJockeyMechanic
		}
	},

	{
		Rule SurvivorSpottedJockeyC1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeJockey IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowJockey IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedJockeyC1Mechanic
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedJockeyAlsoC1Trevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeJockey IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowJockey IsNotSurvival
		    Response SurvivorSpottedJockeyC1Mechanic
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedJockey2C1Trevor
		{
		    criteria ConceptPlayerWarnJockey IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowJockey IsNotSurvival
		    Response SurvivorSpottedJockeyC1Mechanic
		}
	},

	{
		Rule SurvivorSpottedMudmenC3M2Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeMudmen IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidMudmenWarn ismapc3m2_swamp IsNotSpeakingWeight0
		    Response SurvivorSpottedMudmenC3M2Mechanic
		    ApplyContext "SaidMudmenWarn:1:0,SawMudMen:++1"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMudmenTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeMudmen IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidMudmenWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMudmenMechanic
		    ApplyContext "SaidMudmenWarn:1:20,SawMudMen:++1"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMudmen2Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeMudmen IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidMudmenWarn SawManyMudMen IntensityUnder50 IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMudmen2Mechanic
		    then gambler Player.SeeMudmen2a foo:0 -2.938
		    ApplyContext "SaidMudmenWarn:1:20,SawMudMen:++1"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSmokerTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedSmokerMechanic
		    ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSmokerAlsoTrevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedSmokerMechanic
		    ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30,TrevorAlsoWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSmoker2Trevor
		{
		    criteria ConceptPlayerWarnSmoker IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedSmokerMechanic
		}
	},

	{
		Rule SurvivorSpottedSmokerC1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowSmoker IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedSmokerC1Mechanic
		    ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSmokerAlsoC1Trevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response SurvivorSpottedSmokerC1Mechanic
		    ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSmoker2C1Trevor
		{
		    criteria ConceptPlayerWarnSmoker IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response SurvivorSpottedSmokerC1Mechanic
		}
	},

	{
		Rule SurvivorSpottedSpitterTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedSpitterMechanic
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSpitterAlsoTrevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedSpitterMechanic
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30,TrevorAlsoWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSpitter2Trevor
		{
		    criteria ConceptPlayerWarnSpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedSpitterMechanic
		}
	},

	{
		Rule SurvivorSpottedSpitterC1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowSpitter IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedSpitterC1Mechanic
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSpitterAlsoC1Trevor
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowSpitter IsNotSurvival
		    Response SurvivorSpottedSpitterC1Mechanic
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSpitter2C1Trevor
		{
		    criteria ConceptPlayerWarnSpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 NoKnowSpitter IsNotSurvival
		    Response SurvivorSpottedSpitterC1Mechanic
		}
	},

	{
		Rule SurvivorSpottedTankTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedTankMechanic
		    ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedTank2Trevor
		{
		    criteria ConceptPlayerWarnTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedTankMechanic
		}
	},

	{
		Rule SurvivorSpottedTankC1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedTankC1Mechanic
		    ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorAlsoSpottedTankC1Trevor
		{
		    criteria ConceptPlayerWarnTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedTankC1Mechanic
		}
	},

	{
		Rule L4D1SpottedTankTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated Isc6m3_port IsNotSpeakingWeight0 IsNotVersus IsNotSurvival _auto_NotSpottedVehicle
		    Response L4D1SpottedTankMechanic
		    ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule L4D1SpottedTank2Trevor
		{
		    criteria ConceptPlayerWarnTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated Isc6m3_port IsNotVersus IsNotSurvival _auto_NotSpottedVehicle
		    Response L4D1SpottedTankMechanic
		}
	},

	{
		Rule SurvivorSpottedWitchTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeWitch IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidWitchStartAttack IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWitchMechanic
		    ApplyContext "SaidWitchWarn:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedWitch2Trevor
		{
		    criteria ConceptPlayerWarnWitch IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidWitchStartAttack _auto_NotSpottedVehicle
		    Response SurvivorSpottedWitchMechanic
		}
	},

	{
		Rule SurvivorSpottedWitchC1Trevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeWitch IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidWitchStartAttack C1M1orC1M2 IsNotSpeakingWeight0
		    Response SurvivorSpottedWitchC1Mechanic
		    ApplyContext "SaidWitchWarn:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedWitch2C1Trevor
		{
		    criteria ConceptPlayerWarnWitch IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotIncapacitated IsNotSaidWitchStartAttack C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedWitch2C1Mechanic
		}
	},

	{
		Rule PlayerAlertGiveItemTrevor
		{
		    criteria ConceptPlayerAlertGiveItem IsNotCoughing IsTrevor IsTalk IsTalkTrevor NotInIntenseCombat IsWorldTalkTrevor
		    Response PlayerAlertGiveItemMechanic
		}
	},

	{
		Rule PlayerAlertGiveItemCombatTrevor
		{
		    criteria ConceptPlayerAlertGiveItem IsNotCoughing IsTrevor IsTalk IsTalkTrevor InIntenseCombat IsWorldTalkTrevor
		    Response PlayerAlertGiveItemCombatMechanic
		}
	},

	{
		Rule PlayerFaultFriendlyFireTrevor
		{
		    criteria IsFaultConcept IsFaultFriendlyFire IsTrevor
		    Response NoResponse
		    ApplyContext "SaidFaultFriendlyFire:1:0.1,SaidFaultFriendlyFireTrevor:1:0.1,ShotTeammateTrevor:1:6"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerFriendlyFireTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotZombiePresentTank
		    Response PlayerFriendlyFireMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFire2Trevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotDamageTypeExplosive IsOnThirdStrike IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotZombiePresentTank
		    Response PlayerFriendlyFire2Mechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireC1Trevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotZombiePresentTank ismap_c1m1_hotel NoKnowNames
		    Response PlayerFriendlyFireC1Mechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireFromCoachTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkTrevor SubjectIsCoach ChanceToFire30Percent IsWorldTalkTrevor IsNotZombiePresentTank isNotmap_c1m1_hotel
		    Response PlayerFriendlyFireFromCoachMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireFromCoachC1Trevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkTrevor SubjectIsCoach ChanceToFire50Percent IsWorldTalkTrevor IsNotZombiePresentTank ismap_c1m1_hotel NoKnowNames
		    Response PlayerFriendlyFireFromCoachC1Mechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireFromGamblerTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkTrevor SubjectIsGambler ChanceToFire50Percent IsWorldTalkTrevor IsNotZombiePresentTank isNotmap_c1m1_hotel
		    Response PlayerFriendlyFireFromGamblerMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireFromProducerTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkTrevor SubjectIsProducer ChanceToFire30Percent IsWorldTalkTrevor IsNotZombiePresentTank isNotmap_c1m1_hotel
		    Response PlayerFriendlyFireFromProducerMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireFromProducerC1Trevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkTrevor SubjectIsProducer ChanceToFire50Percent IsWorldTalkTrevor IsNotZombiePresentTank ismap_c1m1_hotel NoKnowNames
		    Response PlayerFriendlyFireFromProducerC1Mechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireNoBulletTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsNotDamageTypeBullet IsNotDamageTypeExplosive IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotZombiePresentTank
		    Response PlayerFriendlyFireNoBulletMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireNoBulletC1Trevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsNotDamageTypeBullet IsNotDamageTypeExplosive IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotZombiePresentTank ismap_c1m1_hotel NoKnowNames
		    Response PlayerFriendlyFireNoBulletC1Mechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireTankTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkTrevor IsZombiePresentTank IsSaidTankWarn2 IsNotIncapacitated IsWorldTalkTrevor isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerFriendlyFireTankMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireTankCoachTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkTrevor IsZombiePresentTank IsSaidTankWarn2 ChanceToFire30Percent IsNotIncapacitated SubjectIsCoach IsWorldTalkTrevor isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerFriendlyFireTankCoachMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireTankGamblerTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkTrevor IsZombiePresentTank IsSaidTankWarn2 ChanceToFire30Percent IsNotIncapacitated SubjectIsGambler IsWorldTalkTrevor isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerFriendlyFireTankGamblerMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerFriendlyFireTankProducerTrevor
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsTrevor IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkTrevor IsZombiePresentTank IsSaidTankWarn2 ChanceToFire30Percent IsNotIncapacitated SubjectIsProducer IsWorldTalkTrevor isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerFriendlyFireTankProducerMechanic
		    ApplyContext "FriendlyFire:1:10"
		}
	},

	{
		Rule PlayerToTheRescueTrevor
		{
		    criteria ConceptSurvivorBotMovingToReviveFriend IsNotCoughing IsTrevor IsTalk IsTalkTrevor NotInCombat IsNotSaidRescueComing IsDistanceSubjectO600 IsWorldTalkTrevor
		    Response PlayerToTheRescueMechanic
		    ApplyContext "SaidRescueComing:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerToTheRescueRosTrevor
		{
		    criteria ConceptPlayerToTheRescue IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerToTheRescueRosMechanic
		}
	},

	{
		Rule SurvivorTauntResponseTrevor
		{
		    criteria ConceptPlayerTaunt IsSurvivor IsNotSpeaking IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotVersus
		    Response SurvivorTauntResponseMechanic
		}
	},

	{
		Rule C4M1IdleComment01Trevor
		{
		    criteria ConceptTalkIdle ChanceToFire40Percent IsSurvivor ismap_c4m1_milltown_a IsSaidc4m1_nogas IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor NotInCombat IsWorldTalkTrevor TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_NotNoGasGate
		    Response C4M1IdleComment01Mechanic
		    ApplyContext "Talk:1:4.299,_auto_NoGasGate:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4M2IdleCommentCane01Trevor
		{
		    criteria ConceptTalkIdle ChanceToFire60Percent IsSurvivor ismap_c4m2_sugarmill_a IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_IsTrevorInCane _auto_NotCaneYellGated _auto_NotLastSurvivorTalkedTrevor
		    Response C4M2IdleCommentCane01Mechanic
		    then any _c4m2_caneyell01 foo:0 0.01
		    ApplyContext "_auto_CaneYellGated:1:10,_auto_LastSurvivorTalkedTrevor:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerChokeResponseTrevor
		{
		    criteria ConceptPlayerChoke IsSurvivor IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerChokeResponseMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerChokeResponseC1Trevor
		{
		    criteria ConceptPlayerChoke IsSurvivor IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKNowSmoker IsNotSurvival
		    Response PlayerChokeResponseC1Mechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerReloadingC502RunTrevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsMapc5m2_park IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotZombiePresentTank ChanceToFire50Percent _auto_IsAlarm
		    Response PlayerReloadingC502RunMechanic
		}
	},

	{
		Rule PlayerReloadingTankTrevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerReloadingTankMechanic
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerReloadingTankC1Trevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkTrevor C1M1orC1M2 IsNotSurvival
		    Response PlayerReloadingTankC1Mechanic
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWitchChasingTrevor
		{
		    criteria ConceptPlayerExertionMinor IsTrevor IsWitchPresent SubjectIsNotWitch IsNotSaidWitchChasing IsSaidWitchAttacking IsTalkTrevor IsNotmap_c4m2 IsNotc6m1_riverbank IsWitchAggro
		    Response PlayerWitchChasingMechanic
		    ApplyContext "SaidWitchChasing:1:5,TalkTrevor:1:2"
		}
	},

	{
		Rule PlayerWitchChasingC6M1Trevor
		{
		    criteria ConceptPlayerExertionMinor IsTrevor IsWitchPresent SubjectIsNotWitch IsNotSaidWitchChasing IsSaidWitchAttacking IsTalkTrevor isc6m1_riverbank IsWitchAggro
		    // 	forceweight 20
		    Response PlayerWitchChasingC6M1Mechanic
		    ApplyContext "SaidWitchChasing:1:15,TalkTrevor:1:2,SaidWitchStartAttack:1:15"
		}
	},

	{
		Rule PlayerWitchStartAttackC6M1Trevor
		{
		    criteria IsFaultConcept IsTrevor IsFaultWitchHarassment Isc6m1_riverbank
		    Response PlayerWitchStartAttackC6M1Mechanic
		    ApplyContext "SaidWitchAttacking:1:15,TalkTrevor:1:4,SaidWitchStartAttack:1:15"
		}
	},

	{
		Rule PlayerWitchStartAttackTrevor
		{
		    criteria IsFaultConcept IsTrevor IsFaultWitchHarassment
		    Response PlayerWitchStartAttackMechanic
		    ApplyContext "SaidWitchAttacking:1:15,TalkTrevor:1:2,SaidWitchStartAttack:1:15"
		}
	},

	{
		Rule WitchAggroTrevor
		{
		    criteria ConceptWitchStartAttack IsTrevor Iswitch_aggro_onTrevor
		    Response NoResponse
		    ApplyContext "WitchAggro:++1"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorCriticalHurtTrevor
		{
		    criteria IsSurvivor InPain IsCriticalPain IsTrevor IsTalk IsTalkTrevor SubjectIsNotJockey IsWorldTalkTrevor
		    Response SurvivorCriticalHurtMechanic
		}
	},

	{
		Rule SurvivorIncapacitatedHurtTrevor
		{
		    criteria IsSurvivor InPain IsNotSpeaking IsIncapacitatedPain IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorIncapacitatedHurtMechanic
		}
	},

	{
		Rule SurvivorJockeyHurtMajorTrevor
		{
		    criteria IsSurvivor InPain IsMajorPain IsTrevor IsTalk IsTalkTrevor SubjectIsJockey IsNotSaidBeenJockeyedTrevor IsWorldTalkTrevor IsBeingJockeyed
		    Response SurvivorJockeyHurtMajorMechanic
		    then all commentjockey foo:0 -1.739
		    ApplyContext "SaidBeenJockeyedTrevor:1:6,TalkTrevor:1:6"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorJockeyHurtMinorTrevor
		{
		    criteria IsSurvivor InPain IsMinorPain IsTrevor IsTalk IsTalkTrevor SubjectIsJockey IsNotSaidBeenJockeyedTrevor IsWorldTalkTrevor IsBeingJockeyed
		    Response SurvivorJockeyHurtMajorMechanic
		    then all commentjockey foo:0 -1.739
		    ApplyContext "SaidBeenJockeyedTrevor:1:6,TalkTrevor:1:6"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorJockeyHurtMajorC1Trevor
		{
		    criteria IsSurvivor InPain IsMajorPain IsTrevor IsTalk IsTalkTrevor SubjectIsJockey IsNotSaidBeenJockeyedTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowJockey IsBeingJockeyed IsNotSurvival
		    Response SurvivorJockeyHurtMajorC1Mechanic
		    ApplyContext "SaidBeenJockeyedTrevor:1:6,TalkTrevor:1:6"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorJockeyHurtMinorC1Trevor
		{
		    criteria IsSurvivor InPain IsMinorPain IsTrevor IsTalk IsTalkTrevor SubjectIsJockey IsNotSaidBeenJockeyedTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowJockey IsBeingJockeyed IsNotSurvival
		    Response SurvivorJockeyHurtMajorC1Mechanic
		    ApplyContext "SaidBeenJockeyedTrevor:1:6,TalkTrevor:1:6"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorMajorHurtTrevor
		{
		    criteria IsSurvivor InPain IsMajorPain IsTrevor IsTalk IsTalkTrevor SubjectIsNotJockey IsWorldTalkTrevor
		    Response SurvivorMajorHurtMechanic
		}
	},

	{
		Rule SurvivorMinorHurtTrevor
		{
		    criteria IsSurvivor InPain IsMinorPain IsTrevor IsTalk IsTalkTrevor SubjectIsNotJockey IsWorldTalkTrevor
		    Response SurvivorMinorHurtMechanic
		}
	},

	{
		Rule SurvivorReloadingTrevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkTrevor IsNotZombiePresentTank NotInIntenseCombat _auto_NotTrevorInWitchville _auto_NotAlarmV2 _auto_ConcertNotLive _auto_NotSpottedVehicle
		    Response SurvivorReloadingMechanic
		}
	},

	{
		Rule SurvivorReloadingIntenseTrevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkTrevor IsNotZombiePresentTank InIntenseCombat _auto_NotTrevorInWitchville _auto_NotAlarmV2 _auto_ConcertNotLive _auto_NotSpottedVehicle
		    Response SurvivorReloadingIntenseMechanic
		}
	},

	{
		Rule SurvivorReloadingC4M2Trevor
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsTrevor IsNotIncapacitated IsTalk IsTalkTrevor RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkTrevor ismap_c4m2_sugarmill_a IsNotSaidSafeSpotAhead IsNotZombiePresentTank _auto_IsTrevorInWitchville
		    Response SurvivorReloadingC4M2Mechanic
		}
	},

	{
		Rule PlayerHelpIncappedTrevor
		{
		    criteria ConceptPlayerHelp IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsIncappedStarted IsIncappedStarted2 IsIncapacitated NotCalledForHelpRecently IsWorldTalkTrevor
		    Response PlayerHelpIncappedMechanic
		    ApplyContext "CalledForHelp:1:7.5"
		}
	},

	{
		Rule PlayerHelpIncappedBleeingTrevor
		{
		    criteria ConceptPlayerHelp IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsIncappedBleeding1 IsIncappedBleeding2 IsIncapacitated NotCalledForHelpRecently IsWorldTalkTrevor
		    Response PlayerHelpIncappedBleeingMechanic
		    ApplyContext "CalledForHelp:1:15"
		}
	},

	{
		Rule PlayerHelpIncappedLethargicTrevor
		{
		    criteria ConceptPlayerHelp IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsIncappedLethargic IsIncapacitated NotCalledForHelpRecently IsWorldTalkTrevor
		    Response PlayerHelpIncappedLethargicMechanic
		    ApplyContext "CalledForHelp:1:30"
		}
	},

	{
		Rule C2M1DoneFallingTrevor
		{
		    criteria ConceptC2M1DoneFalling IsTrevor NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival _auto_NotDoneFalling
		    Response C2M1DoneFallingMechanic
		    then gambler _C2M1_Fall03 foo:0 0.01
		    ApplyContext "Talk:1:3.351,_auto_DoneFalling:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1DoneFalling2Trevor
		{
		    criteria ConceptC2M1DoneFalling IsTrevor NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotCoughing IsCoachAlive IsCoachNear200 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotDoneFalling
		    Response C2M1DoneFalling2Mechanic
		    then coach _C2M1_Fall01 foo:0 0.01
		    ApplyContext "Talk:1:2.044,_auto_DoneFalling:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1FallingTrevor
		{
		    criteria ConceptC2M1Falling IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1FallingMechanic
		    then self EndOfWavWindow5 foo:0 0.01
		    ApplyContext "Talk:1:1.353"
		    applycontexttoworld
		}
	},

	{
		Rule C2M2CarouselOffTrevor
		{
		    criteria Conceptc2m2CarouselEnd IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M2CarouselOffMechanic
		    ApplyContext "Talk:1:0.756,_auto_Alarm:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M2CarouselOnTrevor
		{
		    criteria Conceptc2m2CarouselStart IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M2CarouselOnMechanic
		    then any _C2M2_CaroStart03 foo:0 2.0
		    ApplyContext "_auto_Alarm:1:0,_auto_TimerLockA:1:6,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C3M3BridgeButtonTrevor
		{
		    criteria ConceptC3M3BridgeButton IsNotSaidC3M3BridgeButton IsTrevor IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M3BridgeButtonMechanic
		    ApplyContext "SaidC3M3BridgeButton:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule EndOfWavWindow5Trevor
		{
		    criteria ConceptEndOfWavWindow5 IsTrevor
		    Response EndOfWavWindow5Mechanic
		    ApplyContext "_auto_TrevorWavWindow:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerChainSawUsedTrevor
		{
		    criteria ConceptChainsawUsed IsNotSaidChainSawUsed IsTrevor IsTalk IsTalkTrevor IntensityOver25 IsWorldTalkTrevor
		    Response PlayerChainSawUsedMechanic
		    ApplyContext "SaidChainSawUsed:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M1AroundFireTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M1AroundFire IsNotSaidC1M1AroundFire IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M1AroundFireMechanic
		    then any C1M1Cough foo:0 -1.348
		    ApplyContext "SaidC1M1AroundFire:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M1OverTableTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M1OverTable IsNotSaidC1M1OverTable IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M1OverTableMechanic
		    then any C1M1Cough foo:0 -0.627
		    ApplyContext "SaidC1M1OverTable:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M1SearchRoomsTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M1SearchRooms IsNotSaidC1M1SearchRooms IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M1SearchRoomsMechanic
		    then any C1M1Cough foo:0 -3.339
		    ApplyContext "SaidC1M1SearchRooms:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M1ThroughThisDoorTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M1ThroughThisDoor IsNotSaidC1M1ThroughThisDoor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M1ThroughThisDoorMechanic
		    then any C1M1Cough foo:0 -0.618
		    ApplyContext "SaidC1M1ThroughThisDoor:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M2SpotGunStoreTrevor
		{
		    criteria ConceptRemark IsTrevor IsRemarkWorldC1M2SpotGunStore IsNotSaidRemarkWorldC1M2SpotGunStore IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear800 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M2SpotGunStoreMechanic
		    ApplyContext "SaidRemarkWorldC1M2SpotGunStore:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3AlarmDoorsTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3AlarmDoors IsNotSaidC1M3AlarmDoors IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 _auto_NotAlarm AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3AlarmDoorsMechanic
		    ApplyContext "SaidC1M3AlarmDoors:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3CarefulWindowsTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3CarefulWindows IsNotSaidC1M3CarefulWindows IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 _auto_NotAlarm AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3CarefulWindowsMechanic
		    ApplyContext "SaidC1M3CarefulWindows:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3CEDAGoneTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3CEDAGone IsNotSaidC1M3CEDAGone IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3CEDAGoneMechanic
		    ApplyContext "SaidC1M3CEDAGone:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3DownHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3DownHere IsNotSaidC1M3DownHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereMechanic
		    ApplyContext "SaidC1M3DownHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3DownHere2Trevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3DownHere2 IsNotSaidC1M3DownHere2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereMechanic
		    ApplyContext "SaidC1M3DownHere2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3DownTheEscalatorTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3DownTheEscalator IsNotSaidC1M3DownTheEscalator IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownTheEscalatorMechanic
		    ApplyContext "SaidC1M3DownTheEscalator:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3OverHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3OverHere IsNotSaidC1M3OverHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3OverHereMechanic
		    ApplyContext "SaidC1M3OverHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3SearchRoomsTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3SearchRooms IsNotSaidC1M3SearchRooms IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3SearchRoomsMechanic
		    then any C1M1Cough foo:0 -3.339
		    ApplyContext "SaidC1M3SearchRooms:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3ThisWayTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3ThisWay IsNotSaidC1M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3ThisWayMechanic
		    ApplyContext "SaidC1M3ThisWay:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3ThroughHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3ThroughHere IsNotSaidC1M3ThroughHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3ThroughHereMechanic
		    ApplyContext "SaidC1M3ThroughHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3TurnOffAlarm1Trevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3TurnOffAlarm1 IsNotSaidC1M3TurnOffAlarm1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3TurnOffAlarm1Mechanic
		    ApplyContext "SaidC1M3TurnOffAlarm1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3TurnOffAlarm2Trevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3TurnOffAlarm2 IsNotSaidC1M3TurnOffAlarm2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3TurnOffAlarm2Mechanic
		    ApplyContext "SaidC1M3TurnOffAlarm2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3TurnOffAlarm3Trevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3TurnOffAlarm3 IsNotSaidC1M3TurnOffAlarm3 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3TurnOffAlarm3Mechanic
		    ApplyContext "SaidC1M3TurnOffAlarm3:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3UpEscalator1Trevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3UpEscalator1 IsNotSaidC1M3UpEscalator1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3UpEscalator1Mechanic
		    ApplyContext "SaidC1M3UpEscalator1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3UpEscalator2Trevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3UpEscalator2 IsNotSaidC1M3UpEscalator2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3UpEscalator1Mechanic
		    ApplyContext "SaidC1M3UpEscalator2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC1M3UpEscalator3Trevor
		{
		    criteria ConceptRemark IsTrevor IsC1M3UpEscalator3 IsNotSaidC1M3UpEscalator3 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3UpEscalator1Mechanic
		    ApplyContext "SaidC1M3UpEscalator3:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_busblockTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_busblock IsNotSaidc2m1_busblock IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_busblockMechanic
		    then producer _C2M1MonsterTruck foo:0 0.02
		    ApplyContext "Saidc2m1_busblock:1:0,Talk:1:1.499"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_checkroomsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_checkrooms IsNotSaidc2m1_checkrooms IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_checkroomsMechanic
		    ApplyContext "Saidc2m1_checkrooms:1:0,Talk:1:1.459"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_cliffTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_cliff IsNotSaidc2m1_cliff IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_cliffMechanic
		    ApplyContext "Saidc2m1_cliff:1:0,Talk:1:3.248"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_downstairsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_downstairs IsNotSaidc2m1_downstairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_downstairsMechanic
		    ApplyContext "Saidc2m1_downstairs:1:0,Talk:1:1.547"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_motelsignTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_motelsign IsNotSaidc2m1_motelsign IsNotSaidc2m1_throughmotel IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectFar100 ChanceToFire20Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_motelsignMechanic
		    ApplyContext "Saidc2m1_motelsign:1:0,Talk:1:1.428"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkc2m1_motelsignTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_motelsign IsNotSaidc2m1_motelsign IsNotSaidc2m1_throughmotel IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectFar100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "Saidc2m1_motelsign:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_offrampTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_offramp IsNotSaidc2m1_offramp IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_offrampMechanic
		    ApplyContext "Saidc2m1_offramp:1:0,Talk:1:1.167"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_parkTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_park IsNotSaidc2m1_park IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_parkMechanic
		    ApplyContext "Saidc2m1_park:1:0,Talk:1:2.273"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_poolTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_pool IsNotSaidc2m1_pool IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_poolMechanic
		    ApplyContext "Saidc2m1_pool:1:0,Talk:1:3.694"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_searchlightsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_searchlights IsNotSaidc2m1_searchlights IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectFar100 ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 1
		    Response PlayerRemarkc2m1_searchlightsMechanic
		    then any _c2m1_searchlights01 foo:0 0.01
		    ApplyContext "Saidc2m1_searchlights:1:0,Talk:1:3.371"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_throughhereTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_throughhere IsNotSaidc2m1_throughhere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_throughhereMechanic
		    ApplyContext "Saidc2m1_throughhere:1:0,Talk:1:0.718"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_throughmotelTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_throughmotel IsNotSaidc2m1_throughmotel IsNotSaidc2m1_motelsign IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_throughmotelMechanic
		    ApplyContext "Saidc2m1_throughmotel:1:0,Talk:1:1.976"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_throughwindowTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_throughwindow IsNotSaidc2m1_throughwindow IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_throughwindowMechanic
		    ApplyContext "Saidc2m1_throughwindow:1:0,Talk:1:1.042"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_uphillTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_uphill IsNotSaidc2m1_uphill IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_uphillMechanic
		    ApplyContext "Saidc2m1_uphill:1:0,Talk:1:0.630"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m1_upstairsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m1_upstairs IsNotSaidc2m1_upstairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_upstairsMechanic
		    ApplyContext "Saidc2m1_upstairs:1:0,Talk:1:1.269"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m2_cottoncandyTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m2_cottoncandy IsNotSaidc2m2_cottoncandy IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_NotCoachFoodBreak _auto_NotAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_cottoncandyMechanic
		    then coach _C2M2_CottonCandy01 foo:0 0.01
		    ApplyContext "Saidc2m2_cottoncandy:1:0,Talk:1:2.708,_auto_CoachFoodBreak:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m2_cottoncandy2Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m2_cottoncandy2 IsNotSaidc2m2_cottoncandy IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival _auto_NotCoachFoodBreak _auto_NotAlarmV2 IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_cottoncandyMechanic
		    then coach _C2M2_CottonCandy01 foo:0 0.01
		    ApplyContext "Saidc2m2_cottoncandy:1:0,Talk:1:2.708,_auto_CoachFoodBreak:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m2_entrancesignTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m2_entrancesign IsNotSaidc2m2_entrancesign IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_entrancesignMechanic
		    ApplyContext "Saidc2m2_entrancesign:1:0,Talk:1:3.331"
		    applycontexttoworld
		}
	},

	{
		Rule _C2M2_CottonCandy01Trevor
		{
		    criteria Concept_C2M2_CottonCandy01 IsTrevor NotInCombat ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_CottonCandy01Mechanic
		    then coach _C2M2_CottonCandy01 foo:0 0.01
		    ApplyContext "Talk:1:10.109"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m2_kiddielandTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m2_kiddieland IsNotSaidc2m2_kiddieland IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_kiddielandMechanic
		    then any _C2M2_Kiddie01 foo:0 0.01
		    ApplyContext "Saidc2m2_kiddieland:1:0,Talk:1:3.403,_auto_CoachFoodBreak:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m2_topofslideTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m2_topofslide IsNotSaidc2m2_topofslide IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_topofslideMechanic
		    ApplyContext "Saidc2m2_topofslide:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_coasteroffTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_coasteroff IsNotSaidc2m3_coasteroff IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_coasteroffMechanic
		    ApplyContext "Saidc2m3_coasteroff:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_coollightTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_coollight IsNotSaidc2m3_coollight IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_coollightMechanic
		    ApplyContext "Saidc2m3_coollight:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_coollightNickTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_coollight IsNotSaidc2m3_coollight IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsGamblerNear200 IsGamblerAlive ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_coollightNickMechanic
		    then gambler _c2m3_coollight foo:0 0.1
		    ApplyContext "Saidc2m3_coollight:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_holeTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_hole IsNotSaidc2m3_hole IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_holeMechanic
		    then any _c2m3_hole01 foo:0 0.1
		    ApplyContext "Saidc2m3_hole:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_overfenceTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_overfence IsNotSaidc2m3_overfence IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_overfenceMechanic
		    ApplyContext "Saidc2m3_overfence:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_screamingoakTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_screamingoak IsNotSaidc2m3_screamingoak IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_screamingoakMechanic
		    ApplyContext "Saidc2m3_screamingoak:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_swanpileupTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_swanpileup IsNotSaidc2m3_swanpileup IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_swanpileupMechanic
		    ApplyContext "Saidc2m3_swanpileup:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_swanroomTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_swanroom IsNotSaidc2m3_swanroom IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_swanroomMechanic
		    ApplyContext "Saidc2m3_swanroom:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_tracks01Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_tracks01 IsNotSaidc2m3_tracks01 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Mechanic
		    ApplyContext "Saidc2m3_tracks01:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_tracks02Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_tracks02 IsNotSaidc2m3_tracks02 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Mechanic
		    ApplyContext "Saidc2m3_tracks02:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_tracks03Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_tracks03 IsNotSaidc2m3_tracks03 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Mechanic
		    ApplyContext "Saidc2m3_tracks03:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_tracks04Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_tracks04 IsNotSaidc2m3_tracks04 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Mechanic
		    ApplyContext "Saidc2m3_tracks04:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_tracks05Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_tracks05 IsNotSaidc2m3_tracks05 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Mechanic
		    ApplyContext "Saidc2m3_tracks05:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_tracks06Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_tracks06 IsNotSaidc2m3_tracks06 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Mechanic
		    ApplyContext "Saidc2m3_tracks06:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_tracks07Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_tracks07 IsNotSaidc2m3_tracks07 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Mechanic
		    ApplyContext "Saidc2m3_tracks07:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_tracks08Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_tracks08 IsNotSaidc2m3_tracks08 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Mechanic
		    ApplyContext "Saidc2m3_tracks08:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_ventTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_vent IsNotSaidc2m3_vent IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_ventMechanic
		    ApplyContext "Saidc2m3_vent:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_waterTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_water IsNotSaidc2m3_water IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 ChanceToFire60Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_waterMechanic
		    then any _c2m3_water01 foo:0 0.1
		    ApplyContext "Saidc2m3_water:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkc2m3_waterTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_water IsNotSaidc2m3_water IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "Saidc2m3_water:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m3_wayblockedTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m3_wayblocked IsNotSaidc2m3_wayblocked IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_wayblockedMechanic
		    ApplyContext "Saidc2m3_wayblocked:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m4_barnentryTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m4_barnentry IsNotSaidc2m4_barnentry IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_barnentryMechanic
		    ApplyContext "Saidc2m4_barnentry:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m4_bumpercarsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m4_bumpercars IsNotSaidc2m4_bumpercars IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_bumpercarsMechanic
		    ApplyContext "Saidc2m4_bumpercars:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m4_pendoorTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m4_pendoor IsNotSaidc2m4_pendoor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_pendoorMechanic
		    ApplyContext "Saidc2m4_pendoor:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m4_moustachioTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m4_moustachio IsNotSaidc2m4_moustachio IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_moustachioMechanic
		    ApplyContext "Saidc2m4_moustachio:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m4_stadiumTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m4_stadium IsNotSaidc2m4_stadium IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_stadiumMechanic
		    ApplyContext "Saidc2m4_stadium:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m4_upbarnTrevor
		{
		    criteria ConceptRemark IsTrevor Isc2m4_upbarn IsNotSaidc2m4_upbarn IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_upbarnMechanic
		    ApplyContext "Saidc2m4_upbarn:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc2m5_button2Trevor
		{
		    criteria ConceptRemark IsTrevor Isc2m5_button2 IsNotSaidc2m5_button2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear75 TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsButton1 _auto_NotButton2 IsNotSpeakingWeight0
		    Response PlayerRemarkc2m5_button2Mechanic
		    ApplyContext "Saidc2m5_button2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3BridgeDownTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3BridgeDown IsNotSaidC3M3BridgeDown IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3BridgeDownMechanic
		    ApplyContext "SaidC3M3BridgeDown:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M1NoSwimmingTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M1NoSwimming IsNotSaidC3M1NoSwimming IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M1NoSwimmingMechanic
		    ApplyContext "SaidC3M1NoSwimming:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc3m2_parachutistTrevor
		{
		    criteria ConceptRemark IsTrevor Isc3m2_parachutist IsNotSaidc3m2_parachutist IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 10
		    Response PlayerRemarkc3m2_parachutistMechanic
		    ApplyContext "Saidc3m2_parachutist:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc3m2_overtreeTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M2OverTree IsNotSaidC3M2OverTree IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc3m2_overtreeMechanic
		    then any _C3M2Pirogue foo:0 0.1
		    ApplyContext "SaidC3M2OverTree:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M2PlaneCrashTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M2PlaneCrash IsNotSaidC3M2PlaneCrash IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear600 IsNotSaidC3M2OpenDoor IsWorldTalkTrevor ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 1
		    Response PlayerRemarkC3M2PlaneCrashMechanic
		    ApplyContext "SaidC3M2PlaneCrash:1:0,Talk:1:3.419"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M2PlaneDoorNagTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M2PlaneDoorNag IsNotSaidC3M2PlaneDoorNag IsNotCoughing IsTalk IsTalkTrevor IsSubjectNear500 IsNotSaidC3M2OpenDoor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2PlaneDoorNagMechanic
		    ApplyContext "SaidC3M2PlaneDoorNag:1:0,_auto_TimerLockA:1:15,Talk:1:2.270"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M2PlaneDoorNagaTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsSaidC3M2PlaneDoorNag IsNotSaidC3M2OpenDoor ismapc3m2_swamp IsNotCoughing IsTalk IsTalkTrevor IsNotZombiePresentTank AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotTimerLockA _auto_NotTimerLockTrevor
		    Response PlayerRemarkC3M2PlaneDoorNagaMechanic
		    ApplyContext "_auto_TimerLockA:1:20,_auto_TimerLockTrevor:1:40,Talk:1:1.660"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M2RoadTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M2Road IsNotSaidC3M2Road IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2RoadMechanic
		    ApplyContext "SaidC3M2Road:1:0,Talk:1:1.154"
		    applycontexttoworld
		}
	},

	{
		Rule C3M2LeavingSafeRoomTrevor
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsTrevor IsNotSaidLeavingSafeArea ismapc3m2_swamp _auto_NotTellingStory
		    Response PlayerRemarkC3M2StartMechanic
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:1:1.547"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M2StartDryTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M2StartDry IsNotSaidC3M2StartDry IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear200 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2StartDryMechanic
		    ApplyContext "SaidC3M2StartDry:1:0,Talk:1:1.497"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M2UnderWaterShackTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M2UnderWaterShack IsNotSaidC3M2UnderWaterShack IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2UnderWaterShackMechanic
		    ApplyContext "SaidC3M2UnderWaterShack:1:0,Talk:1:4.380"
		    applycontexttoworld
		}
	},

	{
		Rule _C3M2UnderwaterShackTrevor
		{
		    criteria Concept_C3M2UnderwaterShack IsTrevor IsNotCoughing NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _C3M2UnderwaterShackMechanic
		}
	},

	{
		Rule PlayerRemarkC3M2Village1Trevor
		{
		    criteria ConceptRemark IsTrevor IsC3M2Village1 IsNotSaidC3M2Village1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear800 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2Village1Mechanic
		    ApplyContext "SaidC3M2Village1:1:0,Talk:1:1.848"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3LowerGateTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3LowerGate IsNotSaidC3M3BridgeButton IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3LowerGateMechanic
		    then any InfoRemC3M3LowerGatea foo:0 10
		    ApplyContext "SaidC3M3LowerGate:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3SearchHousesTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3SearchHouses IsNotSaidC3M3SearchHouses IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3SearchHousesMechanic
		    ApplyContext "SaidC3M3SearchHouses:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3StairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3Stairs IsNotSaidC3M3Stairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3StairsMechanic
		    ApplyContext "SaidC3M3Stairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3StayUpHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3StayUpHere IsNotSaidC3M3StayUpHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 ChanceToFire30Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3StayUpHereMechanic
		    ApplyContext "SaidC3M3StayUpHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkC3M3StayUpHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3StayUpHere IsNotSaidC3M3StayUpHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "SaidC3M3StayUpHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3ThisWayTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3ThisWay IsNotSaidC3M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3ThisWayMechanic
		    ApplyContext "SaidC3M3ThisWay:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkC3M3ThisWayTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3ThisWay IsNotSaidC3M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "SaidC3M3ThisWay:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3ThroughHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3ThroughHere IsNotSaidC3M3ThroughHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3ThroughHereMechanic
		    ApplyContext "SaidC3M3ThroughHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3ThroughThisHouseTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3ThroughThisHouse IsNotSaidC3M3ThroughThisHouse IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3ThroughThisHouseMechanic
		    ApplyContext "SaidC3M3ThroughThisHouse:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3UpHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3UpHere IsNotSaidC3M3UpHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear100 IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3UpHereMechanic
		    ApplyContext "SaidC3M3UpHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3UsePlanksTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3UsePlanks IsNotSaidC3M3UsePlanks IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 ChanceToFire30Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3UsePlanksMechanic
		    ApplyContext "SaidC3M3UsePlanks:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkC3M3UsePlanksTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3UsePlanks IsNotSaidC3M3UsePlanks IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "SaidC3M3UsePlanks:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc3m4downroadTrevor
		{
		    criteria ConceptRemark IsTrevor Isc3m4downroad IsNotSaidc3m4downroad IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc3m4downroadMechanic
		    ApplyContext "Saidc3m4downroad:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc3m4radioTrevor
		{
		    criteria ConceptRemark IsTrevor Isc3m4radio IsNotSaidc3m4radio IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1 IsNotSpeakingWeight0
		    Response PlayerRemarkc3m4radioMechanic
		    ApplyContext "Saidc3m4radio:1:0,Talk:1:1.228"
		    applycontexttoworld
		}
	},

	{
		Rule _C3M4_RadioTrevor
		{
		    criteria Concept_C3M4_Radio IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IssuerClose AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1
		    Response _C3M4_RadioMechanic
		    ApplyContext "Talk:1:1.507"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc3m4scaffoldTrevor
		{
		    criteria ConceptRemark IsTrevor Isc3m4scaffold IsNotSaidc3m4scaffold IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc3m4scaffoldMechanic
		    ApplyContext "Saidc3m4scaffold:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc3m4shacksTrevor
		{
		    criteria ConceptRemark IsTrevor Isc3m4shacks IsNotSaidc3m4shacks IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc3m4shacksMechanic
		    ApplyContext "Saidc3m4shacks:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m1_carcrashTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m1_carcrash IsNotSaidc4m1_carcrash IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear500 IsWorldTalkTrevor ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_carcrashMechanic
		    then any c4m1_wreck01 foo:0 0.01
		    ApplyContext "Saidc4m1_carcrash:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkc4m1_carcrashTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m1_carcrash IsNotSaidc4m1_carcrash IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "Saidc4m1_carcrash:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m1_garagesaleTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m1_garagesale IsNotSaidc4m1_garagesale IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear400 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_garagesaleMechanic
		    ApplyContext "Saidc4m1_garagesale:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m1_nogasTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m1_nogas IsNotSaidc4m1_nogas IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_nogasMechanic
		    then any c4m1_nogas01 foo:0 0.01
		    ApplyContext "Saidc4m1_nogas:1:0,Talk:1:0.929,_auto_NoGasGate:1:25"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m1_playgroundfarTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m1_playground IsNotSaidc4m1_playground IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear1000 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_playgroundfarMechanic
		    ApplyContext "Saidc4m1_playground:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m1_playgroundnearTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m1_playground IsNotSaidc4m1_playground IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_playgroundnearMechanic
		    ApplyContext "Saidc4m1_playground:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m1_throughhereATrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m1_throughhereA IsNotSaidc4m1_throughhereA IsNotCoughing IsTalk IsTalkTrevor IsSubjectNear400 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_throughhereAMechanic
		    ApplyContext "Saidc4m1_throughhereA:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_gasinsidesignTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_gasinsidesign IsNotSaidc4m2_gasinsidesign IsNotSaidSafeSpotAhead IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear350 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_gasinsidesignMechanic
		    then any _c4m2_gasinside01 foo:0 0.01
		    ApplyContext "Saidc4m2_gasinsidesign:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_millentranceTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_millentrance IsNotSaidc4m2_millentrance IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_millentranceMechanic
		    ApplyContext "Saidc4m2_millentrance:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_millentranceexitTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_millentranceexit IsNotSaidc4m2_millentranceexit IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_millentranceexitMechanic
		    ApplyContext "Saidc4m2_millentranceexit:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_seegasstationTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_seegasstation IsNotSaidc4m2_seegasstation IsNotSaidActivatedC4M2Elevator IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_seegasstationMechanic
		    then self _c4m2_seestation01 foo:0 0.01
		    ApplyContext "Talk:1:3,Saidc4m2_seegasstation:1:0,_auto_InsideMill:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_streetblockedTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_streetblocked IsNotSaidc4m2_streetblocked IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_streetblockedMechanic
		    then any _c4m2_streetblocked01 foo:0 0.01
		    ApplyContext "Saidc4m2_streetblocked:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_uprampTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_upramp IsNotSaidc4m2_upramp IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_uprampMechanic
		    ApplyContext "Saidc4m2_upramp:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_upthestairsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_upthestairs IsNotSaidc4m2_upthestairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_upthestairsMechanic
		    ApplyContext "Saidc4m2_upthestairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_useelevatorTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_useelevator IsNotSaidc4m2_useelevator IsNotSaidActivatedC4M2Elevator IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsSaidc4m2_seegasstation AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_useelevatorMechanic
		    ApplyContext "Saidc4m2_useelevator:1:0,_auto_InsideMill:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_waterpoolTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_waterpool IsNotSaidc4m2_waterpool IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_waterpoolMechanic
		    then any _c4m2_waterpool02 foo:0 0.01
		    ApplyContext "Saidc4m2_waterpool:1:0,c4m2_PastPuddle:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m2_weatherTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m2_weather IsNotSaidc4m2_weather IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_weatherMechanic
		    ApplyContext "Saidc4m2_weather:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_caneTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_cane IsNotSaidc4m3_cane IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_caneMechanic
		    ApplyContext "Saidc4m3_cane:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_crosshereTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_crosshere IsNotSaidc4m3_crosshere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_crosshereMechanic
		    ApplyContext "Saidc4m3_crosshere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_downhereTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_downhere IsNotSaidc4m3_downhere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_downhereMechanic
		    ApplyContext "Saidc4m3_downhere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_downstairsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_downstairs IsNotSaidc4m3_downstairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_downstairsMechanic
		    ApplyContext "Saidc4m3_downstairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_ducatelsignTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_ducatelsign IsNotSaidc4m3_ducatelsign IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_ducatelsignMechanic
		    ApplyContext "Saidc4m3_ducatelsign:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_elevatorTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_elevator IsNotSaidc4m3_elevator IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_elevatorMechanic
		    ApplyContext "Saidc4m3_elevator:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_overtankTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_overtank IsNotSaidc4m3_overtank IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_overtankMechanic
		    ApplyContext "Saidc4m3_overtank:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_rainTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_rain IsNotSaidc4m3_rain IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_rainMechanic
		    then any _c4m3_rain01 foo:0 0.02
		    ApplyContext "Saidc4m3_rain:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_thiswayTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_thisway IsNotSaidc4m3_thisway IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_millentranceexitMechanic
		    ApplyContext "Saidc4m3_thisway:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m3_uppipesTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m3_uppipes IsNotSaidc4m3_uppipes IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_uppipesMechanic
		    ApplyContext "Saidc4m3_uppipes:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m4_floodedTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m4_flooded NotInCombat IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_floodedMechanic
		    ApplyContext "SaidSaferoomRemarkIntro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m4_garagesaleTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m4_garagesale IsNotSaidc4m4_garagesale IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_garagesaleMechanic
		    ApplyContext "Saidc4m4_garagesale:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m4_garagesale2Trevor
		{
		    criteria ConceptRemark IsTrevor Isc4m4_garagesale2 IsNotSaidc4m4_garagesale IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_garagesaleMechanic
		    ApplyContext "Saidc4m4_garagesale:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m4_playgroundTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m4_playground IsNotSaidc4m4_playground IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival _auto_NotLockA IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_playgroundMechanic
		    ApplyContext "Saidc4m4_playground:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m4_porchlightTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m4_porchlight IsNotSaidc4m4_porchlight IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_porchlightMechanic
		    ApplyContext "Saidc4m4_porchlight:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m4_truckwreckTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m4_truckwreck IsNotSaidc4m4_truckwreck IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival _auto_NotLockA IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_truckwreckMechanic
		    ApplyContext "Saidc4m4_truckwreck:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkc4m4_useroofsTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m4_useroofs IsNotSaidc4m4_useroofs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_useroofsMechanic
		    ApplyContext "Saidc4m4_useroofs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkpathc2m1_billboardTrevor
		{
		    criteria ConceptRemark IsTrevor Ispathc2m1_billboard IsNotSaidpathc2m1_billboard IsNotCoughing NotInCombat IsTalkTrevor IsSubjectNear1000 IsWorldTalkTrevor IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkpathc2m1_billboardMechanic
		    then Coach _C2M1Billboard foo:0 0.01
		    ApplyContext "Saidpathc2m1_billboard:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkremark_caralarmTrevor
		{
		    criteria ConceptRemark IsTrevor Isremark_caralarm IsNotSaidremark_caralarm IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear700 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkremark_caralarmMechanic
		    ApplyContext "Saidremark_caralarm:1:300"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkremark_MidnightRidersBusTrevor
		{
		    criteria ConceptRemark IsTrevor Isremark_MidnightRidersBus IsNotSaidremark_MidnightRidersBus IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear1500 IsNotSpeakingWeight0
		    Response PlayerRemarkremark_MidnightRidersBusMechanic
		    ApplyContext "Saidremark_MidnightRidersBus:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M1CedaMapsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M1CedaMaps IsNotSaidWorldC1M1CedaMaps IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1CedaMapsMechanic
		    ApplyContext "SaidWorldC1M1CedaMaps:1:0,Talk:1:5.579"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M1DownHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M1DownHere IsNotSaidWorldC1M1DownHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1DownHereMechanic
		    ApplyContext "SaidWorldC1M1DownHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M1DownStairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M1DownStairs IsNotSaidWorldC1M1DownStairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1DownStairsMechanic
		    ApplyContext "SaidWorldC1M1DownStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M1ElevatorBrokenTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M1ElevatorBroken IsNotSaidWorldC1M1ElevatorBroken IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1ElevatorBrokenMechanic
		    ApplyContext "SaidWorldC1M1ElevatorBroken:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M1FireSpreadingTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M1FireSpreading IsNotSaidWorldC1M1FireSpreading IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1FireSpreadingMechanic
		    ApplyContext "SaidWorldC1M1FireSpreading:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M1FirstTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M1First IsNotSaidWorldC1M1First IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1FirstMechanic
		    ApplyContext "SaidWorldC1M1First:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M1LedgeTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M1Ledge IsNotSaidWorldC1M1Ledge IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1LedgeMechanic
		    ApplyContext "SaidWorldC1M1Ledge:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M1StairsSignTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M1StairsSign IsNotSaidWorldC1M1StairsSign IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1StairsSignMechanic
		    ApplyContext "SaidWorldC1M1StairsSign:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2CloseTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2Close IsNotSaidWorldC1M2Close IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2CloseMechanic
		    ApplyContext "SaidWorldC1M2Close:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2DownStairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2DownStairs IsNotSaidWorldC1M2DownStairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 TimeSinceGroupInCombat05 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2DownStairsMechanic
		    ApplyContext "SaidWorldC1M2DownStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2AbandonedTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2Abandoned IsNotSaidWorldC1M2Abandoned IsNotCoughing NotInCombat IntensityZero IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2AbandonedMechanic
		    ApplyContext "SaidWorldC1M2Abandoned:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2DumpsterTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2Dumpster IsNotSaidWorldC1M2Dumpster IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2DumpsterMechanic
		    ApplyContext "SaidWorldC1M2Dumpster:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2GunStoreCloseTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2GunStoreClose IsNotSaidWorldC1M2GunStoreClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2GunStoreCloseMechanic
		    ApplyContext "SaidWorldC1M2GunStoreClose:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2InHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2InHere IsNotSaidWorldC1M2InHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2InHereMechanic
		    ApplyContext "SaidWorldC1M2InHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2JumpTruckTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2JumpTruck IsNotSaidWorldC1M2JumpTruck IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2JumpTruckMechanic
		    ApplyContext "SaidWorldC1M2JumpTruck:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2MallSignHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2MallSignHere IsNotSaidWorldC1M2MallSignHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2MallSignHereMechanic
		    ApplyContext "SaidWorldC1M2MallSignHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2MallThisWayTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2MallThisWay IsNotSaidWorldC1M2MallThisWay IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2MallThisWayMechanic
		    ApplyContext "SaidWorldC1M2MallThisWay:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC1M2UpStairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC1M2UpStairs IsNotSaidWorldC1M2UpStairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2UpStairsMechanic
		    ApplyContext "SaidWorldC1M2UpStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1AmmoUpTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1AmmoUp IsNotSaidWorldC3M1AmmoUp IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear400 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1AmmoUpMechanic
		    ApplyContext "SaidWorldC3M1AmmoUp:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1CheckingHousesTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1CheckingHouses IsNotSaidWorldC3M1CheckingHouses IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear200 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1CheckingHousesMechanic
		    ApplyContext "SaidWorldC3M1CheckingHouses:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1FeedGatorTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1FeedGator IsNotSaidWorldC3M1FeedGator IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear400 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1FeedGatorMechanic
		    ApplyContext "SaidWorldC3M1FeedGator:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1FerryCrossingTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1FerryCrossing IsNotSaidWorldC3M1FerryCrossing IsNotCoughing NotInCombat IsTalkTrevor IsSubjectNear200 IsWorldTalkTrevor ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 1
		    Response PlayerRemarkWorldC3M1FerryCrossingMechanic
		    then producer WorldC3M1FerryCrossingE01 foo:0 -6.143
		    ApplyContext "SaidWorldC3M1FerryCrossing:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1FerryCrossingCoachTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1FerryCrossing IsNotSaidWorldC3M1FerryCrossing IsNotCoughing NotInCombat IsTalkTrevor IsSubjectNear200 IsCoachAlive IsWorldTalkTrevor ChanceToFire75Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 2
		    Response PlayerRemarkWorldC3M1FerryCrossingCoachMechanic
		    then coach WorldC3M1FerryCrossingG01 foo:0 -4.268
		    ApplyContext "SaidWorldC3M1FerryCrossing:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1FerryCrossingNickTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1FerryCrossing IsNotSaidWorldC3M1FerryCrossing IsNotCoughing NotInCombat IsTalkTrevor IsSubjectNear200 IsGamblerAlive IsWorldTalkTrevor ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 3
		    Response PlayerRemarkWorldC3M1FerryCrossingNickMechanic
		    then gambler WorldC3M1FerryCrossingI01 foo:0 -2.234
		    ApplyContext "SaidWorldC3M1FerryCrossing:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1FerryNagTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1FerryNag IsNotSaidWorldC3M1FerryNag IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear600 IsNotSaidC3M1CallFerry2 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1FerryNagMechanic
		    ApplyContext "SaidWorldC3M1FerryNag:1:0,_auto_TimerLockA:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule _C3M1CrazyMilitantsTrevor
		{
		    criteria Concept_C3M1CrazyMilitants IsTrevor
		    Response _C3M1CrazyMilitantsMechanic
		}
	},

	{
		Rule PlayerRemarkWorldC3M1FerryNagaTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSaidWorldC3M1FerryNag IsNotSaidC3M1CallFerry2 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotTimerLockA _auto_NotTimerLockTrevor
		    Response PlayerRemarkWorldC3M1FerryNagaMechanic
		    ApplyContext "_auto_TimerLockA:1:20,_auto_TimerLockTrevor:1:40"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1GetBackUpTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1WeShouldGetBackUp IsNotSaidWorldC3M1WeShouldGetBackUp IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1GetBackUpMechanic
		    ApplyContext "SaidWorldC3M1WeShouldGetBackUp:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1LitterTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1Litter IsNotSaidWorldC3M1Litter IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 ChanceToFire20Percent IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1LitterMechanic
		    ApplyContext "SaidWorldC3M1Litter:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkWorldC3M1LitterTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1Litter IsNotSaidWorldC3M1Litter IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "SaidWorldC3M1Litter:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1Path01Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1Path01 IsNotSaidWorldC3M1Path01 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear400 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1Path01Mechanic
		    ApplyContext "SaidWorldC3M1Path01:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1PlanksRightTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1PlanksRight IsNotSaidWorldC3M1PlanksRight IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1PlanksRightMechanic
		    ApplyContext "SaidWorldC3M1PlanksRight:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1StairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1Stairs IsNotSaidWorldC3M1Stairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1StairsMechanic
		    ApplyContext "SaidWorldC3M1Stairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1StayOnTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1StayOn IsNotSaidWorldC3M1StayOn IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear200 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1StayOnMechanic
		    ApplyContext "SaidWorldC3M1StayOn:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1WalkwaysTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1Walkways IsNotSaidWorldC3M1Walkways IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear600 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1WalkwaysMechanic
		    ApplyContext "SaidWorldC3M1Walkways:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC3M1WhichWayTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC3M1WhichWay IsNotSaidWorldC3M1WhichWay IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear400 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1WhichWayMechanic
		    ApplyContext "SaidWorldC3M1WhichWay:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC502AlarmButtonTrevor
		{
		    criteria ConceptWorldC502AlarmButton IsTrevor IsNotCoughing IsNotScavenge
		    Response PlayerRemarkWorldC502AlarmButtonMechanic
		}
	},

	{
		Rule PlayerRemarkWorldC502AlarmStoppedTrevor
		{
		    criteria ConceptWorldC502AlarmStopped IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerRemarkWorldC502AlarmStoppedMechanic
		}
	},

	{
		Rule PlayerRemarkWorldC502AlarmStopped2Trevor
		{
		    criteria ConceptWorldC502AlarmStopped2 IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerRemarkWorldC502AlarmStopped2Mechanic
		}
	},

	{
		Rule PlayerRemarkWorldC502AlleyTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC502Alley IsNotSaidWorldC502Alley IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC502AlleyMechanic
		    ApplyContext "SaidWorldC52Alley:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC502BusStoryTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC502BusStory IsNotSaidWorldC502BusStory IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear400 IsGamblerNear200 ChanceToFire50Percent IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival TimeSinceGroupInCombat02 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC502BusStoryMechanic
		    then Gambler WorldC502BusStory2 foo:0 -4.418
		    ApplyContext "SaidWorldC502BusStory:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkWorldC502BusStoryTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC502BusStory IsNotSaidWorldC502BusStory IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear400 IsGamblerNear200 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival TimeSinceGroupInCombat02 IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "SaidWorldC502BusStory:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC502BusStory2bTrevor
		{
		    criteria ConceptWorldC502BusStory2b IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerRemarkWorldC502BusStory2bMechanic
		    then self WorldC502BusStory2c foo:0 -2.060
		}
	},

	{
		Rule PlayerRemarkWorldC502BusStory2cTrevor
		{
		    criteria ConceptWorldC502BusStory2c IsTrevor IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerRemarkWorldC502BusStory2cMechanic
		}
	},

	{
		Rule PlayerRemarkWorldC502NotZombies2Trevor
		{
		    criteria ConceptWorldC502NotZombies2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerRemarkWorldC502NotZombies2Mechanic
		}
	},

	{
		Rule PlayerRemarkWorldC502Run1Trevor
		{
		    criteria ConceptWorldC502AlarmButtonRun IsTrevor IsNotCoughing
		    Response PlayerRemarkWorldC502Run1Mechanic
		}
	},

	{
		Rule PlayerRemarkWorldSignReportUnusualTrevor
		{
		    criteria ConceptWorldSignReportUnusual2 IsTrevor IsNotCoughing NotInCombat IssuerClose IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerRemarkWorldSignReportUnusualMechanic
		}
	},

	{
		Rule PlayerRemarkWorldSignOfficialInstructionsTrevor
		{
		    criteria ConceptWorldC502OfficialInstructions IsTrevor IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerRemarkWorldSignOfficialInstructionsMechanic
		}
	},

	{
		Rule PlayerRemarkWorldSignQuarantineZoneTrevor
		{
		    criteria ConceptWorldC502QuarantineZone IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerRemarkWorldSignQuarantineZoneMechanic
		}
	},

	{
		Rule PlayerRemarkWorldC502SmellTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC502Smell IsNotSaidWorldC502Smell IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear600 IsNotSaidSmell ChanceToFire50Percent IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC502SmellMechanic
		    ApplyContext "SaidWorldC502Smell:1:0,SaidSmell:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule AUTOBLANK_PlayerRemarkWorldC502SmellTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC502Smell IsNotSaidWorldC502Smell IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear600 IsNotSaidSmell IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankMechanic
		    ApplyContext "SaidWorldC502Smell:1:0,SaidSmell:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC502Smell2Trevor
		{
		    criteria ConceptWorldC502Smell2 IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor IsNotScavenge
		    Response PlayerRemarkWorldC502Smell2Mechanic
		}
	},

	{
		Rule PlayerRemarkWorldC502SmellBath2Trevor
		{
		    criteria ConceptWorldC502SmellBath2 IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear300 IsWorldTalkTrevor IsNotScavenge
		    Response PlayerRemarkWorldC502SmellBath2Mechanic
		    then Gambler WorldC502SmellBath3 foo:0 -2.916
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_AcrossHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_AcrossHere IsNotSaidWorldC6M1_AcrossHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AcrossHereMechanic
		    ApplyContext "SaidWorldC6M1_AcrossHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_AlleyBelowTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_AlleyBelow IsNotSaidWorldC6M1_AlleyBelow IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AlleyBelowMechanic
		    ApplyContext "SaidWorldC6M1_AlleyBelow:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_AlleyIntoBuildingTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_AlleyIntoBuilding IsNotSaidWorldC6M1_AlleyIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AlleyIntoBuildingMechanic
		    ApplyContext "SaidWorldC6M1_AlleyIntoBuilding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_InAptsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_InApts IsNotSaidWorldC6M1_InApts IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_InAptsMechanic
		    ApplyContext "SaidWorldC6M1_InApts:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_IntoThePark2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_IntoThePark2 IsNotSaidWorldC6M1_IntoThePark2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntoThePark2Mechanic
		    ApplyContext "SaidWorldC6M1_IntoThePark2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_IntoTheStoreTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_IntoTheStore IsNotSaidWorldC6M1_IntoTheStore IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntoTheStoreMechanic
		    ApplyContext "SaidWorldC6M1_IntoTheStore:1:0,JustSaidWorldC6M1_IntoTheStore:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_PostWeddingTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_PostWedding IsNotSaidWorldC6M1_PostWedding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_PostWeddingMechanic
		    ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_PostWeddingZTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_PostWedding IsNotSaidWorldC6M1_PostWedding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 IsZoeyIntroActor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_PostWeddingZMechanic
		    then Any WorldC6M1_PostWedding02a foo:0 -3.481
		    ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_PostWeddingZCTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_PostWedding IsNotSaidWorldC6M1_PostWedding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 IsZoeyIntroActor ChanceToFire20Percent IsCoachAlive IsCoachNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_PostWeddingZCMechanic
		    then Coach WorldC6M1_PostWedding01a foo:0 -2.761
		    ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_SafeRoomAlleyTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_SafeRoomAlley IsNotSaidWorldC6M1_SafeRoomAlley IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_SafeRoomAlleyMechanic
		    ApplyContext "SaidWorldC6M1_SafeRoomAlley:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_ThroughBarTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_ThroughBar IsNotSaidWorldC6M1_ThroughBar IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_ThroughBarMechanic
		    ApplyContext "SaidWorldC6M1_ThroughBar:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_UpHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_UpHere IsNotSaidWorldC6M1_UpHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpHereMechanic
		    ApplyContext "SaidWorldC6M1_UpHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_UpTheStairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_UpTheStairs IsNotSaidWorldC6M1_UpTheStairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairsMechanic
		    ApplyContext "SaidWorldC6M1_UpTheStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_UpTheStairs2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_UpTheStairs2 IsNotSaidWorldC6M1_UpTheStairs2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairs2Mechanic
		    ApplyContext "SaidWorldC6M1_UpTheStairs2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_WeddingWarnTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsWitchPresent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarnMechanic
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_AcrossPlankTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_AcrossPlank IsNotSaidWorldC6M2_AcrossPlank IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear250 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AcrossPlankMechanic
		    ApplyContext "SaidWorldC6M2_AcrossPlank:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_AfterGate1Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_AfterGate1 IsNotSaidWorldC6M2_AfterGate1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGate1Mechanic
		    ApplyContext "SaidWorldC6M2_AfterGate1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_AfterGate2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_AfterGate2 IsNotSaidWorldC6M2_AfterGate2 IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGate2Mechanic
		    then Gambler WorldC6M2_AfterGate201a foo:0 -1.968
		    ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_AfterGateNickTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_AfterGate2 IsNotSaidWorldC6M2_AfterGate2 IsNotCoughing IsTalk IsTalkTrevor IsGamblerNear400 ChanceToFire50Percent IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGateNickMechanic
		    then Gambler WorldC6M2_AfterGate201a foo:0 -1.968
		    ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_DownHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_DownHere IsNotSaidWorldC6M2_DownHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_DownHereMechanic
		    ApplyContext "SaidWorldC6M2_DownHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_DownIntoBuildingTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_DownIntoBuilding IsNotSaidWorldC6M2_DownIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_DownIntoBuildingMechanic
		    ApplyContext "SaidWorldC6M2_DownIntoBuilding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_FinalLadderTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_FinalLadder IsNotSaidWorldC6M2_FinalLadder IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalLadderMechanic
		    ApplyContext "SaidWorldC6M2_FinalLadder:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_FinalWaterTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_FinalWater IsNotSaidWorldC6M2_FinalWater IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterMechanic
		    then Gambler WorldC6M2_FinalWater01a foo:0 -1.706
		    ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_FinalWaterNickTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_FinalWater IsNotSaidWorldC6M2_FinalWater IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsGamblerNear400 ChanceToFire50Percent IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterNickMechanic
		    then Gambler WorldC6M2_FinalWater01a foo:0 -1.706
		    ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_FinalWaterGoGoTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_FinalWaterGoGo IsNotSaidWorldC6M2_FinalWaterGoGo IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterGoGoMechanic
		    ApplyContext "SaidWorldC6M2_FinalWaterGoGo:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_InJazzClubTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_InJazzClub IsNotSaidWorldC6M2_InJazzClub IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InJazzClubMechanic
		    ApplyContext "SaidWorldC6M2_InJazzClub:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_InSewer2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_InSewer2 IsNotSaidWorldC6M2_InSewer2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsSaidWorldC6M2_InSewer1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewer2Mechanic
		    then Producer WorldC6M2_InSewer202a foo:0 -4.622
		    ApplyContext "SaidWorldC6M2_InSewer2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_InSewerLadder1Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_InSewerLadder1 IsNotSaidWorldC6M2_InSewerLadder1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewerLadder1Mechanic
		    then Any WorldC6M2_InSewerLadder101a foo:0 -2.795
		    ApplyContext "SaidWorldC6M2_InSewerLadder1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_IntoConstructionTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_IntoConstruction IsNotSaidWorldC6M2_IntoConstruction IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_IntoConstructionMechanic
		    ApplyContext "SaidWorldC6M2_IntoConstruction:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_IntoPoolHallTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_IntoPoolHall IsNotSaidWorldC6M2_IntoPoolHall IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_IntoPoolHallMechanic
		    ApplyContext "SaidWorldC6M2_IntoPoolHall:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_JukeBoxTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_JukeBox IsNotSaidWorldC6M2_JukeBox IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_JukeBoxMechanic
		    ApplyContext "SaidWorldC6M2_JukeBox:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_JumpDownTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_JumpDown IsNotSaidWorldC6M2_JumpDown IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_JumpDownMechanic
		    ApplyContext "SaidWorldC6M2_JumpDown:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2FallingTrevor
		{
		    criteria ConceptC2M1Falling IsTrevor isc6m2_bedlam AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M2FallingMechanic
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_OnTourWalk2 IsNotSaidWorldC6M2_OnTourWalk2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk2Mechanic
		    ApplyContext "SaidWorldC6M2_OnTourWalk2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk3Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_OnTourWalk3 IsNotSaidWorldC6M2_OnTourWalk3 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk3Mechanic
		    ApplyContext "SaidWorldC6M2_OnTourWalk3:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_OpenGate1Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_OpenGate1 IsNotSaidWorldC6M2_OpenGate1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSaidOpenedGate1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate1Mechanic
		    ApplyContext "SaidWorldC6M2_OpenGate1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_OpenGate2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_OpenGate2 IsNotSaidWorldC6M2_OpenGate2 IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSaidOpenedGate2 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate2Mechanic
		    ApplyContext "SaidWorldC6M2_OpenGate2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_Phase2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Phase2 IsNotSaidWorldC6M2_Phase2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2Mechanic
		    then Producer WorldC6M2_Phase201a foo:0 -1.792
		    ApplyContext "SaidWorldC6M2_Phase2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_Phase2DownTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2DownMechanic
		    ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_Phase2DownIntenseTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IntensityOver75 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2DownIntenseMechanic
		    ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_PostGate1xTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_PostGate1 IsNotSaidWorldC6M2_PostGate1 IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsSaidOpenedGate1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_PostGate1xMechanic
		    ApplyContext "SaidWorldC6M2_PostGate1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_TattooTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Tattoo IsNotSaidWorldC6M2_Tattoo IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TattooMechanic
		    ApplyContext "SaidWorldC6M2_Tattoo:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_TattooStoryTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Tattoo IsNotSaidWorldC6M2_Tattoo ExtraWeight10 ChanceToFire10Percent IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TattooStoryMechanic
		    then any TrevorInterrupt foo:0 -13.10
		    ApplyContext "SaidWorldC6M2_Tattoo:1:0,_auto_TellingStory:1:14"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_TourEntranceTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_TourEntrance IsNotSaidWorldC6M2_TourEntrance IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TourEntranceMechanic
		    ApplyContext "SaidWorldC6M2_TourEntrance:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_UpCatWalkTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_UpCatWalk IsNotSaidWorldC6M2_UpCatWalk IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpCatWalkMechanic
		    ApplyContext "SaidWorldC6M2_UpCatWalk:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_UpStairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_UpStairs IsNotSaidWorldC6M2_UpStairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpStairsMechanic
		    ApplyContext "SaidWorldC6M2_UpStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_UpStairs2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_UpStairs2 IsNotSaidWorldC6M2_UpStairs2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpStairs2Mechanic
		    ApplyContext "SaidWorldC6M2_UpStairs2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M3_BridgeRunTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M3_BridgeRun IsNotSaidWorldC6M3_BridgeRun IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_BridgeRunMechanic
		    then any WorldC6M3_ByBridge01 foo:0 -1.803
		    ApplyContext "SaidWorldC6M3_BridgeRun:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M3_ByBridgeFrancisTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 IsFrancisIntroActor AutoIsNotScavenge AutoIsNotSurvival _auto_C6M3BridgeDown IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_ByBridgeFrancisMechanic
		    then biker WorldC6M3_ByBridge01 foo:0 0.3
		    ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M3_ByBridgeZoeyTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 IsZoeyIntroActor AutoIsNotScavenge AutoIsNotSurvival _auto_C6M3BridgeDown IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_ByBridgeZoeyMechanic
		    then teengirl WorldC6M3_ByBridge01 foo:0 0.3
		    ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldFootLockerTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldFootLocker IsNotSaidWorldFootLocker IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldFootLockerMechanic
		    ApplyContext "SaidWorldFootLocker:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M3_BillTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M3_Bill IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0 _auto_NotC6M3Bill
		    Response PlayerRemarkWorldC6M3_BillMechanic
		    ApplyContext "_auto_TrevorC6M3Bill:1:0,_auto_C6M3Bill:1:0,SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule WorldC6M3LossLouisTrevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor Isc6m3_port IsNotSmartLookAuto IsSubjectNone IsManagerNear500 IsWorldTalkTrevor _auto_SawC6M3Bill _auto_TrevorSawC6M3Bill
		    Response WorldC6M3LossMechanic
		    then Manager c6m3_loss foo:0 0.1
		    ApplyContext "_auto_C6M3Bill:2:0,Talk:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule WorldC6M3LossLouis2Trevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor Isc6m3_port IsNotSmartLookAuto IsSubjectNone IsManagerNear500 IsWorldTalkTrevor _auto_SawC6M3Bill _auto_TrevorSawC6M3Bill
		    Response WorldC6M3LossMechanic
		    then Manager c6m3_loss foo:0 0.1
		    ApplyContext "_auto_C6M3Bill:2:0,Talk:1:15"
		    applycontexttoworld
		}
	},

	{
		Rule WorldC6M3Loss2Trevor
		{
		    criteria Conceptc6m3_loss IsNotCoughing IsTrevor
		    Response WorldC6M3Loss2Mechanic
		    then from c6m3_loss2 foo:0 -0.7
		}
	},

	{
		Rule WorldC6M3Loss3Trevor
		{
		    criteria Conceptc6m3_loss2 IsNotCoughing IsTrevor
		    Response WorldC6M3Loss3Mechanic
		    then from c6m3_loss3 foo:0 0.3
		}
	},

	{
		Rule PlayerRemarkWorldSignColdBeerTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldSignColdBeer IsNotSaidWorldSignColdBeer IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsSubjectNear200 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldSignColdBeerMechanic
		    then Any WorldSignColdBeer2 foo:0 -2.701
		    ApplyContext "SaidWorldSignColdBeer:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldSignPhotography2Trevor
		{
		    criteria ConceptWorldSignPhotography2 IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IssuerClose IsWorldTalkTrevor IsNotScavenge
		    Response PlayerRemarkWorldSignPhotography2Mechanic
		    ApplyContext "Talk:1:1.763"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldSignReportSick2Trevor
		{
		    criteria ConceptWorldSignReportSick2 IsTrevor IsNotCoughing NotInCombat IsTalk IsTalkTrevor IssuerClose IsWorldTalkTrevor IsNotScavenge AutoIsNotSurvival
		    Response PlayerRemarkWorldSignReportSick2Mechanic
		    then Producer WorldSignReportSick3 foo:0 -1.323
		}
	},

	{
		Rule PlayerWorldSignC5AlarmWillSoundTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldSignC5AlarmWillSound IsNotSaidWorldSignC5AlarmWillSound IsNotCoughing IsTalk IsTalkTrevor IsSubjectNear200 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerWorldSignC5AlarmWillSoundMechanic
		    then any WorldSignC5AlarmWillSound3 foo:0 0.1
		    ApplyContext "SaidWorldSignC5AlarmWillSound:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWorldSignC5AlarmWillSound3Trevor
		{
		    criteria ConceptWorldSignC5AlarmWillSound3 IsTrevor IsNotCoughing NotInCombat _auto_NotAlarm
		    Response PlayerWorldSignC5AlarmWillSound3Mechanic
		    then Gambler WorldSignC5AlarmWillSound3c foo:0 -1.502
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWorldSignC5AlarmWillSound3dTrevor
		{
		    criteria ConceptWorldSignC5AlarmWillSound3d IsTrevor IsNotCoughing NotInCombat _auto_NotAlarm
		    Response PlayerWorldSignC5AlarmWillSound3dMechanic
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule RespondAffirmativeTrevor
		{
		    criteria ConceptRespondAffirmative IssuerMediumClose IsNotCoughing NotInCombat isTrevor IsTalkTrevor IsWorldTalkTrevor
		    Response RespondAffirmativeMechanic
		}
	},

	{
		Rule PlayerFollowMeTrevor
		{
		    criteria ConceptPlayerFollowMe IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerFollowMeMechanic
		}
	},

	{
		Rule PlayerHelpTrevor
		{
		    criteria ConceptPlayerHelp IsTrevor IsNotCoughing IsTalk IsNotIncapacitated IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerHelpMechanic
		}
	},

	{
		Rule PlayerHurryUpTrevor
		{
		    criteria ConceptPlayerHurryUp IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerHurryUpMechanic
		}
	},

	{
		Rule PlayerHurryUpC4M2Trevor
		{
		    criteria ConceptPlayerHurryUp IsTrevor IsNotInSafeSpot IsNotInCheckpoint IsTalk IsTalkTrevor IsNotSaidSafeSpotAhead ismap_c4m2_sugarmill_a IsNotZombiePresentTank IsWorldTalkTrevor _auto_IsTrevorInWitchville
		    Response PlayerHurryUpC4M2Mechanic
		}
	},

	{
		Rule PlayerKillThatLightTrevor
		{
		    criteria ConceptPlayerKillThatLight IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerKillThatLightMechanic
		}
	},

	{
		Rule PlayerLeadOnTrevor
		{
		    criteria ConceptPlayerLeadOn IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerLeadOnMechanic
		}
	},

	{
		Rule PlayerMoveOnTrevor
		{
		    criteria ConceptPlayerMoveOn IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerMoveOnMechanic
		}
	},

	{
		Rule PlayerStayTogetherTrevor
		{
		    criteria ConceptPlayerStayTogether IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerStayTogetherMechanic
		}
	},

	{
		Rule PlayerWatchOutBehindTrevor
		{
		    criteria ConceptPlayerWatchOutBehind IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerWatchOutBehindMechanic
		}
	},

	{
		Rule PlayerAskReadyTrevor
		{
		    criteria ConceptPlayerAskReady IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerAskReadyMechanic
		}
	},

	{
		Rule PlayerImWithYouTrevor
		{
		    criteria ConceptPlayerImWithYou IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerImWithYouMechanic
		}
	},

	{
		Rule PlayerLaughTrevor
		{
		    criteria ConceptPlayerLaugh IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotVersus
		    Response PlayerLaughMechanic
		}
	},

	{
		Rule PlayerLostCallTrevor
		{
		    criteria ConceptPlayerLostCall IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerLostCallMechanic
		}
	},

	{
		Rule PlayerNiceJobResponseTrevor
		{
		    criteria ConceptPlayerNiceJob IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerNiceJobResponseMechanic
		}
	},

	{
		Rule PlayerNoTrevor
		{
		    criteria ConceptPlayerNo IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerNoMechanic
		}
	},

	{
		Rule PlayerAnswerLostCallTrevor
		{
		    criteria ConceptPlayerAnswerLostCall IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerAnswerLostCallMechanic
		}
	},

	{
		Rule PlayerSorryTrevor
		{
		    criteria ConceptPlayerSorry IsNotCoughing IsNotShotTeammateTrevor IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerSorryMechanic
		}
	},

	{
		Rule PlayerSorryFFTrevor
		{
		    criteria ConceptPlayerSorry IsNotCoughing IsShotTeammateTrevor IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerSorryFFMechanic
		}
	},

	{
		Rule PlayerThanksTrevor
		{
		    criteria ConceptPlayerThanks IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerThanksMechanic
		}
	},

	{
		Rule PlayerYellRunTrevor
		{
		    criteria ConceptPlayerYellRun IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerYellRunMechanic
		}
	},

	{
		Rule PlayerYesTrevor
		{
		    criteria ConceptPlayerYes IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerYesMechanic
		}
	},

	{
		Rule PlayerYouAreWelcomeTrevor
		{
		    criteria ConceptPlayerYouAreWelcome IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerYouAreWelcomeMechanic
		}
	},

	{
		Rule YouAreWelcomeTrevor
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsTrevor IsTalk IsTalkTrevor TimeSinceGroupInCombat05 IsNotSpeaking IsWorldTalkTrevor
		    Response PlayerYouAreWelcomeMechanic
		}
	},

	{
		Rule YouAreWelcomeCoachTrevor
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsTrevor IsTalk IsTalkTrevor FromIsCoach ChanceToFire30Percent TimeSinceGroupInCombat05 IsWorldTalkTrevor
		    Response YouAreWelcomeCoachMechanic
		}
	},

	{
		Rule YouAreWelcomeCoachC1Trevor
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsTrevor IsTalk IsTalkTrevor FromIsCoach ChanceToFire30Percent IsWorldTalkTrevor TimeSinceGroupInCombat05 ismap_c1m1_hotel NoKnowNames
		    Response YouAreWelcomeCoachC1Mechanic
		}
	},

	{
		Rule YouAreWelcomeGamblerTrevor
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsTrevor IsTalk IsTalkTrevor FromIsGambler ChanceToFire30Percent TimeSinceGroupInCombat05 IsWorldTalkTrevor
		    Response YouAreWelcomeGamblerMechanic
		}
	},

	{
		Rule YouAreWelcomeGamblerC1Trevor
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsTrevor IsTalk IsTalkTrevor FromIsGambler ChanceToFire30Percent TimeSinceGroupInCombat05 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response YouAreWelcomeGamblerC1Mechanic
		}
	},

	{
		Rule YouAreWelcomeProducerTrevor
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsTrevor IsTalk IsTalkTrevor FromIsProducer ChanceToFire30Percent TimeSinceGroupInCombat05 IsWorldTalkTrevor
		    Response YouAreWelcomeProducerMechanic
		}
	},

	{
		Rule YouAreWelcomeProducerC1Trevor
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsTrevor IsTalk IsTalkTrevor FromIsProducer ChanceToFire30Percent TimeSinceGroupInCombat05 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response YouAreWelcomeProducerC1Mechanic
		}
	},

	{
		Rule BotAttentionBattleTrevor
		{
		    criteria ConceptSurvivorBotNoteHumanAttention IsNotCoughing IsTrevor IsNotBotAttention IsTalk IsTalkTrevor IsNotIncapacitated IsInBattlefield TimeSinceGroupInCombat20 IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response BotAttentionBattleMechanic
		    ApplyContext "SaidBotAttention:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule BotNoteHumanAttentionTrevor
		{
		    criteria ConceptSurvivorBotNoteHumanAttention IsNotCoughing IsTrevor IsNotBotAttention IsTalk IsTalkTrevor IsNotIncapacitated IsInStartArea IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response BotNoteHumanAttentionMechanic
		    ApplyContext "SaidBotAttention:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerNegativeTrevor
		{
		    criteria ConceptPlayerNegative IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerNegativeMechanic
		}
	},

	{
		Rule PlayerShootCarNotTrevor
		{
		    criteria ConceptPanicEvent IsTrevor IsNotCoughing SubjectIsNotTrevor IsNotc5m3_cemetery IsTalk IsTalkTrevor IsCarAlarm ChanceToFire60Percent IsWorldTalkTrevor
		    Response PlayerShootCarNotMechanic
		    ApplyContext "Saidremark_caralarm:1:300"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerShootCarTrevor
		{
		    criteria ConceptPanicEvent IsTrevor IsNotCoughing SubjectIsTrevor IsNotc5m3_cemetery IsTalk IsTalkTrevor IsCarAlarm IsWorldTalkTrevor
		    Response PlayerShootCarMechanic
		    ApplyContext "Saidremark_caralarm:1:300"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerHeardBoomerTrevor
		{
		    criteria ConceptPlayerHeardBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerHeardBoomerMechanic
		}
	},

	{
		Rule PlayerHeardHunterTrevor
		{
		    criteria ConceptPlayerHeardHunter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerHeardHunterMechanic
		}
	},

	{
		Rule PlayerHeardSmokerTrevor
		{
		    criteria ConceptPlayerHeardSmoker IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerHeardSmokerMechanic
		}
	},

	{
		Rule PlayerHeardChargerTrevor
		{
		    criteria ConceptPlayerHeardCharger IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerHeardChargerMechanic
		}
	},

	{
		Rule PlayerHeardSpitterTrevor
		{
		    criteria ConceptPlayerHeardSpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerHeardSpitterMechanic
		}
	},

	{
		Rule PlayerHeardJockeyTrevor
		{
		    criteria ConceptPlayerHeardJockey IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerHeardJockeyMechanic
		}
	},

	{
		Rule PlayerHeardBoomerC1Trevor
		{
		    criteria ConceptPlayerHeardBoomer IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowBoomer
		    Response PlayerHeardBoomerC1Mechanic
		}
	},

	{
		Rule PlayerHeardHunterC1Trevor
		{
		    criteria ConceptPlayerHeardHunter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowHunter
		    Response PlayerHeardBoomerC1Mechanic
		}
	},

	{
		Rule PlayerHeardSmokerC1Trevor
		{
		    criteria ConceptPlayerHeardSmoker IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowSmoker
		    Response PlayerHeardBoomerC1Mechanic
		}
	},

	{
		Rule PlayerHeardChargerC1Trevor
		{
		    criteria ConceptPlayerHeardCharger IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowCharger
		    Response PlayerHeardBoomerC1Mechanic
		}
	},

	{
		Rule PlayerHeardSpitterC1Trevor
		{
		    criteria ConceptPlayerHeardSpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowSpitter
		    Response PlayerHeardBoomerC1Mechanic
		}
	},

	{
		Rule PlayerHeardJockeyC1Trevor
		{
		    criteria ConceptPlayerHeardJockey IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowJockey
		    Response PlayerHeardJockeyC1Mechanic
		}
	},

	{
		Rule PlayerHeardTankTrevor
		{
		    criteria ConceptPlayerHeardTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerHeardTankMechanic
		}
	},

	{
		Rule PlayerHeardWitchTrevor
		{
		    criteria ConceptPlayerHeardWitch IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerHeardWitchMechanic
		}
	},

	{
		Rule PlayerHurrahTrevor
		{
		    criteria ConceptPlayerHurrah IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerHurrahMechanic
		}
	},

	{
		Rule PlayerWarnCarefulTrevor
		{
		    criteria ConceptPlayerWarnCareful IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerWarnCarefulMechanic
		}
	},

	{
		Rule SurvivorSpottedWorldFarTrevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsWorldTalkTrevor
		    Response SurvivorSpottedWorldFarMechanic
		}
	},

	{
		Rule C6M3_PourFinishedTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsL4D1Alive Isc6m3_port ChanceToFire20Percent
		    Response C6M3_PourFinishedMechanic
		    then Manager L4D1_NiceJobPour foo:0 0
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule GasPour20MoreSCTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Score20MoreSC
		    Response GasPour20MoreSCMechanic
		    then self GasPour20More foo:0 0.01
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},

	{
		Rule GasPour20MoreWaitTrevor
		{
		    criteria ConceptGasPour20More IsTrevor IsSpeaking _auto_IsGasCountOK
		    Response GasPour20MoreWaitMechanic
		    then self GasPour20More foo:0 0.1
		}
	},

	{
		Rule GasPour10MoreSCTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Score10MoreSC
		    Response GasPour10MoreSCMechanic
		    then self GasPour10More foo:0 0.01
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},

	{
		Rule GasPour10MoreWaitTrevor
		{
		    criteria ConceptGasPour10More IsTrevor IsSpeaking _auto_IsGasCountOK
		    Response GasPour10MoreWaitMechanic
		    then self GasPour10More foo:0 0.1
		}
	},

	{
		Rule GasPour1MoreSCTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Score1MoreSC
		    Response GasPour1MoreSCMechanic
		    then self GasPour1More foo:0 0.01
		    ApplyContext "_auto_GasCountOK:1:4,_auto_NoGasPourLine:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule GasPour1MoreWaitTrevor
		{
		    criteria ConceptGasPour1More IsTrevor IsSpeaking _auto_IsGasCountOK
		    Response GasPour1MoreWaitMechanic
		    then self GasPour1More foo:0 0.1
		}
	},

	{
		Rule GasPour2MoreSCTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Score2MoreSC
		    Response GasPour2MoreSCMechanic
		    then self GasPour2More foo:0 0.01
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},

	{
		Rule GasPour2MoreWaitTrevor
		{
		    criteria ConceptGasPour2More IsTrevor IsSpeaking _auto_IsGasCountOK
		    Response GasPour2MoreWaitMechanic
		    then self GasPour2More foo:0 0.1
		}
	},

	{
		Rule GasPour3MoreSCTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Score3MoreSC
		    Response GasPour3MoreSCMechanic
		    then self GasPour3More foo:0 0.01
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},

	{
		Rule GasPour3MoreWaitTrevor
		{
		    criteria ConceptGasPour3More IsTrevor IsSpeaking _auto_IsGasCountOK
		    Response GasPour3MoreWaitMechanic
		    then self GasPour3More foo:0 0.1
		}
	},

	{
		Rule GasPour5MoreSCTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Score5MoreSC
		    Response GasPour5MoreSCMechanic
		    then self GasPour5More foo:0 0.01
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},

	{
		Rule GasPour5MoreWaitTrevor
		{
		    criteria ConceptGasPour5More IsTrevor IsSpeaking _auto_IsGasCountOK
		    Response GasPour5MoreWaitMechanic
		    then self GasPour5More foo:0 0.1
		}
	},

	{
		Rule GasPourDoneSCTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsScavenge ScoreDoneSC
		    Response GasPourDoneSCMechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule GasPourSCTrevor
		{
		    criteria ConceptPlayerPourStarted IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsScavenge ChanceToFire50Percent _auto_NotNoGasPourLine
		    Response GasPourSCMechanic
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule GasPourSCSoloTrevor
		{
		    criteria ConceptPlayerPourStarted IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsScavenge ChanceToFire50Percent _auto_NotNoGasPourLine
		    Response GasPourSCSoloMechanic
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule GasPourAloneTrevor
		{
		    criteria ConceptPlayerPourStarted IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotScavenge ChanceToFire50Percent _auto_NotNoGasPourLine
		    Response GasPourSCSoloMechanic
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule GrabbingGasSCTrevor
		{
		    criteria ConceptPlayerEquippedScavengeItem IsTrevor IsTalk IsNotAlone IsClosestSurvivorNear500 IsTalkTrevor IsWorldTalkTrevor NotSaidGrabbingCan
		    Response GrabbingGasSCMechanic
		    ApplyContext "SaidGrabbingCan:1:8"
		}
	},

	{
		Rule PlayerShotGasCanTrevor
		{
		    criteria ConceptPlayerShotGasCan IsTrevor IsNotSaidPlayerShotGasCan IsScavenge
		    Response PlayerShotGasCanMechanic
		    ApplyContext "SaidPlayerShotGasCan:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule ScavengeStartTrevor
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsScavenge IsNotSaidLeavingSafeArea
		    Response ScavengeStartMechanic
		    ApplyContext "SaidLeavingSafeArea:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule ScavengeStartC1M4Trevor
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor ismap_c1m4_atrium IsScavenge IsNotSaidLeavingSafeArea
		    Response ScavengeStartC1M4Mechanic
		    ApplyContext "SaidLeavingSafeArea:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerCommentJockeyTrevor
		{
		    criteria ConceptCommentJockey IsTrevor IssuerCloseEnough IsNotIncapacitated IntensityUnder50 IsNotSaidCommentJockey IsNotSaidBeenJockeyedTrevor IsNotBeingJockeyed
		    Response PlayerCommentJockeyMechanic
		    then gambler commentjockey2 foo:0 0.1
		    ApplyContext "SaidCommentJockey:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerCommentJockeyMaleTrevor
		{
		    criteria ConceptCommentJockey IsTrevor IssuerCloseEnough IsNotIncapacitated FromIsNotProducer FromIsNotTeenGirl ChanceToFire25Percent IntensityUnder50 IsNotSaidCommentJockey IsNotSaidBeenJockeyedTrevor IsNotBeingJockeyed
		    Response PlayerCommentJockeyMaleMechanic
		    ApplyContext "SaidCommentJockey:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4M2LockTheDoorCheckPointTrevor
		{
		    criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsTrevor IsInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor ismap_c4m2_sugarmill_a AutoIsNotScavenge AutoIsNotSurvival
		    Response C4M2LockTheDoorCheckPointMechanic
		}
	},

	{
		Rule GoingToDieCoachCoachTrevor
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotComplainBlock IsCoachAlive IsCoachNear200 ChanceToFire30Percent IsWorldTalkTrevor IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		    Response GoingToDieCoachCoachMechanic
		    then coach coachcoaches foo:0 .5
		    ApplyContext "IsComplain:1:25"
		}
	},

	{
		Rule PlayerAlertGiveItemStopTrevor
		{
		    criteria ConceptAlertGiveItemStop IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidAlertGiveItemStop IsWorldTalkTrevor
		    Response PlayerAlertGiveItemStopMechanic
		    ApplyContext "SaidAlertGiveItemStop:1:10"
		}
	},

	{
		Rule PlayerAlertGiveItemStopAnFirstAidTrevor
		{
		    criteria ConceptAlertGiveItemStopFirstAidA IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidAlertGiveItemStopFirstAid NoHasFirstAidKit IsWorldTalkTrevor
		    Response PlayerAlertGiveItemStopAnFirstAidMechanic
		    then subject AlertGiveItemStop foo:0 0
		}
	},

	{
		Rule PlayerAlertGiveItemStopC1Trevor
		{
		    criteria ConceptAlertGiveItemStop IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidAlertGiveItemStop IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response PlayerAlertGiveItemStopC1Mechanic
		    ApplyContext "SaidAlertGiveItemStop:1:10"
		}
	},

	{
		Rule PlayerAlertGiveItemStopQnFirstAidTrevor
		{
		    criteria ConceptBashWithItem IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsItemFirstAidKit IsNotSaidAlertGiveItemStopFirstAid IsWorldTalkTrevor
		    Response PlayerAlertGiveItemStopQnFirstAidMechanic
		    then subject AlertGiveItemStopFirstAidA foo:0 0
		    ApplyContext "SaidAlertGiveItemStopFirstAid:1:10"
		}
	},

	{
		Rule PlayerCoachPouncedTrevor
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsCoach IsNotSaidCoachPounced IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerCoachPouncedMechanic
		    ApplyContext "CoachPounced:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerCoachPouncedC1Trevor
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsCoach IsNotSaidCoachPounced IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowHunter IsNotSurvival
		    Response PlayerCoachPouncedC1Mechanic
		    ApplyContext "SaidCoachPounced:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerGamblerPouncedC1Trevor
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsGambler IsNotSaidGamblerPounced IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowHunter IsNotSurvival
		    Response PlayerCoachPouncedC1Mechanic
		    ApplyContext "SaidGamblerPounced:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerEatPillsTrevor
		{
		    criteria ConceptEatPills IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerEatPillsMechanic
		}
	},

	{
		Rule PlayerGamblerPouncedTrevor
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsGambler IsNotSaidGamblerPounced IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerGamblerPouncedMechanic
		    ApplyContext "GamblerPounced:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerGetInsideCheckPointTrevor
		{
		    criteria ConceptPlayerGetInsideCheckPoint IsNotCoughing IsTrevor IsInSafeSpot IsTalk IsTalkTrevor SomeoneOutsideSafeSpot IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerGetInsideCheckPointMechanic
		    then any StayTogetherInsideReponse foo:0 -1.898
		}
	},

	{
		Rule PlayerStayTogetherSaferoomTrevor
		{
		    criteria ConceptPlayerStayTogether IsNotCoughing IsTrevor IsInSafeSpot IsTalk IsTalkTrevor SomeoneOutsideSafeSpot IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerStayTogetherSaferoomMechanic
		}
	},

	{
		Rule PlayerGetInsideCheckPointC2M2Trevor
		{
		    criteria ConceptPlayerGetInsideCheckPoint ismap_c2m2 IsNotCoughing IsTrevor IsInSafeSpot IsTalk IsTalkTrevor SomeoneOutsideSafeSpot IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerGetInsideCheckPointC2M2Mechanic
		    then any StayTogetherInsideReponse foo:0 0.3
		}
	},

	{
		Rule PlayerGrabbedByJockeyTrevor
		{
		    criteria ConceptSurvivorJockeyed IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidBeenJockeyedTrevor IsWorldTalkTrevor
		    Response PlayerGrabbedByJockeyMechanic
		    ApplyContext "SaidBeenJockeyedTrevor:1:6,TalkTrevor:1:6"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerGrabbedByJockeyC1Trevor
		{
		    criteria ConceptSurvivorJockeyed IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidBeenJockeyedTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowJockey IsNotSurvival
		    Response PlayerGrabbedByJockeyC1Mechanic
		    ApplyContext "SaidBeenJockeyedTrevor:1:6,TalkTrevor:1:6"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerGrenadeMolotovTrevor
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsGrenadeMolotov IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerGrenadeMolotovMechanic
		    then Any GrenadeCareful foo:0 -0.821
		}
	},

	{
		Rule PlayerGrenadeMolotovTankTrevor
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsGrenadeMolotov IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerGrenadeMolotovTankMechanic
		}
	},

	{
		Rule PlayerGrenadePipeBombTrevor
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsGrenadePipeBomb IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerGrenadePipeBombMechanic
		    then Any GrenadeCareful foo:0 -0.579
		}
	},

	{
		Rule PlayerGrenadeVomitJarTrevor
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsGrenadeVomitJar IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerGrenadeVomitJarMechanic
		    then Any GrenadeCareful foo:0 -1.598
		}
	},

	{
		Rule PlayerGrenadeVomitJarTankTrevor
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsGrenadeVomitJar IsZombiePresentTank IsSaidTankWarn2 isNotmap_c1m1_hotel isNotmap_c1m2_streets IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerGrenadeVomitJarTankMechanic
		}
	},

	{
		Rule PlayerGrenadeVomitJarC1Trevor
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsGrenadeVomitJar IsWorldTalkTrevor ismap_c1m1_hotel
		    Response PlayerGrenadeVomitJarC1Mechanic
		    then Any GrenadeCareful foo:0 -1.517
		}
	},

	{
		Rule PlayerIncapacitatedInitialTrevor
		{
		    criteria ConceptPlayerIncapacitated IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerIncapacitatedInitialMechanic
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule PlayerIncapacitatedInitialC1M2Trevor
		{
		    criteria ConceptPlayerIncapacitated IsTrevor ismap_c1m2_streets IsC1M2WhitakerErrand
		    Response PlayerIncapacitatedInitialC1M2Mechanic
		    then orator C1M2SurvivorDown foo:0 0.1
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule PlayerKillConfirmationTrevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor SubjectIsNotTank SubjectIsNotAWitch IsTalk IsTalkTrevor IsSubjectFar300 ChanceToFire40Percent isNotmap_c1m1_hotel IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response PlayerKillConfirmationMechanic
		    then Any PlayerNiceShot foo:0 -0.399
		}
	},

	{
		Rule PlayerKillConfirmationC1M1Trevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor SubjectIsNotTank IsTalk IsTalkTrevor IsUsingFirearm IsSubjectFar300 ismap_c1m1_hotel IsNotFirstKillC1 IsWorldTalkTrevor
		    Response PlayerKillConfirmationC1M1Mechanic
		    ApplyContext "Talk:1:5,FirstKill:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerKillConfirmationC1M1MeleeTrevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor SubjectIsNotTank SubjectIsNotBoomer SubjectIsNotSmoker IsTalk IsTalkTrevor EquippedMeleeWeapon ismap_c1m1_hotel IsNotFirstKillC1 IsWorldTalkTrevor
		    Response PlayerKillConfirmationC1M1MeleeMechanic
		    ApplyContext "Talk:1:5,FirstKill:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule KillStealTrevor
		{
		    criteria ConceptKillSteal IsNotCoughing IsTrevor IssuerReallyClose IsTrevorAlsoWarn IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response KillStealMechanic
		    then From RightfulKiller foo:0 -0.953
		}
	},

	{
		Rule InsistMineTrevor
		{
		    criteria ConceptInsistMine IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response InsistMineMechanic
		    then From KillStealCalledOut foo:0 -1.545
		    ApplyContext "TalkTrevor:1:1.1"
		}
	},

	{
		Rule PlayerKillSpitterConfirmationTrevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor IsTalk IsTalkTrevor SubjectIsSpitter IsSubjectNear250 ChanceToFire20Percent IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response PlayerKillSpitterConfirmationMechanic
		}
	},

	{
		Rule PlayerKillSpitterGamblerTrevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor IsTalk IsTalkTrevor SubjectIsSpitter IsGamblerNear400 ChanceToFire20Percent IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response PlayerKillSpitterGamblerMechanic
		}
	},

	{
		Rule PlayerKillTankConfirmationTrevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor IsTalk IsTalkTrevor SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsRocking IsWorldTalkTrevor _auto_NotFinaleStarted _auto_NotSpottedVehicle
		    Response PlayerKillTankConfirmationMechanic
		    ApplyContext "SaidTankDead:1:60,TalkTrevor:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerKillTankNotHealthyTrevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor IsTalk IsTalkTrevor SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsNotHealthy IsWorldTalkTrevor _auto_NotFinaleStarted _auto_NotSpottedVehicle
		    Response PlayerKillTankNotHealthyMechanic
		    ApplyContext "SaidTankDead:1:60,TalkTrevor:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerKillTankConfirmationC1M2Trevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor IsTalk IsTalkTrevor SubjectIsTank IsNotSaidTankDead IsNotIncapacitated IsWorldTalkTrevor ismap_c1m2_streets IsEveryoneAlive IsNotSurvival
		    Response PlayerKillTankConfirmationC1M2Mechanic
		    then trevor C1M2TankInfo foo:0 0.1
		    ApplyContext "SaidTankDead:1:0,Talk:1:12"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerCr0wnedWitchTrevor
		{
		    criteria ConceptKilledZombie IsTrevor SubjectIsAWitch IsNotWitchAggro
		    Response NoResponse
		}
	},

	{
		Rule PlayerKilledStartledWitchTrevor
		{
		    criteria ConceptKilledZombie IsTrevor SubjectIsAWitch IsWitchAggro
		    Response NoResponse
		    ApplyContext "WitchAggro:--1"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerLockTheDoorCheckPointTrevor
		{
		    criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsTrevor IsInSafeSpot IsNotAlone IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerLockTheDoorCheckPointMechanic
		}
	},

	{
		Rule PlayerLockTheDoorCheckPointC1Trevor
		{
		    criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsTrevor IsInSafeSpot IsNotAlone ismap_c1m1_hotel IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerLockTheDoorCheckPointC1Mechanic
		}
	},

	{
		Rule PlayerProducerPouncedTrevor
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsProducer IsNotSaidProducerPounced IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerProducerPouncedMechanic
		    ApplyContext "SaidProducerPounced:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerProducerPouncedC1Trevor
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsProducer IsNotSaidProducerPounced IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowHunter IsNotSurvival
		    Response PlayerProducerPouncedC1Mechanic
		    ApplyContext "SaidProducerPounced:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRevivedByDefibrillatorTrevor
		{
		    criteria ConceptRevivedByDefibrillator IsNotCoughing IsTrevor
		    Response PlayerRevivedByDefibrillatorMechanic
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRevivedByDefibrillator2Trevor
		{
		    criteria ConceptRevivedByDefibrillatorDelayed IsTrevor
		    Response PlayerRevivedByDefibrillator2Mechanic
		    ApplyContext "TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerSuggestMeHealthTrevor
		{
		    criteria ConceptTalkIdle IsNotHealthy TimeSinceGroupInCombat20 ChanceToFire50Percent IsNotIncapacitated IsNotSuggestedHealth YesHasFirstAidKit IsTrevor IsNotBeingHealed IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerSuggestMeHealthMechanic
		    then Any PlayerSuggestHealth foo:0 0
		}
	},

	{
		Rule PlayerSuggestHealthGenericTrevor
		{
		    criteria ConceptPlayerSuggestHealth IsTrevor IssuerReallyClose IsNotBeingHealed IsTalk IsTalkTrevor IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 IsWorldTalkTrevor
		    Response PlayerSuggestHealthGenericMechanic
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerSuggestHealthC1Trevor
		{
		    criteria ConceptPlayerSuggestHealth IsTrevor IssuerReallyClose IsNotBeingHealed IsTalk IsTalkTrevor IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 IsWorldTalkTrevor ismap_c1m1_hotel NoKnowNames
		    Response PlayerSuggestHealthC1Mechanic
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerSuggestHealthCoachTrevor
		{
		    criteria ConceptPlayerSuggestHealth IsTrevor IssuerReallyClose IsNotBeingHealed IsTalk IsTalkTrevor IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsCoach ChanceToFire50Percent IsWorldTalkTrevor isNotmap_c1m1_hotel
		    Response PlayerSuggestHealthCoachMechanic
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerSuggestHealthGamblerTrevor
		{
		    criteria ConceptPlayerSuggestHealth IsTrevor IssuerReallyClose IsNotBeingHealed IsTalk IsTalkTrevor IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsGambler ChanceToFire50Percent IsWorldTalkTrevor isNotmap_c1m1_hotel
		    Response PlayerSuggestHealthGamblerMechanic
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerSuggestHealthProducerTrevor
		{
		    criteria ConceptPlayerSuggestHealth IsTrevor IssuerReallyClose IsNotBeingHealed IsTalk IsTalkTrevor IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsProducer ChanceToFire50Percent IsWorldTalkTrevor isNotmap_c1m1_hotel
		    Response PlayerSuggestHealthProducerMechanic
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerTransitionTrevor
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsTrevor IsNotSaidPlayerTransition IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSomeoneDied isNotmap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionMechanic
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerTransitionCloseTrevor
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsTrevor IsNotSaidPlayerTransition IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotAlone IsSomeoneDied isNotmap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionCloseMechanic
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerTransitionC1M2Trevor
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsTrevor IsNotSaidPlayerTransition IsTalk IsTalkTrevor IsWorldTalkTrevor ismap_c1m2_streets IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC1M2Mechanic
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerTransitionCloseC1M2Trevor
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsTrevor IsNotSaidPlayerTransition IsTalk IsTalkTrevor IsWorldTalkTrevor ismap_c1m2_streets IsNotAlone IsSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionCloseC1M2Mechanic
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerTransitionC1M3Trevor
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsTrevor IsNotSaidPlayerTransition IsTalk IsTalkTrevor IsWorldTalkTrevor ismap_c1m3_mall IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC1M3Mechanic
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerTransitionC2M1Trevor
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsTrevor IsNotSaidPlayerTransition IsTalk IsTalkTrevor IsWorldTalkTrevor ismap_c2m1 IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC2M1Mechanic
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerTransitionC5M4Trevor
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsTrevor IsNotSaidPlayerTransition IsTalk IsTalkTrevor IsWorldTalkTrevor IsMapc5m4_quarter IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC5M4Mechanic
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerTransitionC6M2Trevor
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsTrevor IsNotSaidPlayerTransition IsTalk IsTalkTrevor IsWorldTalkTrevor Isc6m2_bedlam IsZoeyIntroActor IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC6M2Mechanic
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerUsingDefibrillatorTrevor
		{
		    criteria ConceptPlayerUsingDefibrillator IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerUsingDefibrillatorMechanic
		}
	},

	{
		Rule PlayerWarnHeardBoomerTrevor
		{
		    criteria ConceptPlayerWarnHearZombie IsBoomerClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardBoomer NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerWarnHeardBoomerMechanic
		    ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardChargerTrevor
		{
		    criteria ConceptPlayerWarnHearZombie IsChargerClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardCharger NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerWarnHeardChargerMechanic
		    ApplyContext "WarnHeardCharger:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardHunterTrevor
		{
		    criteria ConceptPlayerWarnHearZombie IsHunterClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardHunter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerWarnHeardHunterMechanic
		    ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardJockeyTrevor
		{
		    criteria ConceptPlayerWarnHearZombie IsJockeyClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardJockey NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerWarnHeardJockeyMechanic
		    ApplyContext "WarnHeardJockey:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardJockeyC1Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsJockeyClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardJockey NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowJockey IsNotSurvival
		    Response PlayerWarnHeardJockeyC1Mechanic
		    ApplyContext "WarnHeardJockey:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardSmokerTrevor
		{
		    criteria ConceptPlayerWarnHearZombie IsSmokerClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardSmoker NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerWarnHeardSmokerMechanic
		    ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardSpitterTrevor
		{
		    criteria ConceptPlayerWarnHearZombie IsSpitterClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardSpitter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerWarnHeardSpitterMechanic
		    ApplyContext "WarnHeardSpitter:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardBoomerC1Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsBoomerClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardBoomer NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowBoomer IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Mechanic
		    ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardChargerC1Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsChargerClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardCharger NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowCharger IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Mechanic
		    ApplyContext "WarnHeardCharger:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardHunterC1Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsHunterClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardHunter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowHunter IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Mechanic
		    ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardSmokerC1Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsSmokerClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardSmoker NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Mechanic
		    ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardSpitterC1Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsSpitterClass IsNotCoughing IsTrevor IsNotAlone IsClosestSurvivorNear1200 IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardSpitter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowSpitter IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Mechanic
		    ApplyContext "WarnHeardSpitter:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardWitchTrevor
		{
		    criteria ConceptPlayerWarnHearZombie IsWitchClass IsNotCoughing IsNotAlone IsClosestSurvivorNear1200 IsTrevor IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardWitch NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotmap_c4m2 IsNotc6m1_riverbank _auto_NotAlarmV2 _auto_NotFinaleStarted
		    Response PlayerWarnHeardWitchMechanic
		    then any PlayerKillThatLight foo:0 -1.652
		    ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnHeardWitchC1Trevor
		{
		    criteria ConceptPlayerWarnHearZombie IsWitchClass IsNotCoughing IsNotAlone IsClosestSurvivorNear1200 IsTrevor IsNotInCheckpoint IsNotInSafeSpot IsNotWarnHeardWitch NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2
		    Response PlayerWarnHeardWitchC1Mechanic
		    ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerHeardWitchC1Trevor
		{
		    criteria ConceptPlayerHeardWitch IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 IsNotSurvival
		    Response PlayerWarnHeardWitchC1Mechanic
		}
	},

	{
		Rule Player_C1WorseThanZombiesTrevor
		{
		    criteria ConceptPlayer_C1WorseThanZombies IsTrevor IssuerClose IsNotSpeakingWeight0
		    Response Player_C1WorseThanZombiesMechanic
		}
	},

	{
		Rule PlayerWarnMegaMobTrevor
		{
		    criteria ConceptPlayerWarnMegaMob IsNotCoughing IsTrevor IsNotInCheckpoint IsNotInSafeSpot IsNotWarnMegaMob IsTalk IsTalkTrevor IsNotSpeaking IsWorldTalkTrevor IsNotScavenge _auto_NotSpottedVehicle
		    Response PlayerWarnMegaMobMechanic
		    ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWarnWitchAngryTrevor
		{
		    criteria ConceptWitchGettingAngry IsNotCoughing IsTrevor IsNotWarnAngryWitch IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotmap_c4m2 IsNotc6m1_riverbank
		    Response PlayerWarnWitchAngryMechanic
		    ApplyContext "WarnAngryWitch:1:5,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWorldIntroC31BlankTrevor
		{
		    criteria ConceptintroC3M1 IsTrevor IsNotSaidCXM1Intro IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldIntroC31BlankMechanic
		    then any WorldIntroC31 foo:0 5
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWorldIntroC51Trevor
		{
		    criteria ConceptintroC5M1 IsTrevor IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldIntroC51Mechanic
		    then orator C5M1_intro001 foo:0 0.01
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorCaughtVomitTrevor
		{
		    criteria ConceptPlayerVomitInFace IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorCaughtVomitMechanic
		    ApplyContext "TalkTrevor:1:10"
		}
	},

	{
		Rule SurvivorchargerpoundTrevor
		{
		    criteria Conceptchargerpound IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidchargerpound IsWorldTalkTrevor
		    Response SurvivorchargerpoundMechanic
		    ApplyContext "Saidchargerpound:1:5,TalkTrevor:1:5"
		}
	},

	{
		Rule SurvivorchargerpoundC1Trevor
		{
		    criteria Conceptchargerpound IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidchargerpound IsWorldTalkTrevor C1M1orC1M2 NoKnowCharger IsNotSurvival
		    Response SurvivorchargerpoundC1Mechanic
		    ApplyContext "Saidchargerpound:1:5,TalkTrevor:1:5"
		}
	},

	{
		Rule SurvivorCoughingTrevor
		{
		    criteria ConceptSurvivorCoughing IsCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorCoughingMechanic
		}
	},

	{
		Rule SurvivorCoughingDeathTrevor
		{
		    criteria ConceptPlayerDeath IsCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotVersus
		    Response SurvivorCoughingMechanic
		}
	},

	{
		Rule SurvivorDeathTrevor
		{
		    criteria ConceptPlayerDeath IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotVersus
		    Response SurvivorDeathMechanic
		}
	},

	{
		Rule SurvivorGooedBySpitterTrevor
		{
		    criteria ConceptGooedBySpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidGooedBySpitter IsWorldTalkTrevor IsNotIncapacitated
		    Response SurvivorGooedBySpitterMechanic
		    ApplyContext "SaidGooedBySpitter:1:20,TalkTrevor:1:3"
		}
	},

	{
		Rule SurvivorGooedBySpitterC1Trevor
		{
		    criteria ConceptGooedBySpitter IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidGooedBySpitter IsWorldTalkTrevor C1M1orC1M2 NoKnowSpitter IsNotSurvival IsNotIncapacitated
		    Response SurvivorGooedBySpitterC1Mechanic
		    then trevor Player.GooedBySpitterC1R foo:0 -2.951
		    ApplyContext "SaidGooedBySpitter:1:20,TalkTrevor:1:3"
		}
	},

	{
		Rule SurvivorGrabbedByTongueTrevor
		{
		    criteria ConceptPlayerGrabbedByTongue IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorGrabbedByTongueMechanic
		}
	},

	{
		Rule SurvivorGrabbedByTongueC1Trevor
		{
		    criteria ConceptPlayerGrabbedByTongue IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response SurvivorGrabbedByTongueC1Mechanic
		}
	},

	{
		Rule SurvivorNearCheckpointTrevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointMechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC1M1Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c1m1_hotel IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC1M1Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC1M2Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c1m2_streets IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC1M2Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC1M3Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c1m3_mall IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC1M3Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC2M1Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c2m1 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC2M1Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC2M2Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c2m2 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC2M2Mechanic
		    then any _C2M2_SeeSafehouse01 foo:0 0.1
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC2M3Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c2m3 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC2M3Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC2M4Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c2m4 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC2M4Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC3M1Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c3m1_plankcountry IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC3M1Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC3M2Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismapc3m2_swamp IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC3M2Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkC3M3SafeHouseAheadTrevor
		{
		    criteria ConceptRemark IsTrevor IsC3M3SafeHouseAhead IsNotSaidSafeSpotAhead IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response SurvivorNearCheckpointC3M3Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC4M1Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c4m1_milltown_a IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC4M1Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC4M2Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor ismap_c4m2_sugarmill_a IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC4M2Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC4M3Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor isc4m3 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC4M3Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC4M4Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor isc4m4 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC4M4Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC5M2Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor IsMapc5m2_park IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC5M2Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC5M3Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor IsMapc5m3_cemetery IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC5M3Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC5M4Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor IsMapc5m4_quarter IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC5M4Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC6M1Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor Isc6m1_riverbank IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC6M1Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearCheckpointC6M2Trevor
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsTrevor IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkTrevor Isc6m2_bedlam IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC6M2Mechanic
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearFinaleTrevor
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsTrevor IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkTrevor IsNotIncapacitated IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearFinaleMechanic
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearFinaleC1M4Trevor
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsTrevor IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkTrevor IsNotIncapacitated IsWorldTalkTrevor ismap_c1m4_atrium AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearFinaleC2M5Trevor
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsTrevor IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkTrevor IsNotIncapacitated IsWorldTalkTrevor ismap_c2m5 AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearFinaleC2M5Mechanic
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearFinaleC3M4Trevor
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsTrevor IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkTrevor IsNotIncapacitated IsWorldTalkTrevor ismapc3m4_plantation AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearFinaleC3M4Mechanic
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearFinaleC4M5Trevor
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsTrevor IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkTrevor IsNotIncapacitated IsWorldTalkTrevor isc4m5 AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearFinaleC5M5Trevor
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsTrevor IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkTrevor IsNotIncapacitated IsWorldTalkTrevor IsMapc5m5_bridge AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorNearFinaleC6M3Trevor
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsTrevor IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkTrevor IsNotIncapacitated IsWorldTalkTrevor Isc6m3_port AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorPouncedByHunterTrevor
		{
		    criteria ConceptScreamWhilePounced IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorPouncedByHunterMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule SurvivorTankPoundTrevor
		{
		    criteria ConceptPlayerGroundPoundedByTank IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorTankPoundMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule SurvivorVocalizeBackUpTrevor
		{
		    criteria ConceptPlayerBackUp IsTrevor IsNotCoughing IsNotInSafeSpot IsNotInCheckpoint IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorVocalizeBackUpMechanic
		}
	},

	{
		Rule SurvivorVocalizeEmphaticGoTrevor
		{
		    criteria ConceptPlayerEmphaticGo IsTrevor IsNotCoughing IsNotInSafeSpot IsNotInCheckpoint IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorVocalizeEmphaticGoMechanic
		}
	},

	{
		Rule SurvivorVocalizeGoingToDieTrevor
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotComplainBlock IsWorldTalkTrevor IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		    Response SurvivorVocalizeGoingToDieMechanic
		    ApplyContext "IsComplain:1:25"
		}
	},

	{
		Rule SurvivorVocalizeGoingToDie3Trevor
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsTrevor IsOnThirdStrike IsTalk IsTalkTrevor IsNotComplainBlock IsWorldTalkTrevor IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		    Response SurvivorVocalizeGoingToDie3Mechanic
		    ApplyContext "IsComplain:1:25"
		}
	},

	{
		Rule SurvivorVocalizeLookOutTrevor
		{
		    criteria ConceptPlayerLookOut IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorVocalizeLookOutMechanic
		}
	},

	{
		Rule SurvivorVocalizeThisWayTrevor
		{
		    criteria ConceptPlayerThisWay IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorVocalizeThisWayMechanic
		}
	},

	{
		Rule SurvivorVocalizeWaitHereTrevor
		{
		    criteria ConceptPlayerWaitHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorVocalizeWaitHereMechanic
		}
	},

	{
		Rule SurvivorWarnSpitterIncomingTrevor
		{
		    criteria ConceptWarnSpitterIncoming IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidWarnSpitterIncoming IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorWarnSpitterIncomingMechanic
		    ApplyContext "SaidWarnSpitterIncoming:1:10"
		}
	},

	{
		Rule SurvivorWarnSpitterIncomingC1Trevor
		{
		    criteria ConceptWarnSpitterIncoming IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidWarnSpitterIncoming C1M1orC1M2 IsWorldTalkTrevor NoKnowSpitter IsNotSurvival
		    Response SurvivorWarnSpitterIncomingC1Mechanic
		    ApplyContext "SaidWarnSpitterIncoming:1:10"
		}
	},

	{
		Rule PlayerLedgeHangEndTrevor
		{
		    criteria ConceptPlayerLedgeHangEnd IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerLedgeHangEndMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerLedgeHangMiddleTrevor
		{
		    criteria ConceptPlayerLedgeHangMiddle IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerLedgeHangMiddleMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerLedgeHangStartTrevor
		{
		    criteria ConceptPlayerLedgeHangStart IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerLedgeHangStartMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule SurvivorFirstDeathTrevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsTrevor IsEveryoneAlive IsNotSaidSomeoneDied IsTalk IsTalkTrevor IsNotSaidFaultFriendlyFireGeneral IsWorldTalkTrevor
		    Response SurvivorFirstDeathMechanic
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorFirstDeathC1Trevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsTrevor IsEveryoneAlive IsNotSaidSomeoneDied ismap_c1m1_hotel IsTalk IsTalkTrevor IsNotSaidFaultFriendlyFireGeneral IsWorldTalkTrevor NoKnowNames
		    Response SurvivorFirstDeathC1Mechanic
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule DeathOneTrevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsTrevor IsWithTwo IsNotSaidSomeoneDied IsTalk IsTalkTrevor IsNotSaidFaultFriendlyFireGeneral IsWorldTalkTrevor
		    Response DeathOneMechanic
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule DoubleDeathTrevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsClosestSurvivorNear400 IsWithOnlyThree IsNotIncapacitated IsNotSaidFaultFriendlyFireGeneral IsWorldTalkTrevor
		    Response DoubleDeathMechanic
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule DoubleDeathProducerTrevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsProducerAlive IsProducerNear400 IsWithOnlyThree ChanceToFire100Percent IsNotIncapacitated IsNotDeadProducer IsNotSaidFaultFriendlyFireGeneral IsWorldTalkTrevor isNotmap_c1m1_hotel
		    Response DoubleDeathProducerMechanic
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule TeamKillTrevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsTrevor IsTalk IsTalkTrevor IsSaidFaultFriendlyFireGeneral IsNotSaidFaultFriendlyFireTrevor IsWorldTalkTrevor
		    Response TeamKillMechanic
		    ApplyContext "SaidSomeoneDied:1:10,TalkTrevor:1:4"
		    applycontexttoworld
		}
	},

	{
		Rule TeamKillFromCoachTrevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsTrevor IsTalk IsTalkTrevor IsSaidFaultFriendlyFireGeneral IsSaidFaultFriendlyFireCoach ChanceToFire50Percent IsWorldTalkTrevor
		    Response TeamKillFromCoachMechanic
		    ApplyContext "SaidSomeoneDied:1:10,TalkTrevor:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule TeamKillFromGamblerTrevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsTrevor IsTalk IsTalkTrevor IsSaidFaultFriendlyFireGeneral IsSaidFaultFriendlyFireGambler ChanceToFire50Percent IsWorldTalkTrevor
		    Response TeamKillFromGamblerMechanic
		    ApplyContext "SaidSomeoneDied:1:10,TalkTrevor:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule TeamKillFromProducerTrevor
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsTrevor IsTalk IsTalkTrevor IsSaidFaultFriendlyFireGeneral IsSaidFaultFriendlyFireProducer ChanceToFire50Percent IsWorldTalkTrevor
		    Response TeamKillFromProducerMechanic
		    ApplyContext "SaidSomeoneDied:1:10,TalkTrevor:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1TakeSubMachineGunTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsPickedUpSMG IsTalk IsTalkTrevor IsWorldTalkTrevor isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		    Response C6M1TakeSubMachineGunMechanic
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1TakeSubMachineGunSilencedTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsPickedUpSmg_silenced IsTalk IsTalkTrevor IsWorldTalkTrevor isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		    Response C6M1TakeSubMachineGunMechanic
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1TakePumpShotgunTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsPickedUpPumpShotgun IsTalk IsTalkTrevor IsWorldTalkTrevor isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		    Response C6M1TakeSubMachineGunMechanic
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1TakeChromeShotgunTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsPickedUpShotgun_Chrome IsTalk IsTalkTrevor IsWorldTalkTrevor isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		    Response C6M1TakeSubMachineGunMechanic
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1TakeCSSMP5Trevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsPickedUpSmg_mp5 IsTalk IsTalkTrevor IsWorldTalkTrevor isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		    Response C6M1TakeSubMachineGunMechanic
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorDeployUpExplosivesTrevor
		{
		    criteria ConceptPlayerDeployingUpgradeAmmo IsNotCoughing IsTrevor IsNotSpeaking IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSaidDeployUpgradePack_Explosive HasUpgradePack_Explosive IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorDeployUpExplosivesMechanic
		    ApplyContext "SaidDeployUpgradePack_Explosive:1:30"
		}
	},

	{
		Rule SurvivorDeployUpIncendiaryTrevor
		{
		    criteria ConceptPlayerDeployingUpgradeAmmo IsNotCoughing IsTrevor IsNotSpeaking IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSaidDeployUpgradePack_Incendiary HasUpgradePack_Incendiary IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorDeployUpIncendiaryMechanic
		    ApplyContext "SaidDeployUpgradePack_Incendiary:1:30"
		}
	},

	{
		Rule SurvivorPickupAdrenalineTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpAdrenaline IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorPickupAdrenalineMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupAutoShotgunTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpAutoShotgun IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupAutoShotgunMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupSpasShotgunTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpShotgun_spas IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupAutoShotgunMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupbaseball_batTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpbaseball_bat IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupbaseball_batMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupShovelTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpShovel IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupShovelMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupchainsawTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpchainsaw IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupchainsawMechanic
		    then All AskWhat foo:0 0
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupKnifeTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpKnife IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupKnifeMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupcricket_batTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpcricket_bat IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupcricket_batMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupPitchforkTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpPitchfork IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupPitchforkMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupCrowBarTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpCrowBar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupCrowBarMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupDefibrillatorTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpDefibrillator ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupDefibrillatorMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupelectric_guitarTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpelectric_guitar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupelectric_guitarMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupFireAxeTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpFireAxe ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupFireAxeMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupFirstAidKitTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpFirstAidKit IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea IsNotScavenge _auto_NotSpottedVehicle
		    Response SurvivorPickupFirstAidKitMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupFirstSMGTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsPickedUpSmg_silenced IsTalk IsTalkTrevor IsNotSaidPickupFirstSMG IsSaidC1M1OpenDoor ExtraWeight10 IsWorldTalkTrevor
		    Response SurvivorPickupFirstSMGMechanic
		    ApplyContext "SaidPickupFirstSMG:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorPickupFryingPanTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpFryingPan IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupFryingPanMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupGolfCLubTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpGolfClub IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupGolfCLubMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupGrenadeLauncherTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpGrenadeLauncher NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupGrenadeLauncherMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupGunC1M2Trevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsNotSpeaking IsTalk IsSaidC1M2InsideGunShop IsNotPickedUpFirstAidKit IsNotPickedUpAmmo IsNotPickedUpVomitJar IsNotPickedUpLaserSights IsNotPickedUpAdrenaline IsNotPickedUpPainPills IsNotPickedUpMolotov IsNotPickedUpPipeBomb IsWorldTalkTrevor IsNotSaidC1M2InsideGunShopPickUp ChanceToFire50Percent _auto_NotButton1
		    Response SurvivorPickupGunC1M2Mechanic
		    ApplyContext "SaidC1M2InsideGunShopPickUp:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorPickupHuntingRifleTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpHuntingRifle IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupHuntingRifleMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupMilitarySniperTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpSniper_Military IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupHuntingRifleMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupScoutSniperTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpSniper_scout IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupHuntingRifleMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupAWPSniperTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpSniper_awp IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupHuntingRifleMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupIncendiaryAmmoTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpIncendiaryAmmo IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupIncendiaryAmmoMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupKatanaTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpKatana IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupKatanaMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupLaserSightsAlwaysTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpLaserSights IsNotSpeaking IsBotNotAvailable ChanceToFire50Percent NotPickedUpItem IsNotInStartArea IsNotInCheckpoint IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorPickupLaserSightsAlwaysMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupM60Trevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpM60 IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupM60Mechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupMacheteTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpMachete IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupMacheteMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupMagnumTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpMagnum IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupMagnumMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupMolotovTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpMolotov IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupMolotovMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupPainPillsTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpPainPills ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotScavenge _auto_NotSpottedVehicle
		    Response SurvivorPickupPainPillsMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupPipeBombTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpPipeBomb IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupPipeBombMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupPumpShotgunTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpPumpShotgun IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupPumpShotgunMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupChromeShotgunTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpShotgun_Chrome IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupPumpShotgunMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupRifleTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpRifle IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupRifleMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupDesertRifleTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpRifle_Desert IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupDesertRifleMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupAK47RifleTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpRifle_AK47 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupDesertRifleMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupSG552RifleTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpRifle_sg552 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupDesertRifleMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupSecondPistolTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpSecondPistol IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupSecondPistolMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupSMGTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpSMG IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupSMGMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupSilencedSMGTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpSMG_silenced IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupSMGMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupMP5SMGTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpSMG_mp5 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupSMGMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickuptonfaTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUptonfa IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickuptonfaMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupUpExplosiveAmmoTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpExplosiveAmmo ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupUpExplosiveAmmoMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupUpExplosivesTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpUpgradePack_Explosive NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupUpExplosivesMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupUpIncendiaryTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpUpgradePack_Incendiary IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupUpIncendiaryMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupVomitJarTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpVomitJar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorPickupVomitJarMechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupVomitJarAlwaysC1Trevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpVomitJar ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkTrevor IsWorldTalkTrevor ismap_c1m1_hotel
		    Response SurvivorPickupVomitJarAlwaysC1Mechanic
		    ApplyContext "PickedUpItem:1:30"
		}
	},

	{
		Rule PlayerGettingRevivedTrevor
		{
		    criteria ConceptReviveFriendDown IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerGettingRevivedMechanic
		    then From ReviveFriendDownFinal foo:0 -0.608
		}
	},

	{
		Rule PlayerGettingRevivedCrybabyTrevor
		{
		    criteria ConceptReviveFriendDown IsNotCoughing IsTrevor IsTrevorCrybaby FromIsProducer IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response PlayerGettingRevivedCrybabyMechanic
		    then From ReviveFriendDownFinal foo:0 -1.447
		}
	},

	{
		Rule PlayerHealOtherTrevor
		{
		    criteria ConceptPlayerHealingOther IsNotCoughing IsTrevor IsTalk IsTalkTrevor NotInIntenseCombat IsWorldTalkTrevor
		    Response PlayerHealOtherMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerHealOtherC1Trevor
		{
		    criteria ConceptPlayerHealingOther IsNotCoughing IsTrevor IsTalk IsTalkTrevor NotInIntenseCombat IsWorldTalkTrevor ismap_c1m1_hotel
		    Response PlayerHealOtherC1Mechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerHealOtherCombatTrevor
		{
		    criteria ConceptPlayerHealingOther IsNotCoughing IsTrevor IsTalk IsTalkTrevor InIntenseCombat IsWorldTalkTrevor
		    Response PlayerHealOtherCombatMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerHealOtherTankTrevor
		{
		    criteria ConceptPlayerHealingOther IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkTrevor
		    // 	forceweight 30
		    Response PlayerHealOtherCombatMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerLedgeSaveTrevor
		{
		    criteria ConceptPlayerLedgeSave IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerLedgeSaveMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerReviveFriendTrevor
		{
		    criteria ConceptPlayerReviveFriend IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor NotInIntenseCombat _auto_NotSpottedVehicle
		    Response PlayerReviveFriendMechanic
		    then Subject ReviveFriendDown foo:0 -0.664
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule PlayerReviveFriendBTrevor
		{
		    criteria ConceptReviveFriendDownFinal IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotReviveInterrupt
		    Response PlayerReviveFriendBMechanic
		}
	},

	{
		Rule PlayerReviveFriendCriticalTrevor
		{
		    criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor NotInIntenseCombat _auto_NotSpottedVehicle
		    Response PlayerReviveFriendCriticalMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerReviveFriendLoudTrevor
		{
		    criteria ConceptPlayerReviveFriend IsNotCoughing IsTrevor IsZombiePresentTank IsSaidTankWarn2 IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    // 	forceweight 30
		    Response PlayerReviveFriendLoudMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerLedgeSaveCriticalTrevor
		{
		    criteria ConceptPlayerLedgeSaveCritical IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerLedgeSaveMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerReviveFriendLoud2Trevor
		{
		    criteria ConceptPlayerReviveFriend IsNotCoughing IsTrevor InIntenseCombat IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerReviveFriendLoudMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerReviveFriendLoudCritTrevor
		{
		    criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsTrevor InIntenseCombat IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerReviveFriendLoudMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule PlayerReviveFriendLoudCrit2Trevor
		{
		    criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsTrevor IsZombiePresentTank IsSaidTankWarn2 IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    // 	forceweight 30
		    Response PlayerReviveFriendLoudMechanic
		    ApplyContext "TalkTrevor:1:5"
		}
	},

	{
		Rule _C1M1_ElevatorHelloTrevor
		{
		    criteria Concept_C1M1_ElevatorHello IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHelloMechanic
		}
	},

	{
		Rule _C1M1_ElevatorHello02cTrevor
		{
		    criteria Concept_C1M1_ElevatorHello02c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello02cMechanic
		    then producer _C1M1_ElevatorHello03c foo:0 -1.856
		}
	},

	{
		Rule _C1M1_ElevatorHello03aTrevor
		{
		    criteria Concept_C1M1_ElevatorHello03a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello03aMechanic
		    then self _C1M1_ElevatorHello03e foo:0 -8.671
		}
	},

	{
		Rule _C1M1_ElevatorHello03eTrevor
		{
		    criteria Concept_C1M1_ElevatorHello03e IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello03eMechanic
		}
	},

	{
		Rule _C1M1_ElevatorHello03dTrevor
		{
		    criteria Concept_C1M1_ElevatorHello03d IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello03dMechanic
		    then gambler _C1M1_ElevatorHello04d foo:0 -0.479
		}
	},

	{
		Rule _C1M1_ElevatorHello05bTrevor
		{
		    criteria Concept_C1M1_ElevatorHello05b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello05bMechanic
		}
	},

	{
		Rule _C1M1_ElevatorHello05cRochelleTrevor
		{
		    criteria Concept_C1M1_ElevatorHello05c IsTrevor FromIsProducer AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello05cRochelleMechanic
		    then coach _C1M1_ElevatorHello03c foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello05cCoachTrevor
		{
		    criteria Concept_C1M1_ElevatorHello05c IsTrevor FromIsCoach AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello05cCoachMechanic
		    then Producer _C1M1_ElevatorHello03c foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello05cNickTrevor
		{
		    criteria Concept_C1M1_ElevatorHello05c IsTrevor FromIsGambler AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello05cNickMechanic
		    then Producer _C1M1_ElevatorHello11a foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello07bTrevor
		{
		    criteria Concept_C1M1_ElevatorHello07b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello07bMechanic
		    then producer _C1M1_ElevatorHello07c foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello07dTrevor
		{
		    criteria Concept_C1M1_ElevatorHello07d IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello07dMechanic
		    then coach _C1M1_ElevatorHello07g foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello07fTrevor
		{
		    criteria Concept_C1M1_ElevatorHello07f IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello07fMechanic
		    then any c1m1_elevator_ready2 foo:0 0.1
		    ApplyContext "LongElevatorIntro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule _C1M1_ElevatorHello08aTrevor
		{
		    criteria Concept_C1M1_ElevatorHello08a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello08aMechanic
		    then producer _C1M1_ElevatorHello08b foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello08cTrevor
		{
		    criteria Concept_C1M1_ElevatorHello08c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello08cMechanic
		    then producer _C1M1_ElevatorHello08d foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello08eTrevor
		{
		    criteria Concept_C1M1_ElevatorHello08e IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello08eMechanic
		    then coach _C1M1_ElevatorHello07g foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello09aTrevor
		{
		    criteria Concept_C1M1_ElevatorHello09a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello09aMechanic
		    then producer _C1M1_ElevatorHello09a foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello12aTrevor
		{
		    criteria Concept_C1M1_ElevatorHello12a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello12aMechanic
		    then Coach _C1M1_ElevatorHello07g foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello13aTrevor
		{
		    criteria Concept_C1M1_ElevatorHello13a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello13aMechanic
		    then from _C1M1_ElevatorHello13a foo:0 -2.554
		}
	},

	{
		Rule _c1m4startelevator2Trevor
		{
		    criteria Concept_c1m4startelevator2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator2Mechanic
		    then any _c1m4startelevator5a foo:0 -8.777
		}
	},

	{
		Rule _c1m4startelevator2aTrevor
		{
		    criteria Concept_c1m4startelevator2a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator2aMechanic
		    then trevor _c1m4startelevator3e foo:0 -2.084
		}
	},

	{
		Rule _c1m4startelevator2bTrevor
		{
		    criteria Concept_c1m4startelevator2b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator2bMechanic
		    then trevor _c1m4startelevator3c foo:0 -1.250
		}
	},

	{
		Rule _c1m4startelevator2cTrevor
		{
		    criteria Concept_c1m4startelevator2c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator2cMechanic
		    then producer _c1m4startelevator5a foo:0 -12.096
		}
	},

	{
		Rule _c1m4startelevator3Trevor
		{
		    criteria Concept_c1m4startelevator3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator3Mechanic
		    then producer _c1m4startelevator3a foo:0 0.2
		}
	},

	{
		Rule _c1m4startelevator3bTrevor
		{
		    criteria Concept_c1m4startelevator3b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator3bMechanic
		    then producer _c1m4startelevator3c foo:0 0.2
		}
	},

	{
		Rule _c1m4startelevator3cTrevor
		{
		    criteria Concept_c1m4startelevator3c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator3cMechanic
		    then coach _c1m4startelevator5a foo:0 -4.225
		}
	},

	{
		Rule _c1m4startelevator3dTrevor
		{
		    criteria Concept_c1m4startelevator3d IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator3dMechanic
		    then gambler _c1m4startelevator5a foo:0 -4.225
		}
	},

	{
		Rule _c1m4startelevator3eTrevor
		{
		    criteria Concept_c1m4startelevator3e IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator3eMechanic
		    then gambler _c1m4startelevator5a foo:0 -8.562
		}
	},

	{
		Rule _c1m4startelevator5aTrevor
		{
		    criteria Concept_c1m4startelevator5a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator5aMechanic
		    then any _c1m4startelevatorLast foo:0 -4.282
		}
	},

	{
		Rule _c1m4startelevator5a1Trevor
		{
		    criteria Concept_c1m4startelevator5a1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator5a1Mechanic
		    then gambler _c1m4startelevator6a1 foo:0 -4.779
		}
	},

	{
		Rule _c1m4startelevator5bTrevor
		{
		    criteria Concept_c1m4startelevator5b IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator5bMechanic
		    then trevor _c1m4startelevator5a foo:0 -2.936
		}
	},

	{
		Rule _c1m4startelevatorLastTrevor
		{
		    criteria Concept_c1m4startelevatorLast IsTrevor ElevatorTimeNotUp AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevatorLastMechanic
		    ApplyContext "Talk:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule _c1m4startelevatorLastTimeUpTrevor
		{
		    criteria Concept_c1m4startelevatorLast IsTrevor ElevatorTimeUp AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule _c2m1_searchlights01Trevor
		{
		    criteria Concept_c2m1_searchlights01 IsTrevor NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m1_searchlights01Mechanic
		    ApplyContext "Talk:1:2.662"
		    applycontexttoworld
		}
	},

	{
		Rule _c2m1_searchlights04Trevor
		{
		    criteria Concept_c2m1_searchlights04 IsTrevor NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m1_searchlights04Mechanic
		    then from _c2m1_searchlights04 foo:0 0.1
		    ApplyContext "Talk:1:2.662"
		    applycontexttoworld
		}
	},

	{
		Rule _C2M2_Bathroom01Trevor
		{
		    criteria Concept_C2M2_Bathroom01 IsTrevor NotInCombat IsSubjectDistNear200 AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Bathroom01Mechanic
		}
	},

	{
		Rule _C2M2_CaroStart03Trevor
		{
		    criteria Concept_C2M2_CaroStart03 IsTrevor IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_CaroStart03Mechanic
		    then self _C2M2_CaroStart04 foo:0 0.2
		}
	},

	{
		Rule _C2M2_CaroStart04Trevor
		{
		    criteria Concept_C2M2_CaroStart04 IsTrevor IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_CaroStart04Mechanic
		}
	},

	{
		Rule _C2M2_Kiddie03Trevor
		{
		    criteria Concept_C2M2_Kiddie03 IsTrevor NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Kiddie03Mechanic
		    then any _C2M2_Kiddie04 foo:0 0.1
		    ApplyContext "Talk:1:5.572"
		    applycontexttoworld
		}
	},

	{
		Rule _C2M2_Peanut01Trevor
		{
		    criteria Concept_C2M2_Peanut01 IsTrevor NotInCombat IsSubjectDistNear800 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Peanut01Mechanic
		    ApplyContext "Talk:1:6.681"
		    applycontexttoworld
		}
	},

	{
		Rule _C2M2_Slide01Trevor
		{
		    criteria Concept_C2M2_Slide01 IsTrevor NotInCombat IsSubjectDistNear400 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Slide01Mechanic
		    ApplyContext "Talk:1:2.922"
		    applycontexttoworld
		}
	},

	{
		Rule _C2M2_ThisTall02Trevor
		{
		    criteria Concept_C2M2_ThisTall02 IsTrevor NotInCombat IssuerClose ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_ThisTall02Mechanic
		    ApplyContext "Talk:1:2.201"
		    applycontexttoworld
		}
	},

	{
		Rule _C2M2_ThisTall02NickTrevor
		{
		    criteria Concept_C2M2_ThisTall02 IsTrevor NotInCombat IssuerClose FromIsGambler TrevorNotTall AutoIsNotScavenge AutoIsNotSurvival
		    // 	forceweight 100
		    Response _C2M2_ThisTall02NickMechanic
		    then Gambler _C2M2_ThisTall02 foo:0 0.1
		    ApplyContext "Talk:1:2.201"
		    applycontexttoworld
		}
	},

	{
		Rule _C2M2_LikeTatersTrevor
		{
		    criteria Concept_C2M2_LikeTaters IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response _C2M2_LikeTatersMechanic
		    ApplyContext "TalkTrevor:1:4.435"
		}
	},

	{
		Rule _C2M2_Kiddie06Trevor
		{
		    criteria Concept_C2M2_Kiddie06 IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_ThisTall02Mechanic
		    ApplyContext "Talk:1:2.201,TrevorTallJoke:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule _c2m3_cement01Trevor
		{
		    criteria Concept_c2m3_cement01 IsTrevor NotInCombat IsNotIncapacitated IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotSurvival AutoIsNotScavenge
		    Response _c2m3_cement01Mechanic
		}
	},

	{
		Rule _c2m3_coaster01Trevor
		{
		    criteria Concept_c2m3_coaster01 IsTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _c2m3_coaster01Mechanic
		    then self _c2m3_coaster07 foo:0 0.3
		    ApplyContext "Talk:1:2.653"
		    applycontexttoworld
		}
	},

	{
		Rule _c2m3_coaster03Trevor
		{
		    criteria Concept_c2m3_coaster03 IsTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _c2m3_coaster03Mechanic
		    ApplyContext "Talk:1:2.171"
		    applycontexttoworld
		}
	},

	{
		Rule _c2m3_coaster06Trevor
		{
		    criteria Concept_c2m3_coaster06 IsTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _c2m3_coaster06Mechanic
		    then self _c2m3_coaster07 foo:0 0.3
		    ApplyContext "Talk:1:2.653"
		    applycontexttoworld
		}
	},

	{
		Rule _c2m3_coaster07Trevor
		{
		    criteria Concept_c2m3_coaster07 IsTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _c2m3_coaster07Mechanic
		    then any _c2m3_coaster05 foo:0 0.01
		    ApplyContext "Talk:1:2.194"
		    applycontexttoworld
		}
	},

	{
		Rule _c2m3_coaster08Trevor
		{
		    criteria Concept_c2m3_coaster08 IsTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _c2m3_coaster08Mechanic
		    then self _c2m3_coaster07 foo:0 0.3
		    ApplyContext "Talk:1:2.653"
		    applycontexttoworld
		}
	},

	{
		Rule _c2m3_coollight01Trevor
		{
		    criteria Concept_c2m3_coollight01 IsTrevor IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m3_coollight01Mechanic
		}
	},

	{
		Rule _c2m3_howcoolTrevor
		{
		    criteria Concept_c2m3_howcool IsTrevor ChanceToFire50Percent NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m3_howcoolMechanic
		}
	},

	{
		Rule _C2M4_GateOpen001Trevor
		{
		    criteria Concept_C2M4_GateOpen001 IsTrevor IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M4_GateOpen001Mechanic
		}
	},

	{
		Rule _C4_BigStormHits01Trevor
		{
		    criteria Concept_C4_BigStormHits01 IsTrevor _auto_NotC4TrevorInCover _auto_IsTimerA FromIsAnOrator
		    Response _C4_BigStormHits01Mechanic
		    then any _C4_BigStormHits02 foo:0 0.04
		    ApplyContext "Talk:1:1.139"
		    applycontexttoworld
		}
	},

	{
		Rule _C4_BigStormHits02Trevor
		{
		    criteria Concept_C4_BigStormHits02 IsTrevor IsNotCoughing IssuerClose IsNotIncapacitated _auto_NotC4TrevorInCover
		    Response _C4_BigStormHits02Mechanic
		    ApplyContext "Talk:1:1.845"
		    applycontexttoworld
		}
	},

	{
		Rule _c4m1_rainresponseTrevor
		{
		    criteria Concept_c4m1_rainresponse IsTrevor NotInCombat IsTalkTrevor IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSaidc4m1_rainresponse
		    Response _c4m1_rainresponseMechanic
		    ApplyContext "Saidc4m1_rainresponse:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4M1IntroTrevor
		{
		    criteria ConceptIntroC4M1 IsTrevor IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		    Response C4M1IntroMechanic
		    then orator _c4m1Intro01 foo:0 0.01
		    ApplyContext "CXM1Intro:1:0,Saidremark_caralarm:1:400"
		    applycontexttoworld
		}
	},

	{
		Rule _c4m1Intro05Trevor
		{
		    criteria Concept_c4m1Intro05 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro05Mechanic
		    then coach _c4m1Intro05 foo:0 0.01
		}
	},

	{
		Rule _c4m1Intro07Trevor
		{
		    criteria Concept_c4m1Intro07 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro07Mechanic
		    then any _c4m1Intro07 foo:0 0.01
		}
	},

	{
		Rule _c4m1Intro08Trevor
		{
		    criteria Concept_c4m1Intro08 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro08Mechanic
		    then any _c4m1Intro09 foo:0 -1.0
		}
	},

	{
		Rule _c4m1Intro12Trevor
		{
		    criteria Concept_c4m1Intro12 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro12Mechanic
		    then coach _c4m1Intro14 foo:0 -0.30
		}
	},

	{
		Rule _c4m1Intro16Trevor
		{
		    criteria Concept_c4m1Intro16 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro16Mechanic
		    then gambler _c4m1Intro07 foo:0 0.01
		}
	},

	{
		Rule _c4m2_caneyell01Trevor
		{
		    criteria Concept_c4m2_caneyell01 IsTrevor ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival _auto_IsTrevorInCane
		    Response _c4m2_caneyell01Mechanic
		}
	},

	{
		Rule _c4m2_ElevatorHere01Trevor
		{
		    criteria Concept_c4m2_ElevatorHere01 IsTrevor IsNotIncapacitated IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_ElevatorHere01Mechanic
		}
	},

	{
		Rule _c4m2_gasinside01Trevor
		{
		    criteria Concept_c4m2_gasinside01 IsTrevor NotInCombat IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_NotTrevorInCane
		    Response _c4m2_gasinside01Mechanic
		}
	},

	{
		Rule _c4m2_seestation01Trevor
		{
		    criteria Concept_c4m2_seestation01 IsTrevor IsSubjectDistNear200 IsNotSaidActivatedC4M2Elevator NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_seestation01Mechanic
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule _c4m2_seestation02NTrevor
		{
		    criteria Concept_c4m2_seestation02 IsTrevor IsSubjectDistNear400 IsNotSaidActivatedC4M2Elevator FromIsGambler NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_seestation02NMechanic
		    then from _c4m2_seestation03 foo:0 0.01
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule _c4m2_seestation02RTrevor
		{
		    criteria Concept_c4m2_seestation02 IsTrevor IsSubjectDistNear400 IsNotSaidActivatedC4M2Elevator FromIsProducer NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_seestation02RMechanic
		    then from _c4m2_seestation03 foo:0 0.01
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule _c4m2_streetblocked01Trevor
		{
		    criteria Concept_c4m2_streetblocked01 IsTrevor IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_streetblocked01Mechanic
		}
	},

	{
		Rule _c4m2_streetblocked01bTrevor
		{
		    criteria Concept_c4m2_streetblocked01 IsTrevor IsSubjectDistFar400 AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_streetblocked01bMechanic
		    then subject _c4m2_streetblocked02 foo:0 0.01
		}
	},

	{
		Rule _c4m2_streetblocked02Trevor
		{
		    criteria Concept_c4m2_streetblocked02 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_streetblocked01Mechanic
		}
	},

	{
		Rule _c4m2_waterpool01Trevor
		{
		    criteria Concept_c4m2_waterpool01 IsTrevor IsSubjectDistNear400 NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_waterpool01Mechanic
		}
	},

	{
		Rule _c4m2_Witchville05Trevor
		{
		    criteria Concept_c4m2_Witchville05 IsTrevor IssuerClose NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_Witchville05Mechanic
		}
	},

	{
		Rule _c4m3_rain02Trevor
		{
		    criteria Concept_c4m3_rain02 IsTrevor NotInCombat IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m3_rain02Mechanic
		}
	},

	{
		Rule _c4m3_startsafe02Trevor
		{
		    criteria Concept_c4m3_startsafe02 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m3_startsafe02Mechanic
		    then any _c4m3_startsafe03 foo:0 0.2
		}
	},

	{
		Rule _c4m3_startsafe03Trevor
		{
		    criteria Concept_c4m3_startsafe03 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m3_startsafe03Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule _C4M4_FLOODED01Trevor
		{
		    criteria Concept_C4M4_FLOODED01 IsTrevor ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M4_FLOODED01Mechanic
		}
	},

	{
		Rule _C4M4_garagesale01Trevor
		{
		    criteria Concept_C4M4_garagesale01 IsTrevor IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M4_garagesale01Mechanic
		}
	},

	{
		Rule _C4M5_BoatComing01Trevor
		{
		    criteria Concept_C4M5_BoatComing01 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M5_BoatComing01Mechanic
		}
	},

	{
		Rule _C4M5_Intro03Trevor
		{
		    criteria Concept_C4M5_Intro03 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M5_Intro03Mechanic
		    then any _C4M5_Intro04 foo:0 0.1
		}
	},

	{
		Rule _C4M5_Intro04Trevor
		{
		    criteria Concept_C4M5_Intro04 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M5_Intro04Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule PlayerRemarkc4m5_BurgerTankTrevor
		{
		    criteria ConceptRemark IsTrevor Isc4m5_burgertank IsNotSaidc4m5_burgertank IsNotCoughing IsTalk IsTalkTrevor IsSubjectNear1000 IsWorldTalkTrevor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m5_BurgerTankMechanic
		    ApplyContext "Saidc4m5_burgertank:1:0,Talk:1:2"
		    applycontexttoworld
		}
	},

	{
		Rule _introc1m1Trevor
		{
		    criteria Concept_introc1m1 IsTrevor IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1Mechanic
		    then any _introc1m1a01 foo:0 -1
		}
	},

	{
		Rule _introc1m1AloneTrevor
		{
		    criteria Concept_introc1m1 IsTrevor IsAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1AloneMechanic
		}
	},

	{
		Rule _introc1m1MovieIntroTrevor
		{
		    criteria Concept_introc1m1 IsTrevor IsNotAlone ExtraWeight10 ChanceToFire5Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1MovieIntroMechanic
		    then self _introc1m1MovieIntro foo:0 0.5
		}
	},

	{
		Rule _introc1m1MovieIntro2Trevor
		{
		    criteria Concept_introc1m1MovieIntro IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1MovieIntro2Mechanic
		    then producer _introc1m1MovieIntro foo:0 -1.5
		}
	},

	{
		Rule _introc1m1a04Trevor
		{
		    criteria Concept_introc1m1a04 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1a04Mechanic
		    then gambler _introc1m1b03 foo:0 -1.120
		}
	},

	{
		Rule _introc1m1a05Trevor
		{
		    criteria Concept_introc1m1a05 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1a05Mechanic
		    then gambler _introc1m1b10 foo:0 0.1
		}
	},

	{
		Rule _introc1m1b02Trevor
		{
		    criteria Concept_introc1m1b02 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b02Mechanic
		    then gambler _introc1m1b03 foo:0 -1.120
		}
	},

	{
		Rule _introc1m1b03Trevor
		{
		    criteria Concept_introc1m1b03 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b03Mechanic
		    then gambler _introc1m1b06 foo:0 0.1
		}
	},

	{
		Rule _introc1m1lastTrevor
		{
		    criteria Concept_introc1m1last IsTrevor FromIsNotCoach ChanceToFire30Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1lastMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule _introc1m1lastCoachTrevor
		{
		    criteria Concept_introc1m1last IsTrevor FromIsCoach ChanceToFire30Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1lastCoachMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule _introc1m1b05Trevor
		{
		    criteria Concept_introc1m1b05 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b05Mechanic
		    then any _introc1m1b08 foo:0 0.1
		}
	},

	{
		Rule _introc1m1b06Trevor
		{
		    criteria Concept_introc1m1b06 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b06Mechanic
		    then any _introc1m1last foo:0 -5.084
		}
	},

	{
		Rule _introc1m1b08Trevor
		{
		    criteria Concept_introc1m1b08 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b08Mechanic
		    then any _introc1m1last foo:0 -5.084
		}
	},

	{
		Rule _introc1m1firealertTrevor
		{
		    criteria Concept_introc1m1firealert IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1firealertMechanic
		    then coach _introc1m1b08 foo:0 0.1
		}
	},

	{
		Rule BlankTestoTrevor
		{
		    criteria ConceptBlankTesto IsTrevor
		    Response NoResponse
		    ApplyContext "_auto_BlankTesto:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule c1m1_elevator_door_openTrevor
		{
		    criteria Conceptc1m1_elevator_door_open2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m1_elevator_door_openMechanic
		    then all C1M1Cough foo:0 -1.399
		}
	},

	{
		Rule c1m1_elevator_ready2Trevor
		{
		    criteria Conceptc1m1_elevator_ready2 IsTrevor IsNotSaidC1M1OpenDoor AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m1_elevator_ready2Mechanic
		    then Trevor C1M1Cough foo:0 -0.618
		    ApplyContext "SaidC1M1OpenDoor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule _C1M1_ElevatorHello2AliveName1Trevor
		{
		    criteria Concept_C1M1_ElevatorHello2AliveName1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello2AliveName1Mechanic
		    then any _C1M1_ElevatorHello2AliveName2 foo:0 -0.911
		}
	},

	{
		Rule _C1M1_ElevatorHello2AliveName2Trevor
		{
		    criteria Concept_C1M1_ElevatorHello2AliveName2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello2AliveName2Mechanic
		    then any _C1M1_ElevatorHello2AliveExtra1 foo:0 -0.911
		}
	},

	{
		Rule _C1M1_ElevatorHello2AliveExtra1Trevor
		{
		    criteria Concept_C1M1_ElevatorHello2AliveExtra1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello2AliveExtra1Mechanic
		    then any _C1M1_ElevatorHello2AliveExtra2 foo:0 0.1
		}
	},

	{
		Rule _C1M1_ElevatorHello2AliveExtra2Trevor
		{
		    criteria Concept_C1M1_ElevatorHello2AliveExtra2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello2AliveExtra2Mechanic
		}
	},

	{
		Rule _C1M1_ElevatorHello3AliveName1Trevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveName1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveName1Mechanic
		    then any _C1M1_ElevatorHello3AliveName2 foo:0 -1.856
		}
	},

	{
		Rule _C1M1_ElevatorHello3AliveName1RTrevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveName1 FromIsProducer ChanceToFire100Percent IsRochelleElevatorIntro IsNotTrevorIntroduced IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveName1RMechanic
		    then from _C1M1_ElevatorHello3AliveExtra2 foo:0 -1.856
		    ApplyContext "TrevorIntroduced:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule _C1M1_ElevatorHello3AliveName2RTrevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveName2 FromIsProducer IsRochelleElevatorIntro ChanceToFire100Percent IsNotTrevorIntroduced IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveName2RMechanic
		    then from _C1M1_ElevatorHello3AliveName2 foo:0 -1.856
		    ApplyContext "TrevorIntroduced:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule _C1M1_ElevatorHello3AliveName2Trevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveName2 IsTrevor IsNotTrevorIntroduced AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveName2Mechanic
		    then any _C1M1_ElevatorHello3WhoIsDead foo:0 -0.911
		    ApplyContext "TrevorIntroduced:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule _C1M1_ElevatorHello3AliveWhoIsDeadTrevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveWhoIsDead IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveWhoIsDeadMechanic
		    then any _C1M1_ElevatorHello3NameDead foo:0 -0.671
		}
	},

	{
		Rule _C1M1_ElevatorHello3AliveNameDeadRTrevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveNameDead IsProducerNotAlive IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveNameDeadRMechanic
		}
	},

	{
		Rule _C1M1_ElevatorHello3AliveNameDeadCTrevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveNameDead IsCoachNotAlive IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveNameDeadCMechanic
		    then any _C1M1_ElevatorHello3NameDead foo:0 -0.671
		}
	},

	{
		Rule _C1M1_ElevatorHello3AliveNameDeadNTrevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveNameDead IsGamblerNotAlive IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveNameDeadNMechanic
		}
	},

	{
		Rule Concept_C1M1_ElevatorHello3AliveNameDeadSelfTrevor
		{
		    criteria Concept_C1M1_ElevatorHello3AliveNameDead IsTrevor IsCoachAlive ChanceToFire30Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response Concept_C1M1_ElevatorHello3AliveNameDeadSelfMechanic
		    then coach _C1M1_ElevatorHello3AliveNameDead2 foo:0 0.1
		}
	},

	{
		Rule C1M1CoughTrevor
		{
		    criteria ConceptC1M1Cough IsTrevor ismap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M1CoughMechanic
		}
	},

	{
		Rule C1M2SafeRoomTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat ismap_c1m2_streets IsInStartArea IsNotAlone AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSaidLeavingSafeArea IsNotSpeakingWeight0
		    Response C1M2SafeRoomMechanic
		    then gambler C1M2SafeRoomb1 foo:0 -3.584
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C1M2SafeRooma4Trevor
		{
		    criteria ConceptC1M2SafeRooma4 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRooma4Mechanic
		    then producer C1M2SafeRooma3 foo:0 0.1
		}
	},

	{
		Rule C1M2SafeRooma3Trevor
		{
		    criteria ConceptC1M2SafeRooma3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRooma3Mechanic
		    then producer C1M2SafeRooma4 foo:0 0.1
		}
	},

	{
		Rule C1M3AlarmOffaTrevor
		{
		    criteria ConceptC1M3AlarmOffa IsTrevor IsSubjectDistNear600 AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3AlarmOffaMechanic
		}
	},

	{
		Rule C1M3SafeRoomTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea ismap_c1m3_mall AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response C1M3SafeRoomMechanic
		    then self IntroEnd foo:0 0.1
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C1M3SafeRoom2eTrevor
		{
		    criteria ConceptC1M3SafeRoom2e IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3SafeRoom2eMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C1M4NearFinale03cTrevor
		{
		    criteria ConceptC1M4NearFinale03c IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4NearFinale03cMechanic
		}
	},

	{
		Rule c1m4NearFinale1Trevor
		{
		    criteria Conceptc1m4NearFinale1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4NearFinale1Mechanic
		}
	},

	{
		Rule C1M4SafeRoomTrevor
		{
		    criteria ConceptTalkIdle IsTrevor NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea ismap_c1m4_atrium AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response C1M4SafeRoomMechanic
		    then trevor C1M4SafeRoom2c1 foo:0 1.250
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C1M4SafeRoom2a1Trevor
		{
		    criteria ConceptC1M4SafeRoom2a1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4SafeRoom2a1Mechanic
		    then gambler C1M4SafeRoom2a2 foo:0 -5.969
		}
	},

	{
		Rule C1M4SafeRoom2b1Trevor
		{
		    criteria ConceptC1M4SafeRoom2b1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4SafeRoom2b1Mechanic
		    then producer C1M4SafeRoom2b2 foo:0 -5.969
		}
	},

	{
		Rule C1M4SafeRoom2b3Trevor
		{
		    criteria ConceptC1M4SafeRoom2b3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4SafeRoom2b3Mechanic
		    then trevor C1M4SafeRoom2b4 foo:0 -1.539
		}
	},

	{
		Rule C1M4SafeRoom2b4Trevor
		{
		    criteria ConceptC1M4SafeRoom2b4 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4SafeRoom2b4Mechanic
		    then coach C1M4SafeRoom2b5 foo:0 -1.719
		}
	},

	{
		Rule C1M4SafeRoom2a5Trevor
		{
		    criteria ConceptC1M4SafeRoom2a5 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4SafeRoom2a5Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C1M4SafeRoom2c1Trevor
		{
		    criteria ConceptC1M4SafeRoom2c1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4SafeRoom2c1Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C1M4SafeRoomEndTrevor
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint ismap_c1m4_atrium IsTrevor IsNotSaidLeavingSafeArea _auto_NotTellingStory
		    Response C1M4SafeRoomEndMechanic
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C1M4FinaleStartResponseTrevor
		{
		    criteria ConceptC1M4FinaleStartResponse IsTrevor
		    Response C1M4FinaleStartResponseMechanic
		}
	},

	{
		Rule C2M1IntroStartTrevor
		{
		    criteria ConceptIntroC2M1 IsTrevor IsNotSaidCXM1Intro IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1IntroStartMechanic
		    then Any C2M1Intro002 foo:0 0.01
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro002Trevor
		{
		    criteria ConceptC2M1Intro002 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1Intro002Mechanic
		    then Any C2M1Intro002 foo:0 0.02
		}
	},

	{
		Rule C2M1Intro003Trevor
		{
		    criteria ConceptC2M1Intro003 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1Intro003Mechanic
		    then Any C2M1Intro002 foo:0 0.02
		}
	},

	{
		Rule C2M1Intro005Trevor
		{
		    criteria ConceptC2M1Intro005 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1Intro005Mechanic
		    then any C2M1Intro_400 foo:0 0.5
		    ApplyContext "Talk:1:10"
		    applycontexttoworld
		}
	},

	{
		Rule C2M1Intro008Trevor
		{
		    criteria ConceptC2M1Intro008 IsTrevor AutoIsNotScavenge AutoIsNotSurvival IsInStartArea
		    Response C2M1Intro008Mechanic
		}
	},

	{
		Rule C2M1Intro009Trevor
		{
		    criteria ConceptC2M1Intro009 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1Intro009Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C2M4PenSmell001Trevor
		{
		    criteria ConceptC2M4PenSmell001 IsTrevor IsTalk NotInCombat IsGamblerNear400 IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M4PenSmell001Mechanic
		}
	},

	{
		Rule C2M5_lipsync001Trevor
		{
		    criteria ConceptC2M5_lipsync001 IsTrevor TimeSinceGroupInCombat02 NotInCombat IsNotSpeaking IsGamblerNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton2
		    Response C2M5_lipsync001Mechanic
		}
	},

	{
		Rule C2M5_lipsync002Trevor
		{
		    criteria ConceptC2M5_lipsync002 IsTrevor TimeSinceGroupInCombat02 NotInCombat IsNotSpeaking IsCoachAlive IsCoachNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton2
		    Response C2M5_lipsync002Mechanic
		}
	},

	{
		Rule C4EnterCoverTrevor
		{
		    criteria ConceptC4EnterCover IsTrevor
		    Response NoResponse
		    ApplyContext "_auto_C4TrevorInCover:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4ExitCoverTrevor
		{
		    criteria ConceptC4ExitCover IsTrevor
		    Response NoResponse
		    ApplyContext "_auto_C4TrevorInCover:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C4FinaleStartTrevor
		{
		    criteria ConceptC4FinaleStart IsTrevor
		    Response C4FinaleStartMechanic
		    then any _C4M5_FinaleStart01 foo:0 0.01
		    ApplyContext "_auto_NoLostCall:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule c4m1_nogas01Trevor
		{
		    criteria Conceptc4m1_nogas01 IsTrevor NotInCombat IsSubjectDistNear500 AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_nogas01Mechanic
		    then any c4m1_nogas02 foo:0 0.01
		    ApplyContext "Talk:1:3.179"
		    applycontexttoworld
		}
	},

	{
		Rule c4m1_nogas10Trevor
		{
		    criteria Conceptc4m1_nogas10 IsTrevor NotInCombat IsSubjectDistNear300 AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_nogas10Mechanic
		    then any c4m1_nogas02 foo:0 0.01
		    ApplyContext "Talk:1:3.179"
		    applycontexttoworld
		}
	},

	{
		Rule c4m1_wreck01Trevor
		{
		    criteria Conceptc4m1_wreck01 IsTrevor NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_wreck01Mechanic
		    then self c4m1_wreck02 foo:0 0.03
		}
	},

	{
		Rule c4m1_wreck02Trevor
		{
		    criteria Conceptc4m1_wreck02 IsTrevor NotInCombat ChanceToFire60Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_wreck02Mechanic
		}
	},

	{
		Rule GasPour20MoreTrevor
		{
		    criteria ConceptGasPour20More IsTrevor IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour20MoreMechanic
		}
	},

	{
		Rule GasPour10MoreTalkTrevor
		{
		    criteria ConceptGasPour10More IsTrevor IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour10MoreTalkMechanic
		}
	},

	{
		Rule GasPour1MoreTrevor
		{
		    criteria ConceptGasPour1More IsTrevor IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour1MoreMechanic
		}
	},

	{
		Rule GasPour2MoreTrevor
		{
		    criteria ConceptGasPour2More IsTrevor IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour2MoreMechanic
		}
	},

	{
		Rule GasPour3MoreTrevor
		{
		    criteria ConceptGasPour3More IsTrevor IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour3MoreMechanic
		}
	},

	{
		Rule GasPour5MoreTrevor
		{
		    criteria ConceptGasPour5More IsTrevor IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour5MoreMechanic
		}
	},

	{
		Rule Player_CoverMeC1RTrevor
		{
		    criteria ConceptPlayer_CoverMeC1R IsTrevor ChanceToFire20Percent
		    Response Player_CoverMeC1RMechanic
		}
	},

	{
		Rule Player_CoverMeC1RCoach1Trevor
		{
		    criteria ConceptPlayer_CoverMeC1RCoach1 IsTrevor ChanceToFire20Percent
		    Response Player_CoverMeC1RCoach1Mechanic
		    then coach Player.CoverMeC1RCoach2 foo:0 -2.261
		    ApplyContext "TalkCoach:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule Player_GooedBySpitterC1RTrevor
		{
		    criteria ConceptPlayer_GooedBySpitterC1R IsTrevor IsNotIncapacitated IsTalkTrevor IsWorldTalkTrevor
		    Response Player_GooedBySpitterC1RMechanic
		}
	},

	{
		Rule Player_KnowHunterC1Trevor
		{
		    criteria ConceptPlayer_KnowHunter IsTrevor IssuerClose IsNotIncapacitated IsTalkTrevor IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response Player_KnowHunterC1Mechanic
		    then from Player.KnowHunter2 foo:0 0.1
		}
	},

	{
		Rule Player_KnowBoomerC1Trevor
		{
		    criteria ConceptPlayer_KnowBoomer IsTrevor IssuerClose IsNotIncapacitated IsTalkTrevor IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response Player_KnowBoomerC1Mechanic
		}
	},

	{
		Rule Player_KnowChargerC1Trevor
		{
		    criteria ConceptPlayer_KnowCharger IsTrevor IssuerClose IsNotIncapacitated IsTalkTrevor IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response Player_KnowChargerC1Mechanic
		}
	},

	{
		Rule Player_KnowJockeyC1Trevor
		{
		    criteria ConceptPlayer_KnowJockey IsTrevor IssuerClose IsNotIncapacitated IsTalkTrevor IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response Player_KnowJockeyC1Mechanic
		}
	},

	{
		Rule C1M2TankInfoTrevor
		{
		    criteria ConceptC1M2TankInfo IsTrevor
		    Response C1M2TankInfoMechanic
		    then producer C1M2TankInfo foo:0 0.1
		}
	},

	{
		Rule Player_KnowSpitterC1Trevor
		{
		    criteria ConceptPlayer_KnowSpitter IsTrevor IssuerClose IsNotIncapacitated IsTalkTrevor IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response Player_KnowSpitterC1Mechanic
		}
	},

	{
		Rule PlayerCr0wnedBrideTrevor
		{
		    criteria ConceptKilledZombie IsNotCoughing IsTrevor SubjectIsAWitch KilledByCr0wn IsNotWitchAggro ChanceToFire100Percent IsTalk IsTalkTrevor isc6m1_riverbank IsWorldTalkTrevor
		    // 	forceweight 101
		    Response PlayerCr0wnedBrideMechanic
		    then any WeddingWitchDead02 foo:0 3.1
		}
	},

	{
		Rule WeddingWitchDead02Trevor
		{
		    criteria ConceptWeddingWitchDead02 IsTrevor
		    Response WeddingWitchDead02Mechanic
		    then producer WeddingWitchDead02a foo:0 0.1
		}
	},

	{
		Rule WorldIntroC31a2Trevor
		{
		    criteria ConceptWorldIntroC31a2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31a2Mechanic
		    then gambler WorldIntroC31a3 foo:0 -3.934
		}
	},

	{
		Rule WorldIntroC31c1Trevor
		{
		    criteria ConceptWorldIntroC31c1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31c1Mechanic
		    then gambler WorldIntroC31c2 foo:0 -7.301
		}
	},

	{
		Rule WorldIntroC31d2Trevor
		{
		    criteria ConceptWorldIntroC31d2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31d2Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule WorldIntroC31e2aTrevor
		{
		    criteria ConceptWorldIntroC31e2a IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31e2aMechanic
		    then gambler WorldIntroC31e3a foo:0 -1.367
		}
	},

	{
		Rule WorldIntroC3f2Trevor
		{
		    criteria ConceptWorldIntroC3f2 IsTrevor IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC3f2Mechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule WorldIntroC31g1Trevor
		{
		    criteria ConceptWorldIntroC31g1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31g1Mechanic
		    then coach WorldIntroC31g2 foo:0 -3.349
		}
	},

	{
		Rule PlayerCoverMeHealTrevor
		{
		    criteria ConceptPlayerHealing IsNotCoughing IsTrevor IsNotAskedForCover IsTalk IsTalkTrevor IsNotAlone IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response PlayerCoverMeHealMechanic
		    ApplyContext "AskForCover:1:30"
		}
	},

	{
		Rule PlayerCoverMeHealC1Trevor
		{
		    criteria ConceptPlayerHealing IsNotCoughing IsTrevor IsNotAskedForCover IsTalk IsTalkTrevor IsNotAlone IsWorldTalkTrevor ismap_c1m1_hotel
		    Response PlayerCoverMeHealC1Mechanic
		    ApplyContext "AskForCover:1:30"
		}
	},

	{
		Rule Player_LostCallC6M3Trevor
		{
		    criteria ConceptTalkIdle IsTrevor IsClosestSurvivorFar3000 IsNotAlone IsNotSaidPlayerLostCall Isc6m3_port ChanceToFire100Percent IsNotSpeakingWeight0
		    Response Player_LostCallC6M3Mechanic
		    ApplyContext "SaidPlayerLostCall:1:50"
		    applycontexttoworld
		}
	},

	{
		Rule AutoPlayerLostCallTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsClosestSurvivorFar3000 IsNotAlone IsNotSaidPlayerLostCall _auto_NotNoLostCall IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response AutoPlayerLostCallMechanic
		    ApplyContext "SaidPlayerLostCall:1:50"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedChainsawTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsChainsaw IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedChainsawMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedChainsawAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsChainsaw IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedChainsawMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedcricket_batTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto Iscricket_bat IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedcricket_batMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedcricket_batAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Iscricket_bat IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedcricket_batMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedcrowbarTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto Iscrowbar IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedcrowbarMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedcrowbarAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Iscrowbar IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedcrowbarMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGolfClubTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGolfClub IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedGolfClubMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGolfClubAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsGolfClub IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedGolfClubMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGuitarTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsGuitar IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedGuitarMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGuitarAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGuitar IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedGuitarMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedKatanaTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsKatana IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedKatanaMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedKatanaAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsKatana IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedKatanaMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedLaserSightsTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsLaserSights IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedLaserSightsMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedLaserSightsAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsLaserSights IsWorldTalkTrevor IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedLaserSightsMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorBotPickupLaserSightsSpottedTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpLaserSights IsNotSpeaking IsBotIsAvailable IsNotInSafeSpot IsNotInCheckpoint IsNotInStartArea IsNotSaidSpotWeapons IsTalk IsTalkTrevor IsWorldTalkTrevor _auto_NotSpottedVehicle
		    Response SurvivorSpottedLaserSightsMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedM60Trevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsM60 IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedM60Mechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedM60AutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsM60 IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedM60Mechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMacheteTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsMachete IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMacheteMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMacheteAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsMachete IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMacheteMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMagnumTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsMagnum IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMagnumMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMagnumAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsMagnum IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMagnumMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSecondPistolTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsSecondPistol IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMagnumMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSecondPistolAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSecondPistol IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMagnumMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedtonfaTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto Istonfa IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedtonfaMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedtonfaAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Istonfa IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedtonfaMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAutoShotgunTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsAutoShotgun IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAutoShotgunAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsAutoShotgun IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedPumpShotgunTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsPumpShotgun IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedPumpShotgunAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsPumpShotgun IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedShotgun_ChromeTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsShotgun_Chrome IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedShotgun_spasTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsShotgun_spas IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedShotgun_spasAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsShotgun_spas IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSMGTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsSMG IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedSMGMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSMGAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSMG IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedSMGMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSMG_silencedTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsSmg_silenced IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedSMGMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedSMG_silencedAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSmg_silenced IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedSMGMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMP5SMGTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsSMG_mp5 IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedSMGMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMP5SMGAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSMG_mp5 IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedSMGMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHuntingRifleTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsHuntingRifle IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedHuntingRifleMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedHuntingRifleAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsHuntingRifle IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedHuntingRifleMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedRifleTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedRifleAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedRifle_AK47Trevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_AK47 IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedRifle_AK47AutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_AK47 IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedRifle_desertTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_desert IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedRifle_desertAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_desert IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedRifle_SG552Trevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_sg552 IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedRifle_SG552AutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_sg552 IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMilitarySniperTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsSniper_military IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedMilitarySniperAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSniper_military IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedScoutSniperTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsSniper_scout IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedScoutSniperAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSniper_scout IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAWPSniperTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsSniper_awp IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAWPSniperAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSniper_awp IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedBaseBallBatTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto Isbaseball_bat IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedBaseBallBatAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Isbaseball_bat IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedFryingPanTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsFryingPan IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedFryingPanAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsFryingPan IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAxeTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsFireAxe IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedAxeAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsFireAxe IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedShovelTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsShovel IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedShovelAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsShovel IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedPitchforkTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsPitchfork IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedPitchforkAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsPitchfork IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedKnifeTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsKnife IsNotSmartLookAuto IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedKnifeAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsKnife IsWorldTalkTrevor isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedOtherWeaponTrevor
		{
		    criteria ConceptPlayerSpotOtherWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedWeaponPistolTrevor
		{
		    criteria ConceptPlayerSpotPistol IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMagnumMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedShotgunTrevor
		{
		    criteria ConceptPlayerSpotShotgun IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkTrevor isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule C2M3AlarmOffNagTrevor
		{
		    criteria ConceptTalkIdle IsTrevor ChanceToFire50Percent IsNotIncapacitated ismap_c2m3 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_IsTracksOK _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_coasteroffMechanic
		    ApplyContext "_auto_TimerLockA:1:8,_auto_TimerLockTrevor:1:11"
		    applycontexttoworld
		}
	},

	{
		Rule C2M3Chopper001Trevor
		{
		    criteria ConceptC2M3Chopper001 IsTrevor IsTalk IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3Chopper001Mechanic
		}
	},

	{
		Rule SurvivorSpottedBikerCloseTrevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsBiker IsSubjectDistNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedBikerCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedBikerClose2Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsBiker IsSubjectDistNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedBikerCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedManagerCloseTrevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsManager IsSubjectDistNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedManagerCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedManagerClose2Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsManager IsSubjectDistNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedManagerCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedNamVetClose2Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsNamVet IsSubjectDistNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedNamVetClose2Mechanic
		}
	},

	{
		Rule SurvivorSpottedNamVetCloseTrevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsNamVet IsSubjectDistNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedNamVetClose2Mechanic
		}
	},

	{
		Rule SurvivorSpottedNamVetFarTrevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsNamVet IsSubjectDistFar400 IsWorldTalkTrevor
		    Response SurvivorSpottedNamVetFarMechanic
		}
	},

	{
		Rule SurvivorSpottedTeenGirlCloseTrevor
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsTeenGirl IsSubjectDistNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedTeenGirlCloseMechanic
		}
	},

	{
		Rule SurvivorSpottedTeenGirlClose2Trevor
		{
		    criteria ConceptPlayerLook IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto SubjectIsTeenGirl IsSubjectDistNear400 IsWorldTalkTrevor
		    Response SurvivorSpottedTeenGirlCloseMechanic
		}
	},

	{
		Rule C13M1IntroStartTrevor
		{
		    criteria ConceptIntroC13M1 IsTrevor IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M1IntroStartMechanic
		    then any C13M1Intro2 foo:0 0.1
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M1Intro2Trevor
		{
		    criteria ConceptC13M1Intro2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival C13M1TrevorNotPanicking
		    Response C13M1Intro2Mechanic
		    then any C13M1Intro3 foo:0 0.1
		}
	},

	{
		Rule C13M1Intro3Trevor
		{
		    criteria ConceptC13M1Intro3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival C13M1TrevorNotPanicking
		    Response C13M1Intro3Mechanic
		    then any C13M1IntroLast foo:0 0.1
		}
	},

	{
		Rule C13M1IntroLastTrevor
		{
		    criteria ConceptC13M1IntroLast IsTrevor AutoIsNotScavenge AutoIsNotSurvival C13M1TrevorNotPanicking
		    Response C13M1IntroLastMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule C13M1IntroLocationLastTrevor
		{
		    criteria ConceptC13M1IntroLocationLast IsTrevor C13M1TrevorNotPanicking AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M1IntroLocationLastMechanic
		    then self IntroEnd foo:0 0.1
		}
	},

	{
		Rule RemarkC13M1UpHillTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M1UpHill IsNotRemarkedC13M1UpHill NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_uphillMechanic
		    ApplyContext "RemarkedC13M1UpHill:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M1DownHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M1DownHere IsNotRemarkedC13M1DownHere NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereMechanic
		    ApplyContext "RemarkedC13M1DownHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M1ThroughHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M1ThroughHere IsNotRemarkedC13M1ThroughHere NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response RemarkC13M1ThroughHereMechanic
		    ApplyContext "RemarkedC13M1ThroughHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M1ThroughWindowTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M1ThroughWindow IsNotRemarkedC13M1ThroughWindow NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_throughwindowMechanic
		    ApplyContext "RemarkedC13M1ThroughWindow:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M1UpStepsTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M1UpSteps IsNotRemarkedC13M1UpSteps NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairs2Mechanic
		    ApplyContext "RemarkedC13M1UpSteps:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M1CrossHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M1CrossHere IsNotRemarkedC13M1CrossHere NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AcrossHereMechanic
		    ApplyContext "RemarkedC13M1CrossHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M1PreBunkerOpenTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M1PreBunkerOpen IsNotRemarkedC13M1PreBunkerOpen NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response RemarkC13M1PreBunkerOpenMechanic
		    ApplyContext "RemarkedC13M1PreBunkerOpen:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M1OpeningBunkerTrevor
		{
		    criteria ConceptC13M1OpeningBunker IsTrevor IsNotC13M1OpeningBunker AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M2OpenDoor2Mechanic
		    ApplyContext "C13M1OpeningBunker:1:0,RemarkedC13M1PreBunkerOpen:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M2UpHillTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M2UpHill IsNotRemarkedC13M2UpHill NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response RemarkC13M2UpHillMechanic
		    ApplyContext "RemarkedC13M2UpHill:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M2DownHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M2DownHere IsNotRemarkedC13M2DownHere NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereMechanic
		    ApplyContext "RemarkedC13M2DownHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M2UpLadderTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M2UpLadder IsNotRemarkedC13M2UpLadder NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3upladderMechanic
		    ApplyContext "RemarkedC13M2UpStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M2UpStairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M2UpStairs IsNotRemarkedC13M2UpStairs NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairs2Mechanic
		    ApplyContext "RemarkedC13M2UpStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M2TankApproachingTrevor
		{
		    criteria ConceptC13M2TankApproaching IsTrevor IsNotNoticedC13M2ShakingGround AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M2TankApproachingMechanic
		    ApplyContext "NoticedC13M2ShakingGround:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M2BarrelsIgnitedTrevor
		{
		    criteria ConceptC13M2BarrelsIgnited IsTrevor IsNotC13M2IgnitedBarrels AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M2BarrelsIgnitedMechanic
		    then any C13M2Barrels1 foo:0 5
		    ApplyContext "C13M2IgnitedBarrels:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M2Barrels1Trevor
		{
		    criteria ConceptC13M2Barrels1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M2Barrels1Mechanic
		    then any C13M2Barrels2 foo:0 0.1
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C13M2Barrels2Trevor
		{
		    criteria ConceptC13M2Barrels2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M2Barrels2Mechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule RemarkC13M3DownHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsC13M3DownHere IsNotRemarkedC13M3DownHere NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereMechanic
		    ApplyContext "RemarkedC13M3DownHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M3ApproachingTankerTrevor
		{
		    criteria ConceptC13M3ApproachingTanker IsTrevor IsNotSawC13M3Tanker AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3ApproachingTankerMechanic
		    then any C13M3Tanker1 foo:0 3
		    ApplyContext "SawC13M3Tanker:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M3Tanker1Trevor
		{
		    criteria ConceptC13M3Tanker1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3Tanker1Mechanic
		    then any C13M3Tanker2 foo:0 -0.3
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C13M3Tanker2Trevor
		{
		    criteria ConceptC13M3Tanker2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3Tanker2Mechanic
		    then any C13M3Tanker3 foo:0 3
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C13M3Tanker3Trevor
		{
		    criteria ConceptC13M3Tanker3 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3Tanker3Mechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C13M3OnScaffoldTrevor
		{
		    criteria ConceptC13M3OnScaffold IsTrevor IsNotOnC13M3Scaffold AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerRemarkWorldC1M2DownStairsMechanic
		    ApplyContext "OnC13M3Scaffold:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M3AirstrikeTrevor
		{
		    criteria ConceptC13M3Airstrike IsTrevor IsNotWitnissedC13M3Airstrike AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3AirstrikeMechanic
		    then any C13M3Airstrike2 foo:0 0.01
		    ApplyContext "WitnissedC13M3Airstrike:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M3Airstrike2Trevor
		{
		    criteria ConceptC13M3Airstrike2 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3Airstrike2Mechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4Button1Trevor
		{
		    criteria ConceptC13M4Button1 IsTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4Button1Mechanic
		    then orator C13M4FinaleBrief foo:0 0.3
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4FinaleTriggeredTrevor
		{
		    criteria ConceptFinaleTriggered IsTrevor ismapc13m4_cutthroatcreek IsTriggeredByTrevor _auto_NotFinaleStarted
		    Response C13M4FinaleTriggeredMechanic
		    then orator C13M4FinaleStart foo:0 0.01
		    ApplyContext "_auto_Finale:1:0,_auto_TalkingTrevor:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4FinaleStart2Trevor
		{
		    criteria ConceptC13M4FinaleStart2 IsTrevor _auto_IsTalkingTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4FinaleStart2Mechanic
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4DownCreekTrevor
		{
		    criteria ConceptC13M4DownCreek IsTrevor IsNotInC13M4Creek AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4DownCreekMechanic
		    ApplyContext "Talk:1:3,InC13M4Creek:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4InSmokeTrevor
		{
		    criteria ConceptC13M4InSmoke IsTrevor IsNotInC13M4Smoke AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorCoughingMechanic
		    ApplyContext "TalkTrevor:1:3,InC13M4Smoke:1:0"
		}
	},

	{
		Rule C13M4NoticedHelicopterTrevor
		{
		    criteria ConceptC13M4NoticedHelicopter IsTrevor IsNotNoticedC13M4Helicopter AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4NoticedHelicopterMechanic
		    ApplyContext "Talk:1:3,NoticedC13M4Helicopter:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4AlmostThereTrevor
		{
		    criteria ConceptC13M4AlmostThere IsTrevor IsNotC13M4AlmostThere AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4AlmostThereMechanic
		    ApplyContext "Talk:1:3,C13M4AlmostThere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4SpottedVehicleTrevor
		{
		    criteria ConceptFinalVehicleSpotted IsTrevor ismapc13m4_cutthroatcreek _auto_IsFinaleStarted
		    Response C13M4SpottedVehicleMechanic
		    then pilot C13M4PilotEscapeNag foo:0 2
		    ApplyContext "_auto_Finale:2:0,_auto_TimerLockA:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4GetToVehicleTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor ismapc13m4_cutthroatcreek IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C13M4GetToVehicleMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C13M4InsideVehicleTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor ismapc13m4_cutthroatcreek IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockTrevor IsNotSpeakingWeight0
		    Response C13M4InsideVehicleMechanic
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockTrevor:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule EllisStoryStartTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival IsNotSrcGrp_TREVORSTORYINIT
		    // 	forceweight 1
		    Response NoResponse
		    ApplyContext "_auto_StoryWait:1:0,_auto_StoryGate:1:60,SrcGrp_TREVORSTORYINIT:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SafeRoomStartTrevor
		{
		    criteria ConceptTalkIdle IsTrevor IsInStartArea AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomStart
		    Response NoResponse
		    ApplyContext "Talk:1:45,_auto_SafeRoomStart:1:0,_auto_SafeRoomQuiet:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule IntroEndTrevor
		{
		    criteria ConceptIntroEnd IsTrevor FromIsTrevor IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule LeavingSafeAreaTrevor
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsTrevor IsNotSaidLeavingSafeArea
		    Response NoResponse
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule LeavingSafeRoomTrevor
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsTrevor IsNotSaidLeavingSafeArea
		    Response NoResponse
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule FinaleTriggeredTrevor
		{
		    criteria ConceptFinaleTriggered IsTrevor IsTriggeredByTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response NoResponse
		    ApplyContext "_auto_Finale:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule FinalVehicleSpottedTrevor
		{
		    criteria ConceptFinalVehicleSpotted IsTrevor _auto_IsFinaleStarted _auto_NotEscapeReady
		    Response NoResponse
		    ApplyContext "_auto_Finale:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule FinalVehicleArrivedTrevor
		{
		    criteria ConceptFinalVehicleArrived IsTrevor _auto_HasSpottedVehicle _auto_NotEscapeReady
		    Response NoResponse
		    ApplyContext "_auto_Escape:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule L4D1PlayerNiceShotTrevor
		{
		    criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsTrevor IsSubjectDistNear1500 IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSpeaking ChanceToFire70Percent
		    Response L4D1PlayerNiceShotMechanic
		}
	},

	{
		Rule L4D1PlayerNiceShotFrancisTrevor
		{
		    criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsTrevor IsSubjectDistNear1500 IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsBiker ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotFrancisMechanic
		}
	},

	{
		Rule L4D1PlayerNiceShotLouisTrevor
		{
		    criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsTrevor IsSubjectDistNear1500 IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsManager ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotLouisMechanic
		}
	},

	{
		Rule L4D1PlayerNiceShotZoeyTrevor
		{
		    criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsTrevor IsSubjectDistNear1500 IsTalk IsTalkTrevor IsWorldTalkTrevor SubjectIsTeenGirl ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotZoeyMechanic
		}
	},

	{
		Rule C6M3GasPourTrevor
		{
		    criteria ConceptPlayerPourStarted IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotScavenge isC6M3_Port ChanceToFire70Percent
		    Response C6M3GasPourMechanic
		    ApplyContext "TalkTrevor:1:2"
		}
	},

	{
		Rule C6M1_IntotheparkNoHealthTrevor
		{
		    criteria ConceptC6M1_IntotheparkNoHealth IsTrevor
		    Response C6M1_IntotheparkNoHealthMechanic
		}
	},

	{
		Rule C6M1Intro_01aTrevor
		{
		    criteria ConceptC6M1Intro_01a IsTrevor IsNotVersus
		    Response C6M1Intro_01aMechanic
		    then Biker C6M1Intro_01b foo:0 -6.365
		}
	},

	{
		Rule C6M1Intro_01Biker02Trevor
		{
		    criteria ConceptintroC6M1 IsTrevor IsFrancisIntroActor IsNotSaidIntroScene FrancisGroup2 IsNotVersus
		    Response C6M1Intro_01Biker02Mechanic
		    then Biker C6M1Intro_24b foo:0 -12.798
		    ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1Intro_01cTrevor
		{
		    criteria ConceptC6M1Intro_01c IsTrevor IsNotVersus
		    Response C6M1Intro_01cMechanic
		    then Biker C6M1Intro_01d foo:0 -0.982
		}
	},

	{
		Rule C6M1Intro_01TeenGirl04Trevor
		{
		    criteria ConceptintroC6M1 IsTrevor IsZoeyIntroActor IsNotSaidIntroScene MoreThan60 LessThan100 IsNotVersus
		    Response C6M1Intro_01TeenGirl04Mechanic
		    then TeenGirl C6M1Intro_23a foo:0 -2.512
		    ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1Intro_02aTrevor
		{
		    criteria ConceptC6M1Intro_02a IsTrevor
		    Response C6M1Intro_02aMechanic
		    then Biker C6M1Intro_02b foo:0 -4.221
		}
	},

	{
		Rule C6M1Intro_11aTrevor
		{
		    criteria ConceptC6M1Intro_11a IsTrevor
		    Response C6M1Intro_11aMechanic
		    then TeenGirl C6M1Intro_11b foo:0 -5.419
		}
	},

	{
		Rule C6M1Intro_11cTrevor
		{
		    criteria ConceptC6M1Intro_11c IsTrevor
		    Response C6M1Intro_11cMechanic
		    then Any WorldC6M1_HistoricTour foo:0 1
		}
	},

	{
		Rule C6M1Intro_12bTrevor
		{
		    criteria ConceptC6M1Intro_12b IsTrevor
		    Response C6M1Intro_12bMechanic
		    then Producer C6M1Intro_12c foo:0 -4.691
		}
	},

	{
		Rule C6M1Intro_13aTrevor
		{
		    criteria ConceptC6M1Intro_13a IsTrevor
		    Response C6M1Intro_13aMechanic
		    then Coach C6M1Intro_13b foo:0 -14.217
		}
	},

	{
		Rule C6M1Intro_13cTrevor
		{
		    criteria ConceptC6M1Intro_13c IsTrevor
		    Response C6M1Intro_13cMechanic
		    then TeenGirl C6M1Intro_13d foo:0 -3.537
		}
	},

	{
		Rule C6M1Intro_13fTrevor
		{
		    criteria ConceptC6M1Intro_13f IsTrevor
		    Response C6M1Intro_13fMechanic
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1Intro_23bTrevor
		{
		    criteria ConceptC6M1Intro_23b IsTrevor
		    Response C6M1Intro_23bMechanic
		    then TeenGirl C6M1Intro_23c foo:0 -7.488
		}
	},

	{
		Rule C6M1Intro_23dTrevor
		{
		    criteria ConceptC6M1Intro_23d IsTrevor
		    Response C6M1Intro_23dMechanic
		    then Any WorldC6M1_HistoricTour foo:0 -4.369
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M1Intro_24cTrevor
		{
		    criteria ConceptC6M1Intro_24c IsTrevor
		    Response C6M1Intro_24cMechanic
		    then Biker C6M1Intro_24d foo:0 -2.841
		}
	},

	{
		Rule C6M1Intro_24eTrevor
		{
		    criteria ConceptC6M1Intro_24e IsTrevor
		    Response C6M1Intro_24eMechanic
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule LeavingC6M1StartTrevor
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsTrevor
		    Response LeavingC6M1StartMechanic
		    ApplyContext "LeftC6M1Start:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule RemWorldC6M1_WeddingWarn02Trevor
		{
		    criteria ConceptRemWorldC6M1_WeddingWarn02 IsTrevor IsSubjectDistNear800
		    Response RemWorldC6M1_WeddingWarn02Mechanic
		    ApplyContext "AtWedding:1:60, CoachCake:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule WorldC6M1_WeddingWarn03aTrevor
		{
		    criteria ConceptWorldC6M1_WeddingWarn03a IsTrevor
		    Response WorldC6M1_WeddingWarn03aMechanic
		    then Producer WorldC6M1_WeddingWarn03b foo:0 -0.799
		    ApplyContext "AtWedding:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2_OpenGate1Trevor
		{
		    criteria ConceptC6M2_OpenGate1 IsTrevor
		    Response C6M2_OpenGate1Mechanic
		    ApplyContext "SaidOpenedGate1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2_OpenGate1bTrevor
		{
		    criteria ConceptC6M2_OpenGate1b IsTrevor
		    Response C6M2_OpenGate1bMechanic
		}
	},

	{
		Rule C6M2_OpenGate1BlameTrevor
		{
		    criteria ConceptC6M2_OpenGate1 IsTrevor IsGamblerNear800Weight0
		    Response C6M2_OpenGate1BlameMechanic
		    then Gambler C6M2_OpenGate1a foo:0 0.01
		    ApplyContext "SaidOpenedGate1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2_OpenGate2Trevor
		{
		    criteria ConceptC6M2_OpenGate2 IsTrevor
		    Response C6M2_OpenGate2Mechanic
		    ApplyContext "Said:OpenedGate2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2LeavingSafeRoomTrevor
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsTrevor IsNotSaidC6M2LeavingSafeRoom isc6m2_bedlam ChanceToFire70Percent
		    Response C6M2LeavingSafeRoomMechanic
		    ApplyContext "SaidC6M2LeavingSafeRoom:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M2SafeRoomTrevor
		{
		    criteria ConceptTalkIdle Joined3 IsTrevor isC6m2_bedlam IsInStartArea AutoIsNotScavenge AutoIsNotSurvival IsNotSaidC6M2SafeRoom IsNotSpeakingWeight0
		    Response C6M2SafeRoomMechanic
		    then any C6M2SafeRoom2 foo:0 3
		    ApplyContext "SaidC6M2SafeRoom:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo02aTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo02a IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo02aMechanic
		    then Gambler DLC1_C6M2_SafeRoomConvo02b foo:0 -3.509
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo03Trevor
		{
		    criteria ConceptC6M2SafeRoom2 IsTrevor IsFrancisIntroActor FrancisGroup1 IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo03Mechanic
		    then Producer DLC1_C6M2_SafeRoomConvo03a foo:0 -3.330
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo03bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo03b IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo03bMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo03c foo:0 -16.180
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo06Trevor
		{
		    criteria ConceptC6M2SafeRoom2 IsTrevor IsZoeyIntroActor ZoeyGroup1 IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo06Mechanic
		    then Any DLC1_C6M2_SafeRoomConvo07a foo:0 -6.763
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo08Trevor
		{
		    criteria ConceptC6M2SafeRoom2 IsTrevor IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo08Mechanic
		    then Producer DLC1_C6M2_SafeRoomConvo15a foo:0 -4.114
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo11aTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo11a IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo11aMechanic
		    then Gambler DLC1_C6M2_SafeRoomConvo11b foo:0 -4.069
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo14bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo14b IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo14bMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo14c foo:0 -2.922
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo15Trevor
		{
		    criteria ConceptC6M2SafeRoom2 IsTrevor IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo15Mechanic
		    then Coach DLC1_C6M2_SafeRoomConvo16a1 foo:0 -3.684
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo16bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo16b IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo16bMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo16c foo:0 -1.763
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo16b1Trevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo16b1 IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo16b1Mechanic
		    then Coach DLC1_C6M2_SafeRoomConvo16e foo:0 -1.763
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo16dTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo16d IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo16dMechanic
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo16fTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo16f IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo16fMechanic
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo17Trevor
		{
		    criteria ConceptC6M2SafeRoom2 IsTrevor IsZoeyIntroActor IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo17Mechanic
		    then Producer DLC1_C6M2_SafeRoomConvo18a foo:0 -3.626
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo17aTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo17a IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo17aMechanic
		    then Producer DLC1_C6M2_SafeRoomConvo17b foo:0 -7.751
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo18bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo18b IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo18bMechanic
		    then Coach DLC1_C6M2_SafeRoomConvo18c foo:0 -2.705
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo19aTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo19a IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo19aMechanic
		    then Coach DLC1_C6M2_SafeRoomConvo19b foo:0 -2.249
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo19cTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo19c IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo19cMechanic
		    then Coach DLC1_C6M2_SafeRoomConvo19d foo:0 -6.193
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo19eTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo19e IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo19eMechanic
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo20Trevor
		{
		    criteria ConceptC6M2SafeRoom2 IsTrevor IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo20Mechanic
		    then Producer DLC1_C6M2_SafeRoomConvo21a foo:0 -12.293
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M2_SafeRoomConvo21bTrevor
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo21b IsTrevor
		    Response DLC1_C6M2_SafeRoomConvo21bMechanic
		}
	},

	{
		Rule WorldC6M2_FinalWater01bTrevor
		{
		    criteria ConceptWorldC6M2_FinalWater01b IsTrevor
		    Response WorldC6M2_FinalWater01bMechanic
		}
	},

	{
		Rule WorldC6M2_InSewer101aTrevor
		{
		    criteria ConceptWorldC6M2_InSewer101a IsTrevor
		    Response WorldC6M2_InSewer101aMechanic
		    then Gambler WorldC6M2_InSewer101c foo:0 -0.999
		}
	},

	{
		Rule WorldC6M2_OnTourWalk102bTrevor
		{
		    criteria ConceptWorldC6M2_OnTourWalk102b IsTrevor
		    Response WorldC6M2_OnTourWalk102bMechanic
		}
	},

	{
		Rule WorldC6M2_Tattoo03b_Trevor
		{
		    criteria ConceptWorldC6M2_Tattoo03b_ IsTrevor
		    Response WorldC6M2_Tattoo03b_Mechanic
		}
	},

	{
		Rule C6M3_BridgeDownTrevor
		{
		    criteria ConceptC6M3_BridgeDown IsTrevor
		    Response C6M3_BridgeDownMechanic
		    ApplyContext "SaidGetToCar:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_BridgeGettoCarTrevor
		{
		    criteria ConceptGetToVehicle IsTrevor IsNotSaidGetToCar Isc6m3_port
		    Response C6M3_BridgeGettoCarMechanic
		    ApplyContext "SaidGetToCar:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_elevatorTrevor
		{
		    criteria Conceptc6m3_elevatorCancel IsTrevor IsNotSaidC6M3Elevator IsC6M3_port
		    // 	forceweight 1
		    Response C6M3_elevatorMechanic
		    ApplyContext "SaidC6M3Elevator:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_elevatorZoeyTrevor
		{
		    criteria Conceptc6m3_elevatorCancel IsTrevor IsNotSaidC6M3Elevator IsC6M3_port IsZoeyIntroActor IsNotVersus ZoeyGroup1
		    // 	forceweight 1
		    Response C6M3_elevatorZoeyMechanic
		    ApplyContext "SaidC6M3Elevator:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_GivenItemBikerTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorBiker Isc6m3_portHeavy
		    Response C6M3_GivenItemBikerMechanic
		}
	},

	{
		Rule C6M3_GivenItemTeenGirlTrevor
		{
		    criteria ConceptPlayerPickup IsTrevor IsDonorTeenGirl Isc6m3_portHeavy
		    Response C6M3_GivenItemTeenGirlMechanic
		}
	},

	{
		Rule C6M3SafeRoomTrevor
		{
		    criteria ConceptTalkIdle Joined3 IsTrevor isC6m3_port IsInStartArea AutoIsNotScavenge AutoIsNotSurvival IsNotSaidC6M3SafeRoom IsNotSpeakingWeight0
		    Response C6M3SafeRoomMechanic
		    then any C6M3SafeRoom2 foo:0 3
		    ApplyContext "SaidC6M3SafeRoom:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo01aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo01a IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo01aMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo01b foo:0 -7.373
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo01cTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo01c IsTrevor
		    Response DLC1_C6M3_SafeRoomConvo01cMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo02eTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo02e IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo02eMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo03aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo03a IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo03aMechanic
		    then Gambler DLC1_C6M3_SafeRoomConvo03b foo:0 -1.144
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo03cTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo03c IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo03cMechanic
		    then Gambler DLC1_C6M3_SafeRoomConvo03d foo:0 -1.799
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo04aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo04a IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo04aMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo04b foo:0 -3.659
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo04dTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo04d IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo04dMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo05aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo05a IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo05aMechanic
		    then Gambler DLC1_C6M3_SafeRoomConvo05b foo:0 -2.546
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo06Trevor
		{
		    criteria ConceptC6M3SafeRoom2 IsTrevor IsNotSaidC6M3SafeRoom2 IsFrancisIntroActor FrancisGroup4 IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo06Mechanic
		    then Producer DLC1_C6M3_SafeRoomConvo06a foo:0 -5.805
		    ApplyContext "SaidC6M3SafeRoom2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo06bTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo06b IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo06bMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo07aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo07a IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo07aMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo07b foo:0 -2.804
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo07cTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo07c IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo07cMechanic
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08a IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo08aMechanic
		    then Coach DLC1_C6M3_SafeRoomConvo08b foo:0 -1.669
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08cTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08c IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo08cMechanic
		    then Trevor DLC1_C6M3_SafeRoomConvo08d foo:0 -0.936
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08dTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08d IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo08dMechanic
		    then Trevor DLC1_C6M3_SafeRoomConvo08f foo:0 -1.479
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08eTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08e IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo08eMechanic
		    then Trevor DLC1_C6M3_SafeRoomConvo08f foo:0 -2.608
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo08fTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo08f IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo08fMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo08g foo:0 -5.514
		}
	},

	{
		Rule DLC1_C6M3_SafeRoomConvo09aTrevor
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo09a IsTrevor IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo09aMechanic
		    then Producer DLC1_C6M3_SafeRoomConvo09b foo:0 -13.536
		}
	},

	{
		Rule IncapBounceTrevor
		{
		    criteria ConceptSurvivorIncapacitated IsTrevor IsNotSaidInCapBounce isC6m3_port
		    Response IncapBounceMechanic
		    then Biker InCapBounce2 foo:0 0
		    ApplyContext "SaidInCapBounce:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_CansDoneTrevor
		{
		    criteria Conceptc6m3escapeready IsTrevor IsC6M3_Port IsNotSaidc6m3escapeready
		    Response C6M3_CansDoneMechanic
		    then any EmphaticArriveRun foo:0 -1.830
		    ApplyContext "Saidc6m3escapeready:1:0,Talk:1:5"
		    applycontexttoworld
		}
	},

	{
		Rule L4D1AlsoSpottedTankTrevor
		{
		    criteria ConceptPlayerAlsoWarnTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Isc6m3_port
		    Response L4D1AlsoSpottedTankMechanic
		    ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule L4D1SpottedTankTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Isc6m3_port IsNotSpeakingWeight0
		    Response L4D1SpottedTankMechanic
		    ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedFallenTrevor
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeFallen IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor IsNotSaidFallenWarn IsNotSpeakingWeight0
		    Response SurvivorSpottedFallenMechanic
		    ApplyContext "SaidFallenWarn:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerWitchChasingC6M1Trevor
		{
		    criteria ConceptPlayerExertionMinor IsTrevor IsWitchPresent SubjectIsNotWitch IsNotSaidTrevorWitchChasing IsSaidTrevorWitchAttacking isc6m1_riverbank
		    // 	forceweight 20
		    Response PlayerWitchChasingC6M1Mechanic
		    ApplyContext "SaidTrevorWitchChasing:1:15,TalkTrevor:1:2"
		}
	},

	{
		Rule PlayerRemarkremark_MidnightRidersBusTrevor
		{
		    criteria ConceptRemark IsTrevor Isremark_MidnightRidersBus IsNotSaidremark_MidnightRidersBus IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear1500 IsNotSpeakingWeight0
		    Response PlayerRemarkremark_MidnightRidersBusMechanic
		    ApplyContext "Saidremark_MidnightRidersBus:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_AcrossHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_AcrossHere IsNotSaidWorldC6M1_AcrossHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AcrossHereMechanic
		    ApplyContext "SaidWorldC6M1_AcrossHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_AlleyBelowTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_AlleyBelow IsNotSaidWorldC6M1_AlleyBelow IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AlleyBelowMechanic
		    ApplyContext "SaidWorldC6M1_AlleyBelow:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_AlleyIntoBuildingTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_AlleyIntoBuilding IsNotSaidWorldC6M1_AlleyIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AlleyIntoBuildingMechanic
		    ApplyContext "SaidWorldC6M1_AlleyIntoBuilding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_InAptsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_InApts IsNotSaidWorldC6M1_InApts IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_InAptsMechanic
		    ApplyContext "SaidWorldC6M1_InApts:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_IntotheparkTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_Intothepark IsNotSaidWorldC6M1_Intothepark IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntotheparkMechanic
		    ApplyContext "SaidWorldC6M1_Intothepark:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_IntoThePark2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_IntoThePark2 IsNotSaidWorldC6M1_IntoThePark2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntoThePark2Mechanic
		    ApplyContext "SaidWorldC6M1_IntoThePark2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_IntoTheStoreTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_IntoTheStore IsNotSaidWorldC6M1_IntoTheStore IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntoTheStoreMechanic
		    ApplyContext "SaidWorldC6M1_IntoTheStore:1:0,JustSaidWorldC6M1_IntoTheStore:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_PostWeddingTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_PostWedding IsNotSaidWorldC6M1_PostWedding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_PostWeddingMechanic
		    ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_PostWeddingZTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_PostWedding IsNotSaidWorldC6M1_PostWedding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 IsZoeyIntroActor ZoeyGroup1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_PostWeddingZMechanic
		    then Any WorldC6M1_PostWedding02a foo:0 -3.481
		    ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_PostWeddingZCTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_PostWedding IsNotSaidWorldC6M1_PostWedding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 IsZoeyIntroActor ZoeyGroup2 IsCoachNear800Weight0 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_PostWeddingZCMechanic
		    then Coach WorldC6M1_PostWedding01a foo:0 -2.761
		    ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_SafeRoomAlleyTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_SafeRoomAlley IsNotSaidWorldC6M1_SafeRoomAlley IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear600 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_SafeRoomAlleyMechanic
		    ApplyContext "SaidWorldC6M1_SafeRoomAlley:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_ThroughBarTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_ThroughBar IsNotSaidWorldC6M1_ThroughBar IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_ThroughBarMechanic
		    ApplyContext "SaidWorldC6M1_ThroughBar:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_UpHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_UpHere IsNotSaidWorldC6M1_UpHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpHereMechanic
		    ApplyContext "SaidWorldC6M1_UpHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_UpTheStairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_UpTheStairs IsNotSaidWorldC6M1_UpTheStairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairsMechanic
		    ApplyContext "SaidWorldC6M1_UpTheStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_UpTheStairs2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_UpTheStairs2 IsNotSaidWorldC6M1_UpTheStairs2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairs2Mechanic
		    ApplyContext "SaidWorldC6M1_UpTheStairs2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_WeddingWarnTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarnMechanic
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_WeddingWarn1Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_WeddingWarn1 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarn1Mechanic
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_WeddingWarn2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_WeddingWarn2 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarn2Mechanic
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M1_WeddingWarn3Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M1_WeddingWarn3 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarn3Mechanic
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_AcrossPlankTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_AcrossPlank IsNotSaidWorldC6M2_AcrossPlank IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear250 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AcrossPlankMechanic
		    ApplyContext "SaidWorldC6M2_AcrossPlank:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_AfterGate1Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_AfterGate1 IsNotSaidWorldC6M2_AfterGate1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGate1Mechanic
		    ApplyContext "SaidWorldC6M2_AfterGate1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_AfterGate2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_AfterGate2 IsNotSaidWorldC6M2_AfterGate2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGate2Mechanic
		    then Gambler WorldC6M2_AfterGate201a foo:0 -1.968
		    ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_DownHereTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_DownHere IsNotSaidWorldC6M2_DownHere IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_DownHereMechanic
		    ApplyContext "SaidWorldC6M2_DownHere:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_DownIntoBuildingTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_DownIntoBuilding IsNotSaidWorldC6M2_DownIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_DownIntoBuildingMechanic
		    ApplyContext "SaidWorldC6M2_DownIntoBuilding:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_FinalLadderTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_FinalLadder IsNotSaidWorldC6M2_FinalLadder IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalLadderMechanic
		    ApplyContext "SaidWorldC6M2_FinalLadder:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_FinalWaterTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_FinalWater IsNotSaidWorldC6M2_FinalWater IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterMechanic
		    then Gambler WorldC6M2_FinalWater01a foo:0 -1.706
		    ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_FinalWaterGoGoTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_FinalWaterGoGo IsNotSaidWorldC6M2_FinalWaterGoGo IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterGoGoMechanic
		    ApplyContext "SaidWorldC6M2_FinalWaterGoGo:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_InJazzClubTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_InJazzClub IsNotSaidWorldC6M2_InJazzClub IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear1000 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InJazzClubMechanic
		    ApplyContext "SaidWorldC6M2_InJazzClub:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_InSewer2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_InSewer2 IsNotSaidWorldC6M2_InSewer2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsSaidWorldC6M2_InSewer1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewer2Mechanic
		    then Producer WorldC6M2_InSewer202a foo:0 -4.622
		    ApplyContext "SaidWorldC6M2_InSewer2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_InSewerLadder1Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_InSewerLadder1 IsNotSaidWorldC6M2_InSewerLadder1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewerLadder1Mechanic
		    then Any WorldC6M2_InSewerLadder101a foo:0 -2.795
		    ApplyContext "SaidWorldC6M2_InSewerLadder1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_IntoConstructionTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_IntoConstruction IsNotSaidWorldC6M2_IntoConstruction IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_IntoConstructionMechanic
		    ApplyContext "SaidWorldC6M2_IntoConstruction:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_IntoPoolHallTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_IntoPoolHall IsNotSaidWorldC6M2_IntoPoolHall IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_IntoPoolHallMechanic
		    ApplyContext "SaidWorldC6M2_IntoPoolHall:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_JukeBoxTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_JukeBox IsNotSaidWorldC6M2_JukeBox IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear150 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_JukeBoxMechanic
		    ApplyContext "SaidWorldC6M2_JukeBox:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_JumpDownTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_JumpDown IsNotSaidWorldC6M2_JumpDown IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_JumpDownMechanic
		    ApplyContext "SaidWorldC6M2_JumpDown:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_OnTourWalk2 IsNotSaidWorldC6M2_OnTourWalk2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk2Mechanic
		    ApplyContext "SaidWorldC6M2_OnTourWalk2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk3Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_OnTourWalk3 IsNotSaidWorldC6M2_OnTourWalk3 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk3Mechanic
		    ApplyContext "SaidWorldC6M2_OnTourWalk3:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_OpenGate1Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_OpenGate1 IsNotSaidWorldC6M2_OpenGate1 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSaidOpenedGate1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate1Mechanic
		    ApplyContext "SaidWorldC6M2_OpenGate1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_OpenGate2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_OpenGate2 IsNotSaidWorldC6M2_OpenGate2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSaidOpenedGate2 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate2Mechanic
		    ApplyContext "SaidWorldC6M2_OpenGate2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_Phase2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Phase2 IsNotSaidWorldC6M2_Phase2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2Mechanic
		    then Producer WorldC6M2_Phase201a foo:0 -1.792
		    ApplyContext "SaidWorldC6M2_Phase2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_Phase2DownTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2DownMechanic
		    ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_Phase2DownIntenseTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IntensityOver75 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2DownIntenseMechanic
		    ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_PostGate1xTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_PostGate1 IsNotSaidWorldC6M2_PostGate1 IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsSaidOpenedGate1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_PostGate1xMechanic
		    ApplyContext "SaidWorldC6M2_PostGate1:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_SafeRoomTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_SafeRoom IsNotSaidWorldC6M2_SafeRoom IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear800 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_SafeRoomMechanic
		    ApplyContext "SaidWorldC6M2_SafeRoom:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_TattooTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_Tattoo IsNotSaidWorldC6M2_Tattoo IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TattooMechanic
		    ApplyContext "SaidWorldC6M2_Tattoo:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_TourEntranceTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_TourEntrance IsNotSaidWorldC6M2_TourEntrance IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TourEntranceMechanic
		    ApplyContext "SaidWorldC6M2_TourEntrance:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_UpCatWalkTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_UpCatWalk IsNotSaidWorldC6M2_UpCatWalk IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpCatWalkMechanic
		    ApplyContext "SaidWorldC6M2_UpCatWalk:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_UpStairsTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_UpStairs IsNotSaidWorldC6M2_UpStairs IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpStairsMechanic
		    ApplyContext "SaidWorldC6M2_UpStairs:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M2_UpStairs2Trevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M2_UpStairs2 IsNotSaidWorldC6M2_UpStairs2 IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpStairs2Mechanic
		    ApplyContext "SaidWorldC6M2_UpStairs2:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M3_BridgeRunTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M3_BridgeRun IsNotSaidWorldC6M3_BridgeRun IsNotCoughing IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_BridgeRunMechanic
		    then any WorldC6M3_ByBridge01 foo:0 -1.803
		    ApplyContext "SaidWorldC6M3_BridgeRun:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldC6M3_ByBridgeTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear300 IsSaidFinalVehicleArrived IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_ByBridgeMechanic
		    ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule PlayerRemarkWorldFootLockerTrevor
		{
		    criteria ConceptRemark IsTrevor IsWorldFootLocker IsNotSaidWorldFootLocker IsNotCoughing NotInCombat IsTalk IsTalkTrevor IsWorldTalkTrevor IsSubjectNear500 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldFootLockerMechanic
		    ApplyContext "SaidWorldFootLocker:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule C6M3_PourFinishedTrevor
		{
		    criteria ConceptPlayerPourFinished IsTrevor IsTalk IsTalkTrevor IsWorldTalkTrevor Isc6m3_port ChanceToFire20Percent
		    Response C6M3_PourFinishedMechanic
		    then Manager L4D1_NiceJobPour foo:0 0
		    ApplyContext "Talk:1:3"
		}
	},

	{
		Rule SurvivorNearFinaleC6M3Trevor
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsTrevor IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkTrevor IsNotIncapacitated IsWorldTalkTrevor Isc6m3_port
		    Response SurvivorNearFinaleC6M3Mechanic
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorPickupGolfCLubTrevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpGolfClub IsNotSpeaking TrevorNotPickedUpItem IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorPickupGolfCLubMechanic
		    ApplyContext "TrevorPickedUpItem:1:30"
		}
	},

	{
		Rule SurvivorPickupM60Trevor
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsTrevor IsPickedUpM60 IsNotSpeaking TrevorNotPickedUpItem IsTalk IsTalkTrevor IsWorldTalkTrevor
		    Response SurvivorPickupM60Mechanic
		    ApplyContext "TrevorPickedUpItem:1:30"
		}
	},

	{
		Rule WeddingWitchDead04Trevor
		{
		    criteria ConceptWeddingWitchDead04 IsTrevor
		    Response WeddingWitchDead04Mechanic
		}
	},

	{
		Rule Player_LostCallC6M3Trevor
		{
		    criteria ConceptTalkIdle IsTrevor IsClosestSurvivorFar3000 IsNotSaidPlayerLostCall Isc6m3_port ChanceToFire100Percent IsNotSpeakingWeight0
		    Response Player_LostCallC6M3Mechanic
		    ApplyContext "SaidPlayerLostCall:1:50"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGolfClubTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGolfClub IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response SurvivorSpottedGolfClubMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedGolfClubAutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsGolfClub IsWorldTalkTrevor
		    Response SurvivorSpottedGolfClubAutoMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedM60Trevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsM60 IsWorldTalkTrevor IsNotSpeakingWeight0
		    Response SurvivorSpottedM60Mechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule SurvivorSpottedM60AutoTrevor
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsTrevor IsTalk IsTalkTrevor IsNotSmartLookAuto IsM60 IsWorldTalkTrevor
		    Response SurvivorSpottedM60AutoMechanic
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},

	{
		Rule C1M2InsideGunShopTrevor
		{
		    criteria ConceptC1M2InsideGunShop PanicEventTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2InsideGunShopMechanic
		    then trevor C1M2InsideGunShop2 foo:0 0
		}
	},

	{
		Rule C1M3AlarmOffOratorTrevor
		{
		    criteria ConceptC1M3AlarmOff PanicEventTrevor AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3AlarmOffOratorMechanic
		    then trevor C1M3AlarmOff2 foo:0 0
		    ApplyContext "_auto_Alarm:2:0"
		    applycontexttoworld
		}
	},

	{
		Rule C1M3BrokeWindowOratorTrevor
		{
		    criteria ConceptC1M3BrokeWindow PanicEventTrevor AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response C1M3BrokeWindowOratorMechanic
		    then trevor C1M3AlarmActive foo:0 0
		    ApplyContext "_auto_Alarm:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},

	{
		Rule HitCraneButtonTrevor
		{
		    criteria ConceptAirport02CraneStarted PanicEventTrevor
		    Response HitCraneButtonMechanic
		    then Trevor airport02_creshendoCrane foo:0  .01
		}
	},

	{
		Rule Airport03FireStartedTrevor
		{
		    criteria ConceptAirport03FireStarted PanicEventTrevor
		    Response Airport03FireStartedMechanic
		    then Trevor Airport03FireStartedX foo:0  .01
		}
	},

	{
		Rule FinaleSceneTriggerZoeyTrevor
		{
		    criteria ConceptC6M3Stairs IsTrevor IsNotSaidFinaleExchange Isc6m3_port IsZoeyIntroActor IsNotVersus
		    Response FinaleSceneTriggerZoeyMechanic
		    ApplyContext "SaidFinaleExchange:1:0,Talk:1:28,SaidTrevorBridgeStoryStart:1:60,EndTrevorBridgeStoryStart:1:0"
		    applycontexttoworld
		}
	},

	{
		Rule FinaleSceneTriggerFrancisTrevor
		{
		    criteria ConceptC6M3Stairs IsTrevor IsNotSaidFinaleExchange Isc6m3_port IsFrancisIntroActor IsNotVersus
		    Response FinaleSceneTriggerFrancisMechanic
		    ApplyContext "SaidFinaleExchange:1:0,Talk:1:29,SaidTrevorBridgeStoryStart:1:60,EndTrevorBridgeStoryStart:1:0"
		    applycontexttoworld
		}
	},

];

rr_ProcessRules(trevor_philips_rules);
