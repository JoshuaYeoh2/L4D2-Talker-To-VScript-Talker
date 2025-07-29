local jess_cliffe_rules = 
[
	{
		Rule C3M1CallFerryCliffe
		{
		    criteria ConceptC3M1CallFerry PanicEventCliffe IsNotSaidC3M1CallFerry2
		    Response C3M1CallFerryGambler
		    ApplyContext "SaidC3M1CallFerry2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C3M2OpenDoorCliffe
		{
		    criteria ConceptC3M2OpenDoor PanicEventCliffe
		    Response C3M2OpenDoorGambler
		    ApplyContext "SaidC3M2OpenDoor:1:0,Talk:1:1.492,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule c5m4floatstartCliffe
		{
		    criteria Conceptc5m4floatstart PanicEventCliffe
		    Response c5m4floatstartGambler
		    ApplyContext "Saidc5m4floatstart:1:0,_auto_TractorStarted:1:0,_auto_InMiniFinale:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C1M1InSmokeCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsSaidC1M1InSmoke ismap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response C1M1InSmokeGambler
		}
	},
	{
		Rule C1M3AlarmOffCliffe
		{
		    criteria ConceptC1M3AlarmOff2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3AlarmOffGambler
		}
	},
	{
		Rule C1M3AlarmActiveCliffe
		{
		    criteria ConceptC1M3AlarmActive IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3AlarmActiveGambler
		}
	},
	{
		Rule C4M3SaferoomCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea isc4m3 AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response C4M3SaferoomGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule L4D1PlayerNiceShotFrancisC6M3Cliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerNotSoClose IsTalk IsTalkCliffe IsWorldTalkCliffe IsC6M3_Port SubjectIsBiker ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotFrancisC6M3Gambler
		}
	},
	{
		Rule PlayerNiceShotFrancisCliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerClose IsTalk IsTalkCliffe ChanceToFire10Percent IsWorldTalkCliffe SubjectIsBiker
		    Response PlayerNiceShotFrancisGambler
		}
	},
	{
		Rule L4D1PlayerNiceShotLouisC6M3Cliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerNotSoClose IsTalk IsTalkCliffe IsWorldTalkCliffe IsC6M3_Port SubjectIsManager ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotLouisC6M3Gambler
		}
	},
	{
		Rule PlayerNiceShotLouisCliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerClose IsTalk IsTalkCliffe ChanceToFire10Percent IsWorldTalkCliffe SubjectIsManager
		    Response PlayerNiceShotLouisGambler
		}
	},
	{
		Rule L4D1PlayerNiceShotLouisEllisC6M3Cliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerNotSoClose IsMechanicAlive IsMechanicNear800 IsTalk IsTalkCliffe IsWorldTalkCliffe IsC6M3_Port SubjectIsManager ChanceToFire20Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotLouisEllisC6M3Gambler
		}
	},
	{
		Rule L4D1PlayerNiceShotZoeyC6M3Cliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerNotSoClose IsC6M3_Port IsTalk IsTalkCliffe IsWorldTalkCliffe SubjectIsTeenGirl ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotZoeyC6M3Gambler
		}
	},
	{
		Rule PlayerNiceShotZoeyCliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerClose IsTalk IsTalkCliffe ChanceToFire10Percent IsWorldTalkCliffe SubjectIsTeenGirl
		    Response PlayerNiceShotZoeyGambler
		}
	},
	{
		Rule PlayerNiceShotCliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerClose IsTalk IsTalkCliffe ChanceToFire30Percent IsWorldTalkCliffe
		    Response PlayerNiceShotGambler
		}
	},
	{
		Rule L4D1PlayerNiceShotCliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerNotSoClose IsC6M3_Port IsTalk IsTalkCliffe SubjectIsNotMechanic SubjectIsNotProducer SubjectIsNotCoach ChanceToFire30Percent IsWorldTalkCliffe
		    Response PlayerNiceShotGambler
		}
	},
	{
		Rule PlayerNiceShotCoachCliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerClose IsTalk IsTalkCliffe ChanceToFire10Percent IsWorldTalkCliffe SubjectIsCoach
		    Response PlayerNiceShotCoachGambler
		}
	},
	{
		Rule PlayerNiceShotMechanicCliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerClose IsTalk IsTalkCliffe ChanceToFire10Percent IsWorldTalkCliffe SubjectIsMechanic
		    Response PlayerNiceShotMechanicGambler
		}
	},
	{
		Rule PlayerNiceShotProducerCliffe
		{
		    criteria ConceptPlayerNiceShot IsNotCoughing IsCliffe IssuerClose IsTalk IsTalkCliffe ChanceToFire10Percent IsWorldTalkCliffe SubjectIsProducer
		    Response PlayerNiceShotProducerGambler
		}
	},
	{
		Rule SurvivorMournCoachCliffe
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsCliffe IsDeadCoach IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsNotIncapacitated HasNotDefibrillator IsWorldTalkCliffe
		    Response SurvivorMournCoachGambler
		}
	},
	{
		Rule SurvivorMournCoachC1Cliffe
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsCliffe IsDeadCoach IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsNotIncapacitated HasNotDefibrillator IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorMournCoachC1Gambler
		}
	},
	{
		Rule SurvivorMournMechanicCliffe
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsCliffe IsDeadMechanic IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsNotIncapacitated HasNotDefibrillator IsWorldTalkCliffe
		    Response SurvivorMournMechanicGambler
		}
	},
	{
		Rule SurvivorMournMechanicC1Cliffe
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsCliffe IsDeadMechanic IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsNotIncapacitated HasNotDefibrillator IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorMournMechanicC1Gambler
		}
	},
	{
		Rule SurvivorMournProducerCliffe
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsCliffe IsDeadProducer IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsNotIncapacitated HasNotDefibrillator IsWorldTalkCliffe
		    Response SurvivorMournProducerGambler
		}
	},
	{
		Rule SurvivorMournProducerC1Cliffe
		{
		    criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsCliffe IsDeadProducer IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsNotIncapacitated HasNotDefibrillator IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorMournProducerC1Gambler
		}
	},
	{
		Rule _C1M1_ElevatorHelloStartAllAliveCliffe
		{
		    criteria Concept_C1M1_ElevatorHelloStart IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsEveryoneAlive
		    Response _C1M1_ElevatorHelloStartAllAliveGambler
		}
	},
	{
		Rule C1M1_ElevatorHelloStart2AliveCliffe
		{
		    criteria Concept_C1M1_ElevatorHelloStart IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsWithTwo
		    Response C1M1_ElevatorHelloStart2AliveGambler
		}
	},
	{
		Rule C1M1_ElevatorHelloStart3AliveCliffe
		{
		    criteria Concept_C1M1_ElevatorHelloStart IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsWithOnlyThree
		    Response C1M1_ElevatorHelloStart3AliveGambler
		}
	},
	{
		Rule Playerc1m1_enter_elevatorCliffe
		{
		    criteria Conceptc1m1_enter_elevator IsCliffe IsTalk IsTalkCliffe IsNotSaidc1m1_enter_elevator AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkCliffe
		    Response Playerc1m1_enter_elevatorGambler
		    ApplyContext "Saidc1m1_enter_elevator:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule Playerc1m1_elevator_pushbuttonCliffe
		{
		    criteria Conceptc1m1_elevator_pushbutton IsCliffe IsTalk IsTalkCliffe IsNotSaidc1m1_elevator_pushbutton AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkCliffe
		    Response Playerc1m1_elevator_pushbuttonGambler
		    ApplyContext "Saidc1m1_elevator_pushbutton:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M2PreAlarmDoorCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2PreStoreAlarm IsNotSaidWorldC1M2PreStoreAlarm IsNotSaidC1M2AlarmSetoff IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M2PreAlarmDoorGambler
		    ApplyContext "SaidWorldC1M2PreStoreAlarm:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C1M2AlarmDoor2Cliffe
		{
		    criteria ConceptC1M2AlarmDoor2 IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2AlarmDoor2Gambler
		}
	},
	{
		Rule PlayerRemarkC1M2PostAlarmDoorCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2StoreAlarm IsSaidC1M2AlarmSetoff IsSubjectNear300 HasWhitakerCola AutoIsNotScavenge AutoIsNotSurvival _auto_SaidC1M2GrabbedCola
		    Response PlayerRemarkC1M2PostAlarmDoorGambler
		    ApplyContext "C1M2AlarmSetOff:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerC1M2GrabbingColaCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsTalk IsTalkCliffe IsNotSaidC1M2GrabbingCola2 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsPickedUpColaBottles ismap_c1m2_streets _auto_NotSaidC1M2GrabbedCola
		    Response PlayerC1M2GrabbingColaGambler
		    ApplyContext "SaidC1M2GrabbingCola2:1:5,_auto_SaidC1M2GrabbedCola:1:0,Talk:1:1.699"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerC1M2GrabbingCola2Cliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsTalk IsTalkCliffe IsNotSaidC1M2GrabbingCola2 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsPickedUpColaBottles ismap_c1m2_streets _auto_SaidC1M2GrabbedCola
		    Response PlayerC1M2GrabbingCola2Gambler
		    ApplyContext "SaidC1M2GrabbingCola2:1:5,Talk:1:1.699"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerC1M2FirstOutsideResponseCliffe
		{
		    criteria ConceptC1M2FirstOutsideResponse IsCliffe FromIsAnOrator IsNotSaidC1M2AlarmSetoff AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2FirstOutsideResponseGambler
		}
	},
	{
		Rule PlayerC1M2FirstOutsideResponse3aCliffe
		{
		    criteria ConceptC1M2FirstOutsideResponse3a IsCliffe FromIsAnOrator IsNotSaidC1M2AlarmSetoff AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2FirstOutsideResponse3aGambler
		}
	},
	{
		Rule PlayerC1M2FirstOutsideResponse8aCliffe
		{
		    criteria ConceptC1M2FirstOutsideResponse8a IsCliffe FromSet1 IsNotSaidC1M2AlarmSetoff AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2FirstOutsideResponse8aGambler
		}
	},
	{
		Rule PlayerC1M2InsideGunShop2Cliffe
		{
		    criteria ConceptC1M2InsideGunShop2 IsCliffe IsTalk IsTalkCliffe IsNotSaidC1M2InsideGunShop IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC1M2InsideGunShop2Gambler
		    ApplyContext "Talk:1:2,SaidC1M2InsideGunShop:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerC3M1CallFerry2Cliffe
		{
		    criteria ConceptC3M1CallFerry2 IsCliffe IsTalk IsTalkCliffe IsCliffeActor IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M1CallFerry2Gambler
		}
	},
	{
		Rule PlayerC3M1FerryLandedIdleCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsTalk IsTalkCliffe C3M1Ferry IsNotIncapacitated IsNotAlone NotInCombat IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M1FerryLandedIdleGambler
		    ApplyContext "Talk:1:4"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerC3M1FerryLaunched2aCliffe
		{
		    criteria ConceptC3M1FerryLaunched2 IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M1FerryLaunched2aGambler
		}
	},
	{
		Rule PlayerC3M2ComingHomeCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsTalk IsTalkCliffe IsNotSaidSafeSpotAhead IsSaidC3M2Village1 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M2ComingHomeGambler
		    ApplyContext "Talk:1:1"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerC3M2OpenDoor2Cliffe
		{
		    criteria ConceptC3M2OpenDoor2 IsCliffe IsTalkCliffe IsCliffeActor IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M2OpenDoor2Gambler
		}
	},
	{
		Rule Playerc5m4floatendCliffe
		{
		    criteria Conceptc5m4floatend2 IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response Playerc5m4floatendGambler
		}
	},
	{
		Rule Playerc5m4floatstart2Cliffe
		{
		    criteria Conceptc5m4floatstart2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response Playerc5m4floatstart2Gambler
		}
	},
	{
		Rule PlayerintroC1M1Cliffe
		{
		    criteria ConceptintroC1M1 IsCliffe IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerintroC1M1Gambler
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule WhitakerC1M2DeliverColaCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2DeliverCola IsC1M2WhitakerErrand IsSubjectNear300 HasWhitakerCola AutoIsNotScavenge AutoIsNotSurvival _auto_SaidC1M2GrabbedCola
		    Response WhitakerC1M2DeliverColaGambler
		    ApplyContext "C1M2AlarmSetOff:3:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerPlayerUsingColaBottlesCliffe
		{
		    criteria ConceptPlayerUsingColaBottles IsCliffe IsNotSaidPlayerUsingColaBottles
		    Response NoResponse
		    ApplyContext "SaidPlayerUsingColaBottles:1:20,WhoPutCola:Cliffe:35"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRelaxedSighCliffe
		{
		    criteria ConceptRelaxedSigh IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerRelaxedSighGambler
		}
	},
	{
		Rule PlayerStayTogetherInsideReponseCliffe
		{
		    criteria ConceptStayTogetherInsideReponse IsCliffe IsTalk IsTalkCliffe IsNotSaidStayTogetherInsideReponse IsNotHealthySlow IsNotInSafeSpot IsWorldTalkCliffe
		    Response PlayerStayTogetherInsideReponseGambler
		    ApplyContext "SaidStayTogetherInsideReponse:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerUseAdrenalineCliffe
		{
		    criteria ConceptUseAdrenaline IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerUseAdrenalineGambler
		}
	},
	{
		Rule PlayerWorldC3M1FerryCrossingC01Cliffe
		{
		    criteria ConceptWorldC3M1FerryCrossingC01 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingC01Gambler
		}
	},
	{
		Rule PlayerWorldC3M1FerryCrossingC03Cliffe
		{
		    criteria ConceptWorldC3M1FerryCrossingC03 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingC03Gambler
		}
	},
	{
		Rule PlayerWorldC3M1FerryCrossingD03Cliffe
		{
		    criteria ConceptWorldC3M1FerryCrossingD03 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingD03Gambler
		}
	},
	{
		Rule PlayerWorldC3M1FerryCrossingE03Cliffe
		{
		    criteria ConceptWorldC3M1FerryCrossingE03 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingE03Gambler
		}
	},
	{
		Rule PlayerWorldC3M1FerryCrossingG02Cliffe
		{
		    criteria ConceptWorldC3M1FerryCrossingG02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingG02Gambler
		}
	},
	{
		Rule PlayerWorldC3M1FerryCrossingG04Cliffe
		{
		    criteria ConceptWorldC3M1FerryCrossingG04 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingG04Gambler
		}
	},
	{
		Rule PlayerWorldC3M1FerryCrossingI01Cliffe
		{
		    criteria ConceptWorldC3M1FerryCrossingI01 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldC3M1FerryCrossingI01Gambler
		}
	},
	{
		Rule ThanksGotItemCliffe
		{
		    criteria IsAwardConcept IsSharingSubject IsNotCoughing IsCliffe SubjectIsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response NoResponse
		}
	},
	{
		Rule RescuedSurvivorCliffe
		{
		    criteria IsAwardConcept IsRescuer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response RescuedSurvivorGambler
		}
	},
	{
		Rule PlayerGivenItemCliffe
		{
		    criteria ConceptPlayerGivenItem IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerGivenItemGambler
		}
	},
	{
		Rule ItemDonorCoachCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorCoach ChanceToFire30Percent isNotmap_c1m1_hotel IsPickedUpValidHealingItem
		    Response ItemDonorCoachGambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule ItemDonorMechanicCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorMechanic ChanceToFire30Percent isNotmap_c1m1_hotel IsPickedUpValidHealingItem
		    Response ItemDonorMechanicGambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule ItemDonorProducerCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorProducer ChanceToFire30Percent isNotmap_c1m1_hotel IsPickedUpValidHealingItem
		    Response ItemDonorProducerGambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule ItemDonorBikerCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorBiker ChanceToFire30Percent IsPickedUpValidHealingItem
		    Response ItemDonorBikerGambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule ItemDonorTeenGirlCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorTeenGirl ChanceToFire30Percent IsPickedUpValidHealingItem
		    Response ItemDonorTeenGirlGambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule ItemDonorManagerCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorManager ChanceToFire30Percent IsPickedUpValidHealingItem
		    Response ItemDonorManagerGambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule ItemDonorNamVetCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorNamVet ChanceToFire30Percent IsPickedUpValidHealingItem
		    Response ItemDonorNamVetGambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule ReviveMeInterruptedMinorCliffe
		{
		    criteria ConceptReviveMeInterrupted IsCliffe IsIncappedStarted IsIncappedStarted2
		    Response ReviveMeInterruptedMinorGambler
		    ApplyContext "ReviveInterrupt:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule ReviveMeInterruptedMajorCliffe
		{
		    criteria ConceptReviveMeInterrupted IsCliffe IsIncappedBleeding1 IsIncappedBleeding2
		    Response ReviveMeInterruptedMajorGambler
		    ApplyContext "ReviveInterrupt:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule ReviveMeInterruptedCriticalCliffe
		{
		    criteria ConceptReviveMeInterrupted IsCliffe IsIncappedLethargic
		    Response ReviveMeInterruptedCriticalGambler
		    ApplyContext "ReviveInterrupt:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule ReviveThanksCliffe
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsCliffe
		    Response ReviveThanksGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule ReviveThanksCoachCliffe
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsCliffe SubjectIsCoach ChanceToFire30Percent isNotmap_c1m1_hotel
		    Response ReviveThanksCoachGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule ReviveThanksMechanicCliffe
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsCliffe SubjectIsMechanic ChanceToFire30Percent isNotmap_c1m1_hotel
		    Response ReviveThanksMechanicGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule ReviveThanksProducerCliffe
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsCliffe SubjectIsProducer ChanceToFire30Percent isNotmap_c1m1_hotel
		    Response ReviveThanksProducerGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule ReviveThanksProducerC1KnownCliffe
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsCliffe SubjectIsProducer ChanceToFire30Percent ismap_c1m1_hotel YesKnowNames
		    Response ReviveThanksProducerGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule ReviveThanksBikerCliffe
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsCliffe SubjectIsBiker ChanceToFire30Percent
		    Response ReviveThanksBikerGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule ReviveThanksTeenGirlCliffe
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsCliffe SubjectIsTeenGirl ChanceToFire30Percent
		    Response ReviveThanksTeenGirlGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule ReviveThanksManagerCliffe
		{
		    criteria ConceptRevivedByFriend IsNotCoughing IsCliffe SubjectIsManager ChanceToFire30Percent
		    Response ReviveThanksManagerGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule AutoYouAreWelcomeCliffe
		{
		    criteria ConceptYouWelcome IsNotCoughing IsCliffe IsTalk IsTalkCliffe TimeSinceGroupInCombat05 IsNotSpeaking IsWorldTalkCliffe
		    Response AutoYouAreWelcomeGambler
		}
	},
	{
		Rule AutoYouAreWelcomeC1Cliffe
		{
		    criteria ConceptYouWelcome IsNotCoughing IsCliffe IsTalk IsTalkCliffe TimeSinceGroupInCombat05 IsNotSpeaking IsWorldTalkCliffe NoKnowNames ismap_c1m1_hotel
		    Response AutoYouAreWelcomeC1Gambler
		}
	},
	{
		Rule BotPlayer_YourWelcomeCliffe
		{
		    criteria ConceptSurvivorBotYouAreWelcome IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response BotPlayer_YourWelcomeGambler
		}
	},
	{
		Rule BotPlayer_YourWelcomeC1Cliffe
		{
		    criteria ConceptSurvivorBotYouAreWelcome IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c1m1_hotel
		    Response BotPlayer_YourWelcomeC1Gambler
		}
	},
	{
		Rule BotReassureComingCliffe
		{
		    criteria ConceptSurvivorBotReassureComing IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotSpeaking
		    Response BotReassureComingGambler
		}
	},
	{
		Rule BotReassureNearbyCliffe
		{
		    criteria ConceptSurvivorBotReassureNearby IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotSpeaking
		    Response BotReassureNearbyGambler
		}
	},
	{
		Rule BotYesReadyCliffe
		{
		    criteria ConceptSurvivorBotYesReady IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotSpeaking
		    Response BotYesReadyGambler
		}
	},
	{
		Rule C1M2LeavingSafeRoomCliffe
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsCliffe IsNotSaidLeavingSafeArea ismap_c1m2_streets _auto_NotTellingStory
		    Response C1M2LeavingSafeRoomGambler
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:1:2.989"
		    applycontexttoworld
		}
	},
	{
		Rule C1M2SafeRoomb1Cliffe
		{
		    criteria ConceptC1M2SafeRoomb1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRoomb1Gambler
		}
	},
	{
		Rule C1M2SafeRoomb2Cliffe
		{
		    criteria ConceptC1M2SafeRoomb2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRoomb2Gambler
		}
	},
	{
		Rule C1M2SafeRoomb3Cliffe
		{
		    criteria ConceptC1M2SafeRoomb3 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRoomb3Gambler
		}
	},
	{
		Rule C1M2SafeRoomc2Cliffe
		{
		    criteria ConceptC1M2SafeRoomc2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRoomc2Gambler
		}
	},
	{
		Rule C1M2SafeRoomd1Cliffe
		{
		    criteria ConceptC1M2SafeRoomd1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2SafeRoomd1Gambler
		}
	},
	{
		Rule C1M2TankerAttackCliffe
		{
		    criteria ConceptC1M2TankerAttack2 IsCliffe WhoPutColaCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2TankerAttackGambler
		}
	},
	{
		Rule c1m4escapeCliffe
		{
		    criteria Conceptc1m4escape IsCliffe NotSaidOutro AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4escapeGambler
		    ApplyContext "Talk:1:0,SaidOutro:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule c1m4escapeEllisCliffe
		{
		    criteria Conceptc1m4escape IsCliffe IsMechanicAlive ChanceToFire50Percent NotSaidOutro AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4escapeEllisGambler
		    ApplyContext "Talk:1:0,SaidOutro:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule c1m4escapeEllisSuccessCliffe
		{
		    criteria Conceptc1m4escapeEllisCheckSuccess IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4escapeEllisSuccessGambler
		}
	},
	{
		Rule c1m4escapeEllisFailCliffe
		{
		    criteria Conceptc1m4escapeEllisCheckFail IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4escapeGambler
		}
	},
	{
		Rule C1M4GasPourCliffe
		{
		    criteria ConceptPlayerPourStarted IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotScavenge ismap_c1m4_atrium _auto_NotNoGasPourLine
		    Response C1M4GasPourGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule C1M4PlayerGetToRescueVehicleCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe ismap_c1m4_atrium IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C1M4PlayerGetToRescueVehicleGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule c1m4startelevatorCliffe
		{
		    criteria Conceptc1m4startelevator IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4startelevatorGambler
		    ApplyContext "Talk:1:0,ElevatorTimer:1:25"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3GasPourCliffe
		{
		    criteria ConceptPlayerPourStarted IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotScavenge isC6M3_Port ChanceToFire70Percent
		    Response C6M3GasPourGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule FinaleStartC1M4Cliffe
		{
		    criteria ConceptFinaleTriggered IsCliffe IsTalkCliffe IsWorldTalkCliffe ismap_c1m4_atrium IsNotScavenge _auto_NotFinaleStarted
		    Response FinaleStartC1M4Gambler
		    ApplyContext "Talk:1:3,_auto_Finale:1:0,_auto_NoLostCall:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule GasPourDoneC1M4Cliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotScavenge ismap_c1m4_atrium ScoreDoneSC
		    Response GasPourDoneC1M4Gambler
		    ApplyContext "_auto_TimerLockA:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_Riders01Cliffe
		{
		    criteria Concept_C2M2_Riders01 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Riders01Gambler
		}
	},
	{
		Rule C2M2CarouselIdleCliffe
		{
		    criteria ConceptTalkIdle IsCliffe ChanceToFire30Percent IsNotIncapacitated ismap_c2m2 IsNotSaidSafeSpotAhead IsNotInSafeSpot AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C2M2CarouselIdleGambler
		    ApplyContext "_auto_TimerLockA:1:13,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C2M3RubbleNagIdleCliffe
		{
		    criteria ConceptTalkIdle IsCliffe ChanceToFire50Percent IsNotIncapacitated ismap_c2m3 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTeamNearCoaster _auto_NotAlarm _auto_NotTimerLockA _auto_NotTimerLockCliffe _auto_IsCoasterExpo IsNotSpeakingWeight0
		    Response C2M3RubbleNagIdleGambler
		    ApplyContext "Talk:1:1.026,_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:13"
		    applycontexttoworld
		}
	},
	{
		Rule c2m3_DownHoleCliffe
		{
		    criteria Conceptc2m3downhole IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m3_DownHoleGambler
		    ApplyContext "_auto_DownHole:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule c2m3CoasterEndCliffe
		{
		    criteria Conceptc2m3CoasterEnd IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m3CoasterEndGambler
		    ApplyContext "_auto_Alarm:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M3CoasterRunGoCliffe
		{
		    criteria ConceptC2M3CoasterRunGo IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3CoasterRunGoGambler
		}
	},
	{
		Rule C2M3CoasterStartCliffe
		{
		    criteria Conceptc2m3CoasterStart IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3CoasterStartGambler
		    ApplyContext "WarnMegaMob:1:30,_auto_Alarm:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule c2m3SpotIncendiaryCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsIncendiary IsCliffe IsTalk NotInCombat Ismap_c2m3 _auto_NotOutOfTunnel
		    Response c2m3SpotIncendiaryGambler
		}
	},
	{
		Rule c2m3SeeChopperCliffe
		{
		    criteria Conceptc2m3SeeChopper IsCliffe IsTalk IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m3SeeChopperGambler
		    ApplyContext "_auto_OutOfTunnel:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M4ButtonPressedCliffe
		{
		    criteria ConceptC2M4ButtonPressed IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M4ButtonPressedGambler
		    ApplyContext "_auto_ButtonPressed:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M4Gate000Cliffe
		{
		    criteria ConceptC2M4Gate000 IsCliffe IsNotIncapacitated ismap_c2m4 NotInCombat TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsNearGate _auto_NotNearGateNag _auto_NotTimerLockA _auto_NotTimerLockCliffe _auto_NotButtonPressed IsNotSpeakingWeight0
		    Response C2M4Gate000Gambler
		    ApplyContext "Talk:1:1.707,_auto_TimerLockA:1:20,_auto_TimerLockCliffe:1:23,_auto_NearGateNag:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M4GateIdleCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsNotIncapacitated ismap_c2m4 NotInCombat TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsNearGateNag _auto_IsNearGate _auto_NotTimerLockA _auto_NotTimerLockCliffe _auto_NotButtonPressed IsNotSpeakingWeight0
		    Response C2M4GateIdleGambler
		    ApplyContext "Talk:1:0.886,_auto_TimerLockA:1:20,_auto_TimerLockCliffe:1:23"
		    applycontexttoworld
		}
	},
	{
		Rule C2M4GateOpenCalloutCliffe
		{
		    criteria ConceptC2M4GateOpenCallout IsCliffe IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response C2M4GateOpenCalloutGambler
		    ApplyContext "Talk:1:0.887"
		    applycontexttoworld
		}
	},
	{
		Rule c2m4SeeChopperCliffe
		{
		    criteria Conceptc2m4SeeChopper IsCliffe IsTalk NotInCombat IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m4SeeChopperGambler
		}
	},
	{
		Rule c2m5_intro003Cliffe
		{
		    criteria Conceptc2m5_intro003 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro003Gambler
		}
	},
	{
		Rule c2m5_intro004Cliffe
		{
		    criteria Conceptc2m5_intro004 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro003Gambler
		}
	},
	{
		Rule c2m5_intro008Cliffe
		{
		    criteria Conceptc2m5_intro008 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro003Gambler
		}
	},
	{
		Rule c2m5_intro011Cliffe
		{
		    criteria Conceptc2m5_intro011 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro011Gambler
		}
	},
	{
		Rule c2m5_intro015Cliffe
		{
		    criteria Conceptc2m5_intro015 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro011Gambler
		}
	},
	{
		Rule c2m5_intro020Cliffe
		{
		    criteria Conceptc2m5_intro020 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c2m5_intro020Gambler
		}
	},
	{
		Rule C2M5Button1Cliffe
		{
		    criteria ConceptC2M5Button1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1
		    Response C2M5Button1Gambler
		    ApplyContext "_auto_Button1:1:0,_auto_NoLostCall:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorReloadingC2M5Cliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotZombiePresentTank IsNotSpeaking IsRocking Ismap_c2m5 IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkCliffe _auto_ConcertIsLive _auto_NotRockingOut
		    Response SurvivorReloadingC2M5Gambler
		    ApplyContext "_auto_RockingOut:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorReloadingC2M5RockedOutCliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotZombiePresentTank IsNotSpeaking IsRocking Ismap_c2m5 IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkCliffe _auto_ConcertIsLive _auto_IsRockingOut
		    Response NoResponse
		}
	},
	{
		Rule SurvivorVocalizeLookOutC2M5Cliffe
		{
		    criteria ConceptPlayerLookOut IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsRocking IsWorldTalkCliffe ismap_c2m5 _auto_ConcertIsLive _auto_NotRockingOut
		    Response SurvivorVocalizeLookOutC2M5Gambler
		    ApplyContext "_auto_RockingOut:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorVocalizeLookOutC2M5RockedOutCliffe
		{
		    criteria ConceptPlayerLookOut IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsRocking IsWorldTalkCliffe ismap_c2m5 _auto_ConcertIsLive _auto_IsRockingOut
		    Response NoResponse
		}
	},
	{
		Rule C2M5ReloadingTankCliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkCliffe Ismap_c2m5 _auto_ConcertIsLive
		    Response C2M5ReloadingTankGambler
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerKillTankConfirmationC2M5Cliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsWorldTalkCliffe Ismap_c2m5 _auto_ConcertIsLive
		    Response PlayerKillTankConfirmationC2M5Gambler
		    ApplyContext "SaidTankDead:1:60,TalkCliffe:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule C2M5_Button2YellCliffe
		{
		    criteria ConceptC2M5_Button2Yell IsCliffe NotCoachMadAtRiders IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_Button2YellGambler
		}
	},
	{
		Rule C2M5_Button2YellCoachMadCliffe
		{
		    criteria ConceptC2M5_Button2Yell IsCliffe CoachMadAtRiders IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_Button2YellGambler
		}
	},
	{
		Rule C2M5_ChoppercomingCliffe
		{
		    criteria ConceptC2M5_Choppercoming IsCliffe IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_ChoppercomingGambler
		}
	},
	{
		Rule C2M5_PlanWorkedCliffe
		{
		    criteria ConceptC2M5_PlanWorked IsCliffe NotCoachMadAtRiders IsNotIncapacitated NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_PlanWorkedGambler
		}
	},
	{
		Rule C2M5_PlanWorkedCoachMadCliffe
		{
		    criteria ConceptC2M5_PlanWorked IsCliffe CoachMadAtRiders IsNotIncapacitated NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5_PlanWorkedGambler
		}
	},
	{
		Rule C2M5ChopperNagCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe Ismap_c2m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C2M5ChopperNagGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C2M5InChopperNagCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe Ismap_c2m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C2M5InChopperNagGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C2M5InArenaNagCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat Ismap_c2m5 IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1 _auto_NotTimerLockA _auto_NotTimerLockCliffe _auto_IsC2M5InArena IsNotSpeakingWeight0
		    Response C2M5InArenaNagGambler
		    ApplyContext "_auto_TimerLockA:1:30,_auto_TimerLockCliffe:1:34"
		    applycontexttoworld
		}
	},
	{
		Rule C2M5ChopperOCDCliffe
		{
		    criteria ConceptC2M5ChopperOCD IsCliffe IsNotIncapacitated IsNotInRescueVehicle CliffeOCD AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M5ChopperOCDGambler
		}
	},
	{
		Rule C2M3SaferoomCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea Ismap_c2m3 AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response C2M3SaferoomGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M3SafeIntro007Cliffe
		{
		    criteria ConceptC2M3SafeIntro007 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3SafeIntro007Gambler
		}
	},
	{
		Rule C2M3SafeIntro009Cliffe
		{
		    criteria ConceptC2M3SafeIntro009 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3SafeIntro009Gambler
		}
	},
	{
		Rule C2M3SafeIntro010Cliffe
		{
		    criteria ConceptC2M3SafeIntro010 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3SafeIntro010Gambler
		}
	},
	{
		Rule C2M3SafeIntro012Cliffe
		{
		    criteria ConceptC2M3SafeIntro012 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3SafeIntro012Gambler
		}
	},
	{
		Rule C2M3SafeIntro013Cliffe
		{
		    criteria ConceptC2M3SafeIntro013 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M3SafeIntro013Gambler
		}
	},
	{
		Rule C3GoingToDieCliffe
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotComplainBlock ChanceToFire30Percent IsWorldTalkCliffe IsNotInStartArea IsNotInCheckpoint IsInSwamp
		    Response C3GoingToDieGambler
		    ApplyContext "IsComplain:1:25"
		}
	},
	{
		Rule C3M1FerryEnd2Cliffe
		{
		    criteria ConceptC3M1FerryEnd2 IsCliffe IsNotSaidC3M1FerryEnd AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M1FerryEnd2Gambler
		    ApplyContext "SaidC3M1FerryEnd:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule WorldC3M1FerryCrossingM3Cliffe
		{
		    criteria ConceptWorldC3M1FerryCrossingM3 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC3M1FerryCrossingM3Gambler
		}
	},
	{
		Rule C3M2DisgustCliffe
		{
		    criteria Conceptc3m2disgust IsCliffe NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M2DisgustGambler
		    ApplyContext "Talk:1:2.028"
		    applycontexttoworld
		}
	},
	{
		Rule C3M2SafeRoomCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat ismapc3m2_swamp IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response C3M2SafeRoomGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C3M2SafeRoom3dCliffe
		{
		    criteria ConceptC3M2SafeRoom3d IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M2SafeRoom3dGambler
		}
	},
	{
		Rule C3M2SafeRoomb2Cliffe
		{
		    criteria ConceptC3M2SafeRoomb2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M2SafeRoomb2Gambler
		}
	},
	{
		Rule C3M3SafeRoomCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat Ismapc3m3_shantytown IsInStartArea IsNotAlone AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response C3M3SafeRoomGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule InfoRemC3M3LowerGateaCliffe
		{
		    criteria ConceptInfoRemC3M3LowerGatea IsCliffe IsNotSaidC3M3BridgeButton IntensityUnder25 AutoIsNotScavenge AutoIsNotSurvival
		    Response InfoRemC3M3LowerGateaGambler
		}
	},
	{
		Rule InfoRemC3M3Unsanitarya2Cliffe
		{
		    criteria ConceptInfoRemC3M3Unsanitarya2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response InfoRemC3M3Unsanitarya2Gambler
		}
	},
	{
		Rule C3M4BoatNagsCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe ismapc3m4_plantation IsNotCoughing IsNotIncapacitated IsRunning IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C3M4BoatNagsGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C3M4InBoatNagsCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe ismapc3m4_plantation IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C3M4InBoatNagsGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C3M4Button1ACliffe
		{
		    criteria ConceptC3M4Button1A IsCliffe FromIsAnOrator _auto_IsTalkingCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M4Button1AGambler
		}
	},
	{
		Rule C3M4ButtonHowManyAnswer4Cliffe
		{
		    criteria ConceptC3M4ButtonHowManyAnswer IsCliffe FromIsAnOrator IsEveryoneAlive _auto_IsTalkingCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response C3M4ButtonHowManyAnswer4Gambler
		}
	},
	{
		Rule C3M4ButtonHowManyAnswer3Cliffe
		{
		    criteria ConceptC3M4ButtonHowManyAnswer IsCliffe FromIsAnOrator IsWithOnlyThree _auto_IsTalkingCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response C3M4ButtonHowManyAnswer3Gambler
		}
	},
	{
		Rule C3M4ButtonHowManyAnswer2Cliffe
		{
		    criteria ConceptC3M4ButtonHowManyAnswer IsCliffe FromIsAnOrator IsWithTwo _auto_IsTalkingCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response C3M4ButtonHowManyAnswer2Gambler
		}
	},
	{
		Rule C3M4ButtonHowManyAnswer1Cliffe
		{
		    criteria ConceptC3M4ButtonHowManyAnswer IsCliffe FromIsAnOrator IsAlone _auto_IsTalkingCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response C3M4ButtonHowManyAnswer1Gambler
		}
	},
	{
		Rule C3M4Button201Cliffe
		{
		    criteria ConceptC3M4Button201 IsCliffe FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingCliffe
		    Response C3M4Button201Gambler
		    ApplyContext "Talk:1:3.424"
		    applycontexttoworld
		}
	},
	{
		Rule C3M4Button203Cliffe
		{
		    criteria ConceptC3M4Button203 IsCliffe _auto_IsTalkingCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M4Button203Gambler
		}
	},
	{
		Rule C3M4Button202Cliffe
		{
		    criteria ConceptC3M4Button202 IsCliffe FromIsAnOrator _auto_IsTalkingCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M4Button202Gambler
		    ApplyContext "Talk:1:3.424"
		    applycontexttoworld
		}
	},
	{
		Rule C3M4GateBlow01Cliffe
		{
		    criteria ConceptC3M4GateBlow01 IsCliffe FromIsAnOrator IsTalk AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M4GateBlow01Gambler
		    ApplyContext "_auto_TimerLockA:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C4GoingToDieCliffe
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotComplainBlock ChanceToFire30Percent IsWorldTalkCliffe IsNotInStartArea IsNotInCheckpoint IsCampaign4 _auto_NotSpottedVehicle
		    Response C4GoingToDieGambler
		    ApplyContext "IsComplain:1:25"
		}
	},
	{
		Rule C4StormBlindIdleCliffe
		{
		    criteria ConceptTalkIdle IsCliffe ChanceToFire30Percent IsNotIncapacitated _auto_NotTimerLockA _auto_IsTimerA _auto_NotC4CliffeInCover IsNotSpeakingWeight0
		    Response C4StormBlindIdleGambler
		    ApplyContext "_auto_TimerA:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule _c4m1Intro20Cliffe
		{
		    criteria Concept_c4m1Intro20 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro20Gambler
		}
	},
	{
		Rule _c4m1Intro23Cliffe
		{
		    criteria Concept_c4m1Intro23 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro23Gambler
		}
	},
	{
		Rule C4M2IdleWitchville03Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsWitchClass IsSurvivor ismap_c4m2_sugarmill_a IsNotAlone IsClosestSurvivorNear1200 IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe NotInCombat IsWorldTalkCliffe NotSaidLotsOfWitches IsNotSaidSafeSpotAhead _auto_IsCliffeInWitchville
		    Response C4M2IdleWitchville03Gambler
		    ApplyContext "SaidWitchWarn:1:20,WarnHeardWitch:1:300,SaidLotsOfWitches:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule C4M2PushedButtonCliffe
		{
		    criteria Conceptc4m2_elevator_top_button IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C4M2PushedButtonGambler
		    ApplyContext "SaidActivatedC4M2Elevator:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C4M5BoatNagsCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe Isc4m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C4M5BoatNagsGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C4M5InBoatNagsCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe Isc4m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C4M5InBoatNagsGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C5GoingToDieCliffe
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotComplainBlock ChanceToFire30Percent IsWorldTalkCliffe IsNotInStartArea IsNotInCheckpoint IsCampaign5
		    // 	forceweight 200
		    Response C5GoingToDieGambler
		    ApplyContext "IsComplain:1:25"
		}
	},
	{
		Rule C5M5GoingToDieCliffe
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsCliffe IsOnThirdStrike IsNotSaidGoingToDieC5M5 IsTalk IsTalkCliffe IsNotComplainBlock ChanceToFire30Percent IsWorldTalkCliffe IsNotInStartArea IsNotInCheckpoint IsMapc5m5_bridge _auto_NotSpottedVehicle
		    // 	forceweight 200
		    Response C5M5GoingToDieGambler
		    ApplyContext "IsComplain:1:25,TalkCliffe:1:8,SaidGoingToDieC5M5:1:0"
		}
	},
	{
		Rule C5M1_intro002Cliffe
		{
		    criteria ConceptC5M1_intro002 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro002Gambler
		}
	},
	{
		Rule C5M1_intro004Cliffe
		{
		    criteria ConceptC5M1_intro004 IsCliffe IsEveryoneAlive AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro004Gambler
		}
	},
	{
		Rule C5M1_intro006Cliffe
		{
		    criteria ConceptC5M1_intro006 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro006Gambler
		}
	},
	{
		Rule C5M1_intro007Cliffe
		{
		    criteria ConceptC5M1_intro007 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1_intro007Gambler
		}
	},
	{
		Rule C5M1Flyby01Cliffe
		{
		    criteria ConceptC5M1Flyby01 IsCliffe IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival ChanceToFire80Percent
		    Response C5M1Flyby01Gambler
		}
	},
	{
		Rule C5M1Flyby02Cliffe
		{
		    criteria ConceptC5M1Flyby02 IsCliffe IsNotCoughing NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M1Flyby02Gambler
		}
	},
	{
		Rule C5M2AlarmNagCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsMapc5m2_park AutoIsNotScavenge AutoIsNotSurvival ChanceToFire80Percent _auto_IsAlarm _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C5M2AlarmNagGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:13"
		    applycontexttoworld
		}
	},
	{
		Rule C5M2Freeway01Cliffe
		{
		    criteria ConceptC5M2Freeway01 IsCliffe IsNotCoughing NotInCombat IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M2Freeway01Gambler
		}
	},
	{
		Rule C5M2Horse001Cliffe
		{
		    criteria ConceptC5M2Horse001 IsCliffe IsSubjectNear300 IsNotCoughing NotInCombat IsTalk IsNotScavenge TimeSinceGroupInCombat02 AutoIsNotSurvival
		    Response C5M2Horse001Gambler
		}
	},
	{
		Rule PlayerRemarkc5m2busstationCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m2busstation IsNotSaidc5m2busstation IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival _auto_IsDoorOpen IsNotSpeakingWeight0
		    Response PlayerRemarkc5m2busstationGambler
		    ApplyContext "Saidc5m2busstation:1:0,Talk:1:1.250"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m2freewayCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m2freeway IsNotSaidc5m2freeway IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m2freewayGambler
		    ApplyContext "Saidc5m2freeway:1:0,Talk:1:2.216"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m2parkCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m2park IsNotSaidc5m2park IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m2parkGambler
		    ApplyContext "Saidc5m2park:1:0,Talk:1:1.354"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC502Horse2Cliffe
		{
		    criteria ConceptWorldC502Horse2 IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe IsNotScavenge TimeSinceGroupInCombat02
		    Response PlayerRemarkWorldC502Horse2Gambler
		}
	},
	{
		Rule C5M3AlarmFieldNagsCliffe
		{
		    criteria ConceptTalkIdle IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery NotInCombat IsNotCoughing IsTalk _auto_IsInAlarmField _auto_NotTimerLockA _auto_NotAlarmFieldOn IsNotSpeakingWeight0
		    // 	forceweight 200
		    Response C5M3AlarmFieldNagsGambler
		    ApplyContext "Talk:1:2.073,_auto_TimerLockA:1:12"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3AlarmFieldNags01Cliffe
		{
		    criteria ConceptC5M3AlarmFieldNags01 IsCliffe NotInCombat AutoIsNotScavenge AutoIsNotSurvival _auto_IsInAlarmField _auto_NotAlarmFieldOn
		    Response C5M3AlarmFieldNags01Gambler
		}
	},
	{
		Rule C5M3AlarmFieldNags02Cliffe
		{
		    criteria ConceptC5M3AlarmFieldNags02 IsCliffe NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3AlarmFieldNags02Gambler
		}
	},
	{
		Rule C5M3Bodies02Cliffe
		{
		    criteria ConceptC5M3Bodies02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Bodies02Gambler
		}
	},
	{
		Rule C5M3Bodies04Cliffe
		{
		    criteria ConceptC5M3Bodies04 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Bodies04Gambler
		}
	},
	{
		Rule C5M3FirstInAlarmCliffe
		{
		    criteria ConceptC5M3FirstInAlarmField IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3FirstInAlarmGambler
		    ApplyContext "Saidremark_caralarm:1:0,Talk:1:3.440"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3Freeway01Cliffe
		{
		    criteria ConceptC5M3Freeway01 IsCliffe IsNotCoughing NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Freeway01Gambler
		}
	},
	{
		Rule C5M3GraveNagsCliffe
		{
		    criteria ConceptTalkIdle IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery NotInCombat IsNotCoughing IsTalk ChanceToFire10Percent IsNotAlone TimeSinceGroupInCombat02 IsNotSaidSafeSpotAhead _auto_IsOffHighway IsNotSpeakingWeight0
		    Response C5M3GraveNagsGambler
		    ApplyContext "Talk:1:1.278"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3GraveNags01Cliffe
		{
		    criteria ConceptC5M3GraveNags01 IsCliffe NotInCombat IsNotCoughing IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3GraveNags01Gambler
		    ApplyContext "Talk:1:3.510"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3GraveNags02Cliffe
		{
		    criteria ConceptC5M3GraveNags02 IsCliffe NotInCombat IsNotCoughing IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3GraveNags02Gambler
		    ApplyContext "Talk:1:2.810"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3Jets2Cliffe
		{
		    criteria Conceptc5m3Jets2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Jets2Gambler
		    ApplyContext "Talk:1:1.369"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3StopZombiesCliffe
		{
		    criteria ConceptC5M3StopZombies IsCliffe IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3StopZombiesGambler
		}
	},
	{
		Rule C5M3manhole01Cliffe
		{
		    criteria ConceptC5M3manhole01 IsCliffe IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3manhole01Gambler
		}
	},
	{
		Rule C5M3OnBridgeCliffe
		{
		    criteria Conceptc5m3OnBridge IsCliffe IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3OnBridgeGambler
		    ApplyContext "Talk:1:4.077,_auto_AlarmFieldOn:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3SeeGraveyard01Cliffe
		{
		    criteria ConceptC5M3SeeGraveyard01 IsCliffe IssuerClose NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3SeeGraveyard01Gambler
		    ApplyContext "Talk:1:4.608"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3SeeGraveyard05Cliffe
		{
		    criteria ConceptC5M3SeeGraveyard05 IsCliffe IssuerClose NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3SeeGraveyard05Gambler
		    ApplyContext "Talk:1:2.141"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3SewerIn01Cliffe
		{
		    criteria ConceptC5M3SewerIn01 IsCliffe NotInCombat IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3SewerIn01Gambler
		}
	},
	{
		Rule C5M3ShootCarCliffe
		{
		    criteria ConceptPanicEvent IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsCliffe IsCarAlarm _auto_IsInAlarmField _auto_NotAlarmFieldOn
		    Response C5M3ShootCarGambler
		    ApplyContext "_auto_AlarmFieldOn:1:0,_auto_TimerLockA:1:2,WarnMegaMob:1:300"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3ShootCar2Cliffe
		{
		    criteria ConceptPanicEvent IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsNotCliffe IsCarAlarm ChanceToFire25Percent _auto_ShotSecondCar _auto_IsInAlarmField _auto_IsAlarmFieldOn _auto_NotTimerLockA
		    Response C5M3ShootCar2Gambler
		    ApplyContext "_auto_ShotCar:++1,_auto_TimerLockA:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3ShootCar3Cliffe
		{
		    criteria ConceptPanicEvent IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsNotCliffe IsCarAlarm ChanceToFire25Percent IsNotSpeaking _auto_IsInAlarmField _auto_IsAlarmFieldOn _auto_ShotThirdCar _auto_NotTimerLockA
		    Response C5M3ShootCar3Gambler
		    ApplyContext "Talk:1:2.879,_auto_ShotCar:++1"
		    applycontexttoworld
		}
	},
	{
		Rule C5M3Sniper01Cliffe
		{
		    criteria ConceptC5M3Sniper01 IsCliffe IsNotCoughing NotInCombat IsSubjectDistNear200 AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M3Sniper01Gambler
		    ApplyContext "Talk:1:2.733"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3bodiesCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3bodies NotInCombat IsSubjectNear100 IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3bodiesGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m2peopleCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m2people IsNotSaidc5m2people IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m2peopleGambler
		    ApplyContext "Saidc5m2people:1:0,Talk:1:5.916"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc5m2peopleCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m2people IsNotSaidc5m2people IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc5m2people:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3busCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3bus IsNotSaidc5m3bus IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3busGambler
		    ApplyContext "Saidc5m3bus:1:0,Talk:1:1.881"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3crashedheliCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3crashedheli IsNotSaidc5m3crashedheli IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3crashedheliGambler
		    ApplyContext "Saidc5m3crashedheli:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3freewayCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3freeway IsNotSaidc5m3freeway IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3freewayGambler
		    ApplyContext "Saidc5m3freeway:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3insewerCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3insewer IsNotSaidc5m3insewer IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear250 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3insewerGambler
		    ApplyContext "Saidc5m3insewer:1:0,_auto_InSewer:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3manholeCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3manhole IsNotSaidc5m3manhole IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_NotInSewer IsNotSpeakingWeight0
		    // 	forceweight 100
		    Response PlayerRemarkc5m3manholeGambler
		    ApplyContext "Saidc5m3manhole:1:0,Talk:1:1.881"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3offhighwayCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3offhighway IsNotSaidc5m3offhighway IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3offhighwayGambler
		    ApplyContext "Saidc5m3offhighway:1:0,_auto_OffHighway:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3safezoneCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3safezone NotInCombat IsSubjectNear150 IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3safezoneGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3seegraveyardCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3seegraveyard IsNotSaidc5m3seegraveyard IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotAlone _auto_IsBridgeBomb _auto_NotTimerLockA _auto_NotOffHighway IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3seegraveyardGambler
		    ApplyContext "Saidc5m3seegraveyard:1:0,Talk:1:4.342"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3sewercommentCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3sewercomment IsNotSaidc5m3sewercomment IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 IsCliffeAlive ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3sewercommentGambler
		    ApplyContext "Saidc5m3sewercomment:1:0,Talk:1:2.353"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc5m3sewercommentCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3sewercomment IsNotSaidc5m3sewercomment IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 IsCliffeAlive AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc5m3sewercomment:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3sniperCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3sniper IsNotSaidc5m3sniper IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 1
		    Response PlayerRemarkc5m3sniperGambler
		    ApplyContext "Saidc5m3sniper:1:0,Talk:1:2.833"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3sniperCoachCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3sniper IsNotSaidc5m3sniper IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 IsCoachAlive IsCoachNear400 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 2
		    Response PlayerRemarkc5m3sniperCoachGambler
		    ApplyContext "Saidc5m3sniper:1:0,Talk:1:2.833"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3sniperRochelleCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3sniper IsNotSaidc5m3sniper IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 IsProducerAlive IsProducerNear400 ChanceToFire25Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 3
		    Response PlayerRemarkc5m3sniperRochelleGambler
		    ApplyContext "Saidc5m3sniper:1:0,Talk:1:2.833"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3sniperEllisCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3sniper IsNotSaidc5m3sniper IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 IsMechanicAlive IsMechanicNear400 ChanceToFire10Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 4
		    Response PlayerRemarkc5m3sniperEllisGambler
		    ApplyContext "Saidc5m3sniper:1:0,Talk:1:2.833"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3upladderCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3upladder IsNotSaidc5m3upladder IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3upladderGambler
		    ApplyContext "Saidc5m3upladder:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3upstepsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3upsteps IsNotSaidc5m3upsteps IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3upstepsGambler
		    ApplyContext "Saidc5m3upsteps:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m3warzoneCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m3warzone IsNotSaidc5m3warzone IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3warzoneGambler
		    ApplyContext "Saidc5m3warzone:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C5M4BombExtCliffe
		{
		    criteria ConceptC5M4BombExt IsCliffe NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M4BombExtGambler
		    ApplyContext "Talk:1:0.920"
		    applycontexttoworld
		}
	},
	{
		Rule C5M4BombInt01Cliffe
		{
		    criteria ConceptC5M4BombInt IsCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NoAirstrikes
		    Response C5M4BombInt01Gambler
		    ApplyContext "_auto_Airstrike:++1"
		    applycontexttoworld
		}
	},
	{
		Rule C5M4BombInt01ACliffe
		{
		    criteria ConceptC5M4BombIntA IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M4BombInt01AGambler
		}
	},
	{
		Rule C5M4BombInt02Cliffe
		{
		    criteria ConceptC5M4BombInt IsCliffe NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_FirstAirstrike
		    Response C5M4BombInt02Gambler
		    ApplyContext "Talk:1:2.002,_auto_Airstrike:++1"
		    applycontexttoworld
		}
	},
	{
		Rule C5M4BombInt03Cliffe
		{
		    criteria ConceptC5M4BombInt IsCliffe NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_SecondAirstrike
		    Response C5M4BombInt03Gambler
		    ApplyContext "Talk:1:1.654,_auto_Airstrike:++1"
		    applycontexttoworld
		}
	},
	{
		Rule C5M4BombIntManyCliffe
		{
		    criteria ConceptC5M4BombInt IsCliffe NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_ManyAirstrikes
		    Response C5M4BombInt03Gambler
		    ApplyContext "Talk:1:1.654,_auto_Airstrike:++1"
		    applycontexttoworld
		}
	},
	{
		Rule C5M4JetPlanesCliffe
		{
		    criteria ConceptC5M4JetPlanes IsCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea
		    Response C5M4JetPlanesGambler
		}
	},
	{
		Rule PlayerRemarkc5m4alleyCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m4alley IsNotSaidc5m4alley IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4alleyGambler
		    ApplyContext "Saidc5m4alley:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m4inminifinaleCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m4inminifinale IsNotSaidc5m4inminifinale IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4inminifinaleGambler
		    ApplyContext "Saidc5m4inminifinale:1:0,_auto_InMiniFinale:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m4pooltableCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m4pooltable IsNotSaidc5m4pooltable IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 ChanceToFire50Percent TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4pooltableGambler
		    ApplyContext "Saidc5m4pooltable:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc5m4pooltableCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m4pooltable IsNotSaidc5m4pooltable IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc5m4pooltable:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m4seebridgeCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m4seebridge IsNotSaidc5m4seebridge IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4seebridgeGambler
		    ApplyContext "Saidc5m4seebridge:1:0,_auto_SawBridge:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m4tractornagCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m4tractornag IsNotSaidc5m4tractornag IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival _auto_NotTractorStarted IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4tractornagGambler
		    ApplyContext "Saidc5m4tractornag:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc5m4tractornagEllisCliffe
		{
		    criteria ConceptRemark IsCliffe Isc5m4tractornag IsNotSaidc5m4tractornag IsNotCoughing NotInCombat IsMechanicAlive IsMechanicNear400 IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotTractorStarted IsNotSpeakingWeight0
		    Response PlayerRemarkc5m4tractornagEllisGambler
		    ApplyContext "Saidc5m4tractornag:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptCliffe
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsCliffe IsNotSaidLeavingSafeArea _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptGambler
		    ApplyContext "Talk:1:2.434,SaidLeavingSafeArea:1:0,_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptGenericCliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptGenericGambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptC1M2Cliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe ismap_c1m2_streets _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptC1M2Gambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptC1M3Cliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe ismap_c1m3_mall _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptC1M3Gambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptC2M5Cliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe ismap_c2m5 _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptC2M5Gambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptC3M2Cliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe ismapc3m2_swamp _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptGenericGambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptC4M3Cliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe isc4m3 _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptC4M3Gambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptC4M4Cliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe isc4m4 _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptC4M4Gambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptC5M2Cliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe IsMapc5m2_park _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptC5M2Gambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule EllisStoryInterruptC5M5Cliffe
		{
		    criteria ConceptEllisInterrupt IsCliffe IsMapc5m5_bridge _auto_IsTellingStory _auto_NotDidInterrupt
		    Response EllisStoryInterruptC5M5Gambler
		    ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5_Button2Cliffe
		{
		    criteria ConceptC5M5_Button2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_Button2Gambler
		    ApplyContext "_auto_BridgeNag:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5_GateDownCliffe
		{
		    criteria ConceptC5M5_GateDown IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_GateDownGambler
		}
	},
	{
		Rule C5M5_saferoom001Cliffe
		{
		    criteria ConceptC5M5_saferoom001 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_saferoom001Gambler
		}
	},
	{
		Rule C5M5_saferoom003Cliffe
		{
		    criteria ConceptC5M5_saferoom003 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_saferoom003Gambler
		}
	},
	{
		Rule C5M5_saferoom004Cliffe
		{
		    criteria ConceptC5M5_saferoom004 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C5M5_saferoom003Gambler
		}
	},
	{
		Rule C5M5_SurvivorConv01Cliffe
		{
		    criteria ConceptC5M5_SurvivorConv01 IsCliffe FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingCliffe _auto_NotButton2
		    Response C5M5_SurvivorConv01Gambler
		}
	},
	{
		Rule C5M5_SurvivorConv02Cliffe
		{
		    criteria ConceptC5M5_SurvivorConv02 IsCliffe FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingCliffe _auto_NotButton2
		    Response C5M5_SurvivorConv02Gambler
		}
	},
	{
		Rule C5M5_SurvivorConv03Cliffe
		{
		    criteria ConceptC5M5_SurvivorConv03 IsCliffe FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingCliffe _auto_NotButton2
		    Response C5M5_SurvivorConv03Gambler
		}
	},
	{
		Rule C5M5_SurvivorConv04Cliffe
		{
		    criteria ConceptC5M5_SurvivorConv04 IsCliffe FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingCliffe _auto_NotButton2
		    Response C5M5_SurvivorConv04Gambler
		}
	},
	{
		Rule C5M5_SurvivorConv05Cliffe
		{
		    criteria ConceptC5M5_SurvivorConv05 IsCliffe FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingCliffe _auto_NotButton2
		    Response C5M5_SurvivorConv05Gambler
		}
	},
	{
		Rule C5M5_LowerTheBridgeCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsMapc5m5_bridge ChanceToFire90Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotTimerLockA _auto_NotTimerLockCliffe _auto_IsBridgeNag IsNotSpeakingWeight0
		    Response C5M5_LowerTheBridgeGambler
		    ApplyContext "_auto_TimerLockA:1:30,_auto_TimerLockCliffe:1:15"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5Button1BuzzardRunCliffe
		{
		    criteria ConceptC5M5Button1 IsCliffe FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingCliffe _auto_NotButton2 _auto_IsBuzzardRunMentioned
		    Response C5M5Button1BuzzardRunGambler
		}
	},
	{
		Rule C5M5Button1Cliffe
		{
		    criteria ConceptC5M5Button1 IsCliffe FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingCliffe _auto_NotButton2
		    Response C5M5Button1Gambler
		}
	},
	{
		Rule C5M5HearSoldiersCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsMapc5m5_bridge AutoIsNotScavenge AutoIsNotSurvival IsTalk _auto_IsSoldierChatter _auto_NotRadioNag _auto_NotButton1 IsNotSpeakingWeight0
		    Response C5M5HearSoldiersGambler
		    ApplyContext "_auto_RadioNag:1:0,_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:15"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5HearSoldiersNagCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsMapc5m5_bridge ChanceToFire90Percent AutoIsNotScavenge AutoIsNotSurvival _auto_IsSoldierChatter _auto_NotButton1 _auto_IsRadioNag _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C5M5HearSoldiersNagGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:15"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5LeaveSafeCliffe
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsCliffe IsMapc5m5_bridge IsNotSaidLeavingSafeArea
		    Response C5M5LeaveSafeGambler
		    ApplyContext "Talk:0:0,SaidLeavingSafeArea:1:0,_auto_TimerLockA:1:5,_auto_SoldierChatter:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5RescueStartCliffe
		{
		    criteria ConceptFinalVehicleSpotted IsCliffe IsMapc5m5_bridge _auto_IsFinaleStarted
		    Response C5M5RescueStartGambler
		    ApplyContext "_auto_Finale:2:0,_auto_TimerLockA:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5RunToHeliCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe IsMapc5m5_bridge IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C5M5RunToHeliGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5InsideHeliCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe IsMapc5m5_bridge IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C5M5InsideHeliGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5BridgeDestroyed2Cliffe
		{
		    criteria ConceptC5M5BridgeDestroyed2 IsCliffe IsNotIncapacitated IsEveryoneAlive CanSpeakC5M5SurvivorOutro
		    Response C5M5BridgeDestroyed2Gambler
		}
	},
	{
		Rule C5M5SurvivorVocalizeLookOutCliffe
		{
		    criteria ConceptPlayerLookOut IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsMapc5m5_bridge _auto_IsFinaleStarted
		    Response C5M5SurvivorVocalizeLookOutGambler
		}
	},
	{
		Rule C5M5SpottedTankCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsMapc5m5_bridge _auto_IsFinaleStarted
		    Response C5M5SpottedTankGambler
		    ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule C5M5ReloadingTankCliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 _auto_IsFinaleStarted IsWorldTalkCliffe IsMapc5m5_bridge
		    Response C5M5ReloadingTankGambler
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerC5M5TruckCliffe
		{
		    criteria ConceptC5M5Truck IsCliffe IsNotSaidC5M5Truck IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotZombiePresentTank _auto_IsFinaleStarted AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC5M5TruckGambler
		    ApplyContext "SaidC5M5Truck:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerKillTankConfirmationC5M5Cliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsTank IsNotAlone IsNotIncapacitated IsWorldTalkCliffe IsMapc5m5_bridge IsNotSurvival
		    Response PlayerKillTankConfirmationC5M5Gambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule C5M5SafeRoomCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat IsMapc5m5_bridge IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response C5M5SafeRoomGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1_IntotheparkNoHealthCliffe
		{
		    criteria ConceptC6M1_IntotheparkNoHealth IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1_IntotheparkNoHealthGambler
		}
	},
	{
		Rule C6M1Intro_01Biker05Cliffe
		{
		    criteria ConceptintroC6M1 IsCliffe IsFrancisIntroActor IsNotSaidCXM1Intro IsProducerAlive IsNotVersus ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival
		    // 	forceweight 1
		    Response C6M1Intro_01Biker05Gambler
		    ApplyContext "CXM1Intro:1:0,Talk:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1Intro_07bCliffe
		{
		    criteria ConceptC6M1Intro_07b IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_07bGambler
		}
	},
	{
		Rule C6M1Intro_09aCliffe
		{
		    criteria ConceptC6M1Intro_09a IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_09aGambler
		}
	},
	{
		Rule C6M1Intro_09bCliffe
		{
		    criteria ConceptC6M1Intro_09b IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_09bGambler
		}
	},
	{
		Rule C6M1Intro_09dCliffe
		{
		    criteria ConceptC6M1Intro_09d IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_09dGambler
		}
	},
	{
		Rule C6M1Intro_10eCliffe
		{
		    criteria ConceptC6M1Intro_10e IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_10eGambler
		}
	},
	{
		Rule C6M1Intro_11dCliffe
		{
		    criteria ConceptC6M1Intro_11d IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_11dGambler
		}
	},
	{
		Rule C6M1Intro_14aCliffe
		{
		    criteria ConceptC6M1Intro_14a IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_14aGambler
		}
	},
	{
		Rule C6M1Intro_14cCliffe
		{
		    criteria ConceptC6M1Intro_14c IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_14cGambler
		}
	},
	{
		Rule C6M1Intro_15aCliffe
		{
		    criteria ConceptC6M1Intro_15a IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_15aGambler
		}
	},
	{
		Rule C6M1Intro_15eCliffe
		{
		    criteria ConceptC6M1Intro_15e IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_15eGambler
		}
	},
	{
		Rule C6M1Intro_16aCliffe
		{
		    criteria ConceptC6M1Intro_16a IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_16aGambler
		}
	},
	{
		Rule C6M1Intro_ConfirmObjectiveCliffe
		{
		    criteria ConceptC6M1Intro_ConfirmObjective IsCliffe IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M1Intro_ConfirmObjectiveGambler
		}
	},
	{
		Rule LeavingC6M1StartCliffe
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsNotSaidLeavingSafeArea IsCliffe IsNotAlone YesHasFirstAidKit Isc6m1_riverbank AutoIsNotScavenge AutoIsNotSurvival IsNotSpeaking
		    Response LeavingC6M1StartGambler
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule LeavingC6M1StartNoFirstAidCliffe
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsNotSaidLeavingSafeArea IsCliffe IsNotAlone NoHasFirstAidKit Isc6m1_riverbank AutoIsNotScavenge AutoIsNotSurvival
		    Response LeavingC6M1StartNoFirstAidGambler
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemWorldC6M1_WeddingWarn02Cliffe
		{
		    criteria ConceptRemWorldC6M1_WeddingWarn02 IsCliffe IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response RemWorldC6M1_WeddingWarn02Gambler
		    ApplyContext "CoachCake:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule WorldC6M1_HistoricTourCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_HistoricTour IsNotSaidWorldC6M1_HistoricTour CanRemarkWorldC6M1_HistoricTour IsSubjectNear800 IsTalk IsNotSaidLeavingSafeArea
		    Response WorldC6M1_HistoricTourGambler
		    ApplyContext "SaidWorldC6M1_HistoricTour:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule WorldC6M1_PostWedding02aCliffe
		{
		    criteria ConceptWorldC6M1_PostWedding02a IsCliffe IsSubjectDistNear800 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M1_PostWedding02aGambler
		}
	},
	{
		Rule WorldC6M1_WeddingWarn05aCliffe
		{
		    criteria ConceptWorldC6M1_WeddingWarn05a IsCliffe IsSubjectDistNear800 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M1_WeddingWarn05aGambler
		}
	},
	{
		Rule C6M2_OpenGate1Cliffe
		{
		    criteria ConceptC6M2_OpenGate1 IsCliffe
		    Response C6M2_OpenGate1Gambler
		    ApplyContext "SaidOpenedGate1:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C6M2_OpenGate1aCliffe
		{
		    criteria ConceptC6M2_OpenGate1a IsCliffe
		    Response C6M2_OpenGate1aGambler
		}
	},
	{
		Rule C6M2_OpenGate2Cliffe
		{
		    criteria ConceptC6M2_OpenGate2 IsCliffe
		    Response C6M2_OpenGate2Gambler
		    ApplyContext "SaidOpenedGate2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvoFrancisStartCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat Isc6m2_bedlam IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsFrancisIntroActor ChanceToFire50Percent _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M2_SafeRoomConvoFrancisStartGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo01bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo01b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo01bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo02bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo02b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo02bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo06aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo06a IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo06aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo07aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo07a IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo07aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvoStartCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat Isc6m2_bedlam IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M2_SafeRoomConvoStartGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo08aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo08a IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo08aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo08cCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo08c IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo08cGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo08eCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo08e IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo08eGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo09bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo09b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo09bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvoZoeyStartCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat Isc6m2_bedlam IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsZoeyIntroActor IsMechanicAlive ChanceToFire50Percent _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M2_SafeRoomConvoZoeyStartGambler
		    ApplyContext "_auto_SafeRoomStart:2:0,MentionedZoeyC6M2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo10bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo10b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo10bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo10dCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo10d IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo10dGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo11bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo11b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo11bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo12aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo12a IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo12aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo12cCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo12c IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo12cGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo13aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo13a IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo13aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo13cCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo13c IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo13cGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo13cFrancisIntroCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo13c IsCliffe IsFrancisIntroActor ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo13cFrancisIntroGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo14fCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo14f IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo14fGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo15cCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo15c IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M2_SafeRoomConvo15cGambler
		}
	},
	{
		Rule WorldC6M2_AfterGate201aCliffe
		{
		    criteria ConceptWorldC6M2_AfterGate201a IsCliffe IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_AfterGate201aGambler
		}
	},
	{
		Rule WorldC6M2_FinalWater01aCliffe
		{
		    criteria ConceptWorldC6M2_FinalWater01a IsCliffe IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_FinalWater01aGambler
		}
	},
	{
		Rule WorldC6M2_InSewer101cCliffe
		{
		    criteria ConceptWorldC6M2_InSewer101c IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_InSewer101cGambler
		}
	},
	{
		Rule WorldC6M2_InSewer102bCliffe
		{
		    criteria ConceptWorldC6M2_InSewer102b IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_InSewer102bGambler
		}
	},
	{
		Rule WorldC6M2_InSewer201aCliffe
		{
		    criteria ConceptWorldC6M2_InSewer201a IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_InSewer201aGambler
		}
	},
	{
		Rule WorldC6M2_InSewer202aCliffe
		{
		    criteria ConceptWorldC6M2_InSewer202a IsCliffe IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_InSewer202aGambler
		}
	},
	{
		Rule WorldC6M2_InSewerLadder101aCliffe
		{
		    criteria ConceptWorldC6M2_InSewerLadder101a IssuerClose IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_InSewerLadder101aGambler
		}
	},
	{
		Rule WorldC6M2_OnTourWalk101aCliffe
		{
		    criteria ConceptWorldC6M2_OnTourWalk101a IsCliffe IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_OnTourWalk101aGambler
		}
	},
	{
		Rule WorldC6M2_OnTourWalk102aCliffe
		{
		    criteria ConceptWorldC6M2_OnTourWalk102a IsCliffe IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_OnTourWalk102aGambler
		}
	},
	{
		Rule WorldC6M2_Tattoo01bCliffe
		{
		    criteria ConceptWorldC6M2_Tattoo01b IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_Tattoo01bGambler
		}
	},
	{
		Rule WorldC6M2_Tattoo03aCliffe
		{
		    criteria ConceptWorldC6M2_Tattoo03a IsCliffe IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldC6M2_Tattoo03aGambler
		}
	},
	{
		Rule C6M3_BridgeDownCliffe
		{
		    criteria ConceptC6M3_BridgeDown IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M3_BridgeDownGambler
		}
	},
	{
		Rule C6M3_BridgeGettoCarCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe Isc6m3_port IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C6M3_BridgeGettoCarGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_elevatorCancelCliffe
		{
		    criteria ConceptC6M3_ElevatorCancel IsCliffe IsC6M3_port AutoIsNotScavenge AutoIsNotSurvival
		    // 	forceweight 1
		    Response _PlayerInfoRemarkableBlankGambler
		}
	},
	{
		Rule C6M3_elevatorCliffe
		{
		    criteria Conceptc6m3_elevator IsCliffe IsC6M3_port IsNotSaidC6M3Elevator AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M3_elevatorGambler
		    ApplyContext "SaidC6M3Elevator:1:0,Talk:1:10"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_elevatorFrancisCliffe
		{
		    criteria Conceptc6m3_elevator IsCliffe IsC6M3_port IsFrancisIntroActor IsNotVersus IsNotSaidC6M3Elevator AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M3_elevatorFrancisGambler
		    ApplyContext "SaidC6M3Elevator:1:0,Talk:1:10"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_GivenItemBikerCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorBiker Isc6m3_port
		    Response C6M3_GivenItemBikerGambler
		}
	},
	{
		Rule C6M3_GivenItemTeenGirlCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorTeenGirl Isc6m3_port
		    Response C6M3_GivenItemTeenGirlGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvoFrancisStartCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat isC6m3_port IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsFrancisIntroActor IsProducerAlive _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M3_SafeRoomConvoFrancisStartGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo02bCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo02b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo02bGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo02dCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo02d IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo02dGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo03bCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo03b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo03bGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo03dCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo03d IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo03dGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo04cCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo04c IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo04cGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvoZoeyStartCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat isC6m3_port IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsZoeyIntroActor IsEveryoneAlive _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response DLC1_C6M3_SafeRoomConvoZoeyStartGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo05bCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo05b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo05bGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo05dCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo05d IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response DLC1_C6M3_SafeRoomConvo05dGambler
		}
	},
	{
		Rule IncapBounceCliffe
		{
		    criteria ConceptSurvivorIncapacitated IsCliffe IsNotSaidInCapBounce isC6m3_port AutoIsNotScavenge AutoIsNotSurvival
		    Response IncapBounceGambler
		    ApplyContext "SaidInCapBounce:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerCallForRescueCliffe
		{
		    criteria ConceptCallForRescue IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe HasNotCalledForRescue
		    Response PlayerCallForRescueGambler
		    ApplyContext "CalledForRescue:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule c6m3_outroCliffe
		{
		    criteria Conceptc6m3_outro3 IsCliffe isC6m3_port IsNotVersus IsNotIncapacitated ChanceToFire100Percent FromIsBiker
		    // 	forceweight 1
		    Response c6m3_outroGambler
		}
	},
	{
		Rule c6m3_outroEllisCliffe
		{
		    criteria Conceptc6m3_outro3 IsCliffe IsMechanicAlive ChanceToFire50Percent IsNotIncapacitated isC6m3_port IsNotVersus FromIsBiker
		    // 	forceweight 5
		    Response c6m3_outroEllisGambler
		}
	},
	{
		Rule c6m3_outroZoeyOutroCliffe
		{
		    criteria Conceptc6m3_outroL4D1011a IsCliffe IsNotIncapacitated FromIsMechanic
		    Response c6m3_outroZoeyOutroGambler
		}
	},
	{
		Rule SurvivorSpotFirstWeaponsCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotPickedUpFirstAidKit ismap_c1m1_hotel IsNotSaidWorldC1M1First IsNotSaidFirstWeapon IsWorldTalkCliffe
		    Response SurvivorSpotFirstWeaponsGambler
		    ApplyContext "SaidFirstWeapon:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAdrenalineCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsAdrenaline IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedAdrenalineGambler
		    ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAdrenalineAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotAdrenaline IsNotSaidSpot IsAdrenaline IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedAdrenalineGambler
		    ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAmmoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsAmmo IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedAmmoGambler
		    ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAmmoAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsAmmo IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotAmmo IsNotSaidSpot IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response SurvivorSpottedAmmoGambler
		    ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAmmo2Cliffe
		{
		    criteria ConceptPlayerSpotAmmo IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotInSafeSpot IsNotAlone IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedAmmo2Gambler
		}
	},
	{
		Rule SurvivorSpottedCoachCloseCliffe
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkCliffe
		    Response SurvivorSpottedCoachCloseGambler
		}
	},
	{
		Rule SurvivorSpottedCoachClose2Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkCliffe
		    Response SurvivorSpottedCoachCloseGambler
		}
	},
	{
		Rule SurvivorSpottedCoachClose2C1Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedCoachClose2C1Gambler
		}
	},
	{
		Rule SurvivorSpottedCoachCloseC1Cliffe
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedCoachClose2C1Gambler
		}
	},
	{
		Rule SurvivorSpottedCoachFarCliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsCoach IsCoachFar400 IsWorldTalkCliffe
		    Response SurvivorSpottedCoachFarGambler
		}
	},
	{
		Rule SurvivorSpottedCoachFarC1Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsCoach IsCoachFar400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedCoachFarC1Gambler
		}
	},
	{
		Rule SurvivorSpottedDefibrillatorCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsDefibrillator IsWorldTalkCliffe
		    Response SurvivorSpottedDefibrillatorGambler
		    ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedDefibrillatorAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidDefibrillator IsNotSaidSpot IsDefibrillator IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response SurvivorSpottedDefibrillatorGambler
		    ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGrenadeCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsPipeBomb IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedGrenadeGambler
		    ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGrenadeAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotGrenade IsNotSaidSpot IsPipeBomb IsWorldTalkCliffe YesHasGrenade _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedGrenadeGambler
		    ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGrenadeLauncherCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto Isgrenade_launcher IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedGrenadeLauncherGambler
		    ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGrenadeLauncherAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotgrenade_launcher IsNotSaidSpot Isgrenade_launcher IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedGrenadeLauncherGambler
		    ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHealthCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsFirstAidKit IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedHealthGambler
		    ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHealthAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotHealth IsNotSaidSpot IsFirstAidKit IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedHealthGambler
		    ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMechanicCloseCliffe
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsMechanic IsMechanicNear400 IsWorldTalkCliffe
		    Response SurvivorSpottedMechanicCloseGambler
		}
	},
	{
		Rule SurvivorSpottedMechanicClose2Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsMechanic IsMechanicNear400 IsWorldTalkCliffe
		    Response SurvivorSpottedMechanicClose2Gambler
		}
	},
	{
		Rule SurvivorSpottedMechanicClose2C1Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsMechanic IsMechanicNear400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedMechanicClose2C1Gambler
		}
	},
	{
		Rule SurvivorSpottedMechanicCloseC1Cliffe
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsMechanic IsMechanicNear400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedMechanicClose2C1Gambler
		}
	},
	{
		Rule SurvivorSpottedMechanicFarCliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsMechanic IsMechanicFar400 IsWorldTalkCliffe
		    Response SurvivorSpottedMechanicFarGambler
		}
	},
	{
		Rule SurvivorSpottedMechanicFarC1Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsMechanic IsMechanicFar400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedMechanicFarC1Gambler
		}
	},
	{
		Rule SurvivorSpottedMolotovCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsMolotov IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedMolotovGambler
		    ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMolotovAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotMolotov IsNotSaidSpot IsMolotov IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedMolotovGambler
		    ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedPillsCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsPainPills IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedPillsGambler
		    ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedPillsAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotPills IsNotSaidSpot IsPainPills IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedPillsGambler
		    ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedPillsAutoHasPillsCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot YesHasPainPills IsNotAlone IsNotSaidSpotPills IsNotSaidSpot IsPainPills ChanceToFire40Percent IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedPillsAutoHasPillsGambler
		    ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedProducerCloseCliffe
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsProducer IsProducerNear400 IsWorldTalkCliffe
		    Response SurvivorSpottedProducerCloseGambler
		}
	},
	{
		Rule SurvivorSpottedProducerClose2Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsProducer IsProducerNear400 IsWorldTalkCliffe
		    Response SurvivorSpottedProducerCloseGambler
		}
	},
	{
		Rule SurvivorSpottedProducerClose2C1Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsProducer IsProducerNear400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedProducerClose2C1Gambler
		}
	},
	{
		Rule SurvivorSpottedProducerCloseC1Cliffe
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsProducer IsProducerNear400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedProducerClose2C1Gambler
		}
	},
	{
		Rule SurvivorSpottedProducerFarCliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsProducer IsProducerFar400 IsWorldTalkCliffe
		    Response SurvivorSpottedProducerFarGambler
		}
	},
	{
		Rule SurvivorSpottedProducerFarC1Cliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto SubjectIsProducer IsProducerFar400 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedProducerFarC1Gambler
		}
	},
	{
		Rule SurvivorSpottedUpPack_ExplosiveCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsUpgradePack_Explosive _auto_NotSpottedVehicle IsWorldTalkCliffe
		    Response SurvivorSpottedUpPack_ExplosiveGambler
		    ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedUpPack_ExplosiveAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotAlone IsNotSaidSpotUpgradePack_Explosive IsNotSaidSpot IsUpgradePack_Explosive IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedUpPack_ExplosiveGambler
		    ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedUpPack_IncendiaryCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsUpgradePack_Incendiary _auto_NotSpottedVehicle IsWorldTalkCliffe
		    Response SurvivorSpottedUpPack_IncendiaryGambler
		    ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedUpPack_IncendiAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotAlone IsNotSaidSpotUpgradePack_Incendiary IsNotSaidSpot IsUpgradePack_Incendiary IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedUpPack_IncendiaryGambler
		    ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedVomitJarCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsVomitJar _auto_NotSpottedVehicle IsWorldTalkCliffe
		    Response SurvivorSpottedVomitJarGambler
		    ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedVomitJarAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotVomitJar IsNotSaidSpot IsVomitJar IsWorldTalkCliffe _auto_NotSpottedVehicle IsNotSpeakingWeight0
		    Response SurvivorSpottedVomitJarGambler
		    ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedVomitJarAutoC1Cliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotVomitJar IsNotSaidSpot IsVomitJar IsWorldTalkCliffe ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedVomitJarAutoC1Gambler
		    ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedVomitJarC1Cliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsVomitJar IsWorldTalkCliffe ismap_c1m1_hotel
		    Response SurvivorSpottedVomitJarAutoC1Gambler
		    ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedWorldCloseCliffe
		{
		    criteria ConceptPlayerLookHere IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsWorldTalkCliffe
		    Response SurvivorSpottedWorldCloseGambler
		}
	},
	{
		Rule SurvivorSpottedArmoredC5M1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeArmored IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c5m1_waterfront IsNotSaidArmoredWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedArmoredC5M1Gambler
		    ApplyContext "SaidArmoredWarn:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedArmoredCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeArmored IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidArmoredWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedArmoredGambler
		    ApplyContext "SaidArmoredWarn:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBoomerCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedBoomerGambler
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBoomerAlsoCliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedBoomerGambler
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBoomer2Cliffe
		{
		    criteria ConceptPlayerWarnBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedBoomerGambler
		}
	},
	{
		Rule SurvivorSpottedBoomerC1M1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedBoomerC1M1Gambler
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBoomerAlsoC1M1Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel
		    Response SurvivorSpottedBoomerC1M1Gambler
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBoomer2C1Cliffe
		{
		    criteria ConceptPlayerWarnBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 NoKnowBoomer IsNotSurvival
		    Response SurvivorSpottedBoomerC1M1Gambler
		}
	},
	{
		Rule SurvivorSpottedBoomerC1M1CoachCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel IsCoachAlive IsCoachNear400 IsNotCliffeInsultedCoachC1 ChanceToFire100Percent IsNotSpeakingWeight0
		    Response SurvivorSpottedBoomerC1M1CoachGambler
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30,CliffeInsultedCoach:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBoomerC1M2Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowBoomer IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedBoomerC1M2Gambler
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30,KnowBoomer:1:0,Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBoomerAlsoC1M2Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowBoomer IsNotSurvival
		    Response SurvivorSpottedBoomerC1M1Gambler
		    ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedCedaCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCeda IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidCedaWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedCedaGambler
		    ApplyContext "SaidCedaWarn:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedCedaC1M1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCeda IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidCedaWarn ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedCedaC1M1Gambler
		    ApplyContext "SaidCedaWarn:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedChargerCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedChargerGambler
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedChargerAlsoCliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedChargerGambler
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedCharger2Cliffe
		{
		    criteria ConceptPlayerWarnCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedChargerGambler
		}
	},
	{
		Rule SurvivorSpottedChargerC1M1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedChargerC1M1Gambler
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedChargerAlsoC1M1Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel
		    Response SurvivorSpottedChargerC1M1Gambler
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedCharger2C1Cliffe
		{
		    criteria ConceptPlayerWarnCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 NoKnowCharger IsNotSurvival
		    Response SurvivorSpottedChargerC1M1Gambler
		}
	},
	{
		Rule SurvivorSpottedChargerC1M2Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowCharger IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedChargerC1M2Gambler
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30,KnowCharger:1:0,Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedChargerAlsoC1M2Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowCharger IsNotSurvival
		    Response SurvivorSpottedChargerC1M1Gambler
		    ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedClownC2M2Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeClown IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated Ismap_c2m2 IsNotSaidClownWarn IsNotSpeakingWeight0
		    Response SurvivorSpottedClownC2M2Gambler
		    ApplyContext "SaidClownWarn:1:0,SawClowns:++1"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedClownCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeClown IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidClownWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedClownGambler
		    ApplyContext "SaidClownWarn:1:20,SawClowns:++1"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedFallenCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeFallen IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidFallenWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedFallenGambler
		    ApplyContext "SaidFallenWarn:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHunterCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeHunter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedHunterGambler
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHunterAlsoCliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeHunter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedHunterGambler
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHunter2Cliffe
		{
		    criteria ConceptPlayerWarnHunter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedHunterGambler
		}
	},
	{
		Rule SurvivorSpottedHunterC1M1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeHunter IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedHunterC1M1Gambler
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHunterAlsoC1M1Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeHunter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel
		    Response SurvivorSpottedHunterC1M1Gambler
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHunter2C1Cliffe
		{
		    criteria ConceptPlayerWarnHunter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 NoKnowHunter IsNotSurvival
		    Response SurvivorSpottedHunterC1M1Gambler
		}
	},
	{
		Rule SurvivorSpottedHunterC1M2Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeHunter IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowHunter IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedHunterC1M2Gambler
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30,KnowHunter:1:0,Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHunterAlsoC1M2Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeHunter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowHunter IsNotSurvival
		    Response SurvivorSpottedHunterC1M1Gambler
		    ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedInfectedCliffe
		{
		    criteria ConceptPlayerIncoming IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedInfectedGambler
		}
	},
	{
		Rule SurvivorSpottedJimmyCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeJimmy IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidJimmyWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedJimmyGambler
		    ApplyContext "SaidJimmyWarn:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedJockeyCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedJockeyGambler
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedJockeyAlsoCliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedJockeyGambler
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedJockey2Cliffe
		{
		    criteria ConceptPlayerWarnJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedJockeyGambler
		}
	},
	{
		Rule SurvivorSpottedJockeyC1M1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedJockeyC1M1Gambler
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedJockeyAlsoC1M1Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel
		    Response SurvivorSpottedJockeyC1M1Gambler
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedJockey2C1M1Cliffe
		{
		    criteria ConceptPlayerWarnJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 NoKnowJockey IsNotSurvival
		    Response SurvivorSpottedJockeyC1M1Gambler
		}
	},
	{
		Rule SurvivorSpottedJockeyC1M2Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowJockey IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedJockeyC1M2Gambler
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30,KnowJockey:1:0,Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedJockeyAlsoC1M2Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowJockey IsNotSurvival
		    Response SurvivorSpottedJockeyC1M1Gambler
		    ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMudmenCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeMudmen IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidMudmenWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMudmenGambler
		    ApplyContext "SaidMudmenWarn:1:20,SawMudMen:++1"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMudmenC3M2Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeMudmen IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidMudmenWarn ismapc3m2_swamp IsNotSpeakingWeight0
		    Response SurvivorSpottedMudmenGambler
		    ApplyContext "SaidMudmenWarn:1:0,SawMudMen:++1"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMudmen2Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeMudmen IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidMudmenWarn SawManyMudMen IntensityUnder50 IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMudmen2Gambler
		    ApplyContext "SaidMudmenWarn:1:20,SawMudMen:++1"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSmokerCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedSmokerGambler
		    ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSmokerAlsoCliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedSmokerGambler
		    ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSmoker2Cliffe
		{
		    criteria ConceptPlayerWarnSmoker IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedSmokerGambler
		}
	},
	{
		Rule SurvivorSpottedSmokerC1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 NoKnowSmoker IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedSmokerC1Gambler
		    ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSmokerAlsoC1Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response SurvivorSpottedSmokerC1Gambler
		    ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSmoker2C1Cliffe
		{
		    criteria ConceptPlayerWarnSmoker IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response SurvivorSpottedSmokerC1Gambler
		}
	},
	{
		Rule SurvivorSpottedSpitterCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedSpitterGambler
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSpitterAlsoCliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedSpitterGambler
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSpitter2Cliffe
		{
		    criteria ConceptPlayerWarnSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedSpitterGambler
		}
	},
	{
		Rule SurvivorSpottedSpitterC1M1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		    Response SurvivorSpottedSpitterC1M1Gambler
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSpitterAlsoC1M1Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m1_hotel
		    Response SurvivorSpottedSpitterC1M1Gambler
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSpitter2C1Cliffe
		{
		    criteria ConceptPlayerWarnSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 NoKnowSpitter IsNotSurvival
		    Response SurvivorSpottedSpitterC1M1Gambler
		}
	},
	{
		Rule SurvivorSpottedSpitterC1M2Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowSpitter IsNotSpeakingWeight0 IsNotSurvival
		    Response SurvivorSpottedSpitterC1M2Gambler
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30,KnowSpitter:1:0,Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSpitterAlsoC1M2Cliffe
		{
		    criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated ismap_c1m2_streets NoKnowSpitter IsNotSurvival
		    Response SurvivorSpottedSpitterC1M1Gambler
		    ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedTankCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedTankGambler
		    ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedTank2Cliffe
		{
		    criteria ConceptPlayerWarnTank IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated _auto_NotSpottedVehicle
		    Response SurvivorSpottedTankGambler
		}
	},
	{
		Rule SurvivorSpottedTankC1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 IsNotSurvival IsNotSpeakingWeight0
		    Response SurvivorSpottedTankC1Gambler
		    ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedTank2C1Cliffe
		{
		    criteria ConceptPlayerWarnTank IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedTankC1Gambler
		}
	},
	{
		Rule SurvivorSpottedWitchCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeWitch IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidWitchStartAttack IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWitchGambler
		    ApplyContext "SaidWitchWarn:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedWitch2Cliffe
		{
		    criteria ConceptPlayerWarnWitch IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidWitchStartAttack _auto_NotSpottedVehicle
		    Response SurvivorSpottedWitchGambler
		}
	},
	{
		Rule SurvivorSpottedWitchC1Cliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeWitch IsNotCoughing IsNotAlone IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidWitchStartAttack C1M1orC1M2 IsNotSpeakingWeight0
		    Response SurvivorSpottedWitchC1Gambler
		    ApplyContext "SaidWitchWarn:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedWitch2C1Cliffe
		{
		    criteria ConceptPlayerWarnWitch IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotIncapacitated IsNotSaidWitchStartAttack C1M1orC1M2 IsNotSurvival
		    Response SurvivorSpottedWitch2C1Gambler
		}
	},
	{
		Rule PlayerAlertGiveItemCliffe
		{
		    criteria ConceptPlayerAlertGiveItem IsNotCoughing IsCliffe IsTalk IsTalkCliffe NotInIntenseCombat IsWorldTalkCliffe
		    Response PlayerAlertGiveItemGambler
		}
	},
	{
		Rule PlayerAlertGiveItemC1Cliffe
		{
		    criteria ConceptPlayerAlertGiveItem IsNotCoughing IsCliffe IsTalk IsTalkCliffe NotInIntenseCombat IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerAlertGiveItemC1Gambler
		}
	},
	{
		Rule PlayerAlertGiveItemCombatCliffe
		{
		    criteria ConceptPlayerAlertGiveItem IsNotCoughing IsCliffe IsTalk IsTalkCliffe InIntenseCombat IsWorldTalkCliffe
		    Response PlayerAlertGiveItemCombatGambler
		}
	},
	{
		Rule PlayerAlertGiveItemTankCliffe
		{
		    criteria ConceptPlayerAlertGiveItem IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkCliffe
		    Response PlayerAlertGiveItemCombatGambler
		}
	},
	{
		Rule PlayerFaultFriendlyFireCliffe
		{
		    criteria IsFaultConcept IsFaultFriendlyFire IsCliffe
		    Response NoResponse
		    ApplyContext "SaidFaultFriendlyFire:1:0.1,SaidFaultFriendlyFireCliffe:1:0.1,ShotTeammateCliffe:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerFriendlyFireCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotZombiePresentTank
		    Response PlayerFriendlyFireGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFire2Cliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotDamageTypeExplosive IsTalk IsTalkCliffe IsOnThirdStrike IsWorldTalkCliffe IsNotZombiePresentTank
		    Response PlayerFriendlyFire2Gambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireC1Cliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c1m1_hotel NoKnowNames IsNotZombiePresentTank
		    Response PlayerFriendlyFireC1Gambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromCoachCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkCliffe SubjectIsCoach ChanceToFire50Percent IsWorldTalkCliffe isNotmap_c1m1_hotel IsNotZombiePresentTank
		    Response PlayerFriendlyFireFromCoachGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromCoachNBCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsNotDamageTypeBullet IsNotDamageTypeExplosive IsTalk IsTalkCliffe SubjectIsCoach ChanceToFire50Percent IsWorldTalkCliffe isNotmap_c1m1_hotel IsNotZombiePresentTank
		    Response PlayerFriendlyFireFromCoachNBGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromMechanicCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkCliffe SubjectIsMechanic ChanceToFire30Percent IsWorldTalkCliffe isNotmap_c1m1_hotel IsNotZombiePresentTank
		    Response PlayerFriendlyFireFromMechanicGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromMechanicC1Cliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkCliffe SubjectIsMechanic ChanceToFire50Percent IsWorldTalkCliffe ismap_c1m1_hotel NoKnowNames IsNotZombiePresentTank
		    Response PlayerFriendlyFireFromMechanicC1Gambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromMechanicNBC1Cliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsNotDamageTypeBullet IsNotDamageTypeExplosive IsTalk IsTalkCliffe SubjectIsMechanic ChanceToFire50Percent IsWorldTalkCliffe ismap_c1m1_hotel NoKnowNames IsNotZombiePresentTank
		    Response PlayerFriendlyFireFromMechanicNBC1Gambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromMechanicNBCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsNotDamageTypeBullet IsNotDamageTypeExplosive IsTalk IsTalkCliffe SubjectIsMechanic ChanceToFire50Percent IsWorldTalkCliffe IsNotZombiePresentTank
		    Response PlayerFriendlyFireFromMechanicGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromProducerCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkCliffe SubjectIsProducer ChanceToFire30Percent IsWorldTalkCliffe isNotmap_c1m1_hotel IsNotZombiePresentTank
		    Response PlayerFriendlyFireFromProducerGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromProducerC1Cliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkCliffe SubjectIsProducer ChanceToFire50Percent IsWorldTalkCliffe ismap_c1m1_hotel NoKnowNames IsNotZombiePresentTank
		    Response PlayerFriendlyFireFromProducerC1Gambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireFromProducerNBCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsNotDamageTypeBullet IsNotDamageTypeExplosive IsTalk IsTalkCliffe SubjectIsProducer ChanceToFire50Percent IsWorldTalkCliffe IsNotZombiePresentTank isNotmap_c1m1_hotel
		    Response PlayerFriendlyFireFromProducerNBGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireNoBulletCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsNotDamageTypeBullet IsNotDamageTypeExplosive IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotZombiePresentTank
		    Response PlayerFriendlyFireNoBulletGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireNoBulletC1Cliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsNotDamageTypeBullet IsNotDamageTypeExplosive IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotZombiePresentTank ismap_c1m1_hotel NoKnowNames
		    Response PlayerFriendlyFireNoBulletC1Gambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireTankCliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkCliffe IsZombiePresentTank IsSaidTankWarn2 IsNotIncapacitated IsWorldTalkCliffe isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerFriendlyFireTankGambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerFriendlyFireTankC1Cliffe
		{
		    criteria ConceptPlayerFriendlyFire IsNotCoughing IsCliffe IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkCliffe IsZombiePresentTank IsSaidTankWarn2 IsNotIncapacitated IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerFriendlyFireTankC1Gambler
		    ApplyContext "FriendlyFire:1:10"
		}
	},
	{
		Rule PlayerToTheRescueCliffe
		{
		    criteria ConceptSurvivorBotMovingToReviveFriend IsNotCoughing IsCliffe IsTalk IsTalkCliffe NotInCombat IsNotSaidRescueComing IsDistanceSubjectO600 IsWorldTalkCliffe
		    Response PlayerToTheRescueGambler
		    ApplyContext "SaidRescueComing:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerToTheRescueRosCliffe
		{
		    criteria ConceptPlayerToTheRescue IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerToTheRescueRosGambler
		}
	},
	{
		Rule SurvivorTauntResponseCliffe
		{
		    criteria ConceptPlayerTaunt IsSurvivor IsNotSpeaking IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotVersus
		    Response SurvivorTauntResponseGambler
		}
	},
	{
		Rule C4M1IdleComment01Cliffe
		{
		    criteria ConceptTalkIdle ChanceToFire40Percent IsSurvivor ismap_c4m1_milltown_a IsSaidc4m1_nogas IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe NotInCombat IsWorldTalkCliffe TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_NotNoGasGate
		    Response C4M1IdleComment01Gambler
		    ApplyContext "Talk:1:2.788,_auto_NoGasGate:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C4M2IdleCommentCane01Cliffe
		{
		    criteria ConceptTalkIdle ChanceToFire60Percent IsSurvivor ismap_c4m2_sugarmill_a IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_IsCliffeInCane _auto_NotCaneYellGated _auto_NotLastSurvivorTalkedCliffe
		    Response C4M2IdleCommentCane01Gambler
		    ApplyContext "_auto_CaneYellGated:1:10,_auto_LastSurvivorTalkedCliffe:1:15"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerChokeResponseCliffe
		{
		    criteria ConceptPlayerChoke IsSurvivor IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerChokeResponseGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerChokeResponseC1Cliffe
		{
		    criteria ConceptPlayerChoke IsSurvivor IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response PlayerChokeResponseC1Gambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerReloadingC502RunCliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsCliffe IsNotIncapacitated IsMapc5m2_park IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotZombiePresentTank ChanceToFire50Percent _auto_IsAlarm
		    Response PlayerReloadingC502RunGambler
		}
	},
	{
		Rule PlayerReloadingTankCliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkCliffe isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		    Response PlayerReloadingTankGambler
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerReloadingTankC1Cliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerReloadingTankC1Gambler
		    ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWitchChasingCliffe
		{
		    criteria ConceptPlayerExertionMinor IsCliffe IsWitchPresent SubjectIsNotWitch IsNotSaidWitchChasing IsSaidWitchAttacking IsTalkCliffe IsNotmap_c4m2 IsNotc6m1_riverbank IsWitchAggro
		    Response PlayerWitchChasingGambler
		    ApplyContext "SaidWitchChasing:1:5,TalkCliffe:1:2"
		}
	},
	{
		Rule PlayerWitchChasingC6M1Cliffe
		{
		    criteria ConceptPlayerExertionMinor IsCliffe IsWitchPresent SubjectIsNotWitch IsNotSaidWitchChasing IsSaidWitchAttacking IsTalkCliffe isc6m1_riverbank IsWitchAggro
		    // 	forceweight 20
		    Response PlayerWitchChasingC6M1Gambler
		    ApplyContext "SaidWitchChasing:1:15,TalkCliffe:1:2"
		}
	},
	{
		Rule PlayerWitchStartAttackCliffe
		{
		    criteria IsFaultConcept IsCliffe IsFaultWitchHarassment
		    Response PlayerWitchStartAttackGambler
		    ApplyContext "SaidWitchAttacking:1:15,TalkCliffe:1:2,SaidWitchStartAttack:1:15"
		}
	},
	{
		Rule PlayerWitchStartAttackC6M1Cliffe
		{
		    criteria IsFaultConcept IsCliffe IsFaultWitchHarassment isc6m1_riverbank
		    Response PlayerWitchStartAttackC6M1Gambler
		    ApplyContext "SaidWitchAttacking:1:15,TalkCliffe:1:2,SaidWitchStartAttack:1:15"
		}
	},
	{
		Rule WitchAggroCliffe
		{
		    criteria ConceptWitchStartAttack IsCliffe Iswitch_aggro_onCliffe
		    Response NoResponse
		    ApplyContext "WitchAggro:++1"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorCriticalHurtCliffe
		{
		    criteria IsSurvivor InPain IsCriticalPain IsCliffe IsTalk IsTalkCliffe SubjectIsNotJockey IsWorldTalkCliffe
		    Response SurvivorCriticalHurtGambler
		}
	},
	{
		Rule SurvivorIncapacitatedHurtCliffe
		{
		    criteria IsSurvivor InPain IsNotSpeaking IsIncapacitatedPain IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorIncapacitatedHurtGambler
		}
	},
	{
		Rule SurvivorJockeyHurtMajorCliffe
		{
		    criteria IsSurvivor InPain IsMajorPain IsCliffe IsTalk IsTalkCliffe SubjectIsJockey IsNotSaidBeenJockeyedCliffe IsWorldTalkCliffe IsBeingJockeyed
		    Response SurvivorJockeyHurtMajorGambler
		    ApplyContext "SaidBeenJockeyedCliffe:1:6,TalkCliffe:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorJockeyHurtMinorCliffe
		{
		    criteria IsSurvivor InPain IsMinorPain IsCliffe IsTalk IsTalkCliffe SubjectIsJockey IsNotSaidBeenJockeyedCliffe IsWorldTalkCliffe IsBeingJockeyed
		    Response SurvivorJockeyHurtMajorGambler
		    ApplyContext "SaidBeenJockeyedCliffe:1:6,TalkCliffe:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorJockeyHurtMajorC1Cliffe
		{
		    criteria IsSurvivor InPain IsMajorPain IsCliffe IsTalk IsTalkCliffe SubjectIsJockey IsNotSaidBeenJockeyedCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowJockey IsBeingJockeyed IsNotSurvival
		    Response SurvivorJockeyHurtMajorC1Gambler
		    ApplyContext "SaidBeenJockeyedCliffe:1:6,TalkCliffe:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorJockeyHurtMinorC1Cliffe
		{
		    criteria IsSurvivor InPain IsMinorPain IsCliffe IsTalk IsTalkCliffe SubjectIsJockey IsNotSaidBeenJockeyedCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowJockey IsBeingJockeyed IsNotSurvival
		    Response SurvivorJockeyHurtMajorC1Gambler
		    ApplyContext "SaidBeenJockeyedCliffe:1:6,TalkCliffe:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorMajorHurtCliffe
		{
		    criteria IsSurvivor InPain IsMajorPain IsCliffe IsTalk IsTalkCliffe SubjectIsNotJockey IsWorldTalkCliffe
		    Response SurvivorMajorHurtGambler
		}
	},
	{
		Rule SurvivorMinorHurtCliffe
		{
		    criteria IsSurvivor InPain IsMinorPain IsCliffe IsTalk IsTalkCliffe SubjectIsNotJockey IsWorldTalkCliffe
		    Response SurvivorMinorHurtGambler
		}
	},
	{
		Rule SurvivorReloadingCliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkCliffe ChanceToFire50Percent IsNotZombiePresentTank NotInIntenseCombat _auto_NotCliffeInWitchville _auto_NotAlarmV2 _auto_ConcertNotLive _auto_NotSpottedVehicle
		    Response SurvivorReloadingGambler
		}
	},
	{
		Rule SurvivorReloadingIntenseCliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkCliffe ChanceToFire50Percent IsNotZombiePresentTank InIntenseCombat _auto_NotCliffeInWitchville _auto_NotAlarmV2 _auto_ConcertNotLive _auto_NotSpottedVehicle
		    Response SurvivorReloadingIntenseGambler
		}
	},
	{
		Rule SurvivorReloadingC4M2Cliffe
		{
		    criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsCliffe IsNotIncapacitated IsTalk IsTalkCliffe RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkCliffe ChanceToFire50Percent IsWitchPresent IsWarnHeardWitch ismap_c4m2_sugarmill_a IsNotSaidSafeSpotAhead IsNotZombiePresentTank _auto_IsCliffeInWitchville
		    Response SurvivorReloadingC4M2Gambler
		}
	},
	{
		Rule PlayerHelpIncappedCliffe
		{
		    criteria ConceptPlayerHelp IsCliffe IsNotCoughing IsTalk IsTalkCliffe IsIncappedStarted IsIncappedStarted2 IsIncapacitated NotCalledForHelpRecently IsWorldTalkCliffe
		    Response PlayerHelpIncappedGambler
		    ApplyContext "CalledForHelp:1:7.5"
		}
	},
	{
		Rule PlayerHelpIncappedBleedingCliffe
		{
		    criteria ConceptPlayerHelp IsCliffe IsNotCoughing IsTalk IsTalkCliffe IsIncappedBleeding1 IsIncappedBleeding2 IsIncapacitated NotCalledForHelpRecently IsWorldTalkCliffe
		    Response PlayerHelpIncappedBleedingGambler
		    ApplyContext "CalledForHelp:1:15"
		}
	},
	{
		Rule PlayerHelpIncappedLethargicCliffe
		{
		    criteria ConceptPlayerHelp IsCliffe IsNotCoughing IsTalk IsTalkCliffe IsIncappedLethargic IsIncapacitated NotCalledForHelpRecently IsWorldTalkCliffe
		    Response PlayerHelpIncappedLethargicGambler
		    ApplyContext "CalledForHelp:1:30"
		}
	},
	{
		Rule HelpResponseGamblerCliffe
		{
		    criteria ConceptFriendNeedsHelp IsCliffe IsTalk IsTalkCliffe IsNotIncapacitated IsInSafeSpot FromIsCliffe IsNotInStartArea NotAloneInSafeSpot IsWorldTalkCliffe
		    Response HelpResponseGamblerGambler
		}
	},
	{
		Rule C2M1DoneFallingCliffe
		{
		    criteria ConceptC2M1DoneFalling IsCliffe NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival _auto_NotDoneFalling
		    Response C2M1DoneFallingGambler
		    ApplyContext "Talk:1:0.987,_auto_DoneFalling:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M1FallingCliffe
		{
		    criteria ConceptC2M1Falling IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1FallingGambler
		    ApplyContext "Talk:1:1.270"
		    applycontexttoworld
		}
	},
	{
		Rule C2M2CarouselOffCliffe
		{
		    criteria Conceptc2m2CarouselEnd IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M2CarouselOffGambler
		    ApplyContext "Talk:1:1.079,_auto_Alarm:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M2CarouselOnCliffe
		{
		    criteria Conceptc2m2CarouselStart IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M2CarouselOnGambler
		    ApplyContext "_auto_Alarm:1:0,_auto_TimerLockA:1:6,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_CaroStart01Cliffe
		{
		    criteria Concept_C2M2_CaroStart01 IsCliffe IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_CaroStart01Gambler
		}
	},
	{
		Rule C3M3BridgeButtonCliffe
		{
		    criteria ConceptC3M3BridgeButton IsNotSaidC3M3BridgeButton IsCliffe IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival
		    Response C3M3BridgeButtonGambler
		    ApplyContext "SaidC3M3BridgeButton:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule EndOfWavWindow5Cliffe
		{
		    criteria ConceptEndOfWavWindow5 IsCliffe
		    Response EndOfWavWindow5Gambler
		    ApplyContext "_auto_CliffeWavWindow:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerChainSawUsedCliffe
		{
		    criteria ConceptChainsawUsed IsNotSaidChainSawUsed IsCliffe IsTalk IsTalkCliffe IntensityOver25 IsWorldTalkCliffe
		    Response PlayerChainSawUsedGambler
		    ApplyContext "SaidChainSawUsed:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M1AroundFireCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M1AroundFire IsNotSaidC1M1AroundFire IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M1AroundFireGambler
		    ApplyContext "SaidC1M1AroundFire:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M1OverTableCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M1OverTable IsNotSaidC1M1OverTable IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M1OverTableGambler
		    ApplyContext "SaidC1M1OverTable:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M1SearchRoomsCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M1SearchRooms IsNotSaidC1M1SearchRooms IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M1SearchRoomsGambler
		    ApplyContext "SaidC1M1SearchRooms:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M1ThroughThisDoorCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M1ThroughThisDoor IsNotSaidC1M1ThroughThisDoor IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M1ThroughThisDoorGambler
		    ApplyContext "SaidC1M1ThroughThisDoor:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3AlarmDoorsCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3AlarmDoors IsNotSaidC1M3AlarmDoors IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 _auto_NotAlarm AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3AlarmDoorsGambler
		    ApplyContext "SaidC1M3AlarmDoors:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3CarefulWindowsCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3CarefulWindows IsNotSaidC1M3CarefulWindows IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 _auto_NotAlarm AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3CarefulWindowsGambler
		    ApplyContext "SaidC1M3CarefulWindows:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3CEDAGoneCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3CEDAGone IsNotSaidC1M3CEDAGone IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3CEDAGoneGambler
		    ApplyContext "SaidC1M3CEDAGone:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3DiscoPantsCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3DiscoPants IsNotSaidC1M3DiscoPants IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DiscoPantsGambler
		    ApplyContext "SaidC1M3DiscoPants:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3DownHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3DownHere IsNotSaidC1M3DownHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereGambler
		    ApplyContext "SaidC1M3DownHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3DownHere2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3DownHere2 IsNotSaidC1M3DownHere2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereGambler
		    ApplyContext "SaidC1M3DownHere2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3DownTheEscalatorCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3DownTheEscalator IsNotSaidC1M3DownTheEscalator IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownTheEscalatorGambler
		    ApplyContext "SaidC1M3DownTheEscalator:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3OverHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3OverHere IsNotSaidC1M3OverHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3OverHereGambler
		    ApplyContext "SaidC1M3OverHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3SearchRoomsCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3SearchRooms IsNotSaidC1M3SearchRooms IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3SearchRoomsGambler
		    ApplyContext "SaidC1M3SearchRooms:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3ThisWayCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3ThisWay IsNotSaidC1M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3ThisWayGambler
		    ApplyContext "SaidC1M3ThisWay:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3ThroughHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3ThroughHere IsNotSaidC1M3ThroughHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3ThroughHereGambler
		    ApplyContext "SaidC1M3ThroughHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3TurnOffAlarm1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3TurnOffAlarm1 IsNotSaidC1M3TurnOffAlarm1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3TurnOffAlarm1Gambler
		    ApplyContext "SaidC1M3TurnOffAlarm1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3TurnOffAlarm2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3TurnOffAlarm2 IsNotSaidC1M3TurnOffAlarm2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3TurnOffAlarm2Gambler
		    ApplyContext "SaidC1M3TurnOffAlarm2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3TurnOffAlarm3Cliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3TurnOffAlarm3 IsNotSaidC1M3TurnOffAlarm3 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3TurnOffAlarm3Gambler
		    ApplyContext "SaidC1M3TurnOffAlarm3:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3UpEscalator1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3UpEscalator1 IsNotSaidC1M3UpEscalator1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3UpEscalator1Gambler
		    ApplyContext "SaidC1M3UpEscalator1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3UpEscalator2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3UpEscalator2 IsNotSaidC1M3UpEscalator2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3UpEscalator1Gambler
		    ApplyContext "SaidC1M3UpEscalator2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC1M3UpEscalator3Cliffe
		{
		    criteria ConceptRemark IsCliffe IsC1M3UpEscalator3 IsNotSaidC1M3UpEscalator3 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3UpEscalator1Gambler
		    ApplyContext "SaidC1M3UpEscalator3:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_carwreckageCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_carwreckage IsNotSaidc2m1_carwreckage IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_carwreckageGambler
		    ApplyContext "Saidc2m1_carwreckage:1:0,Talk:1:1.543"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_offrampCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_offramp IsNotSaidc2m1_offramp IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_offrampGambler
		    ApplyContext "Saidc2m1_offramp:1:0,Talk:1:1.289"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_checkroomsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_checkrooms IsNotSaidc2m1_checkrooms IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_checkroomsGambler
		    ApplyContext "Saidc2m1_checkrooms:1:0,Talk:1:1.430"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_cliffCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_cliff IsNotSaidc2m1_cliff IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_cliffGambler
		    ApplyContext "Saidc2m1_cliff:1:0,Talk:1:1.763"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_downstairsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_downstairs IsNotSaidc2m1_downstairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_downstairsGambler
		    ApplyContext "Saidc2m1_downstairs:1:0,Talk:1:0.797"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_bridgeoutCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_bridgeout IsNotSaidc2m1_bridgeout IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_bridgeoutGambler
		    ApplyContext "Saidc2m1_bridgeout:1:0,Talk:1:0.746"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_followriverCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_followriver IsNotSaidc2m1_followriver IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_followriverGambler
		    ApplyContext "Saidc2m1_followriver:1:0,Talk:1:0.822"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_motelsignCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_motelsign IsNotSaidc2m1_motelsign IsNotSaidc2m1_throughmotel IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectFar100 ChanceToFire20Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_motelsignGambler
		    ApplyContext "Saidc2m1_motelsign:1:0,Talk:1:1.428"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc2m1_motelsignCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_motelsign IsNotSaidc2m1_motelsign IsNotSaidc2m1_throughmotel IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectFar100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc2m1_motelsign:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_parkCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_park IsNotSaidc2m1_park IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_parkGambler
		    ApplyContext "Saidc2m1_park:1:0,Talk:1:2.050"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_poolCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_pool IsNotSaidc2m1_pool IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_poolGambler
		    ApplyContext "Saidc2m1_pool:1:0,Talk:1:3.037"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_searchlightsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_searchlights IsNotSaidc2m1_searchlights IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectFar100 ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 1
		    Response PlayerRemarkc2m1_searchlightsGambler
		    ApplyContext "Saidc2m1_searchlights:1:0,Talk:1:2.216"
		    applycontexttoworld
		}
	},
	{
		Rule _c2m1_searchlights01Cliffe
		{
		    criteria Concept_c2m1_searchlights01 IsCliffe NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m1_searchlights01Gambler
		    ApplyContext "Talk:1:1.903"
		    applycontexttoworld
		}
	},
	{
		Rule _c2m1_searchlights02Cliffe
		{
		    criteria Concept_c2m1_searchlights02 IsCliffe NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m1_searchlights02Gambler
		    ApplyContext "Talk:1:1.111"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_throughhereCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_throughhere IsNotSaidc2m1_throughhere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_throughhereGambler
		    ApplyContext "Saidc2m1_throughhere:1:0,Talk:1:0.691"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_throughmotelCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_throughmotel IsNotSaidc2m1_throughmotel IsNotSaidc2m1_motelsign IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_throughmotelGambler
		    ApplyContext "Saidc2m1_throughmotel:1:0,Talk:1:2.201"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_throughwindowCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_throughwindow IsNotSaidc2m1_throughwindow IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_throughwindowGambler
		    ApplyContext "Saidc2m1_throughwindow:1:0,Talk:1:1.021"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_uphillCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_uphill IsNotSaidc2m1_uphill IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_uphillGambler
		    ApplyContext "Saidc2m1_uphill:1:0,Talk:1:1.859"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m1_upstairsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m1_upstairs IsNotSaidc2m1_upstairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_upstairsGambler
		    ApplyContext "Saidc2m1_upstairs:1:0,Talk:1:1.220"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m2_carouselCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_carousel IsNotSaidc2m2_carousel IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 ChanceToFire60Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_carouselGambler
		    ApplyContext "Saidc2m2_carousel:1:0,Talk:1:4.850"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc2m2_carouselCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_carousel IsNotSaidc2m2_carousel IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc2m2_carousel:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m2_carouselbuttonCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_carouselbutton IsNotSaidc2m2_carouselbutton IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_carouselbuttonGambler
		    ApplyContext "Saidc2m2_carouselbutton:1:0,Talk:1:2.416"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m2_entrancesignCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_entrancesign IsNotSaidc2m2_entrancesign IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_entrancesignGambler
		    ApplyContext "Saidc2m2_entrancesign:1:0,Talk:1:3.821"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m2_lilpeanutCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_lilpeanut IsNotSaidc2m2_lilpeanut IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_lilpeanutGambler
		    ApplyContext "Saidc2m2_lilpeanut:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m2_ladderCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_ladder IsNotSaidc2m2_ladder IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_ladderGambler
		    ApplyContext "Saidc2m2_ladder:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m2_backalleyCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_backalley IsNotSaidc2m2_backalley IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_backalleyGambler
		    ApplyContext "Saidc2m2_backalley:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_LikeTatersCliffe
		{
		    criteria Concept_C2M2_LikeTaters IsCliffe IsTalk IsTalkCliffe NotInCombat IsMechanicAlive IsMechanicNear400 IsWorldTalkCliffe ChanceToFire40Percent
		    Response _C2M2_LikeTatersGambler
		    ApplyContext "TalkCliffe:1:2.427"
		}
	},
	{
		Rule PlayerRemarkc2m2_thistall2Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_thistall IsNotSaidc2m2_thistall IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 IsMechanicAlive IsMechanicNear400 ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm IsNotSpeakingWeight0
		    // 	forceweight 1
		    Response PlayerRemarkc2m2_thistall2Gambler
		    ApplyContext "Saidc2m2_thistall:1:0,Talk:1:3.942"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_ThisTall02Cliffe
		{
		    criteria Concept_C2M2_ThisTall02 IsCliffe NotInCombat IsSubjectDistNear500 AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_ThisTall02Gambler
		    ApplyContext "Talk:1:1.5"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m2_topofslideCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m2_topofslide IsNotSaidc2m2_topofslide IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m2_topofslideGambler
		    ApplyContext "Saidc2m2_topofslide:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_aroundblockCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_aroundblock IsNotSaidc2m3_aroundblock IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 TimeSinceGroupInCombat04 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_aroundblockGambler
		    ApplyContext "Saidc2m3_aroundblock:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_cementriverCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_cementriver IsNotSaidc2m3_cementriver IsNotCoughing NotInCombat IsTalk IsSubjectNear200 ChanceToFire80Percent IsMechanicAlive IsMechanicNear300 TimeSinceGroupInCombat04 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_cementriverGambler
		    ApplyContext "Saidc2m3_cementriver:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc2m3_cementriverCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_cementriver IsNotSaidc2m3_cementriver IsNotCoughing NotInCombat IsTalk IsSubjectNear200 IsMechanicAlive IsMechanicNear300 TimeSinceGroupInCombat04 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc2m3_cementriver:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_coasteroffCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_coasteroff IsNotSaidc2m3_coasteroff IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_coasteroffGambler
		    ApplyContext "Saidc2m3_coasteroff:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule _c2m3_coollight02Cliffe
		{
		    criteria Concept_c2m3_coollight02 IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m3_coollight02Gambler
		}
	},
	{
		Rule PlayerRemarkc2m3_screamingoakCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_screamingoak IsNotSaidc2m3_screamingoak IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_screamingoakGambler
		    ApplyContext "Saidc2m3_screamingoak:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_freshairCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_freshair IsNotSaidc2m3_freshair IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 TimeSinceGroupInCombat02 ChanceToFire90Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_freshairGambler
		    ApplyContext "Saidc2m3_freshair:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc2m3_freshairCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_freshair IsNotSaidc2m3_freshair IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc2m3_freshair:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_holeCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_hole IsNotSaidc2m3_hole IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_holeGambler
		    ApplyContext "Saidc2m3_hole:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_longesttunnelCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_longesttunnel IsNotSaidc2m3_longesttunnel IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 TimeSinceGroupInCombat04 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_longesttunnelGambler
		    ApplyContext "Saidc2m3_longesttunnel:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc2m3_longesttunnelCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_longesttunnel IsNotSaidc2m3_longesttunnel IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 TimeSinceGroupInCombat04 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc2m3_longesttunnel:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_overfenceCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_overfence IsNotSaidc2m3_overfence IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_overfenceGambler
		    ApplyContext "Saidc2m3_overfence:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_rubbleCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_rubble IsNotSaidc2m3_rubble IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTeamNearCoaster _auto_NotAlarm IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_rubbleGambler
		    ApplyContext "Saidc2m3_rubble:1:0,Talk:1:3.307,_auto_TimerLockA:1:12,_auto_CoasterExpo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_swanroomCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_swanroom IsNotSaidc2m3_swanroom IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_swanroomGambler
		    ApplyContext "Saidc2m3_swanroom:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_tracks01Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_tracks01 IsNotSaidc2m3_tracks01 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Gambler
		    ApplyContext "Saidc2m3_tracks01:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_tracks02Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_tracks02 IsNotSaidc2m3_tracks02 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Gambler
		    ApplyContext "Saidc2m3_tracks02:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_tracks03Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_tracks03 IsNotSaidc2m3_tracks03 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Gambler
		    ApplyContext "Saidc2m3_tracks03:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_tracks04Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_tracks04 IsNotSaidc2m3_tracks04 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Gambler
		    ApplyContext "Saidc2m3_tracks04:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_tracks05Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_tracks05 IsNotSaidc2m3_tracks05 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Gambler
		    ApplyContext "Saidc2m3_tracks05:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_tracks06Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_tracks06 IsNotSaidc2m3_tracks06 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Gambler
		    ApplyContext "Saidc2m3_tracks06:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_tracks07Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_tracks07 IsNotSaidc2m3_tracks07 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Gambler
		    ApplyContext "Saidc2m3_tracks07:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_tracks08Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_tracks08 IsNotSaidc2m3_tracks08 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_tracks01Gambler
		    ApplyContext "Saidc2m3_tracks08:1:0,_auto_TimerLockA:1:8"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_ventCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_vent IsNotSaidc2m3_vent IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_ventGambler
		    ApplyContext "Saidc2m3_vent:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m3_wayblockedCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m3_wayblocked IsNotSaidc2m3_wayblocked IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_wayblockedGambler
		    ApplyContext "Saidc2m3_wayblocked:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m4_barnentryCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_barnentry IsNotSaidc2m4_barnentry IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_barnentryGambler
		    ApplyContext "Saidc2m4_barnentry:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m4_bumpercarsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_bumpercars IsNotSaidc2m4_bumpercars IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_bumpercarsGambler
		    ApplyContext "Saidc2m4_bumpercars:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m4_onroofCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_onroof IsNotSaidc2m4_onroof IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_onroofGambler
		    ApplyContext "Saidc2m4_onroof:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m4_pendoorCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_pendoor IsNotSaidc2m4_pendoor IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_pendoorGambler
		    ApplyContext "Saidc2m4_pendoor:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m4_moustachioCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_moustachio IsNotSaidc2m4_moustachio IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_moustachioGambler
		    ApplyContext "Saidc2m4_moustachio:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m4_pensCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_pens IsNotSaidc2m4_pens IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_pensGambler
		    ApplyContext "Saidc2m4_pens:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M4_RibsCliffe
		{
		    criteria Concept_C2M4_Ribs IsCliffe IsTalk NotInCombat IssuerClose IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M4_RibsGambler
		}
	},
	{
		Rule PlayerRemarkc2m4_stadiumCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_stadium IsNotSaidc2m4_stadium IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_stadiumGambler
		    ApplyContext "Saidc2m4_stadium:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m4_upbarnCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_upbarn IsNotSaidc2m4_upbarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_upbarnGambler
		    ApplyContext "Saidc2m4_upbarn:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m4_evacCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m4_evac IsNotSaidc2m4_evac IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m4_evacGambler
		    ApplyContext "Saidc2m4_evac:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m5_button2Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m5_button2 IsNotSaidc2m5_button2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear75 TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsButton1 _auto_NotButton2 IsNotSpeakingWeight0
		    Response PlayerRemarkc2m5_button2Gambler
		    ApplyContext "Saidc2m5_button2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc2m5_button2CoachCliffe
		{
		    criteria ConceptRemark IsCliffe Isc2m5_button2 IsNotSaidc2m5_button2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear75 IsCoachAlive IsCoachNear400 ChanceToFire10Percent TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsButton1 _auto_NotButton2 IsNotSpeakingWeight0
		    Response PlayerRemarkc2m5_button2CoachGambler
		    ApplyContext "Saidc2m5_button2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M2PlaneCrashCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M2PlaneCrash IsNotSaidC3M2PlaneCrash IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear600 IsNotSaidC3M2OpenDoor IsWorldTalkCliffe ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    // 	forceweight 1
		    Response PlayerRemarkC3M2PlaneCrashGambler
		    ApplyContext "SaidC3M2PlaneCrash:1:0,Talk:1:1.538"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M2PlaneDoorNagCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M2PlaneDoorNag IsNotSaidC3M2PlaneDoorNag IsNotCoughing IsTalk IsTalkCliffe IsSubjectNear500 IsNotSaidC3M2OpenDoor IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2PlaneDoorNagGambler
		    ApplyContext "SaidC3M2PlaneDoorNag:1:0,_auto_TimerLockA:1:15,Talk:1:3.340"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M2PlaneDoorNagaCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsNotCoughing IsTalk IsTalkCliffe IsSaidC3M2PlaneDoorNag ismapc3m2_swamp IsNotSaidC3M2OpenDoor IsNotZombiePresentTank AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotTimerLockA _auto_NotTimerLockCliffe
		    Response PlayerRemarkC3M2PlaneDoorNagaGambler
		    ApplyContext "_auto_TimerLockA:1:20,_auto_TimerLockCliffe:1:40,Talk:1:1.377"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M2RoadCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M2Road IsNotSaidC3M2Road IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2RoadGambler
		    ApplyContext "SaidC3M2Road:1:0,Talk:1:1.106"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M2SickOfSwampCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M2SickOfSwamp IsNotSaidC3M2SickOfSwamp IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2SickOfSwampGambler
		    ApplyContext "SaidC3M2SickOfSwamp:1:0,Talk:1:2.246"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M2Village1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M2Village1 IsNotSaidC3M2Village1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear800 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M2Village1Gambler
		    ApplyContext "SaidC3M2Village1:1:0,Talk:1:2.116"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3BodiesCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3Bodies IsNotSaidC3M3Bodies IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3BodiesGambler
		    ApplyContext "SaidC3M3Bodies:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3LowerGateCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3LowerGate IsNotSaidC3M3BridgeButton IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3LowerGateGambler
		    ApplyContext "SaidC3M3LowerGate:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3MoreShacksCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3MoreShacks IsNotSaidC3M3MoreShacks IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 ChanceToFire100Percent IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3MoreShacksGambler
		    ApplyContext "SaidC3M3MoreShacks:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkC3M3MoreShacksCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3MoreShacks IsNotSaidC3M3MoreShacks IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "SaidC3M3MoreShacks:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3ThisWayCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3ThisWay IsNotSaidC3M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3ThisWayGambler
		    ApplyContext "SaidC3M3ThisWay:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkC3M3ThisWayCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3ThisWay IsNotSaidC3M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "SaidC3M3ThisWay:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3ThroughHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3ThroughHere IsNotSaidC3M3ThroughHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3ThroughHereGambler
		    ApplyContext "SaidC3M3ThroughHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3ThroughThisHouseCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3ThroughThisHouse IsNotSaidC3M3ThroughThisHouse IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3ThroughThisHouseGambler
		    ApplyContext "SaidC3M3ThroughThisHouse:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3UnsanitaryCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3Unsanitary IsNotSaidC3M3Unsanitary IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3UnsanitaryGambler
		    ApplyContext "SaidC3M3Unsanitary:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3UpHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3UpHere IsNotSaidC3M3UpHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3UpHereGambler
		    ApplyContext "SaidC3M3UpHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc3m4downroadCliffe
		{
		    criteria ConceptRemark IsCliffe Isc3m4downroad IsNotSaidc3m4downroad IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc3m4downroadGambler
		    ApplyContext "Saidc3m4downroad:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc3m4scaffoldCliffe
		{
		    criteria ConceptRemark IsCliffe Isc3m4scaffold IsNotSaidc3m4scaffold IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc3m4scaffoldGambler
		    ApplyContext "Saidc3m4scaffold:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_boatCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_boat IsNotSaidc4m1_boat IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_boatGambler
		    ApplyContext "Saidc4m1_boat:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_carcrashCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_carcrash IsNotSaidc4m1_carcrash IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear500 IsWorldTalkCliffe ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_carcrashGambler
		    ApplyContext "Saidc4m1_carcrash:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkc4m1_carcrashCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_carcrash IsNotSaidc4m1_carcrash IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidc4m1_carcrash:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_garagesaleCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_garagesale IsNotSaidc4m1_garagesale IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear400 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_garagesaleGambler
		    ApplyContext "Saidc4m1_garagesale:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_nogasCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_nogas IsNotSaidc4m1_nogas IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_nogasGambler
		    ApplyContext "Saidc4m1_nogas:1:0,Talk:1:2.493,_auto_NoGasGate:1:25"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_nogasMilkRunCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_nogas IsNotSaidc4m1_nogas IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe Isc4m1MilkRun AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_nogasMilkRunGambler
		    ApplyContext "Saidc4m1_nogas:1:0,Talk:1:2.493,_auto_NoGasGate:1:25"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_nogasGunBagCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_nogas IsNotSaidc4m1_nogas IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe Isc4m1GunBag AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_nogasGunBagGambler
		    ApplyContext "Saidc4m1_nogas:1:0,Talk:1:2.493,_auto_NoGasGate:1:25"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_nogasToldCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_nogas IsNotSaidc4m1_nogas IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe Isc4m1IToldYouSo AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_nogasToldGambler
		    ApplyContext "Saidc4m1_nogas:1:0,Talk:1:1.531,_auto_NoGasGate:1:25"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_playgroundfarCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_playground IsNotSaidc4m1_playground IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear1000 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_playgroundfarGambler
		    ApplyContext "Saidc4m1_playground:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_playgroundnearCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_playground IsNotSaidc4m1_playground IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_playgroundnearGambler
		    ApplyContext "Saidc4m1_playground:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_throughhereACliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_throughhereA IsNotSaidc4m1_throughhereA IsNotCoughing IsTalk IsTalkCliffe IsSubjectNear400 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_throughhereAGambler
		    ApplyContext "Saidc4m1_throughhereA:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_gasinsidesignCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_gasinsidesign IsNotSaidc4m2_gasinsidesign IsNotSaidSafeSpotAhead IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear350 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_gasinsidesignGambler
		    ApplyContext "Saidc4m2_gasinsidesign:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_millentranceCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_millentrance IsNotSaidc4m2_millentrance IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_millentranceGambler
		    ApplyContext "Saidc4m2_millentrance:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_millentranceexitCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_millentranceexit IsNotSaidc4m2_millentranceexit IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_millentranceexitGambler
		    ApplyContext "Saidc4m2_millentranceexit:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_seegasstationCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_seegasstation IsNotSaidc4m2_seegasstation IsNotSaidActivatedC4M2Elevator IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_seegasstationGambler
		    ApplyContext "Talk:1:3,Saidc4m2_seegasstation:1:0,_auto_InsideMill:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_streetblockedCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_streetblocked IsNotSaidc4m2_streetblocked IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_streetblockedGambler
		    ApplyContext "Saidc4m2_streetblocked:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_uprampCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_upramp IsNotSaidc4m2_upramp IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_uprampGambler
		    ApplyContext "Saidc4m2_upramp:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_upthestairsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_upthestairs IsNotSaidc4m2_upthestairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_upthestairsGambler
		    ApplyContext "Saidc4m2_upthestairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_useelevatorCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_useelevator IsNotSaidc4m2_useelevator IsNotSaidActivatedC4M2Elevator IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsSaidc4m2_seegasstation AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_useelevatorGambler
		    ApplyContext "Saidc4m2_useelevator:1:0,_auto_InsideMill:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_waterpoolCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_waterpool IsNotSaidc4m2_waterpool IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_waterpoolGambler
		    ApplyContext "Saidc4m2_waterpool:1:0,c4m2_PastPuddle:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m2_weatherCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m2_weather IsNotSaidc4m2_weather IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_weatherGambler
		    ApplyContext "Saidc4m2_weather:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_caneCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_cane IsNotSaidc4m3_cane IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_caneGambler
		    ApplyContext "Saidc4m3_cane:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_crosshereCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_crosshere IsNotSaidc4m3_crosshere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_crosshereGambler
		    ApplyContext "Saidc4m3_crosshere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_downhereCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_downhere IsNotSaidc4m3_downhere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_downhereGambler
		    ApplyContext "Saidc4m3_downhere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_downstairsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_downstairs IsNotSaidc4m3_downstairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_downstairsGambler
		    ApplyContext "Saidc4m3_downstairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_ducatelsignCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_ducatelsign IsNotSaidc4m3_ducatelsign IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_ducatelsignGambler
		    ApplyContext "Saidc4m3_ducatelsign:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_elevatorCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_elevator IsNotSaidc4m3_elevator IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_elevatorGambler
		    ApplyContext "Saidc4m3_elevator:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_floodedCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_flooded IsNotSaidc4m3_flooded IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_floodedGambler
		    ApplyContext "Saidc4m3_flooded:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_overtankCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_overtank IsNotSaidc4m3_overtank IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_overtankGambler
		    ApplyContext "Saidc4m3_overtank:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_rainCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_rain IsNotSaidc4m3_rain IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_rainGambler
		    ApplyContext "Saidc4m3_rain:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_thiswayCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_thisway IsNotSaidc4m3_thisway IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m2_millentranceexitGambler
		    ApplyContext "Saidc4m3_thisway:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m3_uppipesCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m3_uppipes IsNotSaidc4m3_uppipes IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_uppipesGambler
		    ApplyContext "Saidc4m3_uppipes:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m4_floodedCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m4_flooded NotInCombat IsInStartArea IsNotAlone IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_floodedGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m4_garagesaleCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m4_garagesale IsNotSaidc4m4_garagesale IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_garagesaleGambler
		    ApplyContext "Saidc4m4_garagesale:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m4_garagesale2Cliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m4_garagesale2 IsNotSaidc4m4_garagesale IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_garagesaleGambler
		    ApplyContext "Saidc4m4_garagesale:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m4_playgroundCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m4_playground IsNotSaidc4m4_playground IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival _auto_NotLockA IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_playgroundGambler
		    ApplyContext "Saidc4m4_playground:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m4_porchlightCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m4_porchlight IsNotSaidc4m4_porchlight IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_porchlightGambler
		    ApplyContext "Saidc4m4_porchlight:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m4_truckwreckCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m4_truckwreck IsNotSaidc4m4_truckwreck IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival _auto_NotLockA IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_truckwreckGambler
		    ApplyContext "Saidc4m4_truckwreck:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m4_useroofsCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m4_useroofs IsNotSaidc4m4_useroofs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m4_useroofsGambler
		    ApplyContext "Saidc4m4_useroofs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkpathc2m1_abandonedcarsCliffe
		{
		    criteria ConceptRemark IsCliffe Ispathc2m1_abandonedcars IsNotSaidpathc2m1_abandonedcars IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 ChanceToFire60Percent IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkpathc2m1_abandonedcarsGambler
		    ApplyContext "Saidpathc2m1_abandonedcars:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkpathc2m1_abandonedcarsCliffe
		{
		    criteria ConceptRemark IsCliffe Ispathc2m1_abandonedcars IsNotSaidpathc2m1_abandonedcars IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "Saidpathc2m1_abandonedcars:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkpathc2m1_billboardCliffe
		{
		    criteria ConceptRemark IsCliffe Ispathc2m1_billboard IsNotSaidpathc2m1_billboard IsNotCoughing NotInCombat IsTalkCliffe IsSubjectNear1000 IsWorldTalkCliffe IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkpathc2m1_billboardGambler
		    ApplyContext "Saidpathc2m1_billboard:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkremark_caralarmCliffe
		{
		    criteria ConceptRemark IsCliffe Isremark_caralarm IsNotSaidremark_caralarm IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear700 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkremark_caralarmGambler
		    ApplyContext "Saidremark_caralarm:1:300"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkremark_MidnightRidersBusCliffe
		{
		    criteria ConceptRemark IsCliffe Isremark_MidnightRidersBus IsNotSaidremark_MidnightRidersBus IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear1500 IsNotSpeakingWeight0
		    Response PlayerRemarkremark_MidnightRidersBusGambler
		    ApplyContext "Saidremark_MidnightRidersBus:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M1CedaMapsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M1CedaMaps IsNotSaidWorldC1M1CedaMaps IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1CedaMapsGambler
		    ApplyContext "SaidWorldC1M1CedaMaps:1:0,Talk:1:4.334"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M1KnowBoomerCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M1KnowBoomer IsNotSaidWorldC1M1KnowBoomer IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1KnowBoomerGambler
		    ApplyContext "SaidWorldC1M1KnowBoomer:1:0,Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M1DownHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M1DownHere IsNotSaidWorldC1M1DownHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1DownHereGambler
		    ApplyContext "SaidWorldC1M1DownHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M1ElevatorBrokenCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M1ElevatorBroken IsNotSaidWorldC1M1ElevatorBroken IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1ElevatorBrokenGambler
		    ApplyContext "SaidWorldC1M1ElevatorBroken:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C1M1CrumbsCliffe
		{
		    criteria ConceptC1M1Crumbs IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M1CrumbsGambler
		}
	},
	{
		Rule PlayerRemarkWorldC1M1FireRoomCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M1FireRoom IsNotSaidWorldC1M1FireRoom IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1FireRoomGambler
		    ApplyContext "SaidWorldC1M1FireRoom:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M1FireSpreadingCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M1FireSpreading IsNotSaidWorldC1M1FireSpreading IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1FireSpreadingGambler
		    ApplyContext "SaidWorldC1M1FireSpreading:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M1FirstCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M1First IsNotSaidWorldC1M1First IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1FirstGambler
		    ApplyContext "SaidWorldC1M1First:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M1LedgeCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M1Ledge IsNotSaidWorldC1M1Ledge IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M1LedgeGambler
		    ApplyContext "SaidWorldC1M1Ledge:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M2CloseCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2Close IsNotSaidWorldC1M2Close IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2CloseGambler
		    ApplyContext "SaidWorldC1M2Close:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M2DownStairsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2DownStairs IsNotSaidWorldC1M2DownStairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 TimeSinceGroupInCombat05 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2DownStairsGambler
		    ApplyContext "SaidWorldC1M2DownStairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M2AbandonedCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2Abandoned IsNotSaidWorldC1M2Abandoned IsNotCoughing NotInCombat IntensityZero IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2AbandonedGambler
		    ApplyContext "SaidWorldC1M2Abandoned:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C1M2AbandonedCliffe
		{
		    criteria Concept_C1M2Abandoned IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M2AbandonedGambler
		}
	},
	{
		Rule PlayerRemarkWorldC1M2DumpsterCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2Dumpster IsNotSaidWorldC1M2Dumpster IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2DumpsterGambler
		    ApplyContext "SaidWorldC1M2Dumpster:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M2InHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2InHere IsNotSaidWorldC1M2InHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2InHereGambler
		    ApplyContext "SaidWorldC1M2InHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M2JumpTruckCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2JumpTruck IsNotSaidWorldC1M2JumpTruck IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2JumpTruckGambler
		    ApplyContext "SaidWorldC1M2JumpTruck:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M2MadeItCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2MadeIt IsNotSaidWorldC1M2MadeIt IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear900 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2MadeItGambler
		    ApplyContext "SaidWorldC1M2MadeIt:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC1M2UpStairsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC1M2UpStairs IsNotSaidWorldC1M2UpStairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC1M2UpStairsGambler
		    ApplyContext "SaidWorldC1M2UpStairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC3M1FeedGatorCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC3M1FeedGator IsNotSaidWorldC3M1FeedGator IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear400 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1FeedGatorGambler
		    ApplyContext "SaidWorldC3M1FeedGator:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC3M1FerryNagCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC3M1FerryNag IsNotSaidWorldC3M1FerryNag IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear600 IsNotSaidC3M1CallFerry2 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC3M1FerryNagGambler
		    ApplyContext "SaidWorldC3M1FerryNag:1:0,_auto_TimerLockA:1:15"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC502AlarmButtonCliffe
		{
		    criteria ConceptWorldC502AlarmButton IsCliffe IsNotCoughing IsNotScavenge
		    Response PlayerRemarkWorldC502AlarmButtonGambler
		}
	},
	{
		Rule PlayerRemarkWorldC502AlarmStoppedCliffe
		{
		    criteria ConceptWorldC502AlarmStopped IsCliffe IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerRemarkWorldC502AlarmStoppedGambler
		}
	},
	{
		Rule PlayerRemarkWorldC502AlleyCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC502Alley IsNotSaidWorldC502Alley IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe IsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC502AlleyGambler
		    ApplyContext "SaidWorldC52Alley:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC502BusStory2Cliffe
		{
		    criteria ConceptWorldC502BusStory2 IsCliffe IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerRemarkWorldC502BusStory2Gambler
		}
	},
	{
		Rule PlayerRemarkWorldC502NotZombies3Cliffe
		{
		    criteria ConceptWorldC502NotZombies3 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerRemarkWorldC502NotZombies3Gambler
		}
	},
	{
		Rule PlayerRemarkWorldC502SmellCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC502Smell IsNotSaidWorldC502Smell IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear600 IsNotSaidSmell ChanceToFire50Percent IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC502SmellGambler
		    ApplyContext "SaidWorldC502Smell:1:0,SaidSmell:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkWorldC502SmellCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC502Smell IsNotSaidWorldC502Smell IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear600 IsNotSaidSmell IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "SaidWorldC502Smell:1:0,SaidSmell:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC502SmellBathCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC502SmellBath IsNotSaidWorldC502SmellBath IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear600 IsNotSaidSmell ChanceToFire50Percent IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC502SmellBathGambler
		    ApplyContext "SaidWorldC502SmellBath:1:0,SaidSmell:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule AUTOBLANK_PlayerRemarkWorldC502SmellBathCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC502SmellBath IsNotSaidWorldC502SmellBath IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear600 IsNotSaidSmell IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response _PlayerInfoRemarkableBlankGambler
		    ApplyContext "SaidWorldC502SmellBath:1:0,SaidSmell:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC502SmellBath3Cliffe
		{
		    criteria ConceptWorldC502SmellBath3 IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsSubjectNear300 IsWorldTalkCliffe
		    Response PlayerRemarkWorldC502SmellBath3Gambler
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_AcrossHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_AcrossHere IsNotSaidWorldC6M1_AcrossHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AcrossHereGambler
		    ApplyContext "SaidWorldC6M1_AcrossHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_AlleyBelowCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_AlleyBelow IsNotSaidWorldC6M1_AlleyBelow IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AlleyBelowGambler
		    ApplyContext "SaidWorldC6M1_AlleyBelow:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_AlleyIntoBuildingCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_AlleyIntoBuilding IsNotSaidWorldC6M1_AlleyIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AlleyIntoBuildingGambler
		    ApplyContext "SaidWorldC6M1_AlleyIntoBuilding:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_InAptsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_InApts IsNotSaidWorldC6M1_InApts IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_InAptsGambler
		    ApplyContext "SaidWorldC6M1_InApts:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_IntoTheStoreCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_IntoTheStore IsNotSaidWorldC6M1_IntoTheStore IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntoTheStoreGambler
		    ApplyContext "SaidWorldC6M1_IntoTheStore:1:0,JustSaidWorldC6M1_IntoTheStore:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_SafeRoomAlleyCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_SafeRoomAlley IsNotSaidWorldC6M1_SafeRoomAlley IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_SafeRoomAlleyGambler
		    ApplyContext "SaidWorldC6M1_SafeRoomAlley:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_ThroughBarCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_ThroughBar IsNotSaidWorldC6M1_ThroughBar IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_ThroughBarGambler
		    ApplyContext "SaidWorldC6M1_ThroughBar:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_UpHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_UpHere IsNotSaidWorldC6M1_UpHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpHereGambler
		    ApplyContext "SaidWorldC6M1_UpHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_UpTheStairsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_UpTheStairs IsNotSaidWorldC6M1_UpTheStairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairsGambler
		    ApplyContext "SaidWorldC6M1_UpTheStairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_UpTheStairs2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_UpTheStairs2 IsNotSaidWorldC6M1_UpTheStairs2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairs2Gambler
		    ApplyContext "SaidWorldC6M1_UpTheStairs2:1:0,Talk:1:1.596"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_WeddingWarnCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsWitchPresent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarnGambler
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_WeddingWarnAngelCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsMechanicAlive IsMechanicNear400 IsWitchPresent IsZoeyIntroActor IsEllisInLoveC6M1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarnAngelGambler
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_AcrossPlankCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_AcrossPlank IsNotSaidWorldC6M2_AcrossPlank IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear250 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AcrossPlankGambler
		    ApplyContext "SaidWorldC6M2_AcrossPlank:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_AfterGate1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_AfterGate1 IsNotSaidWorldC6M2_AfterGate1 IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGate1Gambler
		    ApplyContext "SaidWorldC6M2_AfterGate1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_AfterGate2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_AfterGate2 IsNotSaidWorldC6M2_AfterGate2 IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGate2Gambler
		    ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_DownHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_DownHere IsNotSaidWorldC6M2_DownHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_DownHereGambler
		    ApplyContext "SaidWorldC6M2_DownHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_DownIntoBuildingCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_DownIntoBuilding IsNotSaidWorldC6M2_DownIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_DownIntoBuildingGambler
		    ApplyContext "SaidWorldC6M2_DownIntoBuilding:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_FinalLadderCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_FinalLadder IsNotSaidWorldC6M2_FinalLadder IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalLadderGambler
		    ApplyContext "SaidWorldC6M2_FinalLadder:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_FinalWaterCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_FinalWater IsNotSaidWorldC6M2_FinalWater IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterGambler
		    ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_FinalWaterGoGoCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_FinalWaterGoGo IsNotSaidWorldC6M2_FinalWaterGoGo IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterGoGoGambler
		    ApplyContext "SaidWorldC6M2_FinalWaterGoGo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_InJazzClubCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_InJazzClub IsNotSaidWorldC6M2_InJazzClub IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InJazzClubGambler
		    ApplyContext "SaidWorldC6M2_InJazzClub:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_InSewer1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_InSewer1 IsNotSaidWorldC6M2_InSewer1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewer1Gambler
		    ApplyContext "SaidWorldC6M2_InSewer1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_InSewer2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_InSewer2 IsNotSaidWorldC6M2_InSewer2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsSaidWorldC6M2_InSewer1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewer2Gambler
		    ApplyContext "SaidWorldC6M2_InSewer2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_InSewerLadder1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_InSewerLadder1 IsNotSaidWorldC6M2_InSewerLadder1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewerLadder1Gambler
		    ApplyContext "SaidWorldC6M2_InSewerLadder1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_IntoConstructionCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_IntoConstruction IsNotSaidWorldC6M2_IntoConstruction IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_IntoConstructionGambler
		    ApplyContext "SaidWorldC6M2_IntoConstruction:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_IntoPoolHallCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_IntoPoolHall IsNotSaidWorldC6M2_IntoPoolHall IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_IntoPoolHallGambler
		    ApplyContext "SaidWorldC6M2_IntoPoolHall:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_JukeBoxCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_JukeBox IsNotSaidWorldC6M2_JukeBox IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_JukeBoxGambler
		    ApplyContext "SaidWorldC6M2_JukeBox:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_JumpDownCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_JumpDown IsNotSaidWorldC6M2_JumpDown IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_JumpDownGambler
		    ApplyContext "SaidWorldC6M2_JumpDown:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M2FallingCliffe
		{
		    criteria ConceptC2M1Falling IsCliffe isC6m2_bedlam AutoIsNotScavenge AutoIsNotSurvival
		    Response C6M2FallingGambler
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OnTourWalk1 IsNotSaidWorldC6M2_OnTourWalk1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk1Gambler
		    ApplyContext "SaidWorldC6M2_OnTourWalk1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OnTourWalk2 IsNotSaidWorldC6M2_OnTourWalk2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk2Gambler
		    ApplyContext "SaidWorldC6M2_OnTourWalk2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk3Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OnTourWalk3 IsNotSaidWorldC6M2_OnTourWalk3 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk3Gambler
		    ApplyContext "SaidWorldC6M2_OnTourWalk3:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OpenGate1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OpenGate1 IsNotSaidWorldC6M2_OpenGate1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSaidOpenedGate1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate1Gambler
		    ApplyContext "SaidWorldC6M2_OpenGate1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OpenGate2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OpenGate2 IsNotSaidWorldC6M2_OpenGate2 IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSaidOpenedGate2 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate2Gambler
		    ApplyContext "SaidWorldC6M2_OpenGate2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OpenGate2EllisCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OpenGate2 IsNotSaidWorldC6M2_OpenGate2 IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsSaidOpenedGate1BlameEllis IsNotSaidOpenedGate2 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate2EllisGambler
		    ApplyContext "SaidWorldC6M2_OpenGate2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_Phase2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Phase2 IsNotSaidWorldC6M2_Phase2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2Gambler
		    ApplyContext "SaidWorldC6M2_Phase2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_Phase2DownCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2DownGambler
		    ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_Phase2DownIntenseCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IntensityOver75 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2DownIntenseGambler
		    ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_PostGate1xCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_PostGate1 IsNotSaidWorldC6M2_PostGate1 IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsSaidOpenedGate1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_PostGate1xGambler
		    ApplyContext "SaidWorldC6M2_PostGate1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_SuitcaseCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Suitcase IsNotSaidWorldC6M2_Suitcase IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_SuitcaseGambler
		    ApplyContext "SaidWorldC6M2_Suitcase:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_TattooCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Tattoo IsNotSaidWorldC6M2_Tattoo IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TattooGambler
		    ApplyContext "SaidWorldC6M2_Tattoo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_TattooZoeyCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Tattoo IsNotSaidWorldC6M2_Tattoo IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotMentionedZoeyC6M2 IsMechanicAlive IsMechanicNear400 IsZoeyIntroActor ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TattooZoeyGambler
		    ApplyContext "SaidWorldC6M2_Tattoo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_TourEntranceCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_TourEntrance IsNotSaidWorldC6M2_TourEntrance IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TourEntranceGambler
		    ApplyContext "SaidWorldC6M2_TourEntrance:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_UpCatWalkCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_UpCatWalk IsNotSaidWorldC6M2_UpCatWalk IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpCatWalkGambler
		    ApplyContext "SaidWorldC6M2_UpCatWalk:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_UpStairsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_UpStairs IsNotSaidWorldC6M2_UpStairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpStairsGambler
		    ApplyContext "SaidWorldC6M2_UpStairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_UpStairs2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_UpStairs2 IsNotSaidWorldC6M2_UpStairs2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpStairs2Gambler
		    ApplyContext "SaidWorldC6M2_UpStairs2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M3_BridgeRunCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M3_BridgeRun IsNotSaidWorldC6M3_BridgeRun IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_BridgeRunGambler
		    ApplyContext "SaidWorldC6M3_BridgeRun:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M3_ByBridgeCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival _auto_C6M3BridgeDown IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_ByBridgeGambler
		    ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M3_ByBridgeLossCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival _auto_C6M3BridgeDown IsNotSpeakingWeight0 IsEveryoneAlive _auto_SaidC6M3Bill _auto_CliffeSawC6M3Bill
		    Response PlayerRemarkWorldC6M3_ByBridgeLossGambler
		    ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M3_BillCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M3_Bill IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0 _auto_NotC6M3Bill
		    Response PlayerRemarkWorldC6M3_BillGambler
		    ApplyContext "_auto_CliffeC6M3Bill:1:0,_auto_C6M3Bill:1:0,SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},
	{
		Rule WorldC6M3LossZoeyCliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto Isc6m3_port SubjectIsTeenGirl IsTeenGirlNear400 IsWorldTalkCliffe _auto_SawC6M3Bill _auto_CliffeSawC6M3Bill
		    Response WorldC6M3LossGambler
		    ApplyContext "_auto_C6M3Bill:2:0,Talk:1:15"
		    applycontexttoworld
		}
	},
	{
		Rule WorldC6M3LossFrancisCliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto Isc6m3_port SubjectIsBiker IsBikerNear400 IsWorldTalkCliffe _auto_SawC6M3Bill _auto_CliffeSawC6M3Bill
		    Response WorldC6M3LossGambler
		    ApplyContext "_auto_C6M3Bill:2:0,Talk:1:15"
		    applycontexttoworld
		}
	},
	{
		Rule WorldC6M3Loss2Cliffe
		{
		    criteria Conceptc6m3_loss IsNotCoughing IsCliffe
		    Response WorldC6M3Loss2Gambler
		}
	},
	{
		Rule WorldC6M3Loss3Cliffe
		{
		    criteria Conceptc6M3_loss2 IsNotCoughing IsCliffe
		    Response WorldC6M3Loss3Gambler
		}
	},
	{
		Rule PlayerRemarkWorldFootLockerCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldFootLocker IsNotSaidWorldFootLocker IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkWorldFootLockerGambler
		    ApplyContext "SaidWorldFootLocker:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWorldSignHurricane2Cliffe
		{
		    criteria ConceptWorldSignHurricane2 IsNotCoughing IsCliffe IsTalk IsTalkCliffe IssuerClose IsWorldTalkCliffe
		    Response PlayerWorldSignHurricane2Gambler
		}
	},
	{
		Rule PlayerRemarkWorldSignRestricted2Cliffe
		{
		    criteria ConceptWorldSignRestrictedArea2 IsCliffe IsNotCoughing NotInCombat IsTalk IsTalkCliffe IssuerClose IsWorldTalkCliffe
		    Response PlayerRemarkWorldSignRestricted2Gambler
		    ApplyContext "Talk:1:1.993"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWorldSignC5AlarmWillSoundCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldSignC5AlarmWillSound IsNotSaidWorldSignC5AlarmWillSound IsNotCoughing IsTalk IsTalkCliffe IsSubjectNear200 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerWorldSignC5AlarmWillSoundGambler
		    ApplyContext "SaidWorldSignC5AlarmWillSound:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWorldSignC5AlarmWillSound3bCliffe
		{
		    criteria ConceptWorldSignC5AlarmWillSound3b IsCliffe IsNotCoughing NotInCombat _auto_NotAlarm
		    Response PlayerWorldSignC5AlarmWillSound3bGambler
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWorldSignC5AlarmWillSound3cCliffe
		{
		    criteria ConceptWorldSignC5AlarmWillSound3c IsCliffe IsNotCoughing NotInCombat _auto_NotAlarm
		    Response PlayerWorldSignC5AlarmWillSound3cGambler
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule RespondAffirmativeCliffe
		{
		    criteria ConceptRespondAffirmative IssuerMediumClose IsNotCoughing NotInCombat isCliffe IsTalkCliffe IsWorldTalkCliffe
		    Response RespondAffirmativeGambler
		}
	},
	{
		Rule PlayerFollowMeCliffe
		{
		    criteria ConceptPlayerFollowMe IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerFollowMeGambler
		}
	},
	{
		Rule PlayerHelpCliffe
		{
		    criteria ConceptPlayerHelp IsCliffe IsNotCoughing IsTalk IsNotIncapacitated IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerHelpGambler
		}
	},
	{
		Rule PlayerHurryUpCliffe
		{
		    criteria ConceptPlayerHurryUp IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerHurryUpGambler
		}
	},
	{
		Rule PlayerHurryUpC4M2Cliffe
		{
		    criteria ConceptPlayerHurryUp IsCliffe IsNotInSafeSpot IsNotInCheckpoint IsTalk IsTalkCliffe ismap_c4m2_sugarmill_a IsNotSaidSafeSpotAhead IsNotZombiePresentTank IsWorldTalkCliffe _auto_IsCliffeInWitchville
		    Response PlayerHurryUpC4M2Gambler
		}
	},
	{
		Rule PlayerKillThatLightCliffe
		{
		    criteria ConceptPlayerKillThatLight IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerKillThatLightGambler
		}
	},
	{
		Rule PlayerLeadOnCliffe
		{
		    criteria ConceptPlayerLeadOn IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerLeadOnGambler
		}
	},
	{
		Rule PlayerMoveOnCliffe
		{
		    criteria ConceptPlayerMoveOn IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerMoveOnGambler
		}
	},
	{
		Rule PlayerStayTogetherCliffe
		{
		    criteria ConceptPlayerStayTogether IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerStayTogetherGambler
		}
	},
	{
		Rule PlayerWatchOutBehindCliffe
		{
		    criteria ConceptPlayerWatchOutBehind IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerWatchOutBehindGambler
		}
	},
	{
		Rule PlayerAskReadyCliffe
		{
		    criteria ConceptPlayerAskReady IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerAskReadyGambler
		}
	},
	{
		Rule PlayerAskReadyC1Cliffe
		{
		    criteria ConceptPlayerAskReady IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c1m1_hotel NoKnowNames
		    Response PlayerAskReadyC1Gambler
		}
	},
	{
		Rule PlayerImWithYouCliffe
		{
		    criteria ConceptPlayerImWithYou IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerImWithYouGambler
		}
	},
	{
		Rule PlayerLaughCliffe
		{
		    criteria ConceptPlayerLaugh IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotVersus
		    Response PlayerLaughGambler
		}
	},
	{
		Rule PlayerLostCallCliffe
		{
		    criteria ConceptPlayerLostCall IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerLostCallGambler
		}
	},
	{
		Rule PlayerNiceJobResponseCliffe
		{
		    criteria ConceptPlayerNiceJob IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerNiceJobResponseGambler
		}
	},
	{
		Rule PlayerNoCliffe
		{
		    criteria ConceptPlayerNo IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerNoGambler
		}
	},
	{
		Rule PlayerNoFemaleCliffe
		{
		    criteria ConceptPlayerNo IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsProducer IsSubjectDistNear200 ChanceToFire30Percent IsWorldTalkCliffe
		    Response PlayerNoFemaleGambler
		}
	},
	{
		Rule PlayerNoZoeyCliffe
		{
		    criteria ConceptPlayerNo IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsTeenGirl IsSubjectDistNear200 ChanceToFire30Percent IsWorldTalkCliffe
		    Response PlayerNoFemaleGambler
		}
	},
	{
		Rule PlayerNoEllisCliffe
		{
		    criteria ConceptPlayerNo IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsMechanic IsSubjectDistNear200 ChanceToFire30Percent IsWorldTalkCliffe
		    Response PlayerNoEllisGambler
		}
	},
	{
		Rule PlayerAnswerLostCallCliffe
		{
		    criteria ConceptPlayerAnswerLostCall IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerAnswerLostCallGambler
		}
	},
	{
		Rule KillStealCalledOutCliffe
		{
		    criteria ConceptKillStealCalledOut IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response KillStealCalledOutGambler
		}
	},
	{
		Rule PlayerSorryCliffe
		{
		    criteria ConceptPlayerSorry IsNotCoughing IsNotShotTeammateCliffe IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerSorryGambler
		}
	},
	{
		Rule PlayerSorryFFCliffe
		{
		    criteria ConceptPlayerSorry IsNotCoughing IsShotTeammateCliffe IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerSorryFFGambler
		}
	},
	{
		Rule PlayerThanksCliffe
		{
		    criteria ConceptPlayerThanks IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerThanksGambler
		}
	},
	{
		Rule PlayerYellRunCliffe
		{
		    criteria ConceptPlayerYellRun IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerYellRunGambler
		}
	},
	{
		Rule PlayerYesCliffe
		{
		    criteria ConceptPlayerYes IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerYesGambler
		}
	},
	{
		Rule PlayerYouAreWelcomeCliffe
		{
		    criteria ConceptPlayerYouAreWelcome IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerYouAreWelcomeGambler
		}
	},
	{
		Rule YouAreWelcomeCliffe
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsCliffe IsTalk IsTalkCliffe TimeSinceGroupInCombat05 IsNotSpeaking IsWorldTalkCliffe
		    Response PlayerYouAreWelcomeGambler
		}
	},
	{
		Rule PlayerYouAreWelcomeC1Cliffe
		{
		    criteria ConceptPlayerYouAreWelcome IsNotCoughing IsCliffe IsTalk IsTalkCliffe TimeSinceGroupInCombat05 IsNotSpeaking IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerYouAreWelcomeC1Gambler
		}
	},
	{
		Rule YouAreWelcomeC1Cliffe
		{
		    criteria ConceptYouAreWelcome IsNotCoughing ChanceToFire50Percent IsCliffe IsTalk IsTalkCliffe TimeSinceGroupInCombat05 IsNotSpeaking IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerYouAreWelcomeC1Gambler
		}
	},
	{
		Rule YouAreWelcomeCoachCliffe
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsCliffe IsTalk IsTalkCliffe FromIsCoach TimeSinceGroupInCombat05 ChanceToFire30Percent IsWorldTalkCliffe isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response YouAreWelcomeCoachGambler
		}
	},
	{
		Rule YouAreWelcomeMechanicCliffe
		{
		    criteria ConceptPlayerYouAreWelcome IsNotCoughing IsNotSpeaking IsCliffe IsTalk IsTalkCliffe FromIsMechanic TimeSinceGroupInCombat05 ChanceToFire30Percent IsWorldTalkCliffe isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response YouAreWelcomeMechanicGambler
		}
	},
	{
		Rule YouAreWelcomeProducerCliffe
		{
		    criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsCliffe IsTalk IsTalkCliffe FromIsProducer TimeSinceGroupInCombat05 ChanceToFire30Percent IsWorldTalkCliffe isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response YouAreWelcomeProducerGambler
		}
	},
	{
		Rule BotAttentionBattleCliffe
		{
		    criteria ConceptSurvivorBotNoteHumanAttention IsNotCoughing IsCliffe IsNotBotAttention IsTalk IsTalkCliffe IsNotIncapacitated IsInBattlefield TimeSinceGroupInCombat20 IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response BotAttentionBattleGambler
		    ApplyContext "SaidBotAttention:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule BotNoteHumanAttentionCliffe
		{
		    criteria ConceptSurvivorBotNoteHumanAttention IsNotCoughing IsCliffe IsNotBotAttention IsTalk IsTalkCliffe IsNotIncapacitated IsInStartArea IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response BotNoteHumanAttentionGambler
		    ApplyContext "SaidBotAttention:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerNegativeCliffe
		{
		    criteria ConceptPlayerNegative IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerNegativeGambler
		}
	},
	{
		Rule PlayerShootCarNotCliffe
		{
		    criteria ConceptPanicEvent IsCliffe IsNotCoughing SubjectIsNotCliffe IsTalk IsTalkCliffe IsNotc5m3_cemetery IsCarAlarm ChanceToFire60Percent IsWorldTalkCliffe
		    Response PlayerShootCarNotGambler
		    ApplyContext "Saidremark_caralarm:1:300"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerShootCarCliffe
		{
		    criteria ConceptPanicEvent IsCliffe IsNotCoughing SubjectIsCliffe IsTalk IsTalkCliffe IsNotc5m3_cemetery IsCarAlarm IsWorldTalkCliffe
		    Response PlayerShootCarGambler
		    ApplyContext "Saidremark_caralarm:1:300"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerHeardBoomerCliffe
		{
		    criteria ConceptPlayerHeardBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerHeardBoomerGambler
		}
	},
	{
		Rule PlayerHeardHunterCliffe
		{
		    criteria ConceptPlayerHeardHunter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerHeardHunterGambler
		}
	},
	{
		Rule PlayerHeardSmokerCliffe
		{
		    criteria ConceptPlayerHeardSmoker IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerHeardSmokerGambler
		}
	},
	{
		Rule PlayerHeardChargerCliffe
		{
		    criteria ConceptPlayerHeardCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerHeardChargerGambler
		}
	},
	{
		Rule PlayerHeardSpitterCliffe
		{
		    criteria ConceptPlayerHeardSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerHeardSpitterGambler
		}
	},
	{
		Rule PlayerHeardJockeyCliffe
		{
		    criteria ConceptPlayerHeardJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerHeardJockeyGambler
		}
	},
	{
		Rule PlayerHeardBoomerC1Cliffe
		{
		    criteria ConceptPlayerHeardBoomer IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowBoomer
		    Response PlayerHeardBoomerC1Gambler
		}
	},
	{
		Rule PlayerHeardHunterC1Cliffe
		{
		    criteria ConceptPlayerHeardHunter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowHunter
		    Response PlayerHeardBoomerC1Gambler
		}
	},
	{
		Rule PlayerHeardSmokerC1Cliffe
		{
		    criteria ConceptPlayerHeardSmoker IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowSmoker
		    Response PlayerHeardBoomerC1Gambler
		}
	},
	{
		Rule PlayerHeardChargerC1Cliffe
		{
		    criteria ConceptPlayerHeardCharger IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowCharger
		    Response PlayerHeardBoomerC1Gambler
		}
	},
	{
		Rule PlayerHeardSpitterC1Cliffe
		{
		    criteria ConceptPlayerHeardSpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowSpitter
		    Response PlayerHeardBoomerC1Gambler
		}
	},
	{
		Rule PlayerHeardJockeyC1Cliffe
		{
		    criteria ConceptPlayerHeardJockey IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowJockey
		    Response PlayerHeardJockeyC1Gambler
		}
	},
	{
		Rule PlayerHeardTankCliffe
		{
		    criteria ConceptPlayerHeardTank IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerHeardTankGambler
		}
	},
	{
		Rule PlayerHeardWitchCliffe
		{
		    criteria ConceptPlayerHeardWitch IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerHeardWitchGambler
		}
	},
	{
		Rule PlayerHurrahCliffe
		{
		    criteria ConceptPlayerHurrah IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerHurrahGambler
		}
	},
	{
		Rule PlayerWarnCarefulCliffe
		{
		    criteria ConceptPlayerWarnCareful IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerWarnCarefulGambler
		}
	},
	{
		Rule SurvivorSpottedWorldFarCliffe
		{
		    criteria ConceptPlayerLook IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsWorldTalkCliffe
		    Response SurvivorSpottedWorldFarGambler
		}
	},
	{
		Rule C6M3_PourFinishedCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsL4D1Alive Isc6m3_port ChanceToFire20Percent
		    Response C6M3_PourFinishedGambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule GasPour20MoreSCCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe Score20MoreSC
		    Response GasPour20MoreSCGambler
		    ApplyContext "_auto_GasCountOK:1:4,_auto_NoGasPourLine:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule GasPour1MoreWaitCliffe
		{
		    criteria ConceptGasPour20More IsCliffe IsSpeaking _auto_IsGasCountOK
		    Response GasPour20MoreWaitGambler
		}
	},
	{
		Rule GasPour10MoreSCCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe Score10MoreSC
		    Response GasPour10MoreSCGambler
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},
	{
		Rule GasPour10MoreWaitCliffe
		{
		    criteria ConceptGasPour10More IsCliffe IsSpeaking _auto_IsGasCountOK
		    Response GasPour10MoreWaitGambler
		}
	},
	{
		Rule GasPour1MoreSCCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe Score1MoreSC
		    Response GasPour1MoreSCGambler
		    ApplyContext "_auto_GasCountOK:1:4,_auto_NoGasPourLine:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule GasPour1MoreWaitCliffe
		{
		    criteria ConceptGasPour1More IsCliffe IsSpeaking _auto_IsGasCountOK
		    Response GasPour1MoreWaitGambler
		}
	},
	{
		Rule GasPour2MoreSCCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe Score2MoreSC
		    Response GasPour2MoreSCGambler
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},
	{
		Rule GasPour2MoreWaitCliffe
		{
		    criteria ConceptGasPour2More IsCliffe IsSpeaking _auto_IsGasCountOK
		    Response GasPour2MoreWaitGambler
		}
	},
	{
		Rule GasPour3MoreSCCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe Score3MoreSC
		    Response GasPour3MoreSCGambler
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},
	{
		Rule GasPour3MoreWaitCliffe
		{
		    criteria ConceptGasPour3More IsCliffe IsSpeaking _auto_IsGasCountOK
		    Response GasPour3MoreWaitGambler
		}
	},
	{
		Rule GasPour5MoreSCCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe Score5MoreSC
		    Response GasPour5MoreSCGambler
		    ApplyContext "_auto_GasCountOK:1:4"
		    applycontexttoworld
		}
	},
	{
		Rule GasPour5MoreWaitCliffe
		{
		    criteria ConceptGasPour5More IsCliffe IsSpeaking _auto_IsGasCountOK
		    Response GasPour5MoreWaitGambler
		}
	},
	{
		Rule GasPourDoneSCCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsScavenge ScoreDoneSC
		    Response GasPourDoneSCGambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule GasPourSCCliffe
		{
		    criteria ConceptPlayerPourStarted IsCliffe IsTalk IsTalkCliffe IsNotAlone IsWorldTalkCliffe IsScavenge ChanceToFire50Percent _auto_NotNoGasPourLine
		    Response GasPourSCGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule GasPourSCSoloCliffe
		{
		    criteria ConceptPlayerPourStarted IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsAlone IsScavenge ChanceToFire50Percent _auto_NotNoGasPourLine
		    Response GasPourSCSoloGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule GasPourAloneCliffe
		{
		    criteria ConceptPlayerPourStarted IsCliffe IsTalk IsTalkCliffe IsAlone IsWorldTalkCliffe IsNotScavenge ChanceToFire50Percent _auto_NotNoGasPourLine
		    Response GasPourSCSoloGambler
		    ApplyContext "TalkCoach:1:2"
		}
	},
	{
		Rule GrabbingGasSCCliffe
		{
		    criteria ConceptPlayerEquippedScavengeItem IsCliffe IsTalk IsNotAlone IsClosestSurvivorNear500 IsTalkCliffe IsWorldTalkCliffe NotSaidGrabbingCan
		    Response GrabbingGasSCGambler
		    ApplyContext "SaidGrabbingCan:1:8"
		}
	},
	{
		Rule PlayerShotGasCanCliffe
		{
		    criteria ConceptPlayerShotGasCan IsCliffe IsNotSaidPlayerShotGasCan IsScavenge
		    Response PlayerShotGasCanGambler
		    ApplyContext "SaidPlayerShotGasCan:1:10"
		    applycontexttoworld
		}
	},
	{
		Rule ScavengeStartCliffe
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsScavenge IsNotSaidLeavingSafeArea
		    Response ScavengeStartGambler
		    ApplyContext "SaidLeavingSafeArea:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule ScavengeStartC1M4Cliffe
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c1m4_atrium IsScavenge IsNotSaidLeavingSafeArea
		    Response FinaleStartC1M4Gambler
		    ApplyContext "SaidLeavingSafeArea:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerCommentJockeyCliffe
		{
		    criteria ConceptCommentJockey IsCliffe IssuerCloseEnough FromIsNotProducer FromIsNotTeenGirl IsNotIncapacitated IntensityUnder50 IsNotSaidBeenJockeyedCliffe IsNotBeingJockeyed IsNotSaidCommentJockey
		    Response PlayerCommentJockeyGambler
		    ApplyContext "SaidCommentJockey:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerCommentJockey2Cliffe
		{
		    criteria ConceptCommentJockey2 IsCliffe IssuerCloseEnough IsNotSaidBeenJockeyedCliffe IsNotBeingJockeyed IsNotIncapacitated
		    Response PlayerCommentJockey2Gambler
		}
	},
	{
		Rule C4M2LockTheDoorCheckPointCliffe
		{
		    criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsCliffe IsInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c4m2_sugarmill_a AutoIsNotScavenge AutoIsNotSurvival
		    Response C4M2LockTheDoorCheckPointGambler
		}
	},
	{
		Rule GoingToDieCoachCoachCliffe
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotComplainBlock IsCoachAlive IsCoachNear200 ChanceToFire30Percent IsWorldTalkCliffe IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		    Response GoingToDieCoachCoachGambler
		    ApplyContext "IsComplain:1:25"
		}
	},
	{
		Rule PlayerAlertGiveItemStopCliffe
		{
		    criteria ConceptAlertGiveItemStop IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidAlertGiveItemStop IsWorldTalkCliffe
		    Response PlayerAlertGiveItemStopGambler
		    ApplyContext "SaidAlertGiveItemStop:1:10"
		}
	},
	{
		Rule PlayerAlertGiveItemStopAnFirstAidCliffe
		{
		    criteria ConceptAlertGiveItemStopFirstAidA IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidAlertGiveItemStopFirstAid NoHasFirstAidKit IsWorldTalkCliffe
		    Response PlayerAlertGiveItemStopAnFirstAidGambler
		}
	},
	{
		Rule PlayerAlertGiveItemStopQnFirstAidCliffe
		{
		    criteria ConceptBashWithItem IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsItemFirstAidKit IsNotSaidAlertGiveItemStopFirstAid IsWorldTalkCliffe
		    Response PlayerAlertGiveItemStopQnFirstAidGambler
		    ApplyContext "SaidAlertGiveItemStopFirstAid:1:10"
		}
	},
	{
		Rule PlayerCoachPouncedCliffe
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsCoach IsNotSaidCoachPounced IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerCoachPouncedGambler
		    ApplyContext "CoachPounced:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerCoachPouncedC1Cliffe
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsCoach IsNotSaidCoachPounced IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerCoachPouncedC1Gambler
		    ApplyContext "CoachPounced:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerEatPillsCliffe
		{
		    criteria ConceptEatPills IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerEatPillsGambler
		}
	},
	{
		Rule PlayerGetInsideCheckPointCliffe
		{
		    criteria ConceptPlayerGetInsideCheckPoint IsNotCoughing IsCliffe IsInSafeSpot IsTalk IsTalkCliffe SomeoneOutsideSafeSpot IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerGetInsideCheckPointGambler
		}
	},
	{
		Rule PlayerStayTogetherSaferoomCliffe
		{
		    criteria ConceptPlayerStayTogether IsNotCoughing IsCliffe IsInSafeSpot IsTalk IsTalkCliffe SomeoneOutsideSafeSpot IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerStayTogetherSaferoomGambler
		}
	},
	{
		Rule PlayerGetInsideCheckPointC2M2Cliffe
		{
		    criteria ConceptPlayerGetInsideCheckPoint ismap_c2m2 IsNotCoughing IsCliffe IsInSafeSpot IsTalk IsTalkCliffe SomeoneOutsideSafeSpot IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerGetInsideCheckPointC2M2Gambler
		}
	},
	{
		Rule PlayerGetInsideCheckPointC4M3Cliffe
		{
		    criteria ConceptPlayerGetInsideCheckPoint isc4m3 IsNotCoughing IsCliffe IsInSafeSpot IsTalk IsTalkCliffe SomeoneOutsideSafeSpot IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerGetInsideCheckPointC4M3Gambler
		}
	},
	{
		Rule PlayerGrabbedByJockeyCliffe
		{
		    criteria ConceptSurvivorJockeyed IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidBeenJockeyedCliffe IsWorldTalkCliffe
		    Response PlayerGrabbedByJockeyGambler
		    ApplyContext "SaidBeenJockeyedCliffe:1:6,TalkCliffe:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerGrabbedByJockeyC1Cliffe
		{
		    criteria ConceptSurvivorJockeyed IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidBeenJockeyedCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowJockey IsNotSurvival
		    Response PlayerGrabbedByJockeyC1Gambler
		    ApplyContext "SaidBeenJockeyedCliffe:1:6,TalkCliffe:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerGrenadeMolotovCliffe
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsGrenadeMolotov IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerGrenadeMolotovGambler
		}
	},
	{
		Rule PlayerGrenadePipeBombCliffe
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsGrenadePipeBomb IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerGrenadePipeBombGambler
		}
	},
	{
		Rule PlayerGrenadeVomitJarCliffe
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsGrenadeVomitJar IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerGrenadeVomitJarGambler
		}
	},
	{
		Rule PlayerGrenadeVomitJarC1Cliffe
		{
		    criteria ConceptThrewGrenade IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsGrenadeVomitJar IsWorldTalkCliffe ismap_c1m1_hotel
		    Response PlayerGrenadeVomitJarC1Gambler
		}
	},
	{
		Rule PlayerIncapacitatedInitialCliffe
		{
		    criteria ConceptPlayerIncapacitated IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerIncapacitatedInitialGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule PlayerIncapacitatedInitialC1M2Cliffe
		{
		    criteria ConceptPlayerIncapacitated IsCliffe ismap_c1m2_streets IsC1M2WhitakerErrand
		    Response PlayerIncapacitatedInitialC1M2Gambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule PlayerKillConfirmationCliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe SubjectIsNotTank SubjectIsNotAWitch IsTalk IsTalkCliffe IsSubjectFar300 ChanceToFire40Percent isNotmap_c1m1_hotel IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response PlayerKillConfirmationGambler
		}
	},
	{
		Rule PlayerKillConfirmationC1M1Cliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe SubjectIsNotTank IsTalkCliffe IsUsingFirearm ismap_c1m1_hotel IsNotFirstKillC1 IsWorldTalkCliffe
		    Response PlayerKillConfirmationC1M1Gambler
		    ApplyContext "Talk:1:3,FirstKill:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerKillConfirmationC1M1MeleeCliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe SubjectIsNotTank SubjectIsNotBoomer SubjectIsNotSmoker IsTalkCliffe EquippedMeleeWeapon ismap_c1m1_hotel IsNotFirstKillC1 IsWorldTalkCliffe
		    Response PlayerKillConfirmationC1M1MeleeGambler
		    ApplyContext "Talk:1:3,FirstKill:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RightfulKillerCliffe
		{
		    criteria ConceptRightfulKiller IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response RightfulKillerGambler
		}
	},
	{
		Rule PlayerKillTankConfirmationCliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsRocking IsWorldTalkCliffe _auto_NotFinaleStarted _auto_NotSpottedVehicle
		    Response PlayerKillTankConfirmationGambler
		    ApplyContext "SaidTankDead:1:60,TalkCliffe:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerKillConfirmationEllisCloseCliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsNotTank SubjectIsNotAWitch IsSubjectFar300 IsMechanicAlive IsMechanicNear400 IsEllisAlsoWarn ChanceToFire5Percent IsNotAlone IsNotIncapacitated IsRocking IsWorldTalkCliffe _auto_NotFinaleStarted _auto_NotSpottedVehicle
		    // 	forceweight 100
		    Response PlayerKillConfirmationEllisCloseGambler
		}
	},
	{
		Rule PlayerKillTankNotHealthyCliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsNotHealthy IsWorldTalkCliffe _auto_NotFinaleStarted _auto_NotSpottedVehicle
		    Response PlayerKillTankNotHealthyGambler
		    ApplyContext "SaidTankDead:1:60,TalkCliffe:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerKillTankConfirmationC1M2Cliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe IsTalk IsTalkCliffe SubjectIsTank IsNotSaidTankDead IsNotIncapacitated IsWorldTalkCliffe ismap_c1m2_streets IsEveryoneAlive IsNotSurvival
		    Response PlayerKillTankConfirmationC1M2Gambler
		    ApplyContext "SaidTankDead:1:0,Talk:1:12"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerCr0wnedWitchCliffe
		{
		    criteria ConceptKilledZombie IsCliffe SubjectIsAWitch IsNotWitchAggro
		    Response NoResponse
		}
	},
	{
		Rule PlayerKilledStartledWitchCliffe
		{
		    criteria ConceptKilledZombie IsCliffe SubjectIsAWitch IsWitchAggro
		    Response NoResponse
		    ApplyContext "WitchAggro:--1"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerLockTheDoorCheckPointCliffe
		{
		    criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsCliffe IsInSafeSpot IsNotAlone IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerLockTheDoorCheckPointGambler
		}
	},
	{
		Rule PlayerLockTheDoorCheckPointC1Cliffe
		{
		    criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsCliffe IsInSafeSpot ismap_c1m1_hotel IsNotAlone IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerLockTheDoorCheckPointC1Gambler
		}
	},
	{
		Rule PlayerMechanicPouncedCliffe
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsMechanic IsNotSaidMechanicPounced IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerMechanicPouncedGambler
		    ApplyContext "MechanicPounced:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerMechanicPouncedC1Cliffe
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsMechanic IsNotSaidMechanicPounced IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerCoachPouncedC1Gambler
		    ApplyContext "MechanicPounced:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerProducerPouncedCliffe
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsProducer IsNotSaidProducerPounced IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerProducerPouncedGambler
		    ApplyContext "ProducerPounced:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerProducerPouncedC1Cliffe
		{
		    criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsProducer IsNotSaidProducerPounced IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerProducerPouncedC1Gambler
		    ApplyContext "ProducerPounced:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRevivedByDefibrillatorCliffe
		{
		    criteria ConceptRevivedByDefibrillator IsNotCoughing IsCliffe
		    Response PlayerRevivedByDefibrillatorGambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRevivedByDefibrillator2Cliffe
		{
		    criteria ConceptRevivedByDefibrillatorDelayed IsCliffe
		    Response PlayerRevivedByDefibrillator2Gambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerSuggestMeHealthCliffe
		{
		    criteria ConceptTalkIdle IsNotHealthy TimeSinceGroupInCombat20 ChanceToFire50Percent IsNotIncapacitated YesHasFirstAidKit IsNotSuggestedHealth IsCliffe IsNotBeingHealed IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerSuggestMeHealthGambler
		}
	},
	{
		Rule PlayerSuggestHealthGenericCliffe
		{
		    criteria ConceptPlayerSuggestHealth IsCliffe IssuerReallyClose IsNotBeingHealed IsTalk IsTalkCliffe IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 IsWorldTalkCliffe
		    Response PlayerSuggestHealthGenericGambler
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerSuggestHealthC1Cliffe
		{
		    criteria ConceptPlayerSuggestHealth IsCliffe IssuerReallyClose IsNotBeingHealed IsTalk IsTalkCliffe IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerSuggestHealthC1Gambler
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerSuggestHealthCoachCliffe
		{
		    criteria ConceptPlayerSuggestHealth IsCliffe IssuerReallyClose IsNotBeingHealed IsTalk IsTalkCliffe IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsCoach ChanceToFire50Percent IsWorldTalkCliffe isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerSuggestHealthCoachGambler
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerSuggestHealthMechanicCliffe
		{
		    criteria ConceptPlayerSuggestHealth IsCliffe IssuerReallyClose IsNotBeingHealed IsTalk IsTalkCliffe IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsMechanic ChanceToFire50Percent IsWorldTalkCliffe isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerSuggestHealthMechanicGambler
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerSuggestHealthProducerCliffe
		{
		    criteria ConceptPlayerSuggestHealth IsCliffe IssuerReallyClose IsNotBeingHealed IsTalk IsTalkCliffe IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsProducer ChanceToFire50Percent IsWorldTalkCliffe isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerSuggestHealthProducerGambler
		    ApplyContext "SuggestedHealth:1:120"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionCliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotSomeoneDied isNotmap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionGambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionCloseCliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotAlone IsSomeoneDied isNotmap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionCloseGambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionSoloCliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe IsAlone IsSomeoneDied isNotmap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionSoloGambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionC1M2Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c1m2_streets IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC1M2Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionCloseC1M2Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c1m2_streets IsNotAlone IsSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionCloseC1M2Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionC1M3Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c1m3_mall IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC1M3Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionC2M1Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c2m1 IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC2M1Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionC2M4Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c2m4 IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC2M4Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionC4M2Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c4m2_sugarmill_a IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC4M2Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionC4M3Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe isc4m3 IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC4M3Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionC5M4Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe IsMapc5m4_quarter IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionC5M4Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionCloseC6M1Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe Isc6m1_riverbank IsSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionCloseC6M1Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerTransitionCloseC6M2Cliffe
		{
		    criteria ConceptPlayerTransition IsNotCoughing IsCliffe IsNotSaidPlayerTransition IsTalk IsTalkCliffe IsWorldTalkCliffe Isc6m2_bedlam IsSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerTransitionCloseC6M1Gambler
		    ApplyContext "SaidPlayerTransition:1:90"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerUsingDefibrillatorCliffe
		{
		    criteria ConceptPlayerUsingDefibrillator IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerUsingDefibrillatorGambler
		}
	},
	{
		Rule PlayerWarnHeardBoomerCliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsBoomerClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardBoomer NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerWarnHeardBoomerGambler
		    ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardJockeyC1Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsJockeyClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardJockey NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowJockey IsNotSurvival
		    Response PlayerWarnHeardJockeyC1Gambler
		    ApplyContext "WarnHeardJockey:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardBoomerC1Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsBoomerClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardBoomer NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowBoomer IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Gambler
		    ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardChargerC1Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsChargerClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardCharger NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowCharger IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Gambler
		    ApplyContext "WarnHeardCharger:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardHunterC1Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsHunterClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardHunter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowHunter IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Gambler
		    ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardSmokerC1Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsSmokerClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardSmoker NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Gambler
		    ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardSpitterC1Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsSpitterClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardSpitter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowSpitter IsNotSurvival
		    Response PlayerWarnHeardBoomerC1Gambler
		    ApplyContext "WarnHeardSpitter:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardChargerCliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsChargerClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardCharger NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerWarnHeardChargerGambler
		    ApplyContext "WarnHeardCharger:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardHunterCliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsHunterClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardHunter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerWarnHeardHunterGambler
		    ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardJockeyCliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsJockeyClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardJockey NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerWarnHeardJockeyGambler
		    ApplyContext "WarnHeardJockey:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardSmokerCliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsSmokerClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardSmoker NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerWarnHeardSmokerGambler
		    ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardSpitterCliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsSpitterClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardSpitter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerWarnHeardSpitterGambler
		    ApplyContext "WarnHeardSpitter:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardWitchCliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsWitchClass IsNotCoughing IsNotAlone IsClosestSurvivorNear1200 IsCliffe IsNotWarnHeardWitch NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotmap_c4m2 IsNotc6m1_riverbank _auto_NotAlarmV2 _auto_NotFinaleStarted
		    Response PlayerWarnHeardWitchGambler
		    ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnHeardWitchC1Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsWitchClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardWitch NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerWarnHeardWitchC1Gambler
		    ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerHeardWitchC1Cliffe
		{
		    criteria ConceptPlayerHeardWitch IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response PlayerWarnHeardWitchC1Gambler
		}
	},
	{
		Rule PlayerWarnHeardWitchC4M3Cliffe
		{
		    criteria ConceptPlayerWarnHearZombie IsWitchClass IsNotCoughing IsCliffe IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardWitch NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkCliffe IsWorldTalkCliffe isc4m3
		    Response PlayerWarnHeardWitchC4M3Gambler
		    ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnMegaMobCliffe
		{
		    criteria ConceptPlayerWarnMegaMob IsNotCoughing IsCliffe IsNotWarnMegaMob IsTalk IsTalkCliffe IsNotSpeaking IsWorldTalkCliffe IsNotScavenge _auto_NotSpottedVehicle
		    Response PlayerWarnMegaMobGambler
		    ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWarnWitchAngryCliffe
		{
		    criteria ConceptWitchGettingAngry IsNotCoughing IsCliffe IsNotWarnAngryWitch IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotmap_c4m2 IsNotc6m1_riverbank
		    Response PlayerWarnWitchAngryGambler
		    ApplyContext "WarnAngryWitch:1:5,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWorldInfectedDet2Cliffe
		{
		    criteria ConceptWorldSignsInfectedDetected2 IsNotCoughing IsCliffe IsTalk IsTalkCliffe IssuerClose IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldInfectedDet2Gambler
		}
	},
	{
		Rule PlayerWorldIntroC31BlankCliffe
		{
		    criteria ConceptintroC3M1 IsCliffe IsNotSaidCXM1Intro IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldIntroC31BlankGambler
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWorldIntroC51Cliffe
		{
		    criteria ConceptintroC5M1 IsCliffe IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerWorldIntroC51Gambler
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorCaughtVomitCliffe
		{
		    criteria ConceptPlayerVomitInFace IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorCaughtVomitGambler
		    ApplyContext "TalkCliffe:1:10"
		}
	},
	{
		Rule SurvivorchargerpoundCliffe
		{
		    criteria Conceptchargerpound IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidchargerpound IsWorldTalkCliffe
		    Response SurvivorchargerpoundGambler
		    ApplyContext "Saidchargerpound:1:5,TalkCliffe:1:5"
		}
	},
	{
		Rule SurvivorchargerpoundC1Cliffe
		{
		    criteria Conceptchargerpound IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidchargerpound IsWorldTalkCliffe C1M1orC1M2 NoKnowCharger IsNotSurvival
		    Response SurvivorchargerpoundC1Gambler
		    ApplyContext "Saidchargerpound:1:5,TalkCliffe:1:5"
		}
	},
	{
		Rule SurvivorchargerpoundC6M3Cliffe
		{
		    criteria Conceptchargerpound IsNotCoughing IsCliffe IsTalk IsTalkCliffe isc6m3_port ChanceToFire5Percent IsWorldTalkCliffe
		    Response SurvivorchargerpoundC6M3Gambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule SurvivorCoughingCliffe
		{
		    criteria ConceptSurvivorCoughing IsCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorCoughingGambler
		}
	},
	{
		Rule SurvivorCoughingDeathCliffe
		{
		    criteria ConceptPlayerDeath IsCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotVersus
		    Response SurvivorCoughingGambler
		}
	},
	{
		Rule SurvivorDeathCliffe
		{
		    criteria ConceptPlayerDeath IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotVersus
		    Response SurvivorDeathGambler
		}
	},
	{
		Rule SurvivorGooedBySpitterCliffe
		{
		    criteria ConceptGooedBySpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidGooedBySpitter IsWorldTalkCliffe IsNotIncapacitated
		    Response SurvivorGooedBySpitterGambler
		    ApplyContext "SaidGooedBySpitter:1:20,TalkCliffe:1:3"
		}
	},
	{
		Rule SurvivorGooedBySpitterC1Cliffe
		{
		    criteria ConceptGooedBySpitter IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidGooedBySpitter IsWorldTalkCliffe C1M1orC1M2 NoKnowSpitter IsNotSurvival IsNotIncapacitated
		    Response SurvivorGooedBySpitterC1Gambler
		    ApplyContext "SaidGooedBySpitter:1:20,TalkCliffe:1:3"
		}
	},
	{
		Rule SurvivorGrabbedByTongueCliffe
		{
		    criteria ConceptPlayerGrabbedByTongue IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorGrabbedByTongueGambler
		}
	},
	{
		Rule SurvivorGrabbedByTongueC1Cliffe
		{
		    criteria ConceptPlayerGrabbedByTongue IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NoKnowSmoker IsNotSurvival
		    Response SurvivorGrabbedByTongueC1Gambler
		}
	},
	{
		Rule SurvivorNearCheckpointCliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointGambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC1M1Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe ismap_c1m1_hotel IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC1M1Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC1M3Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe ismap_c1m3_mall IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC1M3Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC2M1Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe ismap_c2m1 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC2M1Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC2M2Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe ismap_c2m2 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC2M2Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC2M4Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe ismap_c2m4 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC2M4Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC3M2Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe ismapc3m2_swamp IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC3M2Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkC3M3SafeHouseAheadCliffe
		{
		    criteria ConceptRemark IsCliffe IsC3M3SafeHouseAhead IsNotSaidSafeSpotAhead IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response SurvivorNearCheckpointGambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC4M1Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe ismap_c4m1_milltown_a IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC4M1Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC4M2Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe ismap_c4m2_sugarmill_a IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC4M2Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC4M3Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe isc4m3 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC4M3Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC4M4Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe isc4m4 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC4M4Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC5M2Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe IsMapc5m2_park IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC5M2Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC5M4Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe IsMapc5m4_quarter IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC5M4Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC6M1Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe Isc6m1_riverbank IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC6M1Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearCheckpointC6M2Cliffe
		{
		    criteria ConceptPlayerNearCheckpoint IsNotCoughing IsCliffe IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkCliffe Isc6m2_bedlam IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearCheckpointC6M2Gambler
		    ApplyContext "SaidSafeSpotAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearFinaleCliffe
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsCliffe IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkCliffe IsNotIncapacitated IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearFinaleGambler
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearFinaleC1M4Cliffe
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsCliffe IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkCliffe IsNotIncapacitated IsWorldTalkCliffe ismap_c1m4_atrium AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearFinaleC2M5Cliffe
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsCliffe IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkCliffe IsNotIncapacitated IsWorldTalkCliffe ismap_c2m5 AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearFinaleC2M5Gambler
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearFinaleC3M4Cliffe
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsCliffe IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkCliffe IsNotIncapacitated IsWorldTalkCliffe ismapc3m4_plantation AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearFinaleC3M4Gambler
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearFinaleC4M5Cliffe
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsCliffe IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkCliffe IsNotIncapacitated IsWorldTalkCliffe isc4m5 AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorNearFinaleC4M5Gambler
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearFinaleC5M5Cliffe
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsCliffe IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkCliffe IsNotIncapacitated IsWorldTalkCliffe IsMapc5m5_bridge AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorNearFinaleC6M3Cliffe
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsCliffe IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkCliffe IsNotIncapacitated IsWorldTalkCliffe Isc6m3_port AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorPouncedByHunterCliffe
		{
		    criteria ConceptScreamWhilePounced IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorPouncedByHunterGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule SurvivorTankPoundCliffe
		{
		    criteria ConceptPlayerGroundPoundedByTank IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorTankPoundGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule SurvivorTankPoundC1Cliffe
		{
		    criteria ConceptPlayerGroundPoundedByTank IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 IsNotSurvival
		    Response SurvivorTankPoundC1Gambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule SurvivorVocalizeBackUpCliffe
		{
		    criteria ConceptPlayerBackUp IsCliffe IsNotCoughing IsNotInSafeSpot IsNotInCheckpoint IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorVocalizeBackUpGambler
		}
	},
	{
		Rule SurvivorVocalizeEmphaticGoCliffe
		{
		    criteria ConceptPlayerEmphaticGo IsCliffe IsNotCoughing IsNotInSafeSpot IsNotInCheckpoint IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorVocalizeEmphaticGoGambler
		}
	},
	{
		Rule SurvivorVocalizeGoingToDieCliffe
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotComplainBlock IsWorldTalkCliffe IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		    Response SurvivorVocalizeGoingToDieGambler
		    ApplyContext "IsComplain:1:25"
		}
	},
	{
		Rule SurvivorVocalizeGoingToDie3Cliffe
		{
		    criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsCliffe IsOnThirdStrike IsTalk IsTalkCliffe IsNotComplainBlock IsWorldTalkCliffe IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		    Response SurvivorVocalizeGoingToDie3Gambler
		    ApplyContext "IsComplain:1:25"
		}
	},
	{
		Rule SurvivorVocalizeLookOutCliffe
		{
		    criteria ConceptPlayerLookOut IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorVocalizeLookOutGambler
		}
	},
	{
		Rule SurvivorVocalizeThisWayCliffe
		{
		    criteria ConceptPlayerThisWay IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorVocalizeThisWayGambler
		}
	},
	{
		Rule SurvivorVocalizeWaitHereCliffe
		{
		    criteria ConceptPlayerWaitHere IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorVocalizeWaitHereGambler
		}
	},
	{
		Rule SurvivorWarnSpitterIncomingCliffe
		{
		    criteria ConceptWarnSpitterIncoming IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidWarnSpitterIncoming IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorWarnSpitterIncomingGambler
		    ApplyContext "SaidWarnSpitterIncoming:1:10"
		}
	},
	{
		Rule SurvivorWarnSpitterIncomingC1Cliffe
		{
		    criteria ConceptWarnSpitterIncoming IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidWarnSpitterIncoming IsWorldTalkCliffe C1M1orC1M2 NoKnowSpitter IsNotSurvival
		    Response SurvivorWarnSpitterIncomingC1Gambler
		    ApplyContext "SaidWarnSpitterIncoming:1:10"
		}
	},
	{
		Rule PlayerLedgeHangEndCliffe
		{
		    criteria ConceptPlayerLedgeHangEnd IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerLedgeHangEndGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerLedgeHangMiddleCliffe
		{
		    criteria ConceptPlayerLedgeHangMiddle IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerLedgeHangMiddleGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerLedgeHangStartCliffe
		{
		    criteria ConceptPlayerLedgeHangStart IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerLedgeHangStartGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule SurvivorFirstDeathCliffe
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsCliffe IsNotSaidSomeoneDied IsEveryoneAlive IsTalk IsTalkCliffe IsNotSaidFaultFriendlyFireGeneral IsWorldTalkCliffe
		    Response SurvivorFirstDeathGambler
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},
	{
		Rule DeathOneCliffe
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsCliffe IsWithTwo IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsNotSaidFaultFriendlyFireGeneral IsWorldTalkCliffe
		    Response DeathOneGambler
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},
	{
		Rule DoubleDeath2Cliffe
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsCliffe IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsClosestSurvivorNear400 IsWithOnlyThree IsNotIncapacitated IsNotSaidFaultFriendlyFireGeneral IsWorldTalkCliffe
		    Response DoubleDeath2Gambler
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},
	{
		Rule DoubleDeath2MechanicCliffe
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsCliffe IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsMechanicAlive IsMechanicNear400 IsWithOnlyThree IsNotIncapacitated IsNotDeadMechanic ChanceToFire50Percent IsNotSaidFaultFriendlyFireGeneral IsWorldTalkCliffe isNotmap_c1m1_hotel
		    Response DoubleDeath2MechanicGambler
		    ApplyContext "SaidSomeoneDied:1:10"
		    applycontexttoworld
		}
	},
	{
		Rule TeamKillCliffe
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsCliffe IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsSaidFaultFriendlyFireGeneral IsNotSaidFaultFriendlyFireCliffe IsWorldTalkCliffe
		    Response TeamKillGambler
		    ApplyContext "SaidSomeoneDied:1:10,TalkCliffe:1:4"
		    applycontexttoworld
		}
	},
	{
		Rule TeamKillFromMechanicCliffe
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsCliffe IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsSaidFaultFriendlyFireGeneral IsNotSaidFaultFriendlyFireCliffe IsSaidFaultFriendlyFireMechanic IsWorldTalkCliffe
		    Response TeamKillFromMechanicGambler
		    ApplyContext "SaidSomeoneDied:1:10,TalkCliffe:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule TeamKillFromProducerCliffe
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsCliffe IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsSaidFaultFriendlyFireGeneral IsNotSaidFaultFriendlyFireCliffe IsSaidFaultFriendlyFireProducer IsWorldTalkCliffe
		    Response TeamKillFromProducerGambler
		    ApplyContext "SaidSomeoneDied:1:10,TalkCliffe:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule TeamKillFromTeenGirlCliffe
		{
		    criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsCliffe IsNotSaidSomeoneDied IsTalk IsTalkCliffe IsSaidFaultFriendlyFireGeneral IsNotSaidFaultFriendlyFireCliffe IsSaidFaultFriendlyFireTeenGirl IsWorldTalkCliffe
		    Response TeamKillFromProducerGambler
		    ApplyContext "SaidSomeoneDied:1:10,TalkCliffe:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeSubMachineGunCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSMG IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsFrancisIntroActor
		    Response C6M1TakeSubMachineGunGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeSubMachineGunSilencedCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSmg_silenced IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsFrancisIntroActor
		    Response C6M1TakeSubMachineGunGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakePumpShotgunCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpPumpShotgun IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsFrancisIntroActor
		    Response C6M1TakeSubMachineGunGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeChromeShotgunCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpShotgun_Chrome IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsFrancisIntroActor
		    Response C6M1TakeSubMachineGunGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeCSSMP5Cliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSmg_mp5 IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsFrancisIntroActor
		    Response C6M1TakeSubMachineGunGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeSubMachineGunZoeyIntroCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSMG IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsZoeyIntroActor
		    Response C6M1TakeSubMachineGunZoeyIntroGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeSubMachineGunSilencedZoeyIntroCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSmg_silenced IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsZoeyIntroActor
		    Response C6M1TakeSubMachineGunZoeyIntroGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakePumpShotgunZoeyIntroCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpPumpShotgun IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsZoeyIntroActor
		    Response C6M1TakeSubMachineGunZoeyIntroGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeChromeShotgunZoeyIntroCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpShotgun_Chrome IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsZoeyIntroActor
		    Response C6M1TakeSubMachineGunZoeyIntroGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeCSSMP5ZoeyIntroCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSmg_mp5 IsTalk IsTalkCliffe IsWorldTalkCliffe isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore IsZoeyIntroActor
		    Response C6M1TakeSubMachineGunZoeyIntroGambler
		    ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorDeployUpExplosivesCliffe
		{
		    criteria ConceptPlayerDeployingUpgradeAmmo IsNotCoughing IsCliffe IsNotSpeaking IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotSaidDeployUpgradePack_Explosive HasUpgradePack_Explosive IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorDeployUpExplosivesGambler
		    ApplyContext "SaidDeployUpgradePack_Explosive:1:30"
		}
	},
	{
		Rule SurvivorDeployUpIncendiaryCliffe
		{
		    criteria ConceptPlayerDeployingUpgradeAmmo IsNotCoughing IsCliffe IsNotSpeaking IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotSaidDeployUpgradePack_Incendiary HasUpgradePack_Incendiary IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorDeployUpIncendiaryGambler
		    ApplyContext "SaidDeployUpgradePack_Incendiary:1:30"
		}
	},
	{
		Rule SurvivorPickupAdrenalineCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpAdrenaline IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupAdrenalineGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupAutoShotgunCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpAutoShotgun IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupAutoShotgunGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupSpasShotgunCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpShotgun_spas IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupAutoShotgunGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupbaseball_batCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpbaseball_bat IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupbaseball_batGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupbaseShovelCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpShovel IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupbaseShovelGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupchainsawCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpchainsaw IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupchainsawGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupcricket_batCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpcricket_bat IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupcricket_batGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupCricketBatCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpcricket_bat IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupCricketBatGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupKnifeCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpKnife IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorPickupKnifeGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupCrowBarCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpCrowBar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupCrowBarGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupDefibrillatorCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpDefibrillator ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupDefibrillatorGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupelectric_guitarCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpelectric_guitar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupelectric_guitarGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupFireAxeCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpFireAxe IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupFireAxeGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupFirstAidKitCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpFirstAidKit IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotScavenge _auto_NotSpottedVehicle
		    Response SurvivorPickupFirstAidKitGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupFirstSMGCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSmg_silenced IsTalk IsTalkCliffe IsNotSaidPickupFirstSMG IsEveryoneAlive IsSaidC1M1OpenDoor ExtraWeight10 IsWorldTalkCliffe
		    Response SurvivorPickupFirstSMGGambler
		    ApplyContext "SaidPickupFirstSMG:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorPickupFirstSMG2AliveCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSmg_silenced IsTalk IsTalkCliffe IsNotSaidPickupFirstSMG IsWithTwo IsSaidC1M1OpenDoor ExtraWeight10 IsWorldTalkCliffe
		    Response SurvivorPickupFirstSMG2AliveGambler
		    ApplyContext "SaidPickupFirstSMG:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorPickupFirstPumpShotgunCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpPumpShotgun IsTalk IsTalkCliffe IsNotSaidPickupFirstShotgun ismap_c1m1_hotel IsWorldTalkCliffe
		    Response SurvivorPickupFirstShotgunGambler
		    ApplyContext "SaidPickupFirstShotgun:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorPickupFirstPumpShotgunCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpShotgun_Chrome IsTalk IsTalkCliffe IsNotSaidPickupFirstShotgun ismap_c1m1_hotel IsWorldTalkCliffe
		    Response SurvivorPickupFirstShotgunGambler
		    ApplyContext "SaidPickupFirstShotgun:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorPickupFirstPistolCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsPickedUpSecondPistol IsTalk IsTalkCliffe IsNotSaidPickupFirstPistol IsNotInStartArea ismap_c1m1_hotel IsWorldTalkCliffe
		    Response SurvivorPickupFirstPistolGambler
		    ApplyContext "SaidPickupFirstPistol:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorPickupFryingPanCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpFryingPan IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupFryingPanGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupGolfCLubCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpGolfClub IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupGolfCLubGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupGrenadeLauncherCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpGrenadeLauncher NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupGrenadeLauncherGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupGunC1M2Cliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsNotSpeaking IsTalk IsSaidC1M2InsideGunShop IsNotPickedUpFirstAidKit IsNotPickedUpAmmo IsNotPickedUpVomitJar IsNotPickedUpPainPills IsNotPickedUpAdrenaline IsNotPickedUpLaserSights IsNotPickedUpMolotov IsNotPickedUpPipeBomb IsWorldTalkCliffe IsNotSaidC1M2InsideGunShopPickUp ChanceToFire50Percent _auto_NotButton1
		    Response SurvivorPickupGunC1M2Gambler
		    ApplyContext "SaidC1M2InsideGunShopPickUp:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorPickupHuntingRifleCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpHuntingRifle IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupHuntingRifleGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupMilitarySniperCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpSniper_Military IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupHuntingRifleGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupScoutSniperCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpSniper_scout IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupHuntingRifleGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupAWPSniperCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpSniper_awp IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupHuntingRifleGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupIncendiaryAmmoCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpIncendiaryAmmo IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupIncendiaryAmmoGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupKatanaCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpKatana IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupKatanaGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupPitchforkCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpPitchfork IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupPitchforkGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupLaserSightsAlwaysCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpLaserSights IsNotSpeaking IsBotNotAvailable ChanceToFire50Percent NotPickedUpItem IsNotInStartArea IsNotInCheckpoint IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupLaserSightsAlwaysGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupM60Cliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpM60 IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupM60Gambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupMacheteCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpMachete IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupMacheteGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupMagnumCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpMagnum IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupMagnumGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupMolotovCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpMolotov IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupMolotovGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupPainPillsCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpPainPills IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotScavenge _auto_NotSpottedVehicle
		    Response SurvivorPickupPainPillsGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupPipeBombCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpPipeBomb IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupPipeBombGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupPumpShotgunCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpPumpShotgun IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupPumpShotgunGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupChromeShotgunCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpShotgun_Chrome IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupPumpShotgunGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupRifleCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpRifle IsNotSpeaking IsInSafeSpot ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupRifleGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupDesertRifleCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpRifle_Desert IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupRifleGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupAK47RifleCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpRifle_AK47 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupRifleGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupSG552RifleCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpRifle_sg552 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupRifleGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupSecondPistolCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpSecondPistol IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupSecondPistolGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupSMGCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpSMG IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupSMGGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupSilencedSMGCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpSmg_silenced IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupSMGGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupMP5SMGCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpSmg_mp5 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupSMGGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickuptonfaCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUptonfa IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickuptonfaGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupUpExplosiveAmmoCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpExplosiveAmmo ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupUpExplosiveAmmoGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupUpExplosivesCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpUpgradePack_Explosive NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupUpExplosivesGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupUpIncendiaryCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpUpgradePack_Incendiary NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotInStartArea _auto_NotSpottedVehicle
		    Response SurvivorPickupUpIncendiaryGambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupVomitJarCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpVomitJar IsNotSpeaking IsNotInSafeSpot ChanceToFire30Percent NotPickedUpItem IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorPickupVomitJarGambler
		    ApplyContext "PickedUpItem:1:30,TalkCliffe:1:3"
		}
	},
	{
		Rule SurvivorPickupVomitJarAlwaysC1Cliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpVomitJar ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsNotSpeaking IsTalk IsTalkCliffe IsWorldTalkCliffe ismap_c1m1_hotel
		    Response SurvivorPickupVomitJarAlwaysC1Gambler
		    ApplyContext "PickedUpItem:1:30"
		}
	},
	{
		Rule Player_TakeVomitJarCliffe
		{
		    criteria ConceptPlayer_TakeVomitJarC1a IsCliffe ChanceToFire10Percent
		    Response Player_TakeVomitJarGambler
		}
	},
	{
		Rule PlayerGettingRevivedCliffe
		{
		    criteria ConceptReviveFriendDown IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response PlayerGettingRevivedGambler
		}
	},
	{
		Rule PlayerHealOtherCliffe
		{
		    criteria ConceptPlayerHealingOther IsNotCoughing IsCliffe IsTalk IsTalkCliffe NotInIntenseCombat IsWorldTalkCliffe
		    Response PlayerHealOtherGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerHealOtherC1Cliffe
		{
		    criteria ConceptPlayerHealingOther IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe C1M1orC1M2 NotInIntenseCombat IsNotSurvival
		    Response PlayerHealOtherC1Gambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerHealOtherCombatCliffe
		{
		    criteria ConceptPlayerHealingOther IsNotCoughing IsCliffe IsTalk IsTalkCliffe InIntenseCombat IsWorldTalkCliffe
		    Response PlayerHealOtherCombatGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerHealOtherTankCliffe
		{
		    criteria ConceptPlayerHealingOther IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkCliffe
		    // 	forceweight 30
		    Response PlayerHealOtherCombatGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerLedgeSaveCliffe
		{
		    criteria ConceptPlayerLedgeSave IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerLedgeSaveGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerReviveFriendCliffe
		{
		    criteria ConceptPlayerReviveFriend IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe NotInIntenseCombat _auto_NotSpottedVehicle
		    Response PlayerReviveFriendGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule PlayerReviveFriendBCliffe
		{
		    criteria ConceptReviveFriendDownFinal IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotReviveInterrupt
		    Response PlayerReviveFriendBGambler
		}
	},
	{
		Rule PlayerReviveFriendBCoachCliffe
		{
		    criteria ConceptReviveFriendDownFinal IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotReviveInterrupt FromIsCoach ChanceToFire10Percent isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerReviveFriendBCoachGambler
		}
	},
	{
		Rule PlayerReviveFriendBEllisCliffe
		{
		    criteria ConceptReviveFriendDownFinal IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotReviveInterrupt FromIsMechanic ChanceToFire10Percent isNotmap_c1m1_hotel isNotmap_c1m2_streets
		    Response PlayerReviveFriendBEllisGambler
		}
	},
	{
		Rule PlayerReviveFriendCriticalCliffe
		{
		    criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe NotInIntenseCombat _auto_NotSpottedVehicle
		    Response PlayerReviveFriendCriticalGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerReviveFriendLoudCliffe
		{
		    criteria ConceptPlayerReviveFriend IsNotCoughing IsCliffe IsZombiePresentTank IsSaidTankWarn2 IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    // 	forceweight 30
		    Response PlayerReviveFriendLoudGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerLedgeSaveCriticalCliffe
		{
		    criteria ConceptPlayerLedgeSaveCritical IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerLedgeSaveGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerReviveFriendFFCliffe
		{
		    criteria ConceptPlayerReviveFriend IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsShotTeammateCliffe IsWorldTalkCliffe NotInIntenseCombat _auto_NotSpottedVehicle
		    // 	forceweight 20
		    Response PlayerReviveFriendFFGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerReviveFriendCriticalFFCliffe
		{
		    criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsShotTeammateCliffe IsWorldTalkCliffe NotInIntenseCombat _auto_NotSpottedVehicle
		    // 	forceweight 20
		    Response PlayerReviveFriendFFGambler
		    ApplyContext "TalkCoach:1:5"
		}
	},
	{
		Rule PlayerReviveFriendLoud2Cliffe
		{
		    criteria ConceptPlayerReviveFriend IsNotCoughing IsCliffe InIntenseCombat IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerReviveFriendLoudGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerReviveFriendLoudCritCliffe
		{
		    criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsCliffe InIntenseCombat IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerReviveFriendLoudGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule PlayerReviveFriendLoudCrit2Cliffe
		{
		    criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsCliffe IsZombiePresentTank IsSaidTankWarn2 IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    // 	forceweight 30
		    Response PlayerReviveFriendLoudGambler
		    ApplyContext "TalkCliffe:1:5"
		}
	},
	{
		Rule _C1M1_ElevatorHelloCliffe
		{
		    criteria Concept_C1M1_ElevatorHello IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHelloGambler
		}
	},
	{
		Rule _C1M1_ElevatorHelloAllAliveExtra1Cliffe
		{
		    criteria Concept_C1M1_ElevatorHelloAllAliveExtra1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHelloAllAliveExtra1Gambler
		}
	},
	{
		Rule _C1M1_ElevatorHelloAllAliveExtra2Cliffe
		{
		    criteria Concept_C1M1_ElevatorHelloAllAliveExtra2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHelloAllAliveExtra2Gambler
		}
	},
	{
		Rule _C1M1_ElevatorHello01bCliffe
		{
		    criteria Concept_C1M1_ElevatorHello01b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello01bGambler
		}
	},
	{
		Rule _C1M1_ElevatorHello10cCliffe
		{
		    criteria Concept_C1M1_ElevatorHello10c IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello10cGambler
		}
	},
	{
		Rule _C1M1_ElevatorHello04cCliffe
		{
		    criteria Concept_C1M1_ElevatorHello04c IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello04cGambler
		}
	},
	{
		Rule _C1M1_ElevatorHello04eCliffe
		{
		    criteria Concept_C1M1_ElevatorHello04e IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello04eGambler
		}
	},
	{
		Rule _C1M1_ElevatorHello04dCliffe
		{
		    criteria Concept_C1M1_ElevatorHello04d IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello04dGambler
		}
	},
	{
		Rule _C1M1_ElevatorHello13dCliffe
		{
		    criteria Concept_C1M1_ElevatorHello13d IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello13dGambler
		}
	},
	{
		Rule _c1m4startelevator5aCliffe
		{
		    criteria Concept_c1m4startelevator5a IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator5aGambler
		}
	},
	{
		Rule _c1m4startelevator6a1Cliffe
		{
		    criteria Concept_c1m4startelevator6a1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevator6a1Gambler
		}
	},
	{
		Rule _c1m4startelevatorLastCliffe
		{
		    criteria Concept_c1m4startelevatorLast IsCliffe ElevatorTimeNotUp AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevatorLastGambler
		    ApplyContext "Talk:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule _c1m4startelevatorLastTimeUpCliffe
		{
		    criteria Concept_c1m4startelevatorLast IsCliffe ElevatorTimeUp AutoIsNotScavenge AutoIsNotSurvival
		    Response _c1m4startelevatorLastGambler
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M1_Fall03Cliffe
		{
		    criteria Concept_C2M1_Fall03 IsCliffe NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M1_Fall03Gambler
		}
	},
	{
		Rule _C2M1_Fall05Cliffe
		{
		    criteria Concept_C2M1_Fall05 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M1_Fall05Gambler
		}
	},
	{
		Rule _c2m1_searchlights03Cliffe
		{
		    criteria Concept_c2m1_searchlights03 IsCliffe NotInCombat IssuerReallyClose AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m1_searchlights03Gambler
		    ApplyContext "Talk:1:4.257"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M1abandoned02Cliffe
		{
		    criteria Concept_C2M1abandoned02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M1abandoned02Gambler
		}
	},
	{
		Rule _C2M1Billboard01Cliffe
		{
		    criteria Concept_C2M1Billboard01 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M1Billboard01Gambler
		    ApplyContext "Talk:1:3.411"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_Bathroom01Cliffe
		{
		    criteria Concept_C2M2_Bathroom01 IsCliffe NotInCombat IsSubjectDistNear200 AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Bathroom01Gambler
		}
	},
	{
		Rule _C2M2_CaroButton01Cliffe
		{
		    criteria Concept_C2M2_CaroButton01 IsCliffe NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_CaroButton01Gambler
		    ApplyContext "Talk:1:3.411"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_Kiddie01Cliffe
		{
		    criteria Concept_C2M2_Kiddie01 IsCliffe NotInCombat IsSubjectDistNear500 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Kiddie01Gambler
		    ApplyContext "Talk:1:5.314"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_Kiddie04Cliffe
		{
		    criteria Concept_C2M2_Kiddie04 IsCliffe NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_Kiddie04Gambler
		    ApplyContext "Talk:1:1.424"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_SeeSafehouse01Cliffe
		{
		    criteria Concept_C2M2_SeeSafehouse01 IsCliffe IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M2_SeeSafehouse01Gambler
		}
	},
	{
		Rule _C2M2_Steak01Cliffe
		{
		    criteria Concept_C2M2_Steak01 IsCliffe NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _C2M2_Steak01Gambler
		    ApplyContext "Talk:1:4.641"
		    applycontexttoworld
		}
	},
	{
		Rule _C2M2_ThisTall01Cliffe
		{
		    criteria Concept_C2M2_ThisTall01 IsCliffe NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _C2M2_ThisTall01Gambler
		    ApplyContext "Talk:1:2.272"
		    applycontexttoworld
		}
	},
	{
		Rule _c2m3_coaster02Cliffe
		{
		    criteria Concept_c2m3_coaster02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _c2m3_coaster02Gambler
		    ApplyContext "Talk:1:1.745"
		    applycontexttoworld
		}
	},
	{
		Rule _c2m3_coaster05Cliffe
		{
		    criteria Concept_c2m3_coaster05 IsCliffe ChanceToFire60Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response _c2m3_coaster05Gambler
		    ApplyContext "Talk:1:4.144"
		    applycontexttoworld
		}
	},
	{
		Rule _c2m3_hole01Cliffe
		{
		    criteria Concept_c2m3_hole01 IsCliffe IssuerReallyClose IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotDownHole
		    Response _c2m3_hole01Gambler
		}
	},
	{
		Rule _c2m3_water01Cliffe
		{
		    criteria Concept_c2m3_water01 IsCliffe IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c2m3_water01Gambler
		}
	},
	{
		Rule _C2M4_GateOpen001Cliffe
		{
		    criteria Concept_C2M4_GateOpen001 IsCliffe IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		    Response _C2M4_GateOpen001Gambler
		}
	},
	{
		Rule _C4_BigStormHits01Cliffe
		{
		    criteria Concept_C4_BigStormHits01 IsCliffe _auto_NotC4CliffeInCover _auto_IsTimerA FromIsAnOrator
		    Response _C4_BigStormHits01Gambler
		    ApplyContext "Talk:1:1.363"
		    applycontexttoworld
		}
	},
	{
		Rule _C4_BigStormHits02Cliffe
		{
		    criteria Concept_C4_BigStormHits02 IsCliffe IsNotCoughing IssuerClose IsNotIncapacitated _auto_NotC4CliffeInCover
		    Response _C4_BigStormHits02Gambler
		    ApplyContext "Talk:1:1.241"
		    applycontexttoworld
		}
	},
	{
		Rule _c4m1_rainresponseCliffe
		{
		    criteria Concept_c4m1_rainresponse IsCliffe NotInCombat IsTalkCliffe IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSaidc4m1_rainresponse
		    Response _c4m1_rainresponseGambler
		    ApplyContext "Saidc4m1_rainresponse:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C4M1IntroCliffe
		{
		    criteria ConceptIntroC4M1 IsCliffe IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		    Response C4M1IntroGambler
		    ApplyContext "CXM1Intro:1:0,Saidremark_caralarm:1:400"
		    applycontexttoworld
		}
	},
	{
		Rule _c4m1Intro03Cliffe
		{
		    criteria Concept_c4m1Intro03 IsCliffe IsEveryoneAlive AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro03Gambler
		}
	},
	{
		Rule _c4m1Intro04Cliffe
		{
		    criteria Concept_c4m1Intro04 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro04Gambler
		}
	},
	{
		Rule _c4m1Intro05Cliffe
		{
		    criteria Concept_c4m1Intro05 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro05Gambler
		}
	},
	{
		Rule _c4m1Intro07Cliffe
		{
		    criteria Concept_c4m1Intro07 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro07Gambler
		    ApplyContext "c4m1GunBag:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _c4m1Intro08Cliffe
		{
		    criteria Concept_c4m1Intro08 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro08Gambler
		}
	},
	{
		Rule _c4m1Intro09Cliffe
		{
		    criteria Concept_c4m1Intro09 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro09Gambler
		}
	},
	{
		Rule _c4m1Intro11Cliffe
		{
		    criteria Concept_c4m1Intro11 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro11Gambler
		    ApplyContext "c4m1IToldYouSo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _c4m1Intro13Cliffe
		{
		    criteria Concept_c4m1Intro13 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro13Gambler
		}
	},
	{
		Rule _c4m1Intro02Cliffe
		{
		    criteria Concept_c4m1Intro02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m1Intro02Gambler
		    ApplyContext "c4m1MilkRun:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _c4m2_caneyell01Cliffe
		{
		    criteria Concept_c4m2_caneyell01 IsCliffe ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival _auto_IsCliffeInCane
		    Response _c4m2_caneyell01Gambler
		}
	},
	{
		Rule _c4m2_ElevatorHere01Cliffe
		{
		    criteria Concept_c4m2_ElevatorHere01 IsCliffe IsNotIncapacitated IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_ElevatorHere01Gambler
		}
	},
	{
		Rule _c4m2_seestation01Cliffe
		{
		    criteria Concept_c4m2_seestation01 IsCliffe IsSubjectDistNear200 IsNotSaidActivatedC4M2Elevator NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_seestation01Gambler
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule _c4m2_seestation03Cliffe
		{
		    criteria Concept_c4m2_seestation03 IsCliffe IsSubjectDistNear150 IsNotSaidActivatedC4M2Elevator NotInCombat ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_seestation03Gambler
		    ApplyContext "Talk:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule _c4m2_streetblocked01Cliffe
		{
		    criteria Concept_c4m2_streetblocked01 IsCliffe IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_streetblocked01Gambler
		}
	},
	{
		Rule _c4m2_streetblocked01bCliffe
		{
		    criteria Concept_c4m2_streetblocked01 IsCliffe IsSubjectDistFar400 AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_streetblocked01bGambler
		}
	},
	{
		Rule _c4m2_streetblocked02Cliffe
		{
		    criteria Concept_c4m2_streetblocked02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_streetblocked01Gambler
		}
	},
	{
		Rule _c4m2_Witchville01Cliffe
		{
		    criteria Concept_c4m2_Witchville01 IsCliffe IssuerClose NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_Witchville01Gambler
		}
	},
	{
		Rule _c4m2_Witchville05Cliffe
		{
		    criteria Concept_c4m2_Witchville05 IsCliffe IssuerClose NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m2_Witchville05Gambler
		}
	},
	{
		Rule _c4m3_rain01Cliffe
		{
		    criteria Concept_c4m3_rain01 IsCliffe NotInCombat IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m3_rain01Gambler
		}
	},
	{
		Rule _c4m3_startsafe02Cliffe
		{
		    criteria Concept_c4m3_startsafe02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m3_startsafe02Gambler
		}
	},
	{
		Rule _c4m3_startsafe04Cliffe
		{
		    criteria Concept_c4m3_startsafe04 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _c4m3_startsafe04Gambler
		}
	},
	{
		Rule _C4M5_BoatComing01Cliffe
		{
		    criteria Concept_C4M5_BoatComing01 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M5_BoatComing01Gambler
		}
	},
	{
		Rule _C4M5_FinaleStart01Cliffe
		{
		    criteria Concept_C4M5_FinaleStart01 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M5_FinaleStart01Gambler
		}
	},
	{
		Rule _C4M5_Intro02Cliffe
		{
		    criteria Concept_C4M5_Intro02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M5_Intro02Gambler
		}
	},
	{
		Rule _C4M5_Intro04Cliffe
		{
		    criteria Concept_C4M5_Intro04 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C4M5_Intro04Gambler
		}
	},
	{
		Rule PlayerRemarkc4m5_BurgerTankCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m5_burgertank IsNotSaidc4m5_burgertank IsNotCoughing IsTalk IsTalkCliffe IsSubjectNear1000 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m5_BurgerTankGambler
		    ApplyContext "Saidc4m5_burgertank:1:0,Talk:1:2"
		    applycontexttoworld
		}
	},
	{
		Rule _introc1m1Cliffe
		{
		    criteria Concept_introc1m1 IsCliffe IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1Gambler
		}
	},
	{
		Rule _introc1m1AloneCliffe
		{
		    criteria Concept_introc1m1 IsCliffe IsAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1AloneGambler
		}
	},
	{
		Rule _introc1m1a01Cliffe
		{
		    criteria Concept_introc1m1a01 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1a01Gambler
		}
	},
	{
		Rule _introc1m1a04Cliffe
		{
		    criteria Concept_introc1m1a04 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1a04Gambler
		}
	},
	{
		Rule _introc1m1b02Cliffe
		{
		    criteria Concept_introc1m1b02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1a04Gambler
		}
	},
	{
		Rule _introc1m1b03Cliffe
		{
		    criteria Concept_introc1m1b03 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b03Gambler
		}
	},
	{
		Rule _introc1m1b04Cliffe
		{
		    criteria Concept_introc1m1b04 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b04Gambler
		}
	},
	{
		Rule _introc1m1helileftCliffe
		{
		    criteria Concept_introc1m1helileft IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1helileftGambler
		}
	},
	{
		Rule _introc1m1b05Cliffe
		{
		    criteria Concept_introc1m1b05 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b05Gambler
		}
	},
	{
		Rule _introc1m1b06Cliffe
		{
		    criteria Concept_introc1m1b06 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b06Gambler
		}
	},
	{
		Rule _introc1m1b08donutsCliffe
		{
		    criteria Concept_introc1m1b08donuts IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b08donutsGambler
		}
	},
	{
		Rule _introc1m1b09Cliffe
		{
		    criteria Concept_introc1m1b09 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b09Gambler
		}
	},
	{
		Rule _introc1m1b10Cliffe
		{
		    criteria Concept_introc1m1b10 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b10Gambler
		}
	},
	{
		Rule _introc1m1lastCliffe
		{
		    criteria Concept_introc1m1last IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1lastGambler
		}
	},
	{
		Rule _introc1m1lastweaponsCliffe
		{
		    criteria Concept_introc1m1lastweapons IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1lastGambler
		}
	},
	{
		Rule _introc1m1b11Cliffe
		{
		    criteria Concept_introc1m1b11 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1b11Gambler
		}
	},
	{
		Rule _introc1m1MovieIntroCliffe
		{
		    criteria Concept_introc1m1MovieIntro IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1MovieIntroGambler
		}
	},
	{
		Rule _introc1m1c02Cliffe
		{
		    criteria Concept_introc1m1c02 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _introc1m1c02Gambler
		}
	},
	{
		Rule BlankTestoCliffe
		{
		    criteria ConceptBlankTesto IsCliffe
		    Response NoResponse
		    ApplyContext "_auto_BlankTesto:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule c1m1_elevator_door_openCliffe
		{
		    criteria Conceptc1m1_elevator_door_open2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m1_elevator_door_openGambler
		}
	},
	{
		Rule c1m1_elevator_ready2Cliffe
		{
		    criteria Conceptc1m1_elevator_ready2 IsCliffe IsNotSaidC1M1OpenDoor AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m1_elevator_ready2Gambler
		    ApplyContext "SaidC1M1OpenDoor:1:30,Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C1M1_ElevatorHello2AliveNickIntro1Cliffe
		{
		    criteria Concept_C1M1_ElevatorHello2AliveCliffeIntro1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello2AliveNickIntro1Gambler
		}
	},
	{
		Rule _C1M1_ElevatorHello2AliveExtra1Cliffe
		{
		    criteria Concept_C1M1_ElevatorHello2AliveExtra1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello2AliveExtra1Gambler
		}
	},
	{
		Rule _C1M1_ElevatorHello2AliveExtra2Cliffe
		{
		    criteria Concept_C1M1_ElevatorHello2AliveExtra2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello2AliveExtra2Gambler
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveExtra1Cliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveExtra1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveExtra1Gambler
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveNickIntro1Cliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveCliffeIntro1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveNickIntro1Gambler
		    ApplyContext "CliffeIntroduced:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveNickIntro2Cliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveCliffeIntro2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveNickIntro2Gambler
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveName1Cliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveName1 IsCliffe IsNotCliffeIntroduced AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveName1Gambler
		    ApplyContext "CliffeIntroduced:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveName2RCliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveName2 IsCliffe IsRochelleElevatorIntro FromIsProducer IsNotCliffeIntroduced ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveName2RGambler
		    ApplyContext "CliffeIntroduced:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveName2Cliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveCliffeIntro2 IsCliffe IsNotCliffeIntroduced AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveName2Gambler
		    ApplyContext "CliffeIntroduced:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveNameDeadRCliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveNameDead IsCliffe IsProducerNotAlive AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveNameDeadRGambler
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveNameDeadECliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveNameDead IsCliffe IsMechanicNotAlive AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveNameDeadEGambler
		}
	},
	{
		Rule _C1M1_ElevatorHello3AliveNameDeadCCliffe
		{
		    criteria Concept_C1M1_ElevatorHello3AliveNameDead IsCliffe IsCoachNotAlive AutoIsNotScavenge AutoIsNotSurvival
		    Response _C1M1_ElevatorHello3AliveNameDeadCGambler
		}
	},
	{
		Rule C1M1CoughCliffe
		{
		    criteria ConceptC1M1Cough IsCliffe ismap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M1CoughGambler
		}
	},
	{
		Rule C1M3AlarmOffaCliffe
		{
		    criteria ConceptC1M3AlarmOffa IsCliffe IsSubjectDistNear600 AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3AlarmOffaGambler
		}
	},
	{
		Rule C1M3SafeRoomCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea ismap_c1m3_mall AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response C1M3SafeRoomGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C1M3SafeRoom2aCliffe
		{
		    criteria ConceptC1M3SafeRoom2a IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3SafeRoom2aGambler
		}
	},
	{
		Rule C1M3SafeRoom2bCliffe
		{
		    criteria ConceptC1M3SafeRoom2b IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3SafeRoom2bGambler
		}
	},
	{
		Rule C1M4NearFinale02aCliffe
		{
		    criteria ConceptC1M4NearFinale02a IsCliffe IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4NearFinale02aGambler
		}
	},
	{
		Rule C1M4NearFinale02cCliffe
		{
		    criteria ConceptC1M4NearFinale02c IsCliffe IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4NearFinale02cGambler
		}
	},
	{
		Rule C1M4NearFinale02eCliffe
		{
		    criteria ConceptC1M4NearFinale02e IsCliffe IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4NearFinale02eGambler
		}
	},
	{
		Rule c1m4NearFinale1Cliffe
		{
		    criteria Conceptc1m4NearFinale1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response c1m4NearFinale1Gambler
		}
	},
	{
		Rule C1M4SafeRoomCliffe
		{
		    criteria ConceptTalkIdle IsCliffe NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea ismap_c1m4_atrium AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		    Response C1M4SafeRoomGambler
		    ApplyContext "_auto_SafeRoomStart:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C1M4SafeRoom2a2Cliffe
		{
		    criteria ConceptC1M4SafeRoom2a2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4SafeRoom2a2Gambler
		}
	},
	{
		Rule C1M4SafeRoom2a4Cliffe
		{
		    criteria ConceptC1M4SafeRoom2a4 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M4SafeRoom2a4Gambler
		}
	},
	{
		Rule C1M4SafeRoomEndCliffe
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint ismap_c1m4_atrium IsCliffe IsNotSaidLeavingSafeArea _auto_NotTellingStory
		    Response C1M4SafeRoomEndGambler
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M1IntroStartCliffe
		{
		    criteria ConceptIntroC2M1 IsCliffe IsNotSaidCXM1Intro IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1IntroStartGambler
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M1Intro002Cliffe
		{
		    criteria ConceptC2M1Intro002 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1Intro002Gambler
		}
	},
	{
		Rule LeavingC2M1StartCliffe
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsNotSaidLeavingSafeArea IsCliffe Ismap_c2m1 IsTalk
		    Response LeavingC2M1StartGambler
		    ApplyContext "SaidLeavingSafeArea:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C2M1Intro_400Cliffe
		{
		    criteria ConceptC2M1Intro_400 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C2M1Intro_400Gambler
		    ApplyContext "Talk:1:5.363"
		    applycontexttoworld
		}
	},
	{
		Rule C4EnterCoverCliffe
		{
		    criteria ConceptC4EnterCover IsCliffe
		    Response NoResponse
		    ApplyContext "_auto_C4CliffeInCover:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C4ExitCoverCliffe
		{
		    criteria ConceptC4ExitCover IsCliffe
		    Response NoResponse
		    ApplyContext "_auto_C4CliffeInCover:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule c4m1_InBurgerTank01Cliffe
		{
		    criteria Conceptc4m1_InBurgerTank01 IsCliffe NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_InBurgerTank01Gambler
		    ApplyContext "TalkCliffe:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C4FinaleStartCliffe
		{
		    criteria ConceptC4FinaleStart IsCliffe
		    Response C4FinaleStartGambler
		    ApplyContext "_auto_NoLostCall:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkc4m1_InBurgerTankCliffe
		{
		    criteria ConceptRemark IsCliffe Isc4m1_InBurgerTank IsNotSaidc4m1_InBurgerTank IsNotCoughing IsTalk IsTalkCliffe IsSubjectNear200 IsWorldTalkCliffe AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m1_InBurgerTankGambler
		    ApplyContext "Saidc4m1_InBurgerTank:1:0,TalkCliffe:1:4"
		    applycontexttoworld
		}
	},
	{
		Rule c4m1_nogas01Cliffe
		{
		    criteria Conceptc4m1_nogas01 IsCliffe NotInCombat IsSubjectDistNear500 AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_nogas01Gambler
		    ApplyContext "Talk:1:2.502"
		    applycontexttoworld
		}
	},
	{
		Rule c4m1_nogas02Cliffe
		{
		    criteria Conceptc4m1_nogas02 IsCliffe NotInCombat IsSubjectDistNear500 AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_nogas02Gambler
		    ApplyContext "Talk:1:1.950"
		    applycontexttoworld
		}
	},
	{
		Rule c4m1_nogas04Cliffe
		{
		    criteria Conceptc4m1_nogas04 IsCliffe NotInCombat IsSubjectDistNear500 AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_nogas04Gambler
		    ApplyContext "Talk:1:2.497"
		    applycontexttoworld
		}
	},
	{
		Rule c4m1_nogas05Cliffe
		{
		    criteria Conceptc4m1_nogas05 IsCliffe NotInCombat IsSubjectDistNear500 AutoIsNotScavenge AutoIsNotSurvival
		    Response c4m1_nogas05Gambler
		    ApplyContext "Talk:1:2.502"
		    applycontexttoworld
		}
	},
	{
		Rule GasPour20MoreCliffe
		{
		    criteria ConceptGasPour20More IsCliffe IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour20MoreGambler
		}
	},
	{
		Rule GasPour10MoreTalkCliffe
		{
		    criteria ConceptGasPour10More IsCliffe IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour10MoreTalkGambler
		}
	},
	{
		Rule GasPour1MoreCliffe
		{
		    criteria ConceptGasPour1More IsCliffe IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour1MoreGambler
		}
	},
	{
		Rule GasPour2MoreCliffe
		{
		    criteria ConceptGasPour2More IsCliffe IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour2MoreGambler
		}
	},
	{
		Rule GasPour3MoreCliffe
		{
		    criteria ConceptGasPour3More IsCliffe IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour3MoreGambler
		}
	},
	{
		Rule GasPour5MoreCliffe
		{
		    criteria ConceptGasPour5More IsCliffe IsNotSpeaking _auto_IsGasCountOK
		    Response GasPour5MoreGambler
		}
	},
	{
		Rule HistoricTour01aCliffe
		{
		    criteria ConceptHistoricTour01a IsCliffe
		    Response HistoricTour01aGambler
		}
	},
	{
		Rule Player_SeeMudmen2aCliffe
		{
		    criteria ConceptPlayer_SeeMudmen2a IsCliffe IssuerClose
		    Response Player_SeeMudmen2aGambler
		}
	},
	{
		Rule Player_TakeBatR2Cliffe
		{
		    criteria ConceptPlayer_TakeBatR2 IsCliffe IsTalkCliffe IsWorldTalkCliffe
		    Response Player_TakeBatR2Gambler
		}
	},
	{
		Rule Player_KnowHunterC1Cliffe
		{
		    criteria ConceptPlayer_KnowHunter IsCliffe IssuerClose IsNotIncapacitated IsTalkCliffe IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response Player_KnowHunterC1Gambler
		    ApplyContext "Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule Player_KnowBoomerC1Cliffe
		{
		    criteria ConceptPlayer_KnowBoomer IsCliffe IssuerClose IsNotIncapacitated IsTalkCliffe IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response Player_KnowBoomerC1Gambler
		    ApplyContext "Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule Player_KnowChargerC1Cliffe
		{
		    criteria ConceptPlayer_KnowCharger IsCliffe IssuerClose IsNotIncapacitated IsTalkCliffe IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response Player_KnowChargerC1Gambler
		    ApplyContext "Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule Player_KnowJockeyC1Cliffe
		{
		    criteria ConceptPlayer_KnowJockey IsCliffe IssuerClose IsNotIncapacitated IsTalkCliffe IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response Player_KnowJockeyC1Gambler
		    ApplyContext "Talk:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule Player_KnowSmokerC1Cliffe
		{
		    criteria ConceptPlayer_KnowSmoker IsCliffe IssuerClose IsNotIncapacitated IsTalkCliffe IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response Player_KnowSmokerC1Gambler
		    ApplyContext "Talk:1:6"
		    applycontexttoworld
		}
	},
	{
		Rule Player_KnowSpitterC1Cliffe
		{
		    criteria ConceptPlayer_KnowSpitter IsCliffe IssuerClose IsNotIncapacitated IsTalkCliffe IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response Player_KnowSpitterC1Gambler
		    ApplyContext "Talk:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule Player_NotPackingHeatCliffe
		{
		    criteria ConceptPlayer_NotPackingHeat IsCliffe
		    Response Player_NotPackingHeatGambler
		}
	},
	{
		Rule Player_NotPackingHeat2Cliffe
		{
		    criteria ConceptPlayer_NotPackingHeat2 IsCliffe
		    Response Player_NotPackingHeat2Gambler
		}
	},
	{
		Rule Player_WhinyNickCliffe
		{
		    criteria ConceptPlayer_WhinyCliffe IsCliffe
		    Response Player_WhinyNickGambler
		}
	},
	{
		Rule C1M2TankInfoCliffe
		{
		    criteria ConceptC1M2TankInfo IsCliffe
		    Response C1M2TankInfoGambler
		}
	},
	{
		Rule PlayerCr0wnedBrideCliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe SubjectIsAWitch KilledByCr0wn IsNotWitchAggro ChanceToFire100Percent IsTalk IsTalkCliffe isc6m1_riverbank IsWorldTalkCliffe
		    // 	forceweight 101
		    Response PlayerCr0wnedBrideGambler
		}
	},
	{
		Rule PlayerCr0wnedBrideCoachCliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe SubjectIsAWitch KilledByCr0wn IsNotWitchAggro IsCoachAlive IsCoachNear400 ChanceToFire50Percent IsTalk IsTalkCliffe isc6m1_riverbank IsWorldTalkCliffe
		    // 	forceweight 102
		    Response PlayerCr0wnedBrideCoachGambler
		}
	},
	{
		Rule PlayerCr0wnedBrideProducerCliffe
		{
		    criteria ConceptKilledZombie IsNotCoughing IsCliffe SubjectIsAWitch KilledByCr0wn IsNotWitchAggro IsProducerAlive IsProducerNear400 ChanceToFire25Percent IsTalk IsTalkCliffe isc6m1_riverbank IsWorldTalkCliffe
		    // 	forceweight 102
		    Response PlayerCr0wnedBrideProducerGambler
		}
	},
	{
		Rule WeddingWitchDead02Cliffe
		{
		    criteria ConceptWeddingWitchDead02 IsCliffe
		    Response WeddingWitchDead02Gambler
		}
	},
	{
		Rule WeddingWitchDead03Cliffe
		{
		    criteria ConceptWeddingWitchDead03 IsCliffe
		    Response WeddingWitchDead03Gambler
		}
	},
	{
		Rule WeddingWitchDead04Cliffe
		{
		    criteria ConceptWeddingWitchDead04 IsCliffe
		    Response WeddingWitchDead04Gambler
		}
	},
	{
		Rule WorldIntroC31a1Cliffe
		{
		    criteria ConceptWorldIntroC31a1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31a1Gambler
		}
	},
	{
		Rule WorldIntroC31a3Cliffe
		{
		    criteria ConceptWorldIntroC31a3 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31a3Gambler
		}
	},
	{
		Rule WorldIntroC31b1Cliffe
		{
		    criteria ConceptWorldIntroC31b1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31b1Gambler
		}
	},
	{
		Rule WorldIntroC31c2Cliffe
		{
		    criteria ConceptWorldIntroC31c2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31c2Gambler
		}
	},
	{
		Rule WorldIntroC31c4Cliffe
		{
		    criteria ConceptWorldIntroC31c4 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31c4Gambler
		}
	},
	{
		Rule WorldIntroC31d1Cliffe
		{
		    criteria ConceptWorldIntroC31d1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31d1Gambler
		}
	},
	{
		Rule WorldIntroC31e3aCliffe
		{
		    criteria ConceptWorldIntroC31e3a IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC31e3aGambler
		}
	},
	{
		Rule WorldIntroC3f2Cliffe
		{
		    criteria ConceptWorldIntroC3f2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response WorldIntroC3f2Gambler
		}
	},
	{
		Rule PlayerCoverMeHealCliffe
		{
		    criteria ConceptPlayerHealing IsNotCoughing IsCliffe IsNotAskedForCover IsTalk IsTalkCliffe IsNotAlone IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response PlayerCoverMeHealGambler
		    ApplyContext "AskForCover:1:30"
		}
	},
	{
		Rule PlayerCoverMeHealC1Cliffe
		{
		    criteria ConceptPlayerHealing IsNotCoughing IsCliffe IsNotAskedForCover IsTalk IsTalkCliffe IsNotAlone IsWorldTalkCliffe ismap_c1m1_hotel
		    Response PlayerCoverMeHealC1Gambler
		    ApplyContext "AskForCover:1:30"
		}
	},
	{
		Rule Player_LostCallC6M3Cliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsClosestSurvivorFar3000 IsNotAlone IsNotSaidPlayerLostCall Isc6m3_port ChanceToFire100Percent IsNotSpeakingWeight0
		    Response Player_LostCallC6M3Gambler
		    ApplyContext "SaidPlayerLostCall:1:50"
		    applycontexttoworld
		}
	},
	{
		Rule AutoPlayerLostCallCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsClosestSurvivorFar3000 IsNotAlone IsNotSaidPlayerLostCall _auto_NotNoLostCall IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response AutoPlayerLostCallGambler
		    ApplyContext "SaidPlayerLostCall:1:50"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedChainsawCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsChainsaw IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedChainsawGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedChainsawAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsChainsaw IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedChainsawGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedcricket_batCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto Iscricket_bat IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedcricket_batGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedcricket_batAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Iscricket_bat IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedcricket_batGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedcrowbarCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto Iscrowbar IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedcrowbarGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedcrowbarAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Iscrowbar IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedcrowbarGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGolfClubCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGolfClub IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedGolfClubGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGolfClubAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsGolfClub IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedGolfClubGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGuitarCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsGuitar IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedGuitarGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGuitarAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGuitar IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedGuitarGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedKatanaCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsKatana IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedKatanaGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedKatanaAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsKatana IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedKatanaGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedLaserSightsCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsLaserSights IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedLaserSightsGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedLaserSightsAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsLaserSights IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedLaserSightsGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorBotPickupLaserSightsSpottedCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpLaserSights IsNotSpeaking IsBotIsAvailable IsNotInStartArea IsNotInCheckpoint IsNotInSafeSpot IsNotSaidSpotWeapons IsTalk IsTalkCliffe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedLaserSightsGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedM60Cliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsM60 IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedM60Gambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedM60AutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsM60 IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedM60Gambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMacheteCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsMachete IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedMacheteGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMacheteAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsMachete IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMacheteGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMagnumCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsMagnum IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedMagnumGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMagnumAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsMagnum IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMagnumGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedtonfaCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto Istonfa IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedtonfaGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedtonfaAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Istonfa IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedtonfaGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAutoShotgunCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsAutoShotgun IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAutoShotgunAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsAutoShotgun IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedShotgun_ChromeCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsShotgun_Chrome IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedShotgun_ChromeAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsShotgun_Chrome IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedShotgun_spasCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsShotgun_spas IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedShotgun_spasAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsShotgun_spas IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedPumpShotgunCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsPumpShotgun IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedPumpShotgunAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsPumpShotgun IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedRifleCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedARGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedRifleAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedARGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedRifle_AK47Cliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_AK47 IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedARGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedRifle_AK47AutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_AK47 IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedARGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedRifle_desertCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_desert IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedARGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedRifle_desertAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_desert IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedARGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedRifle_SG552Cliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_sg552 IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedARGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedRifle_SG552AutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_sg552 IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedARGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSecondPistolCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsSecondPistol IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedSecondPistolGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSecondPistolAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSecondPistol IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedSecondPistolGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSMGCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSMG IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSMGAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSMG IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSilencedSMGCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSMG_silenced IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedSilencedSMGAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSMG_silenced IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMP5SMGCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSMG_mp5 IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMP5SMGAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSMG_mp5 IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHuntingRifleCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsHuntingRifle IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedHuntingRifleAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsHuntingRifle IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMilitarySniperCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSniper_military IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedMilitarySniperAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSniper_military IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedScoutSniperCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSniper_scout IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedScoutSniperAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSniper_scout IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAWPSniperCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSniper_awp IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAWPSniperAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSniper_awp IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBaseballBatCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto Isbaseball_bat IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedBaseballBatAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Isbaseball_bat IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedFryingPanCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsFryingPan IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedFryingPanAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsFryingPan IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAxeCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsFireAxe IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedAxeAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsFireAxe IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedShovelCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsShovel IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedShovelAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsShovel IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedPitchforkCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsPitchfork IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedPitchforkAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsPitchfork IsWorldTalkCliffe IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedKnifeCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsKnife IsNotSmartLookAuto IsWorldTalkCliffe isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedKnifeAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsKnife IsWorldTalkCliffe isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		    Response SurvivorSpottedMeleeWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedPistolCliffe
		{
		    criteria ConceptPlayerSpotPistol IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedPistolGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedOtherWeaponCliffe
		{
		    criteria ConceptPlayerSpotOtherWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedWeaponGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedShotgunCliffe
		{
		    criteria ConceptPlayerSpotShotgun IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkCliffe _auto_NotSpottedVehicle
		    Response SurvivorSpottedShotgunGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule C2M3AlarmOffNagCliffe
		{
		    criteria ConceptTalkIdle IsCliffe ChanceToFire50Percent IsNotIncapacitated ismap_c2m3 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_IsTracksOk _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response PlayerRemarkc2m3_coasteroffGambler
		    ApplyContext "_auto_TimerLockA:1:8,_auto_TimerLockCliffe:1:11"
		    applycontexttoworld
		}
	},
	{
		Rule AskWhatCliffe
		{
		    criteria ConceptAskWhat IsCliffe
		    Response AskWhatGambler
		}
	},
	{
		Rule C13M1IntroStartCliffe
		{
		    criteria ConceptIntroC13M1 IsCliffe IsNotSaidCXM1Intro IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M1IntroStartGambler
		    ApplyContext "CXM1Intro:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M1Intro2Cliffe
		{
		    criteria ConceptC13M1Intro2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M1Intro2Gambler
		}
	},
	{
		Rule C13M1Intro3Cliffe
		{
		    criteria ConceptC13M1Intro3 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M1Intro3Gambler
		}
	},
	{
		Rule C13M1IntroLastCliffe
		{
		    criteria ConceptC13M1IntroLast IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M1IntroLastGambler
		}
	},
	{
		Rule C13M1IntroLocationLastCliffe
		{
		    criteria ConceptC13M1IntroLocationLast IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M1IntroLocationLastGambler
		}
	},
	{
		Rule RemarkC13M1UpHillCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M1UpHill IsNotRemarkedC13M1UpHill NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC3M3UpHereGambler
		    ApplyContext "RemarkedC13M1UpHill:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M1DownHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M1DownHere IsNotRemarkedC13M1DownHere NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereGambler
		    ApplyContext "RemarkedC13M1DownHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M1ThroughHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M1ThroughHere IsNotRemarkedC13M1ThroughHere NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response RemarkC13M1ThroughHereGambler
		    ApplyContext "RemarkedC13M1ThroughHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M1ThroughWindowCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M1ThroughWindow IsNotRemarkedC13M1ThroughWindow NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc2m1_throughwindowGambler
		    ApplyContext "RemarkedC13M1ThroughWindow:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M1UpStepsCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M1UpSteps IsNotRemarkedC13M1UpSteps NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3upstepsGambler
		    ApplyContext "RemarkedC13M1UpSteps:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M1CrossHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M1CrossHere IsNotRemarkedC13M1CrossHere NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc4m3_crosshereGambler
		    ApplyContext "RemarkedC13M1CrossHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M1PreBunkerOpenCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M1PreBunkerOpen IsNotRemarkedC13M1PreBunkerOpen NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response RemarkC13M1PreBunkerOpenGambler
		    ApplyContext "RemarkedC13M1PreBunkerOpen:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M1OpeningBunkerCliffe
		{
		    criteria ConceptC13M1OpeningBunker IsCliffe IsNotC13M1OpeningBunker AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerC3M2OpenDoor2Gambler
		    ApplyContext "C13M1OpeningBunker:1:0,RemarkedC13M1PreBunkerOpen:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M2UpHillCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M2UpHill IsNotRemarkedC13M2UpHill NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response RemarkC13M2UpHillGambler
		    ApplyContext "RemarkedC13M2UpHill:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M2DownHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M2DownHere IsNotRemarkedC13M2DownHere NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereGambler
		    ApplyContext "RemarkedC13M2DownHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M2UpLadderCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M2UpLadder IsNotRemarkedC13M2UpLadder NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3upladderGambler
		    ApplyContext "RemarkedC13M2UpStairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M2UpStairsCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M2UpStairs IsNotRemarkedC13M2UpStairs NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkc5m3upstepsGambler
		    ApplyContext "RemarkedC13M2UpStairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M2TankApproachingCliffe
		{
		    criteria ConceptC13M2TankApproaching IsCliffe IsNotNoticedC13M2ShakingGround AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M2TankApproachingGambler
		    ApplyContext "NoticedC13M2ShakingGround:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M2BarrelsIgnitedCliffe
		{
		    criteria ConceptC13M2BarrelsIgnited IsCliffe IsNotC13M2IgnitedBarrels AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M2BarrelsIgnitedGambler
		    ApplyContext "C13M2IgnitedBarrels:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M2Barrels1Cliffe
		{
		    criteria ConceptC13M2Barrels1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M2Barrels1Gambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C13M2Barrels2Cliffe
		{
		    criteria ConceptC13M2Barrels2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M2Barrels2Gambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule RemarkC13M3DownHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsC13M3DownHere IsNotRemarkedC13M3DownHere NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		    Response PlayerRemarkC1M3DownHereGambler
		    ApplyContext "RemarkedC13M3DownHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M3ApproachingTankerCliffe
		{
		    criteria ConceptC13M3ApproachingTanker IsCliffe IsNotSawC13M3Tanker AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3ApproachingTankerGambler
		    ApplyContext "SawC13M3Tanker:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M3Tanker1Cliffe
		{
		    criteria ConceptC13M3Tanker1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3Tanker1Gambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C13M3Tanker2Cliffe
		{
		    criteria ConceptC13M3Tanker2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3Tanker2Gambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C13M3Tanker3Cliffe
		{
		    criteria ConceptC13M3Tanker3 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3Tanker3Gambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C13M3OnScaffoldCliffe
		{
		    criteria ConceptC13M3OnScaffold IsCliffe IsNotOnC13M3Scaffold AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3OnScaffoldGambler
		    ApplyContext "OnC13M3Scaffold:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M3AirstrikeCliffe
		{
		    criteria ConceptC13M3Airstrike IsCliffe IsNotWitnissedC13M3Airstrike AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3AirstrikeGambler
		    ApplyContext "WitnissedC13M3Airstrike:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M3Airstrike2Cliffe
		{
		    criteria ConceptC13M3Airstrike2 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M3Airstrike2Gambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4Button1Cliffe
		{
		    criteria ConceptC13M4Button1 IsCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4Button1Gambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4FinaleTriggeredCliffe
		{
		    criteria ConceptFinaleTriggered IsCliffe ismapc13m4_cutthroatcreek IsTriggeredByCliffe _auto_NotFinaleStarted
		    Response C13M4FinaleTriggeredGambler
		    ApplyContext "_auto_Finale:1:0,_auto_TalkingCliffe:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4FinaleStart2Cliffe
		{
		    criteria ConceptC13M4FinaleStart2 IsCliffe _auto_IsTalkingCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4FinaleStart2Gambler
		    ApplyContext "Talk:1:3"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4DownCreekCliffe
		{
		    criteria ConceptC13M4DownCreek IsCliffe IsNotInC13M4Creek AutoIsNotScavenge AutoIsNotSurvival
		    Response PlayerRemarkWorldC6M2_FinalWaterGambler
		    ApplyContext "Talk:1:3,InC13M4Creek:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4InSmokeCliffe
		{
		    criteria ConceptC13M4InSmoke IsCliffe IsNotInC13M4Smoke AutoIsNotScavenge AutoIsNotSurvival
		    Response SurvivorCoughingGambler
		    ApplyContext "TalkCliffe:1:3,InC13M4Smoke:1:0"
		}
	},
	{
		Rule C13M4NoticedHelicopterCliffe
		{
		    criteria ConceptC13M4NoticedHelicopter IsCliffe IsNotNoticedC13M4Helicopter AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4NoticedHelicopterGambler
		    ApplyContext "Talk:1:3,NoticedC13M4Helicopter:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4AlmostThereCliffe
		{
		    criteria ConceptC13M4AlmostThere IsCliffe IsNotC13M4AlmostThere AutoIsNotScavenge AutoIsNotSurvival
		    Response C13M4AlmostThereGambler
		    ApplyContext "Talk:1:3,C13M4AlmostThere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4SpottedVehicleCliffe
		{
		    criteria ConceptFinalVehicleSpotted IsCliffe ismapc13m4_cutthroatcreek _auto_IsFinaleStarted
		    Response C13M4SpottedVehicleGambler
		    ApplyContext "_auto_Finale:2:0,_auto_TimerLockA:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4GetToVehicleCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe ismapc13m4_cutthroatcreek IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C13M4GetToVehicleGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C13M4InsideVehicleCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe ismapc13m4_cutthroatcreek IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockCliffe IsNotSpeakingWeight0
		    Response C5M5InsideHeliGambler
		    ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockCliffe:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule SafeRoomStartCliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsInStartArea AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomStart
		    Response NoResponse
		    ApplyContext "Talk:1:45,_auto_SafeRoomStart:1:0,_auto_SafeRoomQuiet:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule IntroEndCliffe
		{
		    criteria ConceptIntroEnd IsCliffe FromIsCliffe IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival
		    Response NoResponse
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule LeavingSafeAreaCliffe
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsCliffe IsNotSaidLeavingSafeArea
		    Response NoResponse
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule LeavingSafeRoomCliffe
		{
		    criteria ConceptSurvivorLeavingInitialCheckpoint IsCliffe IsNotSaidLeavingSafeArea
		    Response NoResponse
		    ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule FinaleTriggeredCliffe
		{
		    criteria ConceptFinaleTriggered IsCliffe IsTriggeredByCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response NoResponse
		    ApplyContext "_auto_Finale:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule FinaleTriggeredCliffe
		{
		    criteria ConceptFinaleTriggered IsCliffe IsTriggeredByCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		    Response NoResponse
		    ApplyContext "_auto_Finale:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule FinalVehicleSpottedCliffe
		{
		    criteria ConceptFinalVehicleSpotted IsCliffe _auto_IsFinaleStarted _auto_NotEscapeReady
		    Response NoResponse
		    ApplyContext "_auto_Finale:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule FinalVehicleArrivedCliffe
		{
		    criteria ConceptFinalVehicleArrived IsCliffe _auto_HasSpottedVehicle _auto_NotEscapeReady
		    Response NoResponse
		    ApplyContext "_auto_Escape:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule L4D1PlayerNiceShotCliffe
		{
		    criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsCliffe IsSubjectDistNear1500 IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotSpeaking ChanceToFire70Percent
		    Response L4D1PlayerNiceShotGambler
		}
	},
	{
		Rule L4D1PlayerNiceShotFrancisCliffe
		{
		    criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsCliffe IsSubjectDistNear1500 IsTalk IsTalkCliffe IsWorldTalkCliffe SubjectIsBiker ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotFrancisGambler
		}
	},
	{
		Rule L4D1PlayerNiceShotLouisCliffe
		{
		    criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsCliffe IsSubjectDistNear1500 IsTalk IsTalkCliffe IsWorldTalkCliffe SubjectIsManager ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotLouisGambler
		}
	},
	{
		Rule L4D1PlayerNiceShotZoeyCliffe
		{
		    criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsCliffe IsSubjectDistNear1500 IsTalk IsTalkCliffe IsWorldTalkCliffe SubjectIsTeenGirl ChanceToFire70Percent IsNotSpeaking
		    Response L4D1PlayerNiceShotZoeyGambler
		}
	},
	{
		Rule C6M3GasPourCliffe
		{
		    criteria ConceptPlayerPourStarted IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotScavenge isC6M3_Port ChanceToFire70Percent
		    Response C6M3GasPourGambler
		    ApplyContext "TalkCliffe:1:2"
		}
	},
	{
		Rule C6M1_IntotheparkNoHealthCliffe
		{
		    criteria ConceptC6M1_IntotheparkNoHealth IsCliffe
		    Response C6M1_IntotheparkNoHealthGambler
		}
	},
	{
		Rule C6M1Intro_01Biker05Cliffe
		{
		    criteria ConceptintroC6M1 IsCliffe IsFrancisIntroActor IsNotSaidIntroScene FrancisGroup5 IsNotVersus
		    Response C6M1Intro_01Biker05Gambler
		    ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1Intro_07bCliffe
		{
		    criteria ConceptC6M1Intro_07b IsCliffe
		    Response C6M1Intro_07bGambler
		}
	},
	{
		Rule C6M1Intro_09aCliffe
		{
		    criteria ConceptC6M1Intro_09a IsCliffe
		    Response C6M1Intro_09aGambler
		}
	},
	{
		Rule C6M1Intro_09bCliffe
		{
		    criteria ConceptC6M1Intro_09b IsCliffe
		    Response C6M1Intro_09bGambler
		}
	},
	{
		Rule C6M1Intro_09dCliffe
		{
		    criteria ConceptC6M1Intro_09d IsCliffe
		    Response C6M1Intro_09dGambler
		}
	},
	{
		Rule C6M1Intro_10eCliffe
		{
		    criteria ConceptC6M1Intro_10e IsCliffe
		    Response C6M1Intro_10eGambler
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1Intro_11dCliffe
		{
		    criteria ConceptC6M1Intro_11d IsCliffe
		    Response C6M1Intro_11dGambler
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1Intro_14aCliffe
		{
		    criteria ConceptC6M1Intro_14a IsCliffe
		    Response C6M1Intro_14aGambler
		}
	},
	{
		Rule C6M1Intro_14cCliffe
		{
		    criteria ConceptC6M1Intro_14c IsCliffe
		    Response C6M1Intro_14cGambler
		}
	},
	{
		Rule C6M1Intro_15aCliffe
		{
		    criteria ConceptC6M1Intro_15a IsCliffe
		    Response C6M1Intro_15aGambler
		}
	},
	{
		Rule C6M1Intro_15eCliffe
		{
		    criteria ConceptC6M1Intro_15e IsCliffe
		    Response C6M1Intro_15eGambler
		    ApplyContext "Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1Intro_16aCliffe
		{
		    criteria ConceptC6M1Intro_16a IsCliffe
		    Response C6M1Intro_16aGambler
		}
	},
	{
		Rule LeavingC6M1StartCliffe
		{
		    criteria ConceptSurvivorLeavingCheckpoint IsCliffe
		    Response LeavingC6M1StartGambler
		    ApplyContext "LeftC6M1Start:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule RemWorldC6M1_WeddingWarn02Cliffe
		{
		    criteria ConceptRemWorldC6M1_WeddingWarn02 IsCliffe IsSubjectDistNear800
		    Response RemWorldC6M1_WeddingWarn02Gambler
		    ApplyContext "AtWedding:1:60, CoachCake:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule WorldC6M1_HistoricTourCliffe
		{
		    criteria ConceptWorldC6M1_HistoricTour IsCliffe IsNotLeftC6M1Start
		    Response WorldC6M1_HistoricTourGambler
		}
	},
	{
		Rule WorldC6M1_PostWedding02aCliffe
		{
		    criteria ConceptWorldC6M1_PostWedding02a IsCliffe IsSubjectDistNear800
		    Response WorldC6M1_PostWedding02aGambler
		}
	},
	{
		Rule WorldC6M1_WeddingWarn05aCliffe
		{
		    criteria ConceptWorldC6M1_WeddingWarn05a IsCliffe IsSubjectDistNear800
		    Response WorldC6M1_WeddingWarn05aGambler
		}
	},
	{
		Rule C6M2_OpenGate1Cliffe
		{
		    criteria ConceptC6M2_OpenGate1 IsCliffe
		    Response C6M2_OpenGate1Gambler
		    ApplyContext "SaidOpenedGate1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M2_OpenGate1aCliffe
		{
		    criteria ConceptC6M2_OpenGate1a IsCliffe
		    Response C6M2_OpenGate1aGambler
		}
	},
	{
		Rule C6M2_OpenGate2Cliffe
		{
		    criteria ConceptC6M2_OpenGate2 IsCliffe
		    Response C6M2_OpenGate2Gambler
		    ApplyContext "Said:OpenedGate2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M2SafeRoomCliffe
		{
		    criteria ConceptTalkIdle Joined3 IsCliffe isC6m2_bedlam IsInStartArea AutoIsNotScavenge AutoIsNotSurvival IsNotSaidC6M2SafeRoom IsNotSpeakingWeight0
		    Response C6M2SafeRoomGambler
		    ApplyContext "SaidC6M2SafeRoom:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo01Cliffe
		{
		    criteria ConceptC6M2SafeRoom2 IsCliffe IsFrancisIntroActor FrancisGroup5 IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo01Gambler
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo01bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo01b IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo01bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo02Cliffe
		{
		    criteria ConceptC6M2SafeRoom2 IsCliffe IsFrancisIntroActor FrancisGroup1 IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo02Gambler
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo02bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo02b IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo02bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo06aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo06a IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo06aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo07aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo07a IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo07aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo08Cliffe
		{
		    criteria ConceptC6M2SafeRoom2 IsCliffe IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo08Gambler
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo08aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo08a IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo08aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo08cCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo08c IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo08cGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo08eCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo08e IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo08eGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo09bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo09b IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo09bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo10Cliffe
		{
		    criteria ConceptC6M2SafeRoom2 IsCliffe IsZoeyIntroActor ZoeyGroup2 IsNotSaidC6M2SafeRoom2
		    Response DLC1_C6M2_SafeRoomConvo10Gambler
		    ApplyContext "SaidC6M2SafeRoom2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo10bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo10b IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo10bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo10dCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo10d IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo10dGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo11bCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo11b IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo11bGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo12aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo12a IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo12aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo12cCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo12c IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo12cGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo13aCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo13a IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo13aGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo13cCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo13c IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo13cGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo14fCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo14f IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo14fGambler
		}
	},
	{
		Rule DLC1_C6M2_SafeRoomConvo15cCliffe
		{
		    criteria ConceptDLC1_C6M2_SafeRoomConvo15c IsCliffe
		    Response DLC1_C6M2_SafeRoomConvo15cGambler
		    ApplyContext "Talk:1:0.749"
		    applycontexttoworld
		}
	},
	{
		Rule WorldC6M2_AfterGate201aCliffe
		{
		    criteria ConceptWorldC6M2_AfterGate201a IsCliffe
		    Response WorldC6M2_AfterGate201aGambler
		}
	},
	{
		Rule WorldC6M2_FinalWater01aCliffe
		{
		    criteria ConceptWorldC6M2_FinalWater01a IsCliffe
		    Response WorldC6M2_FinalWater01aGambler
		}
	},
	{
		Rule WorldC6M2_InSewer101cCliffe
		{
		    criteria ConceptWorldC6M2_InSewer101c IsCliffe
		    Response WorldC6M2_InSewer101cGambler
		}
	},
	{
		Rule WorldC6M2_InSewer102bCliffe
		{
		    criteria ConceptWorldC6M2_InSewer102b IsCliffe
		    Response WorldC6M2_InSewer102bGambler
		}
	},
	{
		Rule WorldC6M2_InSewer201aCliffe
		{
		    criteria ConceptWorldC6M2_InSewer201a IsCliffe
		    Response WorldC6M2_InSewer201aGambler
		}
	},
	{
		Rule WorldC6M2_InSewer202aCliffe
		{
		    criteria ConceptWorldC6M2_InSewer202a IsCliffe
		    Response WorldC6M2_InSewer202aGambler
		}
	},
	{
		Rule WorldC6M2_InSewerLadder101aCliffe
		{
		    criteria ConceptWorldC6M2_InSewerLadder101a IsCliffe
		    Response WorldC6M2_InSewerLadder101aGambler
		}
	},
	{
		Rule WorldC6M2_OnTourWalk101aCliffe
		{
		    criteria ConceptWorldC6M2_OnTourWalk101a IsCliffe
		    Response WorldC6M2_OnTourWalk101aGambler
		}
	},
	{
		Rule WorldC6M2_OnTourWalk102aCliffe
		{
		    criteria ConceptWorldC6M2_OnTourWalk102a IsCliffe
		    Response WorldC6M2_OnTourWalk102aGambler
		}
	},
	{
		Rule WorldC6M2_Tattoo01b_Cliffe
		{
		    criteria ConceptWorldC6M2_Tattoo01b_ IsCliffe
		    Response WorldC6M2_Tattoo01b_Gambler
		}
	},
	{
		Rule WorldC6M2_Tattoo03a_Cliffe
		{
		    criteria ConceptWorldC6M2_Tattoo03a_ IsCliffe
		    Response WorldC6M2_Tattoo03a_Gambler
		}
	},
	{
		Rule C6M3_BridgeDownCliffe
		{
		    criteria ConceptC6M3_BridgeDown IsCliffe
		    Response C6M3_BridgeDownGambler
		    ApplyContext "SaidGetToCar:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_BridgeGettoCarCliffe
		{
		    criteria ConceptGetToVehicle IsCliffe IsNotSaidGetToCar Isc6m3_port
		    Response C6M3_BridgeGettoCarGambler
		    ApplyContext "SaidGetToCar:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_elevatorCliffe
		{
		    criteria Conceptc6m3_elevatorCancel IsCliffe IsNotSaidC6M3Elevator IsC6M3_port
		    // 	forceweight 1
		    Response C6M3_elevatorGambler
		    ApplyContext "SaidC6M3Elevator:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_elevatorFrancisCliffe
		{
		    criteria Conceptc6m3_elevatorCancel IsCliffe IsNotSaidC6M3Elevator IsC6M3_port IsFrancisIntroActor IsNotVersus FrancisGroup5
		    // 	forceweight 1
		    Response C6M3_elevatorFrancisGambler
		    ApplyContext "SaidC6M3Elevator:1:0,Talk:0:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_GivenItemBikerCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorBiker Isc6m3_portHeavy
		    Response C6M3_GivenItemBikerGambler
		}
	},
	{
		Rule C6M3_GivenItemTeenGirlCliffe
		{
		    criteria ConceptPlayerPickup IsCliffe IsDonorTeenGirl Isc6m3_portHeavy
		    Response C6M3_GivenItemTeenGirlGambler
		}
	},
	{
		Rule C6M3SafeRoomCliffe
		{
		    criteria ConceptTalkIdle Joined3 IsCliffe isC6m3_port IsInStartArea AutoIsNotScavenge AutoIsNotSurvival IsNotSaidC6M3SafeRoom IsNotSpeakingWeight0
		    Response C6M3SafeRoomGambler
		    ApplyContext "SaidC6M3SafeRoom:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo02Cliffe
		{
		    criteria ConceptC6M3SafeRoom2 IsCliffe IsNotSaidC6M3SafeRoom2 IsFrancisIntroActor FrancisGroup5 IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo02Gambler
		    ApplyContext "SaidC6M3SafeRoom2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo02bCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo02b IsCliffe
		    Response DLC1_C6M3_SafeRoomConvo02bGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo02dCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo02d IsCliffe IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo02dGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo03bCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo03b IsCliffe IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo03bGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo03dCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo03d IsCliffe IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo03dGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo04cCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo04c IsCliffe IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo04cGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo05Cliffe
		{
		    criteria ConceptC6M3SafeRoom2 IsCliffe IsNotSaidC6M3SafeRoom2 IsZoeyIntroActor ZoeyGroup1 IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo05Gambler
		    ApplyContext "SaidC6M3SafeRoom2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo05bCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo05b IsCliffe IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo05bGambler
		}
	},
	{
		Rule DLC1_C6M3_SafeRoomConvo05dCliffe
		{
		    criteria ConceptDLC1_C6M3_SafeRoomConvo05d IsCliffe IsInStartArea
		    Response DLC1_C6M3_SafeRoomConvo05dGambler
		}
	},
	{
		Rule IncapBounceCliffe
		{
		    criteria ConceptSurvivorIncapacitated IsCliffe IsNotSaidInCapBounce isC6m3_port
		    Response IncapBounceGambler
		    ApplyContext "SaidInCapBounce:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_CansDoneCliffe
		{
		    criteria Conceptc6m3escapeready IsCliffe IsC6M3_Port IsNotSaidc6m3escapeready
		    Response C6M3_CansDoneGambler
		    ApplyContext "Saidc6m3escapeready:1:0,Talk:1:5"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedFallenCliffe
		{
		    criteria ConceptPlayerWarnSpecial IsSpecialTypeFallen IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe IsNotSaidFallenWarn IsNotSpeakingWeight0
		    Response SurvivorSpottedFallenGambler
		    ApplyContext "SaidFallenWarn:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerWitchChasingC6M1Cliffe
		{
		    criteria ConceptPlayerExertionMinor IsCliffe IsWitchPresent SubjectIsNotWitch IsNotSaidCliffeWitchChasing IsSaidCliffeWitchAttacking isc6m1_riverbank
		    // 	forceweight 20
		    Response PlayerWitchChasingC6M1Gambler
		    ApplyContext "SaidCliffeWitchChasing:1:15,TalkCliffe:1:2"
		}
	},
	{
		Rule PlayerRemarkremark_MidnightRidersBusCliffe
		{
		    criteria ConceptRemark IsCliffe Isremark_MidnightRidersBus IsNotSaidremark_MidnightRidersBus IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear1500 IsNotSpeakingWeight0
		    Response PlayerRemarkremark_MidnightRidersBusGambler
		    ApplyContext "Saidremark_MidnightRidersBus:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_AcrossHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_AcrossHere IsNotSaidWorldC6M1_AcrossHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AcrossHereGambler
		    ApplyContext "SaidWorldC6M1_AcrossHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_AlleyBelowCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_AlleyBelow IsNotSaidWorldC6M1_AlleyBelow IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AlleyBelowGambler
		    ApplyContext "SaidWorldC6M1_AlleyBelow:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_AlleyIntoBuildingCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_AlleyIntoBuilding IsNotSaidWorldC6M1_AlleyIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_AlleyIntoBuildingGambler
		    ApplyContext "SaidWorldC6M1_AlleyIntoBuilding:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_InAptsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_InApts IsNotSaidWorldC6M1_InApts IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_InAptsGambler
		    ApplyContext "SaidWorldC6M1_InApts:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_IntotheparkCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_Intothepark IsNotSaidWorldC6M1_Intothepark IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntotheparkGambler
		    ApplyContext "SaidWorldC6M1_Intothepark:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_IntoThePark2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_IntoThePark2 IsNotSaidWorldC6M1_IntoThePark2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntoThePark2Gambler
		    ApplyContext "SaidWorldC6M1_IntoThePark2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_IntoTheStoreCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_IntoTheStore IsNotSaidWorldC6M1_IntoTheStore IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_IntoTheStoreGambler
		    ApplyContext "SaidWorldC6M1_IntoTheStore:1:0,JustSaidWorldC6M1_IntoTheStore:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_SafeRoomAlleyCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_SafeRoomAlley IsNotSaidWorldC6M1_SafeRoomAlley IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear600 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_SafeRoomAlleyGambler
		    ApplyContext "SaidWorldC6M1_SafeRoomAlley:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_ThroughBarCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_ThroughBar IsNotSaidWorldC6M1_ThroughBar IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_ThroughBarGambler
		    ApplyContext "SaidWorldC6M1_ThroughBar:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_UpHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_UpHere IsNotSaidWorldC6M1_UpHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpHereGambler
		    ApplyContext "SaidWorldC6M1_UpHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_UpTheStairsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_UpTheStairs IsNotSaidWorldC6M1_UpTheStairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairsGambler
		    ApplyContext "SaidWorldC6M1_UpTheStairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_UpTheStairs2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_UpTheStairs2 IsNotSaidWorldC6M1_UpTheStairs2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_UpTheStairs2Gambler
		    ApplyContext "SaidWorldC6M1_UpTheStairs2:1:0,Talk:1:1.596"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_WeddingWarnCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarnGambler
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_WeddingWarn1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_WeddingWarn1 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarn1Gambler
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_WeddingWarn2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_WeddingWarn2 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarn2Gambler
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_WeddingWarn3Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_WeddingWarn3 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarn3Gambler
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_WeddingWarnAngelCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsMechanicNear800Weight0 IsZoeyIntroActor ZoeyGroup2 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarnAngelGambler
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M1_WeddingWarnEllisCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsMechanicNear800Weight0 IsZoeyIntroActor ZoeyGroup1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M1_WeddingWarnEllisGambler
		    ApplyContext "SaidWorldC6M1_WeddingWarn:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_AcrossPlankCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_AcrossPlank IsNotSaidWorldC6M2_AcrossPlank IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear250 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AcrossPlankGambler
		    ApplyContext "SaidWorldC6M2_AcrossPlank:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_AfterGate1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_AfterGate1 IsNotSaidWorldC6M2_AfterGate1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGate1Gambler
		    ApplyContext "SaidWorldC6M2_AfterGate1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_AfterGate2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_AfterGate2 IsNotSaidWorldC6M2_AfterGate2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_AfterGate2Gambler
		    ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_DownHereCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_DownHere IsNotSaidWorldC6M2_DownHere IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_DownHereGambler
		    ApplyContext "SaidWorldC6M2_DownHere:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_DownIntoBuildingCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_DownIntoBuilding IsNotSaidWorldC6M2_DownIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear400 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_DownIntoBuildingGambler
		    ApplyContext "SaidWorldC6M2_DownIntoBuilding:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_FinalLadderCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_FinalLadder IsNotSaidWorldC6M2_FinalLadder IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalLadderGambler
		    ApplyContext "SaidWorldC6M2_FinalLadder:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_FinalWaterCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_FinalWater IsNotSaidWorldC6M2_FinalWater IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterGambler
		    ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_FinalWaterGoGoCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_FinalWaterGoGo IsNotSaidWorldC6M2_FinalWaterGoGo IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_FinalWaterGoGoGambler
		    ApplyContext "SaidWorldC6M2_FinalWaterGoGo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_InJazzClubCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_InJazzClub IsNotSaidWorldC6M2_InJazzClub IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear1000 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InJazzClubGambler
		    ApplyContext "SaidWorldC6M2_InJazzClub:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_InSewer1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_InSewer1 IsNotSaidWorldC6M2_InSewer1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewer1Gambler
		    ApplyContext "SaidWorldC6M2_InSewer1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_InSewer2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_InSewer2 IsNotSaidWorldC6M2_InSewer2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsSaidWorldC6M2_InSewer1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewer2Gambler
		    ApplyContext "SaidWorldC6M2_InSewer2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_InSewerLadder1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_InSewerLadder1 IsNotSaidWorldC6M2_InSewerLadder1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_InSewerLadder1Gambler
		    ApplyContext "SaidWorldC6M2_InSewerLadder1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_IntoConstructionCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_IntoConstruction IsNotSaidWorldC6M2_IntoConstruction IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_IntoConstructionGambler
		    ApplyContext "SaidWorldC6M2_IntoConstruction:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_IntoPoolHallCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_IntoPoolHall IsNotSaidWorldC6M2_IntoPoolHall IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_IntoPoolHallGambler
		    ApplyContext "SaidWorldC6M2_IntoPoolHall:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_JukeBoxCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_JukeBox IsNotSaidWorldC6M2_JukeBox IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear150 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_JukeBoxGambler
		    ApplyContext "SaidWorldC6M2_JukeBox:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_JumpDownCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_JumpDown IsNotSaidWorldC6M2_JumpDown IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_JumpDownGambler
		    ApplyContext "SaidWorldC6M2_JumpDown:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OnTourWalk1 IsNotSaidWorldC6M2_OnTourWalk1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk1Gambler
		    ApplyContext "SaidWorldC6M2_OnTourWalk1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OnTourWalk2 IsNotSaidWorldC6M2_OnTourWalk2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk2Gambler
		    ApplyContext "SaidWorldC6M2_OnTourWalk2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OnTourWalk3Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OnTourWalk3 IsNotSaidWorldC6M2_OnTourWalk3 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OnTourWalk3Gambler
		    ApplyContext "SaidWorldC6M2_OnTourWalk3:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OpenGate1Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OpenGate1 IsNotSaidWorldC6M2_OpenGate1 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSaidOpenedGate1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate1Gambler
		    ApplyContext "SaidWorldC6M2_OpenGate1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_OpenGate2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_OpenGate2 IsNotSaidWorldC6M2_OpenGate2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSaidOpenedGate2 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_OpenGate2Gambler
		    ApplyContext "SaidWorldC6M2_OpenGate2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_Phase2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Phase2 IsNotSaidWorldC6M2_Phase2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2Gambler
		    ApplyContext "SaidWorldC6M2_Phase2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_Phase2DownCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2DownGambler
		    ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_Phase2DownIntenseCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IntensityOver75 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_Phase2DownIntenseGambler
		    ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_PostGate1xCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_PostGate1 IsNotSaidWorldC6M2_PostGate1 IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsSaidOpenedGate1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_PostGate1xGambler
		    ApplyContext "SaidWorldC6M2_PostGate1:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_SafeRoomCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_SafeRoom IsNotSaidWorldC6M2_SafeRoom IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear800 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_SafeRoomGambler
		    ApplyContext "SaidWorldC6M2_SafeRoom:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_SuitcaseCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Suitcase IsNotSaidWorldC6M2_Suitcase IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear100 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_SuitcaseGambler
		    ApplyContext "SaidWorldC6M2_Suitcase:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_TattooCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Tattoo IsNotSaidWorldC6M2_Tattoo IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TattooGambler
		    ApplyContext "SaidWorldC6M2_Tattoo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_TattooZoeyCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Tattoo IsNotSaidWorldC6M2_Tattoo IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsMechanicNear800Weight0 IsZoeyIntroActor ZoeyGroup1 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TattooZoeyGambler
		    ApplyContext "SaidWorldC6M2_Tattoo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_TattooZoey2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_Tattoo IsNotSaidWorldC6M2_Tattoo IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsMechanicNear800Weight0 IsZoeyIntroActor ZoeyGroup2 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TattooZoey2Gambler
		    ApplyContext "SaidWorldC6M2_Tattoo:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_TourEntranceCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_TourEntrance IsNotSaidWorldC6M2_TourEntrance IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_TourEntranceGambler
		    ApplyContext "SaidWorldC6M2_TourEntrance:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_UpCatWalkCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_UpCatWalk IsNotSaidWorldC6M2_UpCatWalk IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpCatWalkGambler
		    ApplyContext "SaidWorldC6M2_UpCatWalk:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_UpStairsCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_UpStairs IsNotSaidWorldC6M2_UpStairs IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpStairsGambler
		    ApplyContext "SaidWorldC6M2_UpStairs:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M2_UpStairs2Cliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M2_UpStairs2 IsNotSaidWorldC6M2_UpStairs2 IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear200 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M2_UpStairs2Gambler
		    ApplyContext "SaidWorldC6M2_UpStairs2:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M3_BridgeRunCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M3_BridgeRun IsNotSaidWorldC6M3_BridgeRun IsNotCoughing IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_BridgeRunGambler
		    ApplyContext "SaidWorldC6M3_BridgeRun:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldC6M3_ByBridgeCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear300 IsSaidFinalVehicleArrived IsNotSpeakingWeight0
		    Response PlayerRemarkWorldC6M3_ByBridgeGambler
		    ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule PlayerRemarkWorldFootLockerCliffe
		{
		    criteria ConceptRemark IsCliffe IsWorldFootLocker IsNotSaidWorldFootLocker IsNotCoughing NotInCombat IsTalk IsTalkCliffe IsWorldTalkCliffe IsSubjectNear500 IsNotSpeakingWeight0
		    Response PlayerRemarkWorldFootLockerGambler
		    ApplyContext "SaidWorldFootLocker:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M3_PourFinishedCliffe
		{
		    criteria ConceptPlayerPourFinished IsCliffe IsTalk IsTalkCliffe IsWorldTalkCliffe Isc6m3_port ChanceToFire20Percent
		    Response C6M3_PourFinishedGambler
		    ApplyContext "Talk:1:3"
		}
	},
	{
		Rule SurvivorNearFinaleC6M3Cliffe
		{
		    criteria ConceptPlayerNearFinale IsNotCoughing IsCliffe IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkCliffe IsNotIncapacitated IsWorldTalkCliffe Isc6m3_port
		    Response SurvivorNearFinaleC6M3Gambler
		    ApplyContext "SaidFinaleAhead:1:0"
		    applycontexttoworld
		}
	},
	{
		Rule C6M1TakeSubMachineGunCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpSMG IsNotSpeaking ChanceToFire30Percent CliffeNotPickedUpItem IsTalk IsTalkCliffe IsWorldTalkCliffe IsJustSaidWorldC6M1_IntoTheStore FrancisGroup5
		    Response C6M1TakeSubMachineGunGambler
		    ApplyContext "CliffePickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupGolfCLubCliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpGolfClub IsNotSpeaking CliffeNotPickedUpItem IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorPickupGolfCLubGambler
		    ApplyContext "CliffePickedUpItem:1:30"
		}
	},
	{
		Rule SurvivorPickupM60Cliffe
		{
		    criteria ConceptPlayerPickup IsNotCoughing IsCliffe IsPickedUpM60 IsNotSpeaking CliffeNotPickedUpItem IsTalk IsTalkCliffe IsWorldTalkCliffe
		    Response SurvivorPickupM60Gambler
		    ApplyContext "CliffePickedUpItem:1:30"
		}
	},
	{
		Rule HistoricTour01aCliffe
		{
		    criteria ConceptHistoricTour01a IsCliffe
		    Response HistoricTour01aGambler
		}
	},
	{
		Rule WeddingWitchDead03Cliffe
		{
		    criteria ConceptWeddingWitchDead03 IsCliffe
		    Response WeddingWitchDead03Gambler
		}
	},
	{
		Rule Player_LostCallC6M3Cliffe
		{
		    criteria ConceptTalkIdle IsCliffe IsClosestSurvivorFar3000 IsNotSaidPlayerLostCall Isc6m3_port ChanceToFire100Percent IsNotSpeakingWeight0
		    Response Player_LostCallC6M3Gambler
		    ApplyContext "SaidPlayerLostCall:1:50"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGolfClubCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGolfClub IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response SurvivorSpottedGolfClubGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedGolfClubAutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsGolfClub IsWorldTalkCliffe
		    Response SurvivorSpottedGolfClubAutoGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedM60Cliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsM60 IsWorldTalkCliffe IsNotSpeakingWeight0
		    Response SurvivorSpottedM60Gambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule SurvivorSpottedM60AutoCliffe
		{
		    criteria ConceptPlayerSpotWeapon IsNotCoughing IsCliffe IsTalk IsTalkCliffe IsNotSmartLookAuto IsM60 IsWorldTalkCliffe
		    Response SurvivorSpottedM60AutoGambler
		    ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		    applycontexttoworld
		}
	},
	{
		Rule C1M2InsideGunShopCliffe
		{
		    criteria ConceptC1M2InsideGunShop PanicEventCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M2InsideGunShopGambler
		}
	},
	{
		Rule C1M3AlarmOffOratorCliffe
		{
		    criteria ConceptC1M3AlarmOff PanicEventCliffe AutoIsNotScavenge AutoIsNotSurvival
		    Response C1M3AlarmOffOratorGambler
		    ApplyContext "_auto_Alarm:2:0"
		    applycontexttoworld
		}
	},
	{
		Rule C1M3BrokeWindowOratorCliffe
		{
		    criteria ConceptC1M3BrokeWindow PanicEventCliffe AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		    Response C1M3BrokeWindowOratorGambler
		    ApplyContext "_auto_Alarm:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		    applycontexttoworld
		}
	},
	{
		Rule HitCraneButtonCliffe
		{
		    criteria ConceptAirport02CraneStarted PanicEventCliffe
		    Response HitCraneButtonGambler
		}
	},
	{
		Rule Airport03FireStartedCliffe
		{
		    criteria ConceptAirport03FireStarted PanicEventCliffe
		    Response Airport03FireStartedGambler
		}
	},
	{
		Rule FinaleSceneTriggerFrancisCliffe
		{
		    criteria ConceptC6M3Stairs IsCliffe IsNotSaidFinaleExchange Isc6m3_port IsFrancisIntroActor IsNotVersus
		    Response FinaleSceneTriggerFrancisGambler
		    ApplyContext "SaidFinaleExchange:1:0,Talk:1:27,SaidEllisBridgeStoryStart:1:60,EndEllisBridgeStoryStart:1:0"
		    applycontexttoworld
		}
	},
];

rr_ProcessRules(jess_cliffe_rules);
