local sheva_alomar_rules = 
[
	{
		name = "C3M1CallFerrySheva",
		criteria ConceptC3M1CallFerry PanicEventSheva IsNotSaidC3M1CallFerry2
		Response C3M1CallFerryProducer
		then any C3M1CallFerry2 ShevaActor:1 0
		ApplyContext "SaidC3M1CallFerry2:1:0"
		applycontexttoworld
	},

	{
		name = "C3M2OpenDoorSheva",
		criteria ConceptC3M2OpenDoor PanicEventSheva
		Response C3M2OpenDoorProducer
		then Sheva C3M2OpenDoor2 ShevaActor:1 0
		ApplyContext "SaidC3M2OpenDoor:1:0,Talk:1:2.406,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "c5m4floatstartSheva",
		criteria Conceptc5m4floatstart PanicEventSheva
		Response c5m4floatstartProducer
		then sheva c5m4floatstart2 foo:0 0
		ApplyContext "Saidc5m4floatstart:1:0,_auto_TractorStarted:1:0,_auto_InMiniFinale:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "C1M2InsideGunShopSheva",
		criteria ConceptC1M2InsideGunShop PanicEventSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2InsideGunShopProducer
		then sheva C1M2InsideGunShop2 foo:0 0
	},

	{
		name = "C1M3AlarmOffOratorSheva",
		criteria ConceptC1M3AlarmOff PanicEventSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M3AlarmOffOratorProducer
		then sheva C1M3AlarmOff2 foo:0 0
		ApplyContext "_auto_Alarm:2:0"
		applycontexttoworld
	},

	{
		name = "C1M3BrokeWindowOratorSheva",
		criteria ConceptC1M3BrokeWindow PanicEventSheva AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		Response C1M3BrokeWindowOratorProducer
		then sheva C1M3AlarmActive foo:0 0
		ApplyContext "_auto_Alarm:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "C1M1InSmokeSheva",
		criteria ConceptTalkIdle IsSheva IsSaidC1M1InSmoke ismap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response C1M1InSmokeProducer
		then any C1M1Cough foo:0 -2.638
	},

	{
		name = "C1M3AlarmOffSheva",
		criteria ConceptC1M3AlarmOff2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M3AlarmOffProducer
		then any C1M3AlarmOffa foo:0 .5
	},

	{
		name = "C1M3AlarmActiveSheva",
		criteria ConceptC1M3AlarmActive IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M3AlarmActiveProducer
	},

	{
		name = "C4M3SaferoomSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea isc4m3 AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		Response C4M3SaferoomProducer
		then any _c4m3_startsafe02 foo:0 0.01
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "L4D1PlayerNiceShotFrancisC6M3Sheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerNotSoClose IsTalk IsTalkSheva IsC6M3_Port IsWorldTalkSheva SubjectIsBiker ChanceToFire70Percent IsNotSpeaking
		Response L4D1PlayerNiceShotFrancisC6M3Producer
	},

	{
		name = "PlayerNiceShotFrancisSheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerClose IsTalk IsTalkSheva IsWorldTalkSheva SubjectIsBiker ChanceToFire10Percent IsNotSpeaking
		Response PlayerNiceShotFrancisProducer
	},

	{
		name = "L4D1PlayerNiceShotLouisC6M3Sheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerNotSoClose IsTalk IsTalkSheva IsC6M3_Port IsWorldTalkSheva SubjectIsManager ChanceToFire70Percent IsNotSpeaking
		Response L4D1PlayerNiceShotLouisC6M3Producer
	},

	{
		name = "PlayerNiceShotLouisSheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerClose IsTalk IsTalkSheva IsWorldTalkSheva SubjectIsManager ChanceToFire10Percent IsNotSpeaking
		Response L4D1PlayerNiceShotLouisC6M3Producer
	},

	{
		name = "L4D1PlayerNiceShotZoeyC6M3Sheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerNotSoClose IsTalk IsTalkSheva IsC6M3_Port IsWorldTalkSheva SubjectIsTeenGirl ChanceToFire70Percent IsNotSpeaking
		Response L4D1PlayerNiceShotZoeyC6M3Producer
	},

	{
		name = "PlayerNiceShotZoeySheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerClose IsTalk IsTalkSheva IsWorldTalkSheva SubjectIsTeenGirl ChanceToFire10Percent IsNotSpeaking
		Response PlayerNiceShotZoeyProducer
	},

	{
		name = "PlayerNiceShotSheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerClose IsTalk IsTalkSheva ChanceToFire30Percent IsWorldTalkSheva
		Response PlayerNiceShotProducer
	},

	{
		name = "L4D1PlayerNiceShotSheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerNotSoClose IsC6M3_Port SubjectIsNotGambler SubjectIsNotMechanic SubjectIsNotCoach IsTalk IsTalkSheva ChanceToFire30Percent IsWorldTalkSheva
		Response PlayerNiceShotProducer
	},

	{
		name = "PlayerNiceShotCoachSheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerClose IsTalk IsTalkSheva ChanceToFire10Percent IsWorldTalkSheva SubjectIsCoach
		Response PlayerNiceShotCoachProducer
	},

	{
		name = "PlayerNiceShotMechanicSheva",
		criteria ConceptPlayerNiceShot IsNotCoughing IsSheva IssuerClose IsTalk IsTalkSheva ChanceToFire10Percent SubjectIsMechanic IsWorldTalkSheva
		Response PlayerNiceShotMechanicProducer
		ApplyContext "TalkSheva:1:3"
	},

	{
		name = "SurvivorMournCoachSheva",
		criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsSheva IsDeadCoach IsNotSaidSomeoneDied IsTalk IsTalkSheva IsNotIncapacitated HasNotDefibrillator IsWorldTalkSheva
		Response SurvivorMournCoachProducer
	},

	{
		name = "SurvivorMournGamblerSheva",
		criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsSheva IsDeadGambler IsNotSaidSomeoneDied IsTalk IsTalkSheva IsNotIncapacitated HasNotDefibrillator IsWorldTalkSheva
		Response SurvivorMournGamblerProducer
	},

	{
		name = "SurvivorMournGamblerC1Sheva",
		criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsSheva IsDeadGambler IsNotSaidSomeoneDied IsTalk IsTalkSheva IsNotIncapacitated HasNotDefibrillator IsWorldTalkSheva NoKnowNames ismap_c1m1_hotel
		Response SurvivorMournGamblerC1Producer
	},

	{
		name = "SurvivorMournMechanicSheva",
		criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsSheva IsDeadMechanic IsNotSaidSomeoneDied IsTalk IsTalkSheva IsNotIncapacitated HasNotDefibrillator IsWorldTalkSheva
		Response SurvivorMournMechanicProducer
	},

	{
		name = "SurvivorMournMechanicC1Sheva",
		criteria ConceptPlayerSeeDeadPlayer IsNotCoughing IsSheva IsDeadMechanic IsNotSaidSomeoneDied IsTalk IsTalkSheva IsNotIncapacitated HasNotDefibrillator IsWorldTalkSheva NoKnowNames ismap_c1m1_hotel
		Response SurvivorMournMechanicC1Producer
	},

	{
		name = "C3M1FerryInTransitSheva",
		criteria ConceptC3M1FerryInTransit IsSheva IsTalk IsTalkSheva IsNotSaidC3M1FerryInTransit IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M1FerryInTransitProducer
		ApplyContext "SaidC3M1FerryInTransit:1:0"
		applycontexttoworld
	},

	{
		name = "Playerc1m1_enter_elevatorSheva",
		criteria Conceptc1m1_enter_elevator IsSheva IsTalk IsTalkSheva IsNotSaidc1m1_enter_elevator AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva
		Response Playerc1m1_enter_elevatorProducer
		ApplyContext "Saidc1m1_enter_elevator:1:0"
		applycontexttoworld
	},

	{
		name = "Playerc1m1_elevator_pushbuttonSheva",
		criteria Conceptc1m1_elevator_pushbutton IsSheva IsTalk IsTalkSheva IsNotSaidc1m1_elevator_pushbutton AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva
		Response Playerc1m1_elevator_pushbuttonProducer
		ApplyContext "Saidc1m1_elevator_pushbutton:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M2PreAlarmDoorSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2PreStoreAlarm IsNotSaidWorldC1M2PreStoreAlarm IsNotSaidC1M2AlarmSetoff IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M2PreAlarmDoorProducer
		ApplyContext "SaidWorldC1M2PreStoreAlarm:1:0"
		applycontexttoworld
	},

	{
		name = "C1M2AlarmDoor2Sheva",
		criteria ConceptC1M2AlarmDoor2 IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2AlarmDoor2Producer
		then orator C1M2StoreAlarm foo:0 0.3
	},

	{
		name = "PlayerRemarkC1M2PostAlarmDoorSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2StoreAlarm IsSaidC1M2AlarmSetoff IsSubjectNear300 HasWhitakerCola AutoIsNotScavenge AutoIsNotSurvival _auto_SaidC1M2GrabbedCola
		Response PlayerRemarkC1M2PostAlarmDoorProducer
		then orator C1M2WhitakerErrandInProgress foo:0 1
		ApplyContext "C1M2AlarmSetOff:2:0"
		applycontexttoworld
	},

	{
		name = "PlayerC1M2GrabbingColaSheva",
		criteria ConceptPlayerPickup IsSheva IsTalk IsTalkSheva IsNotSaidC1M2GrabbingCola2 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsPickedUpColaBottles ismap_c1m2_streets _auto_NotSaidC1M2GrabbedCola
		Response PlayerC1M2GrabbingColaProducer
		ApplyContext "SaidC1M2GrabbingCola2:1:5,_auto_SaidC1M2GrabbedCola:1:0,Talk:1:2.279"
		applycontexttoworld
	},

	{
		name = "PlayerC1M2GrabbingCola2Sheva",
		criteria ConceptPlayerPickup IsSheva IsTalk IsTalkSheva IsNotSaidC1M2GrabbingCola2 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsPickedUpColaBottles ismap_c1m2_streets _auto_SaidC1M2GrabbedCola
		Response PlayerC1M2GrabbingCola2Producer
		ApplyContext "SaidC1M2GrabbingCola2:1:5,_auto_SaidC1M2GrabbedCola:1:0,Talk:1:2.279"
		applycontexttoworld
	},

	{
		name = "PlayerC1M2FirstOutsideResponseSheva",
		criteria ConceptC1M2FirstOutsideResponse IsSheva FromIsAnOrator IsNotSaidC1M2AlarmSetoff AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC1M2FirstOutsideResponseProducer
		then orator C1M2FirstOutsideResponse5 foo:0 -5.962
	},

	{
		name = "PlayerC1M2FirstOutsideResponse8aSheva",
		criteria ConceptC1M2FirstOutsideResponse8a IsSheva FromIsAnOrator IsNotSaidC1M2AlarmSetoff AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC1M2FirstOutsideResponse8aProducer
		then orator C1M2FirstOutsideResponse8d foo:0 0
	},

	{
		name = "C1M2GunRoomDoorResponseGodSheva",
		criteria ConceptC1M2GunRoomDoorResponseGod IsSheva ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2GunRoomDoorResponseGodProducer
	},

	{
		name = "C1M2GunRoomDoorResponseGratitudeSheva",
		criteria ConceptC1M2GunRoomDoorResponseGratitude IsSheva ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2GunRoomDoorResponseGratitudeProducer
	},

	{
		name = "PlayerC1M2InsideGunShop2Sheva",
		criteria ConceptC1M2InsideGunShop2 IsSheva IsTalk IsTalkSheva IsNotSaidC1M2InsideGunShop IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC1M2InsideGunShop2Producer
		ApplyContext "Talk:1:2,SaidC1M2InsideGunShop:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerC1M2InsideGunShop2EllisSheva",
		criteria ConceptC1M2InsideGunShop2 IsSheva IsTalk IsTalkSheva IsMechanicAlive IsMechanicNear800 ChanceToFire20Percent IsNotSaidC1M2InsideGunShop IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC1M2InsideGunShop2EllisProducer
		then Mechanic C1M2InsideGunShop3 foo:0 0.1
		ApplyContext "Talk:1:4,SaidC1M2InsideGunShop:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerC3M1CallFerry2Sheva",
		criteria ConceptC3M1CallFerry2 IsSheva IsTalk IsTalkSheva IsShevaActor IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC3M1CallFerry2Producer
		then any C3M1FerryInTransit foo:0 25
	},

	{
		name = "PlayerC3M1FerryLandedIdleSheva",
		criteria ConceptTalkIdle IsSheva IsTalk IsTalkSheva C3M1Ferry IsNotIncapacitated NotInCombat IsNotAlone IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC3M1FerryLandedIdleProducer
		ApplyContext "Talk:1:4"
		applycontexttoworld
	},

	{
		name = "PlayerC3M1FerryLaunched2aSheva",
		criteria ConceptC3M1FerryLaunched2 IsSheva IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC3M1FerryLaunched2aProducer
	},

	{
		name = "PlayerC3M2ComingHomeSheva",
		criteria ConceptTalkIdle IsSheva IsTalk IsTalkSheva IsNotSaidSafeSpotAhead IsSaidC3M2Village1 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC3M2ComingHomeProducer
		ApplyContext "Talk:1:1"
		applycontexttoworld
	},

	{
		name = "PlayerC3M2ComingHomeEllisSheva",
		criteria ConceptTalkIdle IsSheva IsTalk IsTalkSheva IsNotSaidSafeSpotAhead IsSaidC3M2Village1 IsWorldTalkSheva IsMechanicAlive IsMechanicNear400 ChanceToFire10Percent AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC3M2ComingHomeEllisProducer
		then Mechanic _C3M2BloodFarmers foo:0 0.1
		ApplyContext "Talk:1:5.894"
		applycontexttoworld
	},

	{
		name = "PlayerC3M2OpenDoor2Sheva",
		criteria ConceptC3M2OpenDoor2 IsSheva IsTalkSheva IsShevaActor IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerC3M2OpenDoor2Producer
	},

	{
		name = "Playerc5m4floatstart2Sheva",
		criteria Conceptc5m4floatstart2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response Playerc5m4floatstart2Producer
	},

	{
		name = "PlayerintroC1M1Sheva",
		criteria ConceptintroC1M1 IsSheva IsNotAlone IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerintroC1M1Producer
		then any _introc1m1 foo:0 4
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerintroC1M1AloneSheva",
		criteria ConceptintroC1M1 IsSheva IsAlone IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerintroC1M1AloneProducer
		then self _introc1m1a02 foo:0 4
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},

	{
		name = "WhitakerC1M2DeliverColaSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2DeliverCola IsC1M2WhitakerErrand IsSubjectNear300 HasWhitakerCola AutoIsNotScavenge AutoIsNotSurvival _auto_SaidC1M2GrabbedCola
		Response WhitakerC1M2DeliverColaProducer
		then orator whitakerputcola foo:0 0
		ApplyContext "C1M2AlarmSetOff:3:0"
		applycontexttoworld
	},

	{
		name = "PlayerPlayerUsingColaBottlesSheva",
		criteria ConceptPlayerUsingColaBottles IsSheva IsNotSaidPlayerUsingColaBottles
		Response NoResponse
		ApplyContext "SaidPlayerUsingColaBottles:1:20,WhoPutCola:Sheva:35"
		applycontexttoworld
	},

	{
		name = "PlayerRelaxedSighSheva",
		criteria ConceptRelaxedSigh IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerRelaxedSighProducer
	},

	{
		name = "PlayerStayTogetherInsideReponseSheva",
		criteria ConceptStayTogetherInsideReponse IsSheva IsTalk IsTalkSheva IsNotSaidStayTogetherInsideReponse IsNotHealthySlow IsNotInSafeSpot IsWorldTalkSheva
		Response PlayerStayTogetherInsideReponseProducer
		ApplyContext "SaidStayTogetherInsideReponse:1:20"
		applycontexttoworld
	},

	{
		name = "PlayerUseAdrenalineSheva",
		criteria ConceptUseAdrenaline IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerUseAdrenalineProducer
	},

	{
		name = "PlayerWorldC3M1FerryCrossingB02Sheva",
		criteria ConceptWorldC3M1FerryCrossingB02 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldC3M1FerryCrossingB02Producer
	},

	{
		name = "PlayerWorldC3M1FerryCrossingC02Sheva",
		criteria ConceptWorldC3M1FerryCrossingC02 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldC3M1FerryCrossingC02Producer
		then gambler WorldC3M1FerryCrossingC03 foo:0 -0.883
	},

	{
		name = "PlayerWorldC3M1FerryCrossingC04Sheva",
		criteria ConceptWorldC3M1FerryCrossingC04 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldC3M1FerryCrossingC04Producer
	},

	{
		name = "PlayerWorldC3M1FerryCrossingD04Sheva",
		criteria ConceptWorldC3M1FerryCrossingD04 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldC3M1FerryCrossingD04Producer
	},

	{
		name = "PlayerWorldC3M1FerryCrossingE01Sheva",
		criteria ConceptWorldC3M1FerryCrossingE01 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldC3M1FerryCrossingE01Producer
		then mechanic WorldC3M1FerryCrossingE02 foo:0 -4.768
	},

	{
		name = "PlayerWorldC3M1FerryCrossingE03Sheva",
		criteria ConceptWorldC3M1FerryCrossingE03 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldC3M1FerryCrossingE03Producer
		then mechanic WorldC3M1FerryCrossingE04 foo:0 -1.747
	},

	{
		name = "PlayerWorldC3M1FerryCrossingN2Sheva",
		criteria ConceptWorldC3M1FerryCrossingN2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldC3M1FerryCrossingN2Producer
		then mechanic _C3M1CrazyMilitants foo:0 0.1
	},

	{
		name = "ThanksGotItemSheva",
		criteria IsAwardConcept IsSharingSubject IsNotCoughing SubjectIsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response NoResponse
	},

	{
		name = "PlayerGivenItemSheva",
		criteria ConceptPlayerGivenItem IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerGivenItemProducer
	},

	{
		name = "RescuedSurvivorSheva",
		criteria IsAwardConcept IsRescuer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response RescuedSurvivorProducer
	},

	{
		name = "ItemDonorCoachSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorCoach ChanceToFire30Percent isNotmap_c1m1_hotel IsPickedUpValidHealingItem
		Response ItemDonorCoachProducer
		then coach YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "ItemDonorMechanicSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorMechanic ChanceToFire30Percent isNotmap_c1m1_hotel IsPickedUpValidHealingItem
		Response ItemDonorMechanicProducer
		then mechanic YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "ItemDonorBikerSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorBiker ChanceToFire30Percent IsPickedUpValidHealingItem
		Response ItemDonorBikerProducer
		then biker YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "ItemDonorTeenGirlSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorTeenGirl ChanceToFire30Percent IsPickedUpValidHealingItem
		Response ItemDonorTeenGirlProducer
		then teengirl YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "ItemDonorManagerSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorManager ChanceToFire30Percent IsPickedUpValidHealingItem
		Response ItemDonorManagerProducer
		then manager YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "ItemDonorNamVetSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorNamVet ChanceToFire30Percent IsPickedUpValidHealingItem
		Response ItemDonorNamVetProducer
		then namvet YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "ReviveMeInterruptedMinorSheva",
		criteria ConceptReviveMeInterrupted IsSheva IsIncappedStarted IsIncappedStarted2
		Response ReviveMeInterruptedMinorProducer
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
	},

	{
		name = "ReviveMeInterruptedMajorSheva",
		criteria ConceptReviveMeInterrupted IsSheva IsIncappedBleeding1 IsIncappedBleeding2
		Response ReviveMeInterruptedMajorProducer
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
	},

	{
		name = "ReviveMeInterruptedCriticalSheva",
		criteria ConceptReviveMeInterrupted IsSheva IsIncappedLethargic
		Response ReviveMeInterruptedCriticalProducer
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
	},

	{
		name = "ReviveThanksSheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva
		Response ReviveThanksProducer
		then subject YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "ReviveThanksCoachSheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva SubjectIsCoach ChanceToFire30Percent
		Response ReviveThanksCoachProducer
		then subject YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "ReviveThanksCoachC1Sheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva SubjectIsCoach ChanceToFire30Percent ismap_c1m1_hotel NoKnowNames
		Response ReviveThanksCoachC1Producer
		then subject YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "ReviveThanksGamblerSheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva SubjectIsGambler ChanceToFire5Percent isNotmap_c1m1_hotel
		Response ReviveThanksGamblerProducer
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "ReviveThanksNickC1KnownSheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva SubjectIsGambler ChanceToFire5Percent ismap_c1m1_hotel YesKnowNames
		Response ReviveThanksGamblerProducer
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "ReviveThanksMechanicSheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva SubjectIsMechanic ChanceToFire30Percent isNotmap_c1m1_hotel
		Response ReviveThanksMechanicProducer
		then subject YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "ReviveThanksMechanicC1KnownSheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva SubjectIsCoach ChanceToFire30Percent ismap_c1m1_hotel YesKnowNames
		Response ReviveThanksMechanicProducer
		then subject YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "ReviveThanksBikerSheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva SubjectIsBiker ChanceToFire30Percent
		Response ReviveThanksBikerProducer
		then subject YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "ReviveThanksTeenGirlSheva",
		criteria ConceptRevivedByFriend IsNotCoughing IsSheva SubjectIsTeenGirl ChanceToFire30Percent
		Response ReviveThanksTeenGirlProducer
		then subject YouAreWelcome foo:0 0
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "BotPlayer_YourWelcomeSheva",
		criteria ConceptSurvivorBotYouAreWelcome IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response BotPlayer_YourWelcomeProducer
	},

	{
		name = "BotReassureComingSheva",
		criteria ConceptSurvivorBotReassureComing IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotSpeaking
		Response BotReassureComingProducer
	},

	{
		name = "BotYesReadySheva",
		criteria ConceptSurvivorBotYesReady IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotSpeaking
		Response BotReassureComingProducer
	},

	{
		name = "BotReassureNearbySheva",
		criteria ConceptSurvivorBotReassureNearby IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotSpeaking
		Response BotReassureNearbyProducer
	},

	{
		name = "C1M2LeavingSafeRoomSheva",
		criteria ConceptSurvivorLeavingInitialCheckpoint IsSheva IsNotSaidLeavingSafeArea ismap_c1m2_streets _auto_NotTellingStory
		Response C1M2LeavingSafeRoomProducer
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:1:3.298"
		applycontexttoworld
	},

	{
		name = "C1M2SafeRooma1Sheva",
		criteria ConceptC1M2SafeRooma1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2SafeRooma1Producer
		then mechanic C1M2SafeRooma2 foo:0 -2.843
	},

	{
		name = "C1M2SafeRooma2Sheva",
		criteria ConceptC1M2SafeRooma2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2SafeRooma2Producer
		then mechanic C1M2SafeRooma3 foo:0 0.1
	},

	{
		name = "C1M2SafeRooma3Sheva",
		criteria ConceptC1M2SafeRooma3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2SafeRooma3Producer
		then mechanic C1M2SafeRooma2 foo:0 0.1
	},

	{
		name = "C1M2SafeRooma4Sheva",
		criteria ConceptC1M2SafeRooma4 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2SafeRooma4Producer
		then mechanic C1M2SafeRooma2 foo:0 0.1
	},

	{
		name = "C1M2SafeRoomb3Sheva",
		criteria ConceptC1M2SafeRoomb3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2SafeRoomb3Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C1M2SafeRoomd2Sheva",
		criteria ConceptC1M2SafeRoomd2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2SafeRoomd2Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C1M2SafeRoomd2aSheva",
		criteria ConceptC1M2SafeRoomd2a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2SafeRoomd2aProducer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C1M2TankerAttackSheva",
		criteria ConceptC1M2TankerAttack2 IsSheva WhoPutColaSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M2TankerAttackProducer
		then orator C1M2GoodLuckGettingToTheMall foo:0 3
	},

	{
		name = "c1m4escapeSheva",
		criteria Conceptc1m4escape IsSheva NotSaidOutro AutoIsNotScavenge AutoIsNotSurvival
		Response c1m4escapeProducer
		ApplyContext "Talk:1:0,SaidOutro:1:0"
		applycontexttoworld
	},

	{
		name = "c1m4escapeEllisSheva",
		criteria Conceptc1m4escape IsSheva IsMechanicAlive ChanceToFire50Percent NotSaidOutro AutoIsNotScavenge AutoIsNotSurvival
		Response c1m4escapeEllisProducer
		then mechanic c1m4escapeEllisCheck foo:0 0
		ApplyContext "Talk:1:0,SaidOutro:1:0"
		applycontexttoworld
	},

	{
		name = "c1m4escapeEllisSuccessSheva",
		criteria Conceptc1m4escapeEllisCheckSuccess IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c1m4escapeEllisSuccessProducer
	},

	{
		name = "c1m4escapeEllisFailSheva",
		criteria Conceptc1m4escapeEllisCheckFail IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c1m4escapeProducer
	},

	{
		name = "C1M4GasPourSheva",
		criteria ConceptPlayerPourStarted IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotScavenge ismap_c1m4_atrium _auto_NotNoGasPourLine
		Response C1M4GasPourProducer
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "C1M4PlayerGetToRescueVehicleSheva",
		criteria ConceptGetToVehicle IsSheva ismap_c1m4_atrium IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C1M4PlayerGetToRescueVehicleProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "c1m4startelevatorSheva",
		criteria Conceptc1m4startelevator IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c1m4startelevatorProducer
		then mechanic _c1m4startelevator2c foo:0 -2.333
		ApplyContext "Talk:1:0,ElevatorTimer:1:25"
		applycontexttoworld
	},

	{
		name = "C6M3GasPourSheva",
		criteria ConceptPlayerPourStarted IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotScavenge isC6M3_Port ChanceToFire70Percent
		Response C6M3GasPourProducer
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "FinaleStartC1M4Sheva",
		criteria ConceptFinaleTriggered IsSheva IsTalkSheva IsWorldTalkSheva ismap_c1m4_atrium IsNotScavenge _auto_NotFinaleStarted
		Response FinaleStartC1M4Producer
		ApplyContext "Talk:1:3,_auto_Finale:1:0,_auto_NoLostCall:1:0"
		applycontexttoworld
	},

	{
		name = "GasPourDoneC1M4Sheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotScavenge ismap_c1m4_atrium ScoreDoneSC
		Response GasPourDoneC1M4Producer
		ApplyContext "_auto_TimerLockA:1:5"
		applycontexttoworld
	},

	{
		name = "_C2M2_Riders03Sheva",
		criteria Concept_C2M2_Riders03 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_Riders03Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "_C2M2_Riders06Sheva",
		criteria Concept_C2M2_Riders06 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_Riders06Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "_C2M2_Riders07Sheva",
		criteria Concept_C2M2_Riders07 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_Riders07Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C2M2CarouselIdleSheva",
		criteria ConceptTalkIdle IsSheva ChanceToFire30Percent IsNotIncapacitated ismap_c2m2 IsNotInSafeSpot IsNotSaidSafeSpotAhead AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C2M2CarouselIdleProducer
		ApplyContext "_auto_TimerLockA:1:13,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "c2m3_DownHoleSheva",
		criteria Conceptc2m3downhole IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c2m3_DownHoleProducer
		ApplyContext "_auto_DownHole:1:0"
		applycontexttoworld
	},

	{
		name = "c2m3CoasterEndSheva",
		criteria Conceptc2m3CoasterEnd IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c2m3CoasterEndProducer
		ApplyContext "_auto_Alarm:2:0"
		applycontexttoworld
	},

	{
		name = "C2M3CoasterRunGoSheva",
		criteria ConceptC2M3CoasterRunGo IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M3CoasterRunGoProducer
	},

	{
		name = "C2M3CoasterStartSheva",
		criteria Conceptc2m3CoasterStart IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M3CoasterStartProducer
		then mechanic _c2m3_howcool foo:0 1.0
		ApplyContext "WarnMegaMob:1:30,_auto_Alarm:1:0"
		applycontexttoworld
	},

	{
		name = "c2m3SeeChopperSheva",
		criteria Conceptc2m3SeeChopper IsSheva IsTalk IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response c2m3SeeChopperProducer
		ApplyContext "_auto_OutOfTunnel:1:0"
		applycontexttoworld
	},

	{
		name = "C2M4ButtonPressedSheva",
		criteria ConceptC2M4ButtonPressed IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M4ButtonPressedProducer
		ApplyContext "_auto_ButtonPressed:1:0"
		applycontexttoworld
	},

	{
		name = "C2M4Gate000Sheva",
		criteria ConceptC2M4Gate000 IsSheva IsNotIncapacitated ismap_c2m4 NotInCombat TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsNearGate _auto_NotNearGateNag _auto_NotTimerLockA _auto_NotTimerLockSheva _auto_NotButtonPressed IsNotSpeakingWeight0
		Response C2M4Gate000Producer
		ApplyContext "Talk:1:1.726,_auto_TimerLockA:1:20,_auto_TimerLockSheva:1:23,_auto_NearGateNag:1:0"
		applycontexttoworld
	},

	{
		name = "C2M4GateIdleSheva",
		criteria ConceptTalkIdle IsSheva IsNotIncapacitated ismap_c2m4 NotInCombat TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsNearGateNag _auto_IsNearGate _auto_NotTimerLockA _auto_NotTimerLockSheva _auto_NotButtonPressed IsNotSpeakingWeight0
		Response C2M4GateIdleProducer
		ApplyContext "Talk:1:0.854,_auto_TimerLockA:1:20,_auto_TimerLockSheva:1:23"
		applycontexttoworld
	},

	{
		name = "C2M4GateOpenCalloutSheva",
		criteria ConceptC2M4GateOpenCallout IsSheva IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response C2M4GateOpenCalloutProducer
		then any _C2M4_GateOpen001 foo:0 0.01
		ApplyContext "Talk:1:0.878"
		applycontexttoworld
	},

	{
		name = "c2m4SeeChopperSheva",
		criteria Conceptc2m4SeeChopper IsSheva IsTalk NotInCombat IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		Response c2m4SeeChopperProducer
	},

	{
		name = "C2M5_ChoppercomingSheva",
		criteria ConceptC2M5_Choppercoming IsSheva IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		Response C2M5_ChoppercomingProducer
		then any C2M5_PlanWorked foo:0 0.01
	},

	{
		name = "c2m5_intro003Sheva",
		criteria Conceptc2m5_intro003 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c2m5_intro003Producer
		then gambler c2m5_intro004 foo:0 0.1
	},

	{
		name = "c2m5_intro019Sheva",
		criteria Conceptc2m5_intro019 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c2m5_intro019Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "SurvivorReloadingC2M5Sheva",
		criteria ConceptPlayerReloading IsSurvivor IsRocking IsNotZombiePresentTank Ismap_c2m5 IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkSheva _auto_ConcertIsLive _auto_NotRockingOut
		Response SurvivorReloadingC2M5Producer
		ApplyContext "_auto_RockingOut:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorReloadingC2M5RockedOutSheva",
		criteria ConceptPlayerReloading IsSurvivor IsRocking IsNotZombiePresentTank Ismap_c2m5 IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkSheva _auto_ConcertIsLive _auto_IsRockingOut
		Response NoResponse
	},

	{
		name = "SurvivorVocalizeLookOutC2M5Sheva",
		criteria ConceptPlayerLookOut IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Ismap_c2m5 _auto_ConcertIsLive _auto_NotRockingOut
		Response SurvivorVocalizeLookOutC2M5Producer
		ApplyContext "_auto_RockingOut:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorVocalizeLookOutC2M5RockedOutSheva",
		criteria ConceptPlayerLookOut IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Ismap_c2m5 _auto_ConcertIsLive _auto_IsRockingOut
		Response NoResponse
	},

	{
		name = "C2M5ReloadingTankSheva",
		criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkSheva Ismap_c2m5 _auto_ConcertIsLive
		Response C2M5ReloadingTankProducer
		ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		applycontexttoworld
	},

	{
		name = "PlayerKillTankConfirmationC2M5Sheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva IsTalk IsTalkSheva SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsWorldTalkSheva Ismap_c2m5 _auto_ConcertIsLive
		Response PlayerKillTankConfirmationC2M5Producer
		ApplyContext "SaidTankDead:1:60,TalkSheva:1:5"
		applycontexttoworld
	},

	{
		name = "C2M5_PlanWorkedSheva",
		criteria ConceptC2M5_PlanWorked IsSheva NotCoachMadAtRiders IsNotIncapacitated NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response C2M5_PlanWorkedProducer
	},

	{
		name = "C2M5_PlanWorkedCoachMadSheva",
		criteria ConceptC2M5_PlanWorked IsSheva CoachMadAtRiders IsNotIncapacitated NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response C2M5_PlanWorkedProducer
	},

	{
		name = "C2M5_PlanWorkedbSheva",
		criteria ConceptC2M5_PlanWorked IsSheva IsCoachAlive ChanceToFire20Percent IsNotIncapacitated NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		// 	forceweight 20
		Response C2M5_PlanWorkedbProducer
	},

	{
		name = "C2M5Button1Sheva",
		criteria ConceptC2M5Button1 IsSheva AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1
		Response C2M5Button1Producer
		ApplyContext "_auto_Button1:1:0,_auto_NoLostCall:1:0"
		applycontexttoworld
	},

	{
		name = "C2M5ChopperNagSheva",
		criteria ConceptGetToVehicle IsSheva Ismap_c2m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C2M5ChopperNagProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C2M5InChopperNagSheva",
		criteria ConceptGetToVehicle IsSheva Ismap_c2m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C2M5InChopperNagProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C2M5InArenaNagSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat Ismap_c2m5 IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1 _auto_NotTimerLockA _auto_NotTimerLockSheva _auto_IsC2M5InArena IsNotSpeakingWeight0
		Response C2M5InArenaNagProducer
		ApplyContext "_auto_TimerLockA:1:30,_auto_TimerLockSheva:1:34"
		applycontexttoworld
	},

	{
		name = "C2M5_Button2YellSheva",
		criteria ConceptC2M5_Button2Yell IsSheva NotCoachMadAtRiders IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival
		Response C2M5_Button2YellProducer
	},

	{
		name = "C2M5_Button2YellCoachMadSheva",
		criteria ConceptC2M5_Button2Yell IsSheva CoachMadAtRiders IsNotSpeaking AutoIsNotScavenge AutoIsNotSurvival
		Response C2M5_Button2YellProducer
	},

	{
		name = "C2M5_ChoppercomingSheva",
		criteria ConceptC2M5_Choppercoming IsSheva IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		Response C2M5_ChoppercomingProducer
		then any C2M5_PlanWorked foo:0 0.01
		ApplyContext "_auto_ConcertLive:0:0"
		applycontexttoworld
	},

	{
		name = "C2M3SaferoomSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea Ismap_c2m3 AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response C2M3SaferoomProducer
		then self IntroEnd foo:0 0.1
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "C2M3SafeIntro005Sheva",
		criteria ConceptC2M3SafeIntro005 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M3SafeIntro005Producer
		then gambler C2M3SafeIntro009 foo:0 0.3
	},

	{
		name = "C2M3SafeIntro006Sheva",
		criteria ConceptC2M3SafeIntro006 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M3SafeIntro006Producer
		then gambler C2M3SafeIntro009 foo:0 0.3
	},

	{
		name = "C2M3SafeIntro009Sheva",
		criteria ConceptC2M3SafeIntro009 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M3SafeIntro009Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C2M3SafeIntro010Sheva",
		criteria ConceptC2M3SafeIntro010 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M3SafeIntro010Producer
		then mechanic C2M3SafeIntro010 foo:0 0.3
	},

	{
		name = "C3M1FerryEnd2Sheva",
		criteria ConceptC3M1FerryEnd2 IsSheva IsNotSaidC3M1FerryEnd AutoIsNotScavenge AutoIsNotSurvival
		Response C3M1FerryEnd2Producer
		ApplyContext "SaidC3M1FerryEnd:1:0"
		applycontexttoworld
	},

	{
		name = "WorldC3M1FerryCrossingJ2Sheva",
		criteria ConceptWorldC3M1FerryCrossingJ2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC3M1FerryCrossingJ2Producer
		then mechanic WorldC3M1FerryCrossingJ3 foo:0 -1.986
	},

	{
		name = "WorldC3M1FerryCrossingk2Sheva",
		criteria ConceptWorldC3M1FerryCrossingk2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC3M1FerryCrossingk2Producer
		then mechanic WorldC3M1FerryCrossingk3 foo:0 -1.703
	},

	{
		name = "WorldC3M1FerryCrossingL2Sheva",
		criteria ConceptWorldC3M1FerryCrossingL2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC3M1FerryCrossingL2Producer
		then mechanic WorldC3M1FerryCrossingL3 foo:0 0.1
	},

	{
		name = "C3M2DisgustSheva",
		criteria Conceptc3m2disgust IsSheva NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M2DisgustProducer
		ApplyContext "Talk:1:1.098"
		applycontexttoworld
	},

	{
		name = "C3M2SafeRoomSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat ismapc3m2_swamp IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		Response C3M2SafeRoomProducer
		then mechanic C3M2SafeRooma2 foo:0 1
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "C3M2SafeRoom2Sheva",
		criteria ConceptC3M2SafeRoom2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M2SafeRoom2Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C3M2SafeRoom2dSheva",
		criteria ConceptC3M2SafeRoom2d IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M2SafeRoom2dProducer
		then gambler C3M2SafeRoom3d foo:0 -3.763
	},

	{
		name = "InfoRemC3M2Bathtub3Sheva",
		criteria ConceptInfoRemC3M2Bathtub3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response InfoRemC3M2Bathtub3Producer
		ApplyContext "Talk:1:0.934"
		applycontexttoworld
	},

	{
		name = "_C3M2PirogueSheva",
		criteria Concept_C3M2Pirogue IsSheva ChanceToFire40Percent AutoIsNotScavenge AutoIsNotSurvival
		Response _C3M2PirogueProducer
		then mechanic _C3M2Pirogue2 foo:0 0.1
		ApplyContext "Talk:1:1.250"
		applycontexttoworld
	},

	{
		name = "_C3M2Pirogue2Sheva",
		criteria Concept_C3M2Pirogue2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C3M2Pirogue2Producer
		then coach _C3M2Pirogue2 foo:0 0.1
		ApplyContext "Talk:1:1.250"
		applycontexttoworld
	},

	{
		name = "C3M3SafeRoomSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat Ismapc3m3_shantytown IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response C3M3SafeRoomProducer
		then mechanic C3M3SafeRoom2a2 foo:0 .05
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "C3M3SafeRoom2a3Sheva",
		criteria ConceptC3M3SafeRoom2a3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M3SafeRoom2a3Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C3M3SafeRoom2c2Sheva",
		criteria ConceptC3M3SafeRoom2c2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M3SafeRoom2c2Producer
		then mechanic C3M3SafeRoom2c3 foo:0 .05
	},

	{
		name = "C3M3SafeRoom2e2Sheva",
		criteria ConceptC3M3SafeRoom2e2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M3SafeRoom2e2Producer
		then coach C3M3SafeRoom2b2 foo:0 .05
	},

	{
		name = "InfoRemC3M3Bodies2Sheva",
		criteria ConceptInfoRemC3M3Bodies2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response InfoRemC3M3Bodies2Producer
	},

	{
		name = "InfoRemC3M3Bodies3Sheva",
		criteria ConceptInfoRemC3M3Bodies3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response InfoRemC3M3Bodies3Producer
	},

	{
		name = "InfoRemC3M3LowerGateaSheva",
		criteria ConceptInfoRemC3M3LowerGatea IsSheva IsNotSaidC3M3BridgeButton IntensityUnder25 AutoIsNotScavenge AutoIsNotSurvival
		Response InfoRemC3M3LowerGateaProducer
	},

	{
		name = "C3M4BoatNagsSheva",
		criteria ConceptGetToVehicle IsSheva ismapc3m4_plantation IsNotCoughing IsNotIncapacitated IsRunning IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C3M4BoatNagsProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C3M4InBoatNagsSheva",
		criteria ConceptGetToVehicle IsSheva ismapc3m4_plantation IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C3M4InBoatNagsProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C3M4Button1ASheva",
		criteria ConceptC3M4Button1A IsSheva FromIsAnOrator _auto_IsTalkingSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M4Button1AProducer
		then orator C3M4Button101 foo:0 0.3
	},

	{
		name = "C3M4ButtonNameSheva",
		criteria ConceptC3M4ButtonName IsSheva FromIsAnOrator _auto_IsTalkingSheva AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		Response C3M4ButtonNameProducer
		then orator C3M4ButtonHowMany foo:0 0.1
	},

	{
		name = "C3M4ButtonHowManyAnswerSheva",
		criteria ConceptC3M4ButtonHowManyAnswer IsSheva FromIsAnOrator _auto_IsTalkingSheva AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		Response C3M4ButtonHowManyAnswerProducer
		then orator C3M4Button102 foo:0 0.1
	},

	{
		name = "C3M4Button201Sheva",
		criteria ConceptC3M4Button201 IsSheva FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingSheva
		Response C3M4Button201Producer
		then orator C3M4Button202 foo:0 0.01
		ApplyContext "Talk:1:1.737"
		applycontexttoworld
	},

	{
		name = "C3M4Button202Sheva",
		criteria ConceptC3M4Button202 FromIsAnOrator _auto_IsTalkingSheva IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C3M4Button202Producer
		ApplyContext "Talk:1:3.424"
		applycontexttoworld
	},

	{
		name = "C3M4GateBlow01Sheva",
		criteria ConceptC3M4GateBlow01 IsSheva FromIsAnOrator IsTalk AutoIsNotScavenge AutoIsNotSurvival
		Response C3M4GateBlow01Producer
		then orator C3M4GateBlow02 foo:0 0.01
		ApplyContext "_auto_TimerLockA:1:3"
		applycontexttoworld
	},

	{
		name = "C4StormBlindIdleSheva",
		criteria ConceptTalkIdle IsSheva ChanceToFire30Percent IsNotIncapacitated _auto_NotTimerLockA _auto_IsTimerA _auto_NotC4ShevaInCover IsNotSpeakingWeight0
		Response C4StormBlindIdleProducer
		ApplyContext "_auto_TimerA:0:0"
		applycontexttoworld
	},

	{
		name = "C4M2IdleWitchville01Sheva",
		criteria ConceptPlayerWarnHearZombie IsWitchClass IsSurvivor ismap_c4m2_sugarmill_a IsNotSpeaking IsNotAlone IsClosestSurvivorNear1200 IsSheva IsNotIncapacitated IsTalk IsTalkSheva NotinCombat IsWorldTalkSheva NotSaidLotsOfWitches IsNotSaidSafeSpotAhead _auto_IsShevaInWitchville
		Response C4M2IdleWitchville01Producer
		then any _c4m2_Witchville05 foo:0 0.01
		ApplyContext "SaidWitchWarn:1:20,WarnHeardWitch:1:300,SaidLotsOfWitches:1:90"
		applycontexttoworld
	},

	{
		name = "C4M2PushedButtonSheva",
		criteria Conceptc4m2_elevator_top_button IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C4M2PushedButtonProducer
		ApplyContext "SaidActivatedC4M2Elevator:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "C4M5BoatNagsSheva",
		criteria ConceptGetToVehicle IsSheva Isc4m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C4M5BoatNagsProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C4M5InBoatNagsSheva",
		criteria ConceptGetToVehicle IsSheva Isc4m5 IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C4M5InBoatNagsProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C5M1_intro002Sheva",
		criteria ConceptC5M1_intro002 IsSheva IsAlone AutoIsNotScavenge AutoIsNotSurvival
		Response C5M1_intro002Producer
		then orator C5M1_intro003 foo:0 0.01
	},

	{
		name = "C5M1_intro004Sheva",
		criteria ConceptC5M1_intro004 IsSheva IsEveryoneAlive AutoIsNotScavenge AutoIsNotSurvival
		Response C5M1_intro004Producer
		then any C5M1_intro005 foo:0 0.01
	},

	{
		name = "C5M1_intro005Sheva",
		criteria ConceptC5M1_intro005 IsSheva IsEveryoneAlive AutoIsNotScavenge AutoIsNotSurvival
		Response C5M1_intro005Producer
		then Mechanic C5M1_intro009 foo:0 0.01
	},

	{
		name = "C5M1_intro010Sheva",
		criteria ConceptC5M1_intro010 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M1_intro010Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C5M1Flyby01Sheva",
		criteria ConceptC5M1Flyby01 IsSheva IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival ChanceToFire80Percent
		Response C5M1Flyby01Producer
		then any C5M1Flyby02 foo:0 0.1
	},

	{
		name = "C5M1Flyby02Sheva",
		criteria ConceptC5M1Flyby02 IsSheva IsNotCoughing NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		Response C5M1Flyby02Producer
	},

	{
		name = "C5M2_signcontagious01Sheva",
		criteria ConceptC5M2_signcontagious01 IsSheva IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response C5M2_signcontagious01Producer
	},

	{
		name = "C5M2AlarmNagSheva",
		criteria ConceptTalkIdle IsSheva IsMapc5m2_park AutoIsNotScavenge AutoIsNotSurvival ChanceToFire80Percent _auto_IsAlarm _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C5M2AlarmNagProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:13"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc5m2parkSheva",
		criteria ConceptRemark IsSheva Isc5m2park IsNotSaidc5m2park IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m2parkProducer
		ApplyContext "Saidc5m2park:1:0,Talk:1:1.354"
		applycontexttoworld
	},

	{
		name = "C5M3AlarmFieldNagsSheva",
		criteria ConceptTalkIdle IsSheva AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery NotInCombat IsNotCoughing IsTalk _auto_IsInAlarmField _auto_NotTimerLockA _auto_NotAlarmFieldOn IsNotSpeakingWeight0
		// 	forceweight 200
		Response C5M3AlarmFieldNagsProducer
		ApplyContext "Talk:1:2.508,_auto_TimerLockA:1:12"
		applycontexttoworld
	},

	{
		name = "C5M3FirstInAlarmSheva",
		criteria ConceptC5M3FirstInAlarmField IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M3FirstInAlarmProducer
		ApplyContext "Saidremark_caralarm:1:0,Talk:1:2.382"
		applycontexttoworld
	},

	{
		name = "C5M3GraveNagsSheva",
		criteria ConceptTalkIdle IsSheva AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery NotInCombat IsNotCoughing IsTalk ChanceToFire10Percent IsNotAlone TimeSinceGroupInCombat02 IsNotSaidSafeSpotAhead _auto_IsOffHighway IsNotSpeakingWeight0
		Response C5M3GraveNagsProducer
	},

	{
		name = "C5M3Jets2Sheva",
		criteria Conceptc5m3Jets2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M3Jets2Producer
		then self C5M3Jets3 foo:0 0.3
		ApplyContext "Talk:1:2.098"
		applycontexttoworld
	},

	{
		name = "C5M3Jets3Sheva",
		criteria ConceptC5M3Jets3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M3Jets3Producer
		ApplyContext "Talk:1:2.098"
		applycontexttoworld
	},

	{
		name = "C5M3OnBridgeSheva",
		criteria Conceptc5m3OnBridge IsSheva IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
		ApplyContext "Talk:1:1.546,_auto_AlarmFieldOn:2:0"
		applycontexttoworld
	},

	{
		name = "C5M3SeeGraveyard01Sheva",
		criteria ConceptC5M3SeeGraveyard01 IsSheva IssuerClose NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response C5M3SeeGraveyard01Producer
		ApplyContext "Talk:1:2.855"
		applycontexttoworld
	},

	{
		name = "C5M3ShootCarSheva",
		criteria ConceptPanicEvent IsSheva AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsSheva IsCarAlarm _auto_IsInAlarmField _auto_NotAlarmFieldOn
		Response C5M3ShootCarProducer
		ApplyContext "_auto_AlarmFieldOn:1:0,_auto_TimerLockA:1:2,WarnMegaMob:1:300"
		applycontexttoworld
	},

	{
		name = "C5M3ShootCar2Sheva",
		criteria ConceptPanicEvent IsSheva AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsNotSheva IsCarAlarm ChanceToFire25Percent _auto_IsInAlarmField _auto_ShotSecondCar _auto_IsAlarmFieldOn _auto_NotTimerLockA
		Response C5M3ShootCar2Producer
		ApplyContext "_auto_ShotCar:++1,_auto_TimerLockA:1:4"
		applycontexttoworld
	},

	{
		name = "C5M3ShootCar3Sheva",
		criteria ConceptPanicEvent IsSheva AutoIsNotScavenge AutoIsNotSurvival IsMapc5m3_cemetery SubjectIsNotSheva IsCarAlarm ChanceToFire25Percent IsNotSpeaking _auto_IsInAlarmField _auto_IsAlarmFieldOn _auto_ShotThirdCar _auto_NotTimerLockA
		Response C5M3ShootCar3Producer
		ApplyContext "Talk:1:2.879,_auto_ShotCar:++1"
		applycontexttoworld
	},

	{
		name = "C5M3Sniper01Sheva",
		criteria ConceptC5M3Sniper01 IsSheva IsNotCoughing NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		Response C5M3Sniper01Producer
		ApplyContext "Talk:1:5"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc5m3bodiesSheva",
		criteria ConceptRemark IsSheva Isc5m3bodies NotInCombat IsSubjectNear100 IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response PlayerRemarkc5m3bodiesProducer
		then any WorldC502NotZombies3 foo:0 0.1
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc5m2peopleSheva",
		criteria ConceptRemark IsSheva Isc5m2people IsNotSaidc5m2people IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m2peopleProducer
		ApplyContext "Saidc5m2people:1:0,Talk:1:1.850"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkc5m2peopleSheva",
		criteria ConceptRemark IsSheva Isc5m2people IsNotSaidc5m2people IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "Saidc5m2people:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC502NotZombies2Sheva",
		criteria ConceptWorldC502NotZombies2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkWorldC502NotZombies2Producer
		then mechanic WorldC502NotZombies2 foo:0 0.1
	},

	{
		name = "PlayerRemarkWorldC502NotZombies3bSheva",
		criteria ConceptWorldC502NotZombies3b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkWorldC502NotZombies3bProducer
		then coach WorldC502NotZombies3b foo: 0.1
	},

	{
		name = "PlayerRemarkc5m3insewerSheva",
		criteria ConceptRemark IsSheva Isc5m3insewer IsNotSaidc5m3insewer IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear250 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m3insewerProducer
		ApplyContext "Saidc5m3insewer:1:0,_auto_InSewer:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc5m3offhighwaySheva",
		criteria ConceptRemark IsSheva Isc5m3offhighway IsNotSaidc5m3offhighway IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m3offhighwayProducer
		ApplyContext "Saidc5m3offhighway:1:0,_auto_OffHighway:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc5m3upladderSheva",
		criteria ConceptRemark IsSheva Isc5m3upladder IsNotSaidc5m3upladder IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m3upladderProducer
		ApplyContext "Saidc5m3upladder:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc5m3upstepsSheva",
		criteria ConceptRemark IsSheva Isc5m3upsteps IsNotSaidc5m3upsteps IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m3upstepsProducer
		ApplyContext "Saidc5m3upsteps:1:0"
		applycontexttoworld
	},

	{
		name = "C5M4BombExtSheva",
		criteria ConceptC5M4BombExt IsSheva NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea
		Response C5M4BombExtProducer
		ApplyContext "Talk:1:2.203"
		applycontexttoworld
	},

	{
		name = "C5M4BombInt01Sheva",
		criteria ConceptC5M4BombInt IsSheva AutoIsNotScavenge AutoIsNotSurvival _auto_NoAirstrikes
		Response C5M4BombInt01Producer
		then any C5M4BombIntA foo:0 0.01
		ApplyContext "_auto_Airstrike:++1"
		applycontexttoworld
	},

	{
		name = "C5M4BombInt01ASheva",
		criteria ConceptC5M4BombIntA IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M4BombInt01AProducer
	},

	{
		name = "C5M4BombInt02Sheva",
		criteria ConceptC5M4BombInt IsSheva NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_FirstAirstrike
		Response C5M4BombInt02Producer
		ApplyContext "Talk:1:2.203,_auto_Airstrike:++1"
		applycontexttoworld
	},

	{
		name = "C5M4BombInt03Sheva",
		criteria ConceptC5M4BombInt IsSheva NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_SecondAirstrike
		Response C5M4BombInt03Producer
		ApplyContext "Talk:1:1.930,_auto_Airstrike:++1"
		applycontexttoworld
	},

	{
		name = "C5M4BombIntManySheva",
		criteria ConceptC5M4BombInt IsSheva NotInCombat IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInStartArea _auto_ManyAirstrikes
		Response C5M4BombInt03Producer
		ApplyContext "Talk:1:1.930,_auto_Airstrike:++1"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc5m4inminifinaleSheva",
		criteria ConceptRemark IsSheva Isc5m4inminifinale IsNotSaidc5m4inminifinale IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m4inminifinaleProducer
		ApplyContext "Saidc5m4inminifinale:1:0,_auto_InMiniFinale:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc5m4seebridgeSheva",
		criteria ConceptRemark IsSheva Isc5m4seebridge IsNotSaidc5m4seebridge IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m4seebridgeProducer
		ApplyContext "Saidc5m4seebridge:1:0,_auto_SawBridge:1:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptSheva",
		criteria ConceptSurvivorLeavingInitialCheckpoint IsNotSaidLeavingSafeArea IsSheva _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptProducer
		then Mechanic EllisStoryReac01 foo:0 0.01
		ApplyContext "Talk:1:1.756,SaidLeavingSafeArea:1:0,_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptGenericSheva",
		criteria ConceptEllisInterrupt IsSheva _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptGenericProducer
		then Mechanic EllisStoryReac01 foo:0 0.01
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC1M2Sheva",
		criteria ConceptEllisInterrupt IsSheva ismap_c1m2_streets _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptC1M2Producer
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC1M3Sheva",
		criteria ConceptEllisInterrupt IsSheva ismap_c1m3_mall _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptGenericProducer
		then Mechanic EllisStoryReac01 foo:0 0.01
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC2M5Sheva",
		criteria ConceptEllisInterrupt IsSheva ismap_c2m5 _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptGenericProducer
		then Mechanic EllisStoryReac01 foo:0 0.01
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC3M2Sheva",
		criteria ConceptEllisInterrupt IsSheva ismapc3m2_swamp _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptC3M2Producer
		then Mechanic PlayerYes foo:0 0.1
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC4M3Sheva",
		criteria ConceptEllisInterrupt IsSheva isc4m3 _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptGenericProducer
		then Mechanic EllisStoryReac01 foo:0 0.01
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC4M4Sheva",
		criteria ConceptEllisInterrupt IsSheva isc4m4 _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptGenericProducer
		then Mechanic EllisStoryReac01 foo:0 0.01
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC5M2Sheva",
		criteria ConceptEllisInterrupt IsSheva IsMapc5m2_park _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptGenericProducer
		then Mechanic EllisStoryReac01 foo:0 0.01
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC5M5Sheva",
		criteria ConceptEllisInterrupt IsSheva IsMapc5m5_bridge _auto_IsTellingStory _auto_NotDidInterrupt
		Response EllisStoryInterruptGenericProducer
		then Mechanic EllisStoryReac01 foo:0 0.01
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryInterruptC6M3Sheva",
		criteria ConceptEllisInterrupt IsSheva Isc6m3_port _auto_IsTellingStory _auto_NotDidInterrupt IsNotSaidC6M3Elevator
		Response EllisStoryInterruptC6M3Producer
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},

	{
		name = "EllisStoryReac01Sheva",
		criteria ConceptEllisStoryReac01 IsSheva ismapc3m2_swamp
		Response EllisStoryReac01Producer
	},

	{
		name = "C5M5_Button2Sheva",
		criteria ConceptC5M5_Button2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M5_Button2Producer
		ApplyContext "_auto_BridgeNag:0:0"
		applycontexttoworld
	},

	{
		name = "C5M5_GateDownSheva",
		criteria ConceptC5M5_GateDown IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M5_GateDownProducer
	},

	{
		name = "C5M5_Button2207Sheva",
		criteria ConceptC5M5_Button2207 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M5_Button2207Producer
	},

	{
		name = "C5M5_SurvivorConv01Sheva",
		criteria ConceptC5M5_SurvivorConv01 IsSheva FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingSheva _auto_NotButton2
		Response C5M5_SurvivorConv01Producer
		then orator C5M5_Soldier1Conv03 foo:0 0.01
	},

	{
		name = "C5M5_SurvivorConv02Sheva",
		criteria ConceptC5M5_SurvivorConv02 IsSheva FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingSheva _auto_NotButton2
		Response C5M5_SurvivorConv02Producer
		then orator C5M5_Soldier1Conv04 foo:0 0.01
	},

	{
		name = "C5M5_SurvivorConv03Sheva",
		criteria ConceptC5M5_SurvivorConv03 IsSheva FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingSheva _auto_NotButton2
		Response C5M5_SurvivorConv03Producer
		then orator C5M5_Soldier1Conv05 foo:0 0.01
	},

	{
		name = "C5M5_SurvivorConv04Sheva",
		criteria ConceptC5M5_SurvivorConv04 IsSheva FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingSheva _auto_NotButton2
		Response C5M5_SurvivorConv04Producer
		then orator C5M5_Soldier1Conv08 foo:0 0.01
	},

	{
		name = "C5M5_SurvivorConv05Sheva",
		criteria ConceptC5M5_SurvivorConv05 IsSheva FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingSheva _auto_NotButton2
		Response C5M5_SurvivorConv04Producer
		then orator C5M5_Soldier1Conv08 foo:0 0.01
	},

	{
		name = "C5M5_LowerTheBridgeSheva",
		criteria ConceptTalkIdle IsSheva IsMapc5m5_bridge ChanceToFire90Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotTimerLockA _auto_NotTimerLockSheva _auto_IsBridgeNag IsNotSpeakingWeight0
		Response C5M5_LowerTheBridgeProducer
		ApplyContext "_auto_TimerLockA:1:30,_auto_TimerLockSheva:1:15"
		applycontexttoworld
	},

	{
		name = "C5M5Button1Sheva",
		criteria ConceptC5M5Button1 IsSheva FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingSheva _auto_NotButton2
		Response C5M5Button1Producer
		then Orator C5M5_Soldier1Conv01 foo:0 0.01
	},

	{
		name = "C5M5Button1BuzzardRunSheva",
		criteria ConceptC5M5Button1 IsSheva FromIsAnOrator AutoIsNotScavenge AutoIsNotSurvival _auto_IsTalkingSheva _auto_NotButton2 _auto_IsBuzzardRunMentioned
		Response C5M5Button1BuzzardRunProducer
		then Orator C5M5_Soldier1Conv01 foo:0 0.01
	},

	{
		name = "C5M5HearSoldiersSheva",
		criteria ConceptTalkIdle IsSheva IsMapc5m5_bridge ChanceToFire90Percent AutoIsNotScavenge _auto_NotRadioNag AutoIsNotSurvival _auto_IsSoldierChatter _auto_NotButton1 _auto_NotTimerLockA _auto_NotTimerLockSheva
		Response C5M5HearSoldiersProducer
		ApplyContext "_auto_RadioNag:1:0,_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:15"
		applycontexttoworld
	},

	{
		name = "C5M5HearSoldiersNagSheva",
		criteria ConceptTalkIdle IsSheva IsMapc5m5_bridge ChanceToFire90Percent AutoIsNotScavenge AutoIsNotSurvival _auto_IsSoldierChatter _auto_NotButton1 _auto_IsRadioNag _auto_NotTimerLockA _auto_NotTimerLockSheva
		Response C5M5HearSoldiersNagProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:15"
		applycontexttoworld
	},

	{
		name = "C5M5LeaveSafeSheva",
		criteria ConceptSurvivorLeavingInitialCheckpoint IsSheva IsMapc5m5_bridge IsNotSaidLeavingSafeArea
		Response C5M5LeaveSafeProducer
		then orator C5M5_Soldier1 foo:0 0.01
		ApplyContext "Talk:0:0,SaidLeavingSafeArea:1:0,_auto_TimerLockA:1:5,_auto_SoldierChatter:1:0"
		applycontexttoworld
	},

	{
		name = "C5M5RescueStartSheva",
		criteria ConceptFinalVehicleSpotted IsSheva IsMapc5m5_bridge _auto_IsFinaleStarted
		Response C5M5RescueStartProducer
		then orator_chopper C5M5SoldierHeliNag foo:0 0.01
		ApplyContext "_auto_Finale:2:0,_auto_TimerLockA:1:5"
		applycontexttoworld
	},

	{
		name = "C5M5RunToHeliSheva",
		criteria ConceptGetToVehicle IsSheva IsMapc5m5_bridge IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C5M5RunToHeliProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C5M5BridgeDestroyed2Sheva",
		criteria ConceptC5M5BridgeDestroyed2 IsSheva IsNotIncapacitated IsEveryoneAlive CanSpeakC5M5SurvivorOutro
		Response C5M5BridgeDestroyed2Producer
	},

	{
		name = "PlayerKillTankConfirmationC5M5Sheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva IsTalk IsTalkSheva SubjectIsTank IsNotAlone IsNotIncapacitated IsWorldTalkSheva IsMapc5m5_bridge IsNotSurvival
		Response PlayerKillTankConfirmationC5M5Producer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "C5M5_saferoom004Sheva",
		criteria ConceptC5M5_saferoom004 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C5M5_saferoom004Producer
	},

	{
		name = "C6M1_IntotheparkNoHealthSheva",
		criteria ConceptC6M1_IntotheparkNoHealth IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1_IntotheparkNoHealthProducer
	},

	{
		name = "C6M1Intro_01Biker03Sheva",
		criteria ConceptintroC6M1 IsSheva IsFrancisIntroActor IsNotSaidCXM1Intro IsNotVersus ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival
		// 	forceweight 1
		Response C6M1Intro_01Biker03Producer
		then Biker C6M1Intro_06a foo:0 -2.023
		ApplyContext "CXM1Intro:1:0,Talk:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_01TeenGirl03Sheva",
		criteria ConceptintroC6M1 IsSheva IsZoeyIntroActor IsNotSaidCXM1Intro IsNotVersus ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival
		// 	forceweight 1
		Response C6M1Intro_01TeenGirl03Producer
		then TeenGirl C6M1Intro_03a foo:0 -3.225
		ApplyContext "CXM1Intro:1:0,Talk:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_05aSheva",
		criteria ConceptC6M1Intro_05a IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_05aProducer
		then Biker C6M1Intro_05b foo:0 -2.451
	},

	{
		name = "C6M1Intro_05cSheva",
		criteria ConceptC6M1Intro_05c IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_05cProducer
		then Biker C6M1Intro_05d foo:0 -1.958
	},

	{
		name = "C6M1Intro_05eSheva",
		criteria ConceptC6M1Intro_05e IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_05eProducer
		then Any WorldC6M1_HistoricTour foo:0 -1.874
	},

	{
		name = "C6M1Intro_06bSheva",
		criteria ConceptC6M1Intro_06b IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_06bProducer
		then Biker C6M1Intro_06c foo:0 -2.236
	},

	{
		name = "C6M1Intro_06dSheva",
		criteria ConceptC6M1Intro_06d IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_06dProducer
		then Biker C6M1Intro_06e foo:0 -0.709
	},

	{
		name = "C6M1Intro_07bSheva",
		criteria ConceptC6M1Intro_07b IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_07bProducer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C6M1Intro_07cSheva",
		criteria ConceptC6M1Intro_07c IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_07cProducer
		then Any WorldC6M1_HistoricTour foo:0 1
	},

	{
		name = "C6M1Intro_09eSheva",
		criteria ConceptC6M1Intro_09e IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_09eProducer
		then Sheva C6M1Intro_09f foo:0 -2.022
	},

	{
		name = "C6M1Intro_09fSheva",
		criteria ConceptC6M1Intro_09f IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_09fProducer
		then Biker C6M1Intro_09g foo:0 -1.643
	},

	{
		name = "C6M1Intro_10bSheva",
		criteria ConceptC6M1Intro_10b IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_10bProducer
		then Biker C6M1Intro_10c foo:0 -4.931
	},

	{
		name = "C6M1Intro_10dSheva",
		criteria ConceptC6M1Intro_10d IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_10dProducer
		then Sheva C6M1Intro_10e foo:0 -2.369
	},

	{
		name = "C6M1Intro_10eSheva",
		criteria ConceptC6M1Intro_10e IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_10eProducer
	},

	{
		name = "C6M1Intro_12aSheva",
		criteria ConceptC6M1Intro_12a IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_12aProducer
		then Mechanic C6M1Intro_12b foo:0 -2.341
	},

	{
		name = "C6M1Intro_12cSheva",
		criteria ConceptC6M1Intro_12c IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_12cProducer
		then Any WorldC6M1_HistoricTour foo:0 1
	},

	{
		name = "C6M1Intro_14dSheva",
		criteria ConceptC6M1Intro_14d IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_14dProducer
	},

	{
		name = "C6M1Intro_15cSheva",
		criteria ConceptC6M1Intro_15c IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_15cProducer
		then TeenGirl C6M1Intro_15d foo:0 -2.339
	},

	{
		name = "C6M1Intro_17bSheva",
		criteria ConceptC6M1Intro_17b IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_17bProducer
		then TeenGirl C6M1Intro_17c foo:0 -4.790
	},

	{
		name = "C6M1Intro_17dSheva",
		criteria ConceptC6M1Intro_17d IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_17dProducer
	},

	{
		name = "C6M1Intro_18bSheva",
		criteria ConceptC6M1Intro_18b IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_18bProducer
		then Biker C6M1Intro_18c foo:0 -2.243
	},

	{
		name = "C6M1Intro_18dSheva",
		criteria ConceptC6M1Intro_18d IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_18dProducer
		then Biker C6M1Intro_18e foo:0 -2.015
	},

	{
		name = "C6M1Intro_19bSheva",
		criteria ConceptC6M1Intro_19b IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_19bProducer
		then Any WorldC6M1_HistoricTour foo:0 1
	},

	{
		name = "C6M1Intro_20aSheva",
		criteria ConceptC6M1Intro_20a IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_20aProducer
		then Sheva C6M1Intro_20b foo:0 -0.951
	},

	{
		name = "C6M1Intro_20bSheva",
		criteria ConceptC6M1Intro_20b IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_20bProducer
		then Biker C6M1Intro_20c foo:0 -2.037
	},

	{
		name = "C6M1Intro_20dSheva",
		criteria ConceptC6M1Intro_20d IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_20dProducer
		then Biker C6M1Intro_20e foo:0 -4.900
		ApplyContext "C6M1_ShevaIsAVampire:1:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_20fSheva",
		criteria ConceptC6M1Intro_20f IsSheva IsShevaAVampire IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_20fProducer
		then biker C6M1Intro_20f foo:0 0.1
	},

	{
		name = "C6M1Intro_20gSheva",
		criteria ConceptC6M1Intro_20g IsSheva IsShevaAVampire IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_20gProducer
	},

	{
		name = "C6M1Intro_22aSheva",
		criteria ConceptC6M1Intro_22a IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_22aProducer
		then TeenGirl C6M1Intro_22b foo:0 -3.403
	},

	{
		name = "C6M1Intro_22cSheva",
		criteria ConceptC6M1Intro_22c IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_22cProducer
		then TeenGirl C6M1Intro_22d foo:0 -2.930
	},

	{
		name = "C6M1Intro_22fSheva",
		criteria ConceptC6M1Intro_22f IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_22fProducer
		then TeenGirl C6M1Intro_22g foo:0 -3.037
	},

	{
		name = "C6M1Intro_22hSheva",
		criteria ConceptC6M1Intro_22h IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_22hProducer
	},

	{
		name = "C6M1Intro_24bSheva",
		criteria ConceptC6M1Intro_24b IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_24bProducer
		then mechanic C6M1Intro_24c foo:0 0.1
	},

	{
		name = "C6M1Intro_ConfirmObjectiveSheva",
		criteria ConceptC6M1Intro_ConfirmObjective IsSheva IsNotVersus AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Intro_ConfirmObjectiveProducer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "LeavingC6M1StartSheva",
		criteria ConceptSurvivorLeavingCheckpoint IsNotSaidLeavingSafeArea IsSheva IsNotAlone YesHasFirstAidKit Isc6m1_riverbank AutoIsNotScavenge AutoIsNotSurvival IsNotSpeaking
		Response LeavingC6M1StartProducer
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},

	{
		name = "LeavingC6M1StartNoHealthSheva",
		criteria ConceptSurvivorLeavingCheckpoint IsNotSaidLeavingSafeArea IsSheva IsNotAlone NoHasFirstAidKit Isc6m1_riverbank AutoIsNotScavenge AutoIsNotSurvival
		Response LeavingC6M1StartNoHealthProducer
		then any C6M1_IntotheparkNoHealth foo:0 0.1
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Start1Sheva",
		criteria ConceptC6M1Start1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C6M1Start1Producer
		then mechanic C6M1Start2 foo:0 0.1
	},

	{
		name = "RemWorldC6M1_WeddingWarn01Sheva",
		criteria ConceptRemWorldC6M1_WeddingWarn01 IsSheva IsSubjectDistNear800 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response RemWorldC6M1_WeddingWarn01Producer
	},

	{
		name = "WorldC6M1_HistoricTourSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_HistoricTour IsNotSaidWorldC6M1_HistoricTour CanRemarkWorldC6M1_HistoricTour IsSubjectNear800 IsTalk IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M1_HistoricTourProducer
		then Coach HistoricTour02a foo:0 -3.829
		ApplyContext "SaidWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
	},

	{
		name = "WorldC6M1_PostWedding02aSheva",
		criteria ConceptWorldC6M1_PostWedding02a IsSheva IsSubjectDistNear800 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M1_PostWedding02aProducer
	},

	{
		name = "WorldC6M1_WeddingWarn03aSheva",
		criteria ConceptWorldC6M1_WeddingWarn03a IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M1_WeddingWarn03aProducer
	},

	{
		name = "WorldC6M1_WeddingWarn03bSheva",
		criteria ConceptWorldC6M1_WeddingWarn03b IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M1_WeddingWarn03bProducer
	},

	{
		name = "WorldC6M1_WeddingWarn03cSheva",
		criteria ConceptWorldC6M1_WeddingWarn03c IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M1_WeddingWarn03bProducer
	},

	{
		name = "C6M2_OpenGate1Sheva",
		criteria ConceptC6M2_OpenGate1 IsSheva
		Response C6M2_OpenGate1Producer
		ApplyContext "SaidOpenedGate1:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "C6M2_OpenGate2Sheva",
		criteria ConceptC6M2_OpenGate2 IsSheva
		Response C6M2_OpenGate2Producer
		ApplyContext "SaidOpenedGate2:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo01aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo01a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo01aProducer
		then Gambler DLC1_C6M2_SafeRoomConvo01b foo:0 -2.711
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo03a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo03aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo03b foo:0 -2.886
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03aZoeySheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo03a IsSheva IsZoeyIntroActor ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo03aZoeyProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo03b foo:0 -2.886
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03cSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo03c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo03cProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo06aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo06a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo06aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvoFrancisStartSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat Isc6m2_bedlam IsInStartArea IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsFrancisIntroActor IsGamblerAlive ChanceToFire50Percent _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response DLC1_C6M2_SafeRoomConvoFrancisStartProducer
		then Gambler DLC1_C6M2_SafeRoomConvo08a foo:0 -1.679
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo07aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo07a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo07aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08bSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo08b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo08bProducer
		then Gambler DLC1_C6M2_SafeRoomConvo08c foo:0 -1.262
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08dSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo08d IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo08dProducer
		then Gambler DLC1_C6M2_SafeRoomConvo08e foo:0 -0.977
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08fSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo08f IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo08fProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo10aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo10a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo10aProducer
		then Gambler DLC1_C6M2_SafeRoomConvo10b foo:0 -2.753
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo10cSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo10c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo10cProducer
		then Gambler DLC1_C6M2_SafeRoomConvo10d foo:0 -3.678
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo14a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo14aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo14b foo:0 -5.157
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14cSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo14c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo14cProducer
		then Coach DLC1_C6M2_SafeRoomConvo14d foo:0 -3.757
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14eSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo14e IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo14eProducer
		then Gambler DLC1_C6M2_SafeRoomConvo14f foo:0 -0.987
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo15aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo15a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo15aProducer
		then Coach DLC1_C6M2_SafeRoomConvo15b foo:0 -3.064
	},

	{
		name = "DLC1_C6M2_SafeRoomConvoStartSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat Isc6m2_bedlam IsInStartArea IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsEveryoneAlive _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response DLC1_C6M2_SafeRoomConvoStartProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo17a foo:0 -10.043
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo16a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo16aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo16b foo:0 -5.036
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16cSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo16c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo16cProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo16d foo:0 -3.803
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo17bSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo17b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo17bProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo18a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo18aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo18b foo:0 -2.626
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18dSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo18d IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo18dProducer
		then Coach DLC1_C6M2_SafeRoomConvo18e foo:0 -1.428
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo19a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo19aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19fSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo19f IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo19fProducer
		then mechanic DLC1_C6M2_SafeRoomConvo19g foo:0 0.1
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo20aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo20a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo20aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo21aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo21a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M2_SafeRoomConvo21aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo21b foo:0 -3.574
	},

	{
		name = "WorldC6M2_InSewer101aSheva",
		criteria ConceptWorldC6M2_InSewer101a IsSheva IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_InSewer101aProducer
		then Sheva WorldC6M2_InSewer101b foo:0 -2.388
	},

	{
		name = "WorldC6M2_InSewer101bSheva",
		criteria ConceptWorldC6M2_InSewer101b IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_InSewer101bProducer
		then Gambler WorldC6M2_InSewer202a foo:0 0.1
	},

	{
		name = "WorldC6M2_InSewer202aSheva",
		criteria ConceptWorldC6M2_InSewer202a IsSheva IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_InSewer202aProducer
	},

	{
		name = "WorldC6M2_OnTourWalk101aSheva",
		criteria ConceptWorldC6M2_OnTourWalk101a IsSheva IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_OnTourWalk101aProducer
		then Sheva WorldC6M2_OnTourWalk101b foo:0 -0.850
	},

	{
		name = "WorldC6M2_OnTourWalk101bSheva",
		criteria ConceptWorldC6M2_OnTourWalk101b IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_OnTourWalk101bProducer
	},

	{
		name = "WorldC6M2_OnTourWalk102bSheva",
		criteria ConceptWorldC6M2_OnTourWalk102b IsSheva IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_OnTourWalk102bProducer
	},

	{
		name = "WorldC6M2_Phase201aSheva",
		criteria ConceptWorldC6M2_Phase201a IsSheva IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_Phase201aProducer
	},

	{
		name = "WorldC6M2_Tattoo01aSheva",
		criteria ConceptWorldC6M2_Tattoo01a IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_Tattoo01aProducer
		then Gambler WorldC6M2_Tattoo01b foo:0 -2.084
	},

	{
		name = "WorldC6M2_Tattoo02aSheva",
		criteria ConceptWorldC6M2_Tattoo02a IsSheva IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_Tattoo02aProducer
		then Coach WorldC6M2_Tattoo02b foo:0 -0.489
	},

	{
		name = "WorldC6M2_Tattoo02cSheva",
		criteria ConceptWorldC6M2_Tattoo02c IsSheva IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_Tattoo02cProducer
	},

	{
		name = "WorldC6M2_Tattoo02dSheva",
		criteria ConceptWorldC6M2_Tattoo02d IsSheva IssuerClose IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_Tattoo02dProducer
	},

	{
		name = "WorldC6M2_TourEntrance01aSheva",
		criteria ConceptWorldC6M2_TourEntrance01a IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldC6M2_TourEntrance01aProducer
	},

	{
		name = "C6M3_BridgeDownSheva",
		criteria ConceptC6M3_BridgeDown IsSheva
		Response C6M3_BridgeDownProducer
	},

	{
		name = "C6M3_BridgeGettoCarSheva",
		criteria ConceptGetToVehicle IsSheva Isc6m3_port IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C6M3_BridgeGettoCarProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C6M3_elevatorCancelSheva",
		criteria ConceptC6M3_ElevatorCancel IsSheva IsC6M3_port AutoIsNotScavenge AutoIsNotSurvival
		// 	forceweight 1
		Response _PlayerInfoRemarkableBlankProducer
	},

	{
		name = "C6M3_elevatorSheva",
		criteria Conceptc6m3_elevator IsSheva IsC6M3_port IsNotSaidC6M3Elevator AutoIsNotScavenge AutoIsNotSurvival
		Response C6M3_elevatorProducer
		ApplyContext "SaidC6M3Elevator:1:0,Talk:1:10"
		applycontexttoworld
	},

	{
		name = "C6M3_GivenItemBikerSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorBiker Isc6m3_port
		Response C6M3_GivenItemBikerProducer
	},

	{
		name = "C6M3_GivenItemBikerIntroSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorBiker Isc6m3_port IsFrancisIntroActor
		Response C6M3_GivenItemBikerIntroProducer
	},

	{
		name = "C6M3_GivenItemTeenGirlSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorTeenGirl Isc6m3_port
		Response C6M3_GivenItemTeenGirlProducer
	},

	{
		name = "DLC1_C6M3_SafeRoomConvoFrancisStartSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat isC6m3_port IsInStartArea IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsFrancisIntroActor _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response DLC1_C6M3_SafeRoomConvoFrancisStartProducer
		then Mechanic DLC1_C6M3_SafeRoomConvo01a foo:0 -1.260
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01bSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo01b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo01bProducer
		then Mechanic DLC1_C6M3_SafeRoomConvo01c foo:0 -0.926
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02a1Sheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo02a1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo02a1Producer
		then Gambler DLC1_C6M3_SafeRoomConvo02b foo:0 -0.760
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02cSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo02c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo02cProducer
		then Gambler DLC1_C6M3_SafeRoomConvo02d foo:0 -1.258
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04bSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo04b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo04bProducer
		then Gambler DLC1_C6M3_SafeRoomConvo04c foo:0 -2.568
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04dSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo04d IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo04dProducer
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo05cSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo05c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo05cProducer
		then Gambler DLC1_C6M3_SafeRoomConvo05d foo:0 -1.309
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo06aSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo06a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo06aProducer
		then Mechanic DLC1_C6M3_SafeRoomConvo06b foo:0 -3.045
	},

	{
		name = "DLC1_C6M3_SafeRoomConvoZoeyStartSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat isC6m3_port IsInStartArea IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsZoeyIntroActor _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response DLC1_C6M3_SafeRoomConvoZoeyStartProducer
		then Mechanic DLC1_C6M3_SafeRoomConvo07a foo:0 -3.413
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07bSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo07b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo07bProducer
		then Mechanic DLC1_C6M3_SafeRoomConvo07c foo:0 -4.242
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08gSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo08g IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo08gProducer
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo09bSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo09b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response DLC1_C6M3_SafeRoomConvo09bProducer
	},

	{
		name = "IncapBounceSheva",
		criteria ConceptSurvivorIncapacitated IsSheva IsNotSaidInCapBounce isC6m3_port
		Response IncapBounceProducer
		then Biker InCapBounce2 foo:0 0
		ApplyContext "SaidInCapBounce:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerCallForRescueSheva",
		criteria ConceptCallForRescue IsSheva IsTalk IsTalkSheva IsWorldTalkSheva HasNotCalledForRescue
		Response PlayerCallForRescueProducer
		ApplyContext "CalledForRescue:1:5"
		applycontexttoworld
	},

	{
		name = "c6m3_outroSheva",
		criteria Conceptc6m3_outro3 IsSheva isC6m3_port IsNotVersus IsNotIncapacitated ChanceToFire100Percent FromIsBiker
		// 	forceweight 1
		Response c6m3_outroProducer
		then Mechanic c6m3_outroL4D1012a foo:0 0.1
	},

	{
		name = "SurvivorSpotFirstWeaponsSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSpeaking IsWorldTalkSheva IsNotPickedUpFirstAidKit ismap_c1m1_hotel IsNotSaidFirstWeapon IsNotSaidWorldC1M1First IsWorldTalkSheva
		Response SurvivorSpotFirstWeaponsProducer
		then gambler Player.WhinyNick foo:0 0.1
		ApplyContext "SaidFirstWeapon:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAdrenalineSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsAdrenaline IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedAdrenalineProducer
		ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAdrenalineAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotAdrenaline IsNotSaidSpot IsAdrenaline IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedAdrenalineProducer
		ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAmmoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsAmmo IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedAmmoProducer
		ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAmmoAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsAmmo IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotAmmo IsNotSaidSpot IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedAmmoProducer
		ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAmmo2Sheva",
		criteria ConceptPlayerSpotAmmo IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotInSafeSpot IsNotAlone IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedAmmo2Producer
	},

	{
		name = "SurvivorSpottedCoachCloseSheva",
		criteria ConceptPlayerLookHere IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkSheva
		Response SurvivorSpottedCoachCloseProducer
	},

	{
		name = "SurvivorSpottedCoachClose2Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkSheva
		Response SurvivorSpottedCoachCloseProducer
	},

	{
		name = "SurvivorSpottedCoachClose2C1Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedCoachClose2C1Producer
	},

	{
		name = "SurvivorSpottedCoachCloseC1Sheva",
		criteria ConceptPlayerLookHere IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsCoach IsCoachNear400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedCoachClose2C1Producer
	},

	{
		name = "SurvivorSpottedCoachFarSheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsCoach IsCoachFar400 IsWorldTalkSheva
		Response SurvivorSpottedCoachFarProducer
	},

	{
		name = "SurvivorSpottedCoachFarC1Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsCoach IsCoachFar400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedCoachFarC1Producer
	},

	{
		name = "SurvivorSpottedDefibrillatorSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsDefibrillator IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedDefibrillatorProducer
		ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedDefibrillatorAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidDefibrillator IsNotSaidSpot IsDefibrillator IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedDefibrillatorProducer
		ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGamblerCloseSheva",
		criteria ConceptPlayerLookHere IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsGambler IsGamblerNear400 IsWorldTalkSheva
		Response SurvivorSpottedGamblerCloseProducer
	},

	{
		name = "SurvivorSpottedGamblerClose2Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsGambler IsGamblerNear400 IsWorldTalkSheva
		Response SurvivorSpottedGamblerCloseProducer
	},

	{
		name = "SurvivorSpottedGamblerClose2C1Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsGambler IsGamblerNear400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedGamblerClose2C1Producer
	},

	{
		name = "SurvivorSpottedGamblerCloseC1Sheva",
		criteria ConceptPlayerLookHere IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsGambler IsGamblerNear400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedGamblerClose2C1Producer
	},

	{
		name = "SurvivorSpottedGamblerFarSheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsGambler IsGamblerFar400 IsWorldTalkSheva
		Response SurvivorSpottedGamblerFarProducer
	},

	{
		name = "SurvivorSpottedGamblerFarC1Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsGambler IsGamblerFar400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedGamblerFarC1Producer
	},

	{
		name = "SurvivorSpottedGrenadeSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsPipeBomb IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedGrenadeProducer
		ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGrenadeAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotGrenade IsNotSaidSpot IsPipeBomb IsWorldTalkSheva YesHasGrenade IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedGrenadeProducer
		ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGrenadeLauncherC1M2Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto Isgrenade_launcher C1M1orC1M2 IsWorldTalkSheva IsNotSurvival
		Response SurvivorSpottedGrenadeLauncherC1M2Producer
		ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGrenadeLauncherAutoC1M2Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotgrenade_launcher C1M1orC1M2 IsNotSaidSpot Isgrenade_launcher IsWorldTalkSheva IsNotSurvival IsNotSpeakingWeight0
		Response SurvivorSpottedGrenadeLauncherC1M2Producer
		ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGrenadeLauncherSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto Isgrenade_launcher IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedGrenadeLauncherProducer
		ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGrenadeLauncherAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotgrenade_launcher IsNotSaidSpot Isgrenade_launcher IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedGrenadeLauncherProducer
		ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHealthSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsFirstAidKit IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedHealthProducer
		ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHealthAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotHealth IsNotSaidSpot IsFirstAidKit IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedHealthProducer
		ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMechanicCloseSheva",
		criteria ConceptPlayerLookHere IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsMechanic IsMechanicNear400 IsWorldTalkSheva
		Response SurvivorSpottedMechanicCloseProducer
	},

	{
		name = "SurvivorSpottedMechanicClose2Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsMechanic IsMechanicNear400 IsWorldTalkSheva
		Response SurvivorSpottedMechanicCloseProducer
	},

	{
		name = "SurvivorSpottedMechanicClose2C1Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsMechanic IsMechanicNear400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedMechanicClose2C1Producer
	},

	{
		name = "SurvivorSpottedMechanicCloseC1Sheva",
		criteria ConceptPlayerLookHere IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsMechanic IsMechanicNear400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedMechanicClose2C1Producer
	},

	{
		name = "SurvivorSpottedMechanicFarSheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsMechanic IsMechanicFar400 IsWorldTalkSheva
		Response SurvivorSpottedMechanicFarProducer
	},

	{
		name = "SurvivorSpottedMechanicFarC1Sheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto SubjectIsMechanic IsMechanicFar400 IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response SurvivorSpottedMechanicFarC1Producer
	},

	{
		name = "SurvivorSpottedMolotovSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsMolotov IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedMolotovProducer
		ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMolotovAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotMolotov IsNotSaidSpot IsMolotov IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMolotovProducer
		ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedPillsSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsPainPills IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedPillsProducer
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedPillsAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotPills IsNotSaidSpot IsPainPills IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedPillsProducer
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedPillsAutoNoHasPillsSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot NoHasPainPills IsNotAlone IsNotSaidSpotPills IsNotSaidSpot IsPainPills ChanceToFire10Percent IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedPillsAutoNoHasPillsProducer
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedUpPack_ExplosiveSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsUpgradePack_Explosive IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedUpPack_ExplosiveProducer
		ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedUpPack_ExplosiveAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotAlone IsNotSaidSpotUpgradePack_Explosive IsNotSaidSpot IsUpgradePack_Explosive IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedUpPack_ExplosiveProducer
		ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedUpPack_IncendiarySheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsUpgradePack_Incendiary IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedUpPack_IncendiaryProducer
		ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedUpPack_IncendiAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotAlone IsNotSaidSpotUpgradePack_Incendiary IsNotSaidSpot IsUpgradePack_Incendiary IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedUpPack_IncendiaryProducer
		ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedVomitJarSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsVomitJar IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedVomitJarProducer
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedVomitJarAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotVomitJar IsNotSaidSpot IsVomitJar IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedVomitJarProducer
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedVomitJarAutoC1Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotVomitJar IsNotSaidSpot IsVomitJar IsWorldTalkSheva ismap_c1m1_hotel IsNotSpeakingWeight0
		Response SurvivorSpottedVomitJarAutoC1Producer
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedVomitJarC1Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsVomitJar IsWorldTalkSheva ismap_c1m1_hotel
		Response SurvivorSpottedVomitJarAutoC1Producer
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedWorldCloseSheva",
		criteria ConceptPlayerLookHere IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsWorldTalkSheva
		Response SurvivorSpottedWorldCloseProducer
	},

	{
		name = "SurvivorSpottedArmoredC5M1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeArmored IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c5m1_waterfront IsNotSaidArmoredWarn IsNotSpeakingWeight0
		Response SurvivorSpottedArmoredC5M1Producer
		ApplyContext "SaidArmoredWarn:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedArmoredSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeArmored IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidArmoredWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedArmoredProducer
		ApplyContext "SaidArmoredWarn:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedBoomerSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedBoomerProducer
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedBoomerAlsoSheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedBoomerProducer
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedBoomer2Sheva",
		criteria ConceptPlayerWarnBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedBoomerProducer
	},

	{
		name = "SurvivorSpottedBoomerC1M1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		Response SurvivorSpottedBoomerC1M1Producer
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedBoomerAlsoC1M1Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel
		Response SurvivorSpottedBoomerC1M1Producer
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedBoomer2C1Sheva",
		criteria ConceptPlayerWarnBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated C1M1orC1M2 NoKnowBoomer IsNotSurvival
		Response SurvivorSpottedBoomerC1M1Producer
	},

	{
		name = "SurvivorSpottedBoomerC1M2Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowBoomer IsNotSpeakingWeight0 IsNotSurvival
		Response SurvivorSpottedBoomerC1M2Producer
		then any Player.KnowBoomer foo:0 0.1
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30,KnowBoomer:1:0,Talk:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedBoomerAlsoC1M2Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowBoomer IsNotSurvival
		Response SurvivorSpottedBoomerC1M1Producer
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedCedaSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeCeda IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidCedaWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedCedaProducer
		ApplyContext "SaidCedaWarn:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedCedaC1M1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeCeda IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidCedaWarn ismap_c1m1_hotel IsNotSpeakingWeight0
		Response SurvivorSpottedCedaC1M1Producer
		ApplyContext "SaidCedaWarn:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedChargerSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedChargerProducer
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedChargerAlsoSheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedChargerProducer
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedCharger2Sheva",
		criteria ConceptPlayerWarnCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedChargerProducer
	},

	{
		name = "SurvivorSpottedChargerC1M1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		Response SurvivorSpottedChargerC1M1Producer
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedChargerAlsoC1M1Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel
		Response SurvivorSpottedChargerC1M1Producer
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedCharger2C1Sheva",
		criteria ConceptPlayerWarnCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated C1M1orC1M2 NoKnowCharger IsNotSurvival
		Response SurvivorSpottedChargerC1M1Producer
	},

	{
		name = "SurvivorSpottedChargerC1M2Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowCharger IsNotSpeakingWeight0 IsNotSurvival
		Response SurvivorSpottedChargerC1M2Producer
		then any Player.KnowCharger foo:0 0.1
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30,KnowCharger:1:0,Talk:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedChargerAlsoC1M2Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowCharger IsNotSurvival
		Response SurvivorSpottedChargerC1M1Producer
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedClownSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeClown IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidClownWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedClownProducer
		ApplyContext "SaidClownWarn:1:20,SawClowns:++1"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedClownC2M2Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeClown IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidClownWarn ismap_c2m2 IsNotSpeakingWeight0
		Response SurvivorSpottedClownC2M2Producer
		ApplyContext "SaidClownWarn:1:0,SawClowns:++1"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedFallenSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeFallen IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidFallenWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedFallenProducer
		ApplyContext "SaidFallenWarn:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHunterSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedHunterProducer
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHunterAlsoSheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedHunterProducer
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHunter2Sheva",
		criteria ConceptPlayerWarnHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedHunterProducer
	},

	{
		name = "SurvivorSpottedHunterC1M1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		Response SurvivorSpottedHunterC1M1Producer
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHunterAlsoC1M1Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel
		Response SurvivorSpottedHunterC1M1Producer
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHunter2C1Sheva",
		criteria ConceptPlayerWarnHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated C1M1orC1M2 NoKnowHunter IsNotSurvival
		Response SurvivorSpottedHunterC1M1Producer
	},

	{
		name = "SurvivorSpottedHunterC1M2Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeHunter IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowHunter IsNotSpeakingWeight0 IsNotSurvival
		Response SurvivorSpottedHunterC1M2Producer
		then any Player.KnowHunter foo:0 0.1
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30,KnowHunter:1:0,Talk:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHunterAlsoC1M2Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowHunter IsNotSurvival
		Response SurvivorSpottedHunterC1M1Producer
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedInfectedSheva",
		criteria ConceptPlayerIncoming IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedInfectedProducer
	},

	{
		name = "SurvivorSpottedJimmySheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeJimmy IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidJimmyWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedJimmyProducer
		ApplyContext "SaidJimmyWarn:1:3"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedJockeySheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedJockeyProducer
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedJockeyAlsoSheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedJockeyProducer
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedJockey2Sheva",
		criteria ConceptPlayerWarnJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedJockeyProducer
	},

	{
		name = "SurvivorSpottedJockeyC1M1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		Response SurvivorSpottedJockeyC1M1Producer
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedJockeyAlsoC1M1Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel
		Response SurvivorSpottedJockeyC1M1Producer
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedJockey2C1Sheva",
		criteria ConceptPlayerWarnJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated C1M1orC1M2 NoKnowJockey IsNotSurvival
		Response SurvivorSpottedJockeyC1M1Producer
	},

	{
		name = "SurvivorSpottedJockeyC1M2Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowJockey IsNotSpeakingWeight0 IsNotSurvival
		Response SurvivorSpottedJockeyC1M2Producer
		then any Player.KnowJockey foo:0 0.1
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30,KnowJockey:1:0,Talk:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedJockeyAlsoC1M2Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowJockey IsNotSurvival
		Response SurvivorSpottedJockeyC1M1Producer
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMudmenSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeMudmen IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidMudmenWarn IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMudmenProducer
		ApplyContext "SaidMudmenWarn:1:20,SawMudMen:++1"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMudmenFirstSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeMudmen IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidMudmenWarn ismapc3m2_swamp IsNotSpeakingWeight0
		Response SurvivorSpottedMudmenFirstProducer
		ApplyContext "SaidMudmenWarn:1:0,SawMudMen:++1"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSmokerSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedSmokerProducer
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSmokerAlsoSheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedSmokerProducer
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSmoker2Sheva",
		criteria ConceptPlayerWarnSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedSmokerProducer
	},

	{
		name = "SurvivorSpottedSmokerC1M1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		Response SurvivorSpottedSmokerC1M1Producer
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSmokerAlsoC1M1Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel
		Response SurvivorSpottedSmokerC1M1Producer
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSmoker2C1Sheva",
		criteria ConceptPlayerWarnSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated C1M1orC1M2 NoKnowSmoker IsNotSurvival
		Response SurvivorSpottedSmokerC1M1Producer
	},

	{
		name = "SurvivorSpottedSmokerC1M2Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowSmoker IsNotSpeakingWeight0 IsNotSurvival
		Response SurvivorSpottedSmokerC1M2Producer
		then any Player.KnowSmoker foo:0 0.1
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30,KnowSmoker:1:0,Talk:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSmokerAlsoC1M2Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowSmoker IsNotSurvival
		Response SurvivorSpottedSmokerC1M1Producer
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSpitterSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedSpitterProducer
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSpitterAlsoSheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedSpitterProducer
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSpitter2Sheva",
		criteria ConceptPlayerWarnSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedSpitterProducer
	},

	{
		name = "SurvivorSpottedSpitterC1M1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel IsNotSpeakingWeight0
		Response SurvivorSpottedSpitterC1M1Producer
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSpitterAlsoC1M1Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m1_hotel
		Response SurvivorSpottedSpitterC1M1Producer
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSpitter2C1M1Sheva",
		criteria ConceptPlayerWarnSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated C1M1orC1M2 NoKnowSpitter IsNotSurvival
		Response SurvivorSpottedSpitterC1M1Producer
	},

	{
		name = "SurvivorSpottedSpitterC1M2Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowSpitter IsNotSpeakingWeight0 IsNotSurvival
		Response SurvivorSpottedSpitterC1M2Producer
		then any Player.KnowSpitter foo:0 0.1
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30,KnowSpitter:1:0,Talk:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSpitterAlsoC1M2Sheva",
		criteria ConceptPlayerAlsoWarnSpecial IsSpecialTypeSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated ismap_c1m2_streets NoKnowSpitter IsNotSurvival
		Response SurvivorSpottedSpitterC1M1Producer
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedTankSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedTankProducer
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedTank2Sheva",
		criteria ConceptPlayerWarnTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated _auto_NotSpottedVehicle
		Response SurvivorSpottedTankProducer
	},

	{
		name = "SurvivorSpottedTankC1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated C1M1orC1M2 IsNotSpeakingWeight0 IsNotSurvival
		Response SurvivorSpottedTankC1Producer
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedTank2C1Sheva",
		criteria ConceptPlayerWarnTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated C1M1orC1M2 IsNotSurvival
		Response SurvivorSpottedTankC1Producer
	},

	{
		name = "L4D1SpottedTankSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated Isc6m3_port IsNotSpeakingWeight0 IsNotVersus IsNotSurvival _auto_NotSpottedVehicle
		Response L4D1SpottedTankProducer
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
	},

	{
		name = "L4D1SpottedTank2Sheva",
		criteria ConceptPlayerWarnTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Isc6m3_port IsNotIncapacitated IsNotVersus IsNotSurvival _auto_NotSpottedVehicle
		Response L4D1SpottedTankProducer
	},

	{
		name = "SurvivorSpottedWitchSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeWitch IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidWitchStartAttack IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWitchProducer
		ApplyContext "SaidWitchWarn:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedWitch2Sheva",
		criteria ConceptPlayerWarnWitch IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidWitchStartAttack _auto_NotSpottedVehicle
		Response SurvivorSpottedWitchProducer
	},

	{
		name = "SurvivorSpottedWitchC1Sheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeWitch IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidWitchStartAttack C1M1orC1M2 IsNotSpeakingWeight0 IsNotSurvival
		Response SurvivorSpottedWitchC1Producer
		ApplyContext "SaidWitchWarn:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedWitch2C1Sheva",
		criteria ConceptPlayerWarnWitch IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotSaidWitchStartAttack C1M1orC1M2 IsNotSurvival
		Response SurvivorSpottedWitch2C1Producer
	},

	{
		name = "PlayerAlertGiveItemSheva",
		criteria ConceptPlayerAlertGiveItem IsNotCoughing IsSheva IsTalk IsTalkSheva NotInIntenseCombat IsWorldTalkSheva
		Response PlayerAlertGiveItemProducer
	},

	{
		name = "PlayerAlertGiveItemC1Sheva",
		criteria ConceptPlayerAlertGiveItem IsNotCoughing IsSheva IsTalk IsTalkSheva NotInIntenseCombat IsWorldTalkSheva NoKnowNames ismap_c1m1_hotel
		Response PlayerAlertGiveItemC1Producer
	},

	{
		name = "PlayerAlertGiveItemCombatSheva",
		criteria ConceptPlayerAlertGiveItem IsNotCoughing IsSheva IsTalk IsTalkSheva InIntenseCombat IsWorldTalkSheva
		Response PlayerAlertGiveItemCombatProducer
	},

	{
		name = "PlayerAlertGiveItemTankSheva",
		criteria ConceptPlayerAlertGiveItem IsNotCoughing IsSheva IsTalk IsTalkSheva IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkSheva
		Response PlayerAlertGiveItemCombatProducer
	},

	{
		name = "PlayerFaultFriendlyFireSheva",
		criteria IsFaultConcept IsFaultFriendlyFire IsSheva
		Response NoResponse
		ApplyContext "SaidFaultFriendlyFire:1:0.1,SaidFaultFriendlyFireSheva:1:0.1,ShotTeammateSheva:1:6"
		applycontexttoworld
	},

	{
		name = "PlayerFriendlyFireSheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsNotOnThirdStrike IsDamageTypeBullet IsTalk IsTalkSheva IsWorldTalkSheva IsNotZombiePresentTank
		Response PlayerFriendlyFireProducer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFire2Sheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsOnThirdStrike IsFriendlyFire IsNotIncapacitated IsNotDamageTypeExplosive IsTalk IsTalkSheva IsWorldTalkSheva IsNotZombiePresentTank
		Response PlayerFriendlyFire2Producer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFireC1Sheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsNotOnThirdStrike IsTalk IsTalkSheva IsWorldTalkSheva NoKnowNames ismap_c1m1_hotel NoKnowNames
		Response PlayerFriendlyFireC1Producer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFireFromGamblerC1Sheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsNotOnThirdStrike IsTalk IsTalkSheva SubjectIsGambler ChanceToFire50Percent IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response PlayerFriendlyFireFromGamblerC1Producer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFireNoBulletSheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsNotDamageTypeBullet IsNotDamageTypeExplosive IsNotOnThirdStrike IsTalk IsTalkSheva IsWorldTalkSheva IsNotZombiePresentTank
		Response PlayerFriendlyFireNoBulletProducer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFireNoBulletC1Sheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsNotDamageTypeBullet IsNotDamageTypeExplosive IsNotOnThirdStrike IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response PlayerFriendlyFireNoBulletC1Producer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFireTankSheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkSheva IsZombiePresentTank IsSaidTankWarn2 IsNotIncapacitated IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets
		Response PlayerFriendlyFireTankProducer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFireTankCoachSheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkSheva IsZombiePresentTank IsSaidTankWarn2 ChanceToFire30Percent IsNotIncapacitated SubjectIsCoach IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets
		Response PlayerFriendlyFireTankCoachProducer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFireTankGamblerSheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkSheva IsZombiePresentTank IsSaidTankWarn2 ChanceToFire30Percent IsNotIncapacitated SubjectIsGambler IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets
		Response PlayerFriendlyFireTankGamblerProducer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerFriendlyFireTankMechanicSheva",
		criteria ConceptPlayerFriendlyFire IsNotCoughing IsSheva IsNotFriendlyFire IsNotIncapacitated IsDamageTypeBullet IsTalk IsTalkSheva IsZombiePresentTank IsSaidTankWarn2 ChanceToFire30Percent IsNotIncapacitated SubjectIsMechanic IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets
		Response PlayerFriendlyFireTankMechanicProducer
		ApplyContext "FriendlyFire:1:10"
	},

	{
		name = "PlayerToTheRescueSheva",
		criteria ConceptSurvivorBotMovingToReviveFriend IsNotCoughing IsSheva IsTalk IsTalkSheva NotInCombat IsNotSaidRescueComing IsDistanceSubjectO600 IsWorldTalkSheva
		Response PlayerToTheRescueProducer
		ApplyContext "SaidRescueComing:1:20"
		applycontexttoworld
	},

	{
		name = "PlayerToTheRescueRosSheva",
		criteria ConceptPlayerToTheRescue IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerToTheRescueRosProducer
	},

	{
		name = "SurvivorTauntResponseSheva",
		criteria ConceptPlayerTaunt IsSurvivor IsNotSpeaking IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotVersus
		Response SurvivorTauntResponseProducer
	},

	{
		name = "C4M1IdleComment01Sheva",
		criteria ConceptTalkIdle ChanceToFire40Percent IsSurvivor ismap_c4m1_milltown_a IsSaidc4m1_nogas IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva NotInCombat IsWorldTalkSheva TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_NotNoGasGate
		Response C4M1IdleComment01Producer
		ApplyContext "Talk:1:3.088,_auto_NoGasGate:2:0"
		applycontexttoworld
	},

	{
		name = "C4M2IdleCommentCane01Sheva",
		criteria ConceptTalkIdle ChanceToFire60Percent IsSurvivor ismap_c4m2_sugarmill_a IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival _auto_IsShevaInCane _auto_NotCaneYellGated _auto_NotLastSurvivorTalkedSheva
		Response C4M2IdleCommentCane01Producer
		then any _c4m2_caneyell01 foo:0 0.01
		ApplyContext "_auto_CaneYellGated:1:10,_auto_LastSurvivorTalkedSheva:1:15"
		applycontexttoworld
	},

	{
		name = "PlayerChokeResponseSheva",
		criteria ConceptPlayerChoke IsSurvivor IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerChokeResponseProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerChokeResponseC1Sheva",
		criteria ConceptPlayerChoke IsSurvivor IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowSmoker IsNotSurvival
		Response PlayerChokeResponseC1Producer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerReloadingC502RunSheva",
		criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsSheva IsNotIncapacitated IsMapc5m2_park IsTalk IsTalkSheva IsWorldTalkSheva IsNotZombiePresentTank ChanceToFire50Percent _auto_IsAlarm
		Response PlayerReloadingC502RunProducer
	},

	{
		name = "PlayerReloadingTankSheva",
		criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva IsNotSaidReloadingTank IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerReloadingTankProducer
		ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		applycontexttoworld
	},

	{
		name = "PlayerReloadingTankC1Sheva",
		criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkSheva C1M1orC1M2 IsNotSurvival
		Response PlayerReloadingTankC1Producer
		ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		applycontexttoworld
	},

	{
		name = "PlayerWitchChasingSheva",
		criteria ConceptPlayerExertionMinor IsSheva IsWitchPresent SubjectIsNotWitch IsNotSaidWitchChasing IsSaidWitchAttacking IsTalkSheva IsNotmap_c4m2 IsNotc6m1_riverbank IsWitchAggro
		Response PlayerWitchChasingProducer
		ApplyContext "SaidWitchChasing:1:5,TalkSheva:1:2"
	},

	{
		name = "PlayerWitchChasingC6M1Sheva",
		criteria ConceptPlayerExertionMinor IsSheva IsWitchPresent SubjectIsNotWitch IsNotSaidWitchChasing IsSaidWitchAttacking IsTalkSheva isc6m1_riverbank IsWitchAggro
		// 	forceweight 20
		Response PlayerWitchChasingC6M1Producer
		ApplyContext "SaidWitchChasing:1:15,TalkSheva:1:2"
	},

	{
		name = "PlayerWitchStartAttackSheva",
		criteria IsFaultConcept IsSheva IsFaultWitchHarassment
		Response PlayerWitchStartAttackProducer
		ApplyContext "SaidWitchAttacking:1:15,TalkSheva:1:2,SaidWitchStartAttack:1:15"
	},

	{
		name = "PlayerWitchStartAttackC6M1Sheva",
		criteria IsFaultConcept IsSheva IsFaultWitchHarassment Isc6m1_riverbank
		// 	forceweight 20
		Response PlayerWitchStartAttackC6M1Producer
		ApplyContext "SaidWitchAttacking:1:15,TalkSheva:1:2,SaidWitchStartAttack:1:15"
	},

	{
		name = "WitchAggroSheva",
		criteria ConceptWitchStartAttack IsSheva Iswitch_aggro_onSheva
		Response NoResponse
		ApplyContext "WitchAggro:++1"
		applycontexttoworld
	},

	{
		name = "SurvivorCriticalHurtSheva",
		criteria IsSurvivor InPain IsCriticalPain IsSheva IsTalk IsTalkSheva SubjectIsNotJockey IsWorldTalkSheva
		Response SurvivorCriticalHurtProducer
	},

	{
		name = "SurvivorIncapacitatedHurtSheva",
		criteria IsSurvivor InPain IsNotSpeaking IsIncapacitatedPain IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorIncapacitatedHurtProducer
	},

	{
		name = "SurvivorJockeyHurtMajorSheva",
		criteria IsSurvivor InPain IsMajorPain IsSheva IsTalk IsTalkSheva SubjectIsJockey IsNotSaidBeenJockeyedSheva IsWorldTalkSheva IsBeingJockeyed
		Response SurvivorJockeyHurtMajorProducer
		then all commentjockey foo:0 -3.462
		ApplyContext "SaidBeenJockeyedSheva:1:6,TalkSheva:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorJockeyHurtMinorSheva",
		criteria IsSurvivor InPain IsMinorPain IsSheva IsTalk IsTalkSheva SubjectIsJockey IsNotSaidBeenJockeyedSheva IsWorldTalkSheva IsBeingJockeyed
		Response SurvivorJockeyHurtMajorProducer
		then all commentjockey foo:0 -3.462
		ApplyContext "SaidBeenJockeyedSheva:1:6,TalkSheva:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorJockeyHurtMajorC1Sheva",
		criteria IsSurvivor InPain IsMajorPain IsSheva IsTalk IsTalkSheva SubjectIsJockey IsNotSaidBeenJockeyedSheva IsWorldTalkSheva C1M1orC1M2 NoKnowJockey IsBeingJockeyed IsNotSurvival
		Response SurvivorJockeyHurtMajorC1Producer
		ApplyContext "SaidBeenJockeyedSheva:1:6,TalkSheva:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorJockeyHurtMinorC1Sheva",
		criteria IsSurvivor InPain IsMinorPain IsSheva IsTalk IsTalkSheva SubjectIsJockey IsNotSaidBeenJockeyedSheva IsWorldTalkSheva C1M1orC1M2 NoKnowJockey IsBeingJockeyed IsNotSurvival
		Response SurvivorJockeyHurtMajorC1Producer
		ApplyContext "SaidBeenJockeyedSheva:1:6,TalkSheva:1:6"
		applycontexttoworld
	},

	{
		name = "SurvivorMajorHurtSheva",
		criteria IsSurvivor InPain IsMajorPain IsSheva IsTalk IsTalkSheva SubjectIsNotJockey IsWorldTalkSheva
		Response SurvivorMajorHurtProducer
	},

	{
		name = "SurvivorMinorHurtSheva",
		criteria IsSurvivor InPain IsMinorPain IsSheva IsTalk IsTalkSheva SubjectIsNotJockey IsWorldTalkSheva
		Response SurvivorMinorHurtProducer
	},

	{
		name = "SurvivorReloadingSheva",
		criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkSheva ChanceToFire50Percent IsNotZombiePresentTank NotInIntenseCombat _auto_NotShevaInWitchville _auto_NotAlarmV2 _auto_ConcertNotLive _auto_NotSpottedVehicle
		Response SurvivorReloadingProducer
	},

	{
		name = "SurvivorReloadingIntenseSheva",
		criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkSheva ChanceToFire50Percent IsNotZombiePresentTank InIntenseCombat _auto_NotShevaInWitchville _auto_NotAlarmV2 _auto_ConcertNotLive _auto_NotSpottedVehicle
		Response SurvivorReloadingIntenseProducer
	},

	{
		name = "SurvivorReloadingC4M2Sheva",
		criteria ConceptPlayerReloading IsSurvivor IsNotSpeaking IsSheva IsNotIncapacitated IsTalk IsTalkSheva RecentGroupInCombat10 HasNotgrenadelauncher IsWorldTalkSheva ChanceToFire50Percent ismap_c4m2_sugarmill_a IsNotSaidSafeSpotAhead IsNotZombiePresentTank _auto_IsShevaInWitchville
		Response SurvivorReloadingC4M2Producer
	},

	{
		name = "PlayerHelpIncappedSheva",
		criteria ConceptPlayerHelp IsSheva IsNotCoughing IsTalk IsTalkSheva IsIncappedStarted IsIncappedStarted2 IsIncapacitated NotCalledForHelpRecently IsWorldTalkSheva
		Response PlayerHelpIncappedProducer
		ApplyContext "CalledForHelp:1:7.5"
	},

	{
		name = "PlayerHelpIncappedBleedingSheva",
		criteria ConceptPlayerHelp IsSheva IsNotCoughing IsTalk IsTalkSheva IsIncappedBleeding1 IsIncappedBleeding2 IsIncapacitated NotCalledForHelpRecently IsWorldTalkSheva
		Response PlayerHelpIncappedBleedingProducer
		ApplyContext "CalledForHelp:1:15"
	},

	{
		name = "PlayerHelpIncappedLethargicSheva",
		criteria ConceptPlayerHelp IsSheva IsNotCoughing IsTalk IsTalkSheva IsIncappedLethargic IsIncapacitated NotCalledForHelpRecently IsWorldTalkSheva
		Response PlayerHelpIncappedLethargicProducer
		ApplyContext "CalledForHelp:1:30"
	},

	{
		name = "C2M1DoneFallingSheva",
		criteria ConceptC2M1DoneFalling IsSheva NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival _auto_NotDoneFalling
		Response C2M1DoneFallingProducer
		ApplyContext "Talk:1:1.229,_auto_DoneFalling:1:0"
		applycontexttoworld
	},

	{
		name = "C2M1FallingSheva",
		criteria ConceptC2M1Falling IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M1FallingProducer
		then self EndOfWavWindow5 foo:0 0.01
		ApplyContext "Talk:1:2.036"
		applycontexttoworld
	},

	{
		name = "C2M2CarouselOffSheva",
		criteria Conceptc2m2CarouselEnd IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M2CarouselOffProducer
		ApplyContext "Talk:1:1.880,_auto_Alarm:2:0"
		applycontexttoworld
	},

	{
		name = "C2M2CarouselOnSheva",
		criteria Conceptc2m2CarouselStart IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M2CarouselOnProducer
		then any _C2M2_CaroStart03 foo:0 2.0
		ApplyContext "_auto_Alarm:1:0,_auto_TimerLockA:1:6,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "C3M3BridgeButtonSheva",
		criteria ConceptC3M3BridgeButton IsNotSaidC3M3BridgeButton IsSheva IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival
		Response C3M3BridgeButtonProducer
		ApplyContext "SaidC3M3BridgeButton:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "EndOfWavWindow5Sheva",
		criteria ConceptEndOfWavWindow5 IsSheva
		Response EndOfWavWindow5Producer
		ApplyContext "_auto_ShevaWavWindow:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerChainSawUsedSheva",
		criteria ConceptChainsawUsed IsNotSaidChainSawUsed IsSheva IsTalk IsTalkSheva IntensityOver25 IsWorldTalkSheva
		Response PlayerChainSawUsedProducer
		ApplyContext "SaidChainSawUsed:1:90"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M1AroundFireSheva",
		criteria ConceptRemark IsSheva IsC1M1AroundFire IsNotSaidC1M1AroundFire IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M1AroundFireProducer
		then any C1M1Cough foo:0 -1.293
		ApplyContext "SaidC1M1AroundFire:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M1OverTableSheva",
		criteria ConceptRemark IsSheva IsC1M1OverTable IsNotSaidC1M1OverTable IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M1OverTableProducer
		then any C1M1Cough foo:0 -1.111
		ApplyContext "SaidC1M1OverTable:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M1SearchRoomsSheva",
		criteria ConceptRemark IsSheva IsC1M1SearchRooms IsNotSaidC1M1SearchRooms IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M1SearchRoomsProducer
		then any C1M1Cough foo:0 -2.695
		ApplyContext "SaidC1M1SearchRooms:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M1ThroughThisDoorSheva",
		criteria ConceptRemark IsSheva IsC1M1ThroughThisDoor IsNotSaidC1M1ThroughThisDoor IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M1ThroughThisDoorProducer
		then any C1M1Cough foo:0 -0.677
		ApplyContext "SaidC1M1ThroughThisDoor:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3AlarmDoorsSheva",
		criteria ConceptRemark IsSheva IsC1M3AlarmDoors IsNotSaidC1M3AlarmDoors IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 _auto_NotAlarm AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3AlarmDoorsProducer
		ApplyContext "SaidC1M3AlarmDoors:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3CarefulWindowsSheva",
		criteria ConceptRemark IsSheva IsC1M3CarefulWindows IsNotSaidC1M3CarefulWindows IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 _auto_NotAlarm AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3AlarmDoorsProducer
		ApplyContext "SaidC1M3CarefulWindows:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3CEDAGoneSheva",
		criteria ConceptRemark IsSheva IsC1M3CEDAGone IsNotSaidC1M3CEDAGone IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3CEDAGoneProducer
		ApplyContext "SaidC1M3CEDAGone:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3DownHereSheva",
		criteria ConceptRemark IsSheva IsC1M3DownHere IsNotSaidC1M3DownHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3DownHereProducer
		ApplyContext "SaidC1M3DownHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3DownHere2Sheva",
		criteria ConceptRemark IsSheva IsC1M3DownHere2 IsNotSaidC1M3DownHere2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3DownHereProducer
		ApplyContext "SaidC1M3DownHere2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3DownTheEscalatorSheva",
		criteria ConceptRemark IsSheva IsC1M3DownTheEscalator IsNotSaidC1M3DownTheEscalator IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3DownTheEscalatorProducer
		ApplyContext "SaidC1M3DownTheEscalator:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3OverHereSheva",
		criteria ConceptRemark IsSheva IsC1M3OverHere IsNotSaidC1M3OverHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3OverHereProducer
		ApplyContext "SaidC1M3OverHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3SearchRoomsSheva",
		criteria ConceptRemark IsSheva IsC1M3SearchRooms IsNotSaidC1M3SearchRooms IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3SearchRoomsProducer
		then any C1M1Cough foo:0 -2.695
		ApplyContext "SaidC1M3SearchRooms:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3ThisWaySheva",
		criteria ConceptRemark IsSheva IsC1M3ThisWay IsNotSaidC1M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3ThisWayProducer
		ApplyContext "SaidC1M3ThisWay:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3ThroughHereSheva",
		criteria ConceptRemark IsSheva IsC1M3ThroughHere IsNotSaidC1M3ThroughHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3ThroughHereProducer
		ApplyContext "SaidC1M3ThroughHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm1Sheva",
		criteria ConceptRemark IsSheva IsC1M3TurnOffAlarm1 IsNotSaidC1M3TurnOffAlarm1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		Response PlayerRemarkC1M3TurnOffAlarm1Producer
		ApplyContext "SaidC1M3TurnOffAlarm1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm2Sheva",
		criteria ConceptRemark IsSheva IsC1M3TurnOffAlarm2 IsNotSaidC1M3TurnOffAlarm2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		Response PlayerRemarkC1M3TurnOffAlarm2Producer
		ApplyContext "SaidC1M3TurnOffAlarm2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3TurnOffAlarm3Sheva",
		criteria ConceptRemark IsSheva IsC1M3TurnOffAlarm3 IsNotSaidC1M3TurnOffAlarm3 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm IsNotSpeakingWeight0
		Response PlayerRemarkC1M3TurnOffAlarm3Producer
		ApplyContext "SaidC1M3TurnOffAlarm3:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3UpEscalator1Sheva",
		criteria ConceptRemark IsSheva IsC1M3UpEscalator1 IsNotSaidC1M3UpEscalator1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3UpEscalator1Producer
		ApplyContext "SaidC1M3UpEscalator1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3UpEscalator2Sheva",
		criteria ConceptRemark IsSheva IsC1M3UpEscalator2 IsNotSaidC1M3UpEscalator2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3UpEscalator1Producer
		ApplyContext "SaidC1M3UpEscalator2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC1M3UpEscalator3Sheva",
		criteria ConceptRemark IsSheva IsC1M3UpEscalator3 IsNotSaidC1M3UpEscalator3 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M3UpEscalator1Producer
		ApplyContext "SaidC1M3UpEscalator3:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_carwreckageSheva",
		criteria ConceptRemark IsSheva Isc2m1_carwreckage IsNotSaidc2m1_carwreckage IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_carwreckageProducer
		ApplyContext "Saidc2m1_carwreckage:1:0,Talk:1:4.007"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_checkroomsSheva",
		criteria ConceptRemark IsSheva Isc2m1_checkrooms IsNotSaidc2m1_checkrooms IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_checkroomsProducer
		ApplyContext "Saidc2m1_checkrooms:1:0,Talk:1:1.616"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_cliffSheva",
		criteria ConceptRemark IsSheva Isc2m1_cliff IsNotSaidc2m1_cliff IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_cliffProducer
		ApplyContext "Saidc2m1_cliff:1:0,Talk:1:2.824"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_downstairsSheva",
		criteria ConceptRemark IsSheva Isc2m1_downstairs IsNotSaidc2m1_downstairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_downstairsProducer
		ApplyContext "Saidc2m1_downstairs:1:0,Talk:1:0.789"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_hillcomplainSheva",
		criteria ConceptRemark IsSheva Isc2m1_hillcomplain IsNotSaidc2m1_hillcomplain IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 ChanceToFire10Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_hillcomplainProducer
		ApplyContext "Saidc2m1_hillcomplain:1:0,Talk:1:4.294"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkc2m1_hillcomplainSheva",
		criteria ConceptRemark IsSheva Isc2m1_hillcomplain IsNotSaidc2m1_hillcomplain IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "Saidc2m1_hillcomplain:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_offrampSheva",
		criteria ConceptRemark IsSheva Isc2m1_offramp IsNotSaidc2m1_offramp IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_offrampProducer
		ApplyContext "Saidc2m1_offramp:1:0,Talk:1:1.168"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_parkSheva",
		criteria ConceptRemark IsSheva Isc2m1_park IsNotSaidc2m1_park IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_parkProducer
		ApplyContext "Saidc2m1_park:1:0,Talk:1:1.982"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_poolSheva",
		criteria ConceptRemark IsSheva Isc2m1_pool IsNotSaidc2m1_pool IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_poolProducer
		ApplyContext "Saidc2m1_pool:1:0,Talk:1:3.037"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_searchlightsSheva",
		criteria ConceptRemark IsSheva Isc2m1_searchlights IsNotSaidc2m1_searchlights IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectFar100 ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		// 	forceweight 1
		Response PlayerRemarkc2m1_searchlightsProducer
		then any _c2m1_searchlights01 foo:0 0.01
		ApplyContext "Saidc2m1_searchlights:1:0,Talk:1:3.241"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_searchlightsEllisSheva",
		criteria ConceptRemark IsSheva Isc2m1_searchlights IsNotSaidc2m1_searchlights IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectFar100 IsMechanicAlive IsMechanicNear400 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		// 	forceweight 2
		Response PlayerRemarkc2m1_searchlightsEllisProducer
		then mechanic _c2m1_searchlights04 foo:0 0.1
		ApplyContext "Saidc2m1_searchlights:1:0,Talk:1:3.241"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_throughhereSheva",
		criteria ConceptRemark IsSheva Isc2m1_throughhere IsNotSaidc2m1_throughhere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_throughhereProducer
		ApplyContext "Saidc2m1_throughhere:1:0,Talk:1:0.858"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_throughmotelSheva",
		criteria ConceptRemark IsSheva Isc2m1_throughmotel IsNotSaidc2m1_throughmotel IsNotSaidc2m1_motelsign IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_throughmotelProducer
		ApplyContext "Saidc2m1_throughmotel:1:0,Talk:1:2.616"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_throughwindowSheva",
		criteria ConceptRemark IsSheva Isc2m1_throughwindow IsNotSaidc2m1_throughwindow IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_throughwindowProducer
		ApplyContext "Saidc2m1_throughwindow:1:0,Talk:1:0.911"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_uphillSheva",
		criteria ConceptRemark IsSheva Isc2m1_uphill IsNotSaidc2m1_uphill IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_uphillProducer
		ApplyContext "Saidc2m1_uphill:1:0,Talk:1:1.074"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m1_upstairsSheva",
		criteria ConceptRemark IsSheva Isc2m1_upstairs IsNotSaidc2m1_upstairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_upstairsProducer
		ApplyContext "Saidc2m1_upstairs:1:0,Talk:1:1.252"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m2_entrancesignSheva",
		criteria ConceptRemark IsSheva Isc2m2_entrancesign IsNotSaidc2m2_entrancesign IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m2_entrancesignProducer
		ApplyContext "Saidc2m2_entrancesign:1:0,Talk:1:3.331"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m2_lilpeanutSheva",
		criteria ConceptRemark IsSheva Isc2m2_lilpeanut IsNotSaidc2m2_lilpeanut IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m2_lilpeanutProducer
		then mechanic _C2M2_Peanut01 foo:0 0.01
		ApplyContext "Saidc2m2_lilpeanut:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m2_miscfoodSheva",
		criteria ConceptRemark IsSheva Isc2m2_miscfood IsNotSaidc2m2_miscfood IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival _auto_NotCoachFoodBreak _auto_NotAlarm IsNotSpeakingWeight0
		Response PlayerRemarkc2m2_miscfoodProducer
		then Gambler _C2M2_LikeTaters foo:0 0.1
		ApplyContext "Saidc2m2_miscfood:1:0,Talk:1:2.500,_auto_CoachFoodBreak:1:15"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m2_topofslideSheva",
		criteria ConceptRemark IsSheva Isc2m2_topofslide IsNotSaidc2m2_topofslide IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m2_topofslideProducer
		then any _C2M2_Slide01 foo:0 0.01
		ApplyContext "Saidc2m2_topofslide:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m2_womensroomSheva",
		criteria ConceptRemark IsSheva Isc2m2_womensroom IsNotSaidc2m2_womensroom IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 IsClosestSurvivorNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m2_womensroomProducer
		then any _C2M2_Bathroom01 foo:0 0.01
		ApplyContext "Saidc2m2_womensroom:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_coasteroffSheva",
		criteria ConceptRemark IsSheva Isc2m3_coasteroff IsNotSaidc2m3_coasteroff IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_coasteroffProducer
		ApplyContext "Saidc2m3_coasteroff:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_holeSheva",
		criteria ConceptRemark IsSheva Isc2m3_hole IsNotSaidc2m3_hole IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_holeProducer
		then any _c2m3_hole01 foo:0 0.1
		ApplyContext "Saidc2m3_hole:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_longesttunnelSheva",
		criteria ConceptRemark IsSheva Isc2m3_longesttunnel IsNotSaidc2m3_longesttunnel IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsGamblerAlive TimeSinceGroupInCombat04 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_longesttunnelProducer
		ApplyContext "Saidc2m3_longesttunnel:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkc2m3_longesttunnelSheva",
		criteria ConceptRemark IsSheva Isc2m3_longesttunnel IsNotSaidc2m3_longesttunnel IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsGamblerAlive TimeSinceGroupInCombat04 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "Saidc2m3_longesttunnel:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_overfenceSheva",
		criteria ConceptRemark IsSheva Isc2m3_overfence IsNotSaidc2m3_overfence IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_overfenceProducer
		ApplyContext "Saidc2m3_overfence:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_swanroomSheva",
		criteria ConceptRemark IsSheva Isc2m3_swanroom IsNotSaidc2m3_swanroom IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_swanroomProducer
		ApplyContext "Saidc2m3_swanroom:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_tracks01Sheva",
		criteria ConceptRemark IsSheva Isc2m3_tracks01 IsNotSaidc2m3_tracks01 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_tracks01Producer
		ApplyContext "Saidc2m3_tracks01:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_tracks02Sheva",
		criteria ConceptRemark IsSheva Isc2m3_tracks02 IsNotSaidc2m3_tracks02 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_tracks01Producer
		ApplyContext "Saidc2m3_tracks02:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_tracks03Sheva",
		criteria ConceptRemark IsSheva Isc2m3_tracks03 IsNotSaidc2m3_tracks03 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_tracks01Producer
		ApplyContext "Saidc2m3_tracks03:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_tracks04Sheva",
		criteria ConceptRemark IsSheva Isc2m3_tracks04 IsNotSaidc2m3_tracks04 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_tracks01Producer
		ApplyContext "Saidc2m3_tracks04:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_tracks05Sheva",
		criteria ConceptRemark IsSheva Isc2m3_tracks05 IsNotSaidc2m3_tracks05 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_tracks01Producer
		ApplyContext "Saidc2m3_tracks05:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_tracks06Sheva",
		criteria ConceptRemark IsSheva Isc2m3_tracks06 IsNotSaidc2m3_tracks06 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_tracks01Producer
		ApplyContext "Saidc2m3_tracks06:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_tracks07Sheva",
		criteria ConceptRemark IsSheva Isc2m3_tracks07 IsNotSaidc2m3_tracks07 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_tracks01Producer
		ApplyContext "Saidc2m3_tracks07:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_tracks08Sheva",
		criteria ConceptRemark IsSheva Isc2m3_tracks08 IsNotSaidc2m3_tracks08 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival _auto_IsTracksOK IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_tracks01Producer
		ApplyContext "Saidc2m3_tracks08:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m3_ventSheva",
		criteria ConceptRemark IsSheva Isc2m3_vent IsNotSaidc2m3_vent IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_ventProducer
		ApplyContext "Saidc2m3_vent:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m4_barnentrySheva",
		criteria ConceptRemark IsSheva Isc2m4_barnentry IsNotSaidc2m4_barnentry IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m4_barnentryProducer
		ApplyContext "Saidc2m4_barnentry:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m4_bumpercarsSheva",
		criteria ConceptRemark IsSheva Isc2m4_bumpercars IsNotSaidc2m4_bumpercars IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m4_bumpercarsProducer
		ApplyContext "Saidc2m4_bumpercars:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m4_pendoorSheva",
		criteria ConceptRemark IsSheva Isc2m4_pendoor IsNotSaidc2m4_pendoor IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m4_pendoorProducer
		ApplyContext "Saidc2m4_pendoor:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m4_upbarnSheva",
		criteria ConceptRemark IsSheva Isc2m4_upbarn IsNotSaidc2m4_upbarn IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m4_upbarnProducer
		ApplyContext "Saidc2m4_upbarn:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m5_button2Sheva",
		criteria ConceptRemark IsSheva Isc2m5_button2 IsNotSaidc2m5_button2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear75 TimeSinceGroupInCombat02 AutoIsNotScavenge AutoIsNotSurvival _auto_IsButton1 _auto_NotButton2 IsNotSpeakingWeight0
		Response PlayerRemarkc2m5_button2Producer
		ApplyContext "Saidc2m5_button2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3BridgeDownSheva",
		criteria ConceptRemark IsSheva IsC3M3BridgeDown IsNotSaidC3M3BridgeDown IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3BridgeDownProducer
		ApplyContext "SaidC3M3BridgeDown:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M1NoSwimmingSheva",
		criteria ConceptRemark IsSheva IsC3M1NoSwimming IsNotSaidC3M1NoSwimming IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M1NoSwimmingProducer
		ApplyContext "SaidC3M1NoSwimming:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2BathtubSheva",
		criteria ConceptRemark IsSheva IsC3M2Bathtub IsNotSaidC3M2Bathtub IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsMechanicAlive IsMechanicNear400 AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkC3M2BathtubProducer
		then mechanic InfoRemC3M2Bathtub2 foo:0 -4.301
		ApplyContext "SaidC3M2Bathtub:1:0,Talk:1:4.401"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc3m2_overtreeSheva",
		criteria ConceptRemark IsSheva IsC3M2OverTree IsNotSaidC3M2OverTree IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc3m2_overtreeProducer
		ApplyContext "SaidC3M2OverTree:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2PlaneCrashSheva",
		criteria ConceptRemark IsSheva IsC3M2PlaneCrash IsNotSaidC3M2PlaneCrash IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear600 IsNotSaidC3M2PlaneDoorNag IsWorldTalkSheva ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		// 	forceweight 1
		Response PlayerRemarkC3M2PlaneCrashProducer
		ApplyContext "SaidC3M2PlaneCrash:1:0,Talk:1:2.691"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2PlaneDoorNagSheva",
		criteria ConceptRemark IsSheva IsC3M2PlaneDoorNag IsNotSaidC3M2PlaneDoorNag IsNotCoughing IsTalk IsTalkSheva IsSubjectNear500 IsNotSaidC3M2OpenDoor IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M2PlaneDoorNagProducer
		ApplyContext "SaidC3M2PlaneDoorNag:1:0,_auto_TimerLockA:1:15,Talk:1:4.099"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2PlaneDoorNagaSheva",
		criteria ConceptTalkIdle IsSheva IsNotCoughing IsTalk IsTalkSheva IsSaidC3M2PlaneDoorNag ismapc3m2_swamp IsNotSaidC3M2OpenDoor IsNotZombiePresentTank AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotTimerLockA _auto_NotTimerLockSheva
		Response PlayerRemarkC3M2PlaneDoorNagaProducer
		ApplyContext "_auto_TimerLockA:1:20,_auto_TimerLockSheva:1:40,Talk:1:1.652"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2RoadSheva",
		criteria ConceptRemark IsSheva IsC3M2Road IsNotSaidC3M2Road IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M2RoadProducer
		ApplyContext "SaidC3M2Road:1:0,Talk:1:1.265"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2SickOfSwampSheva",
		criteria ConceptRemark IsSheva IsC3M2SickOfSwamp IsNotSaidC3M2SickOfSwamp IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M2SickOfSwampProducer
		ApplyContext "SaidC3M2SickOfSwamp:1:0,Talk:1:2.450"
		applycontexttoworld
	},

	{
		name = "C3M2LeavingSafeRoomSheva",
		criteria ConceptSurvivorLeavingInitialCheckpoint IsSheva IsNotSaidLeavingSafeArea ismapc3m2_swamp _auto_NotTellingStory
		Response PlayerRemarkC3M2StartProducer
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:1:3.298"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2StartDrySheva",
		criteria ConceptRemark IsSheva IsC3M2StartDry IsNotSaidC3M2StartDry IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear200 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M2StartDryProducer
		ApplyContext "SaidC3M2StartDry:1:0,Talk:1:1.261"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2UnderWaterShackSheva",
		criteria ConceptRemark IsSheva IsC3M2UnderWaterShack IsNotSaidC3M2UnderWaterShack IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M2UnderWaterShackProducer
		ApplyContext "SaidC3M2UnderWaterShack:1:0,Talk:1:2.250"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2UnderWaterShackEllisSheva",
		criteria ConceptRemark IsSheva IsC3M2UnderWaterShack IsNotSaidC3M2UnderWaterShack IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsMechanicAlive IsMechanicNear400 ChanceToFire30Percent IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M2UnderWaterShackEllisProducer
		then mechanic _C3M2UnderwaterShack foo:0 0.5
		ApplyContext "SaidC3M2UnderWaterShack:1:0,Talk:1:2.250"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2Village1Sheva",
		criteria ConceptRemark IsSheva IsC3M2Village1 IsNotSaidC3M2Village1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear800 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M2Village1Producer
		ApplyContext "SaidC3M2Village1:1:0,Talk:1:2.647"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M2WhereAreWeSheva",
		criteria ConceptRemark IsSheva IsC3M2WhereAreWe IsNotSaidC3M2WhereAreWe IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival ChanceToFire30Percent IsNotSpeakingWeight0
		Response PlayerRemarkC3M2WhereAreWeProducer
		ApplyContext "SaidC3M2WhereAreWe:1:0,Talk:1:4.066"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M2WhereAreWeSheva",
		criteria ConceptRemark IsSheva IsC3M2WhereAreWe IsNotSaidC3M2WhereAreWe IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "SaidC3M2WhereAreWe:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3BodiesSheva",
		criteria ConceptRemark IsSheva IsC3M3Bodies IsNotSaidC3M3Bodies IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3BodiesProducer
		then mechanic InfoRemC3M3Bodies2 foo:0 -4.955
		ApplyContext "SaidC3M3Bodies:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3LowerGateSheva",
		criteria ConceptRemark IsSheva IsC3M3LowerGate IsNotSaidC3M3BridgeButton IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3LowerGateProducer
		then any InfoRemC3M3LowerGatea foo:0 10
		ApplyContext "SaidC3M3LowerGate:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3MoreShacksSheva",
		criteria ConceptRemark IsSheva IsC3M3MoreShacks IsNotSaidC3M3MoreShacks IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3MoreShacksProducer
		ApplyContext "SaidC3M3MoreShacks:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3MoreShacksSheva",
		criteria ConceptRemark IsSheva IsC3M3MoreShacks IsNotSaidC3M3MoreShacks IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "SaidC3M3MoreShacks:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3SearchHousesSheva",
		criteria ConceptRemark IsSheva IsC3M3SearchHouses IsNotSaidC3M3SearchHouses IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3SearchHousesProducer
		ApplyContext "SaidC3M3SearchHouses:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3StairsSheva",
		criteria ConceptRemark IsSheva IsC3M3Stairs IsNotSaidC3M3Stairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3StairsProducer
		ApplyContext "SaidC3M3Stairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3StayUpHereSheva",
		criteria ConceptRemark IsSheva IsC3M3StayUpHere IsNotSaidC3M3StayUpHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3StayUpHereProducer
		ApplyContext "SaidC3M3StayUpHere:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3StayUpHereSheva",
		criteria ConceptRemark IsSheva IsC3M3StayUpHere IsNotSaidC3M3StayUpHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "SaidC3M3StayUpHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3ThisWaySheva",
		criteria ConceptRemark IsSheva IsC3M3ThisWay IsNotSaidC3M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3ThisWayProducer
		ApplyContext "SaidC3M3ThisWay:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3ThisWaySheva",
		criteria ConceptRemark IsSheva IsC3M3ThisWay IsNotSaidC3M3ThisWay IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "SaidC3M3ThisWay:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3ThroughHereSheva",
		criteria ConceptRemark IsSheva IsC3M3ThroughHere IsNotSaidC3M3ThroughHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3ThroughHereProducer
		ApplyContext "SaidC3M3ThroughHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3ThroughThisHouseSheva",
		criteria ConceptRemark IsSheva IsC3M3ThroughThisHouse IsNotSaidC3M3ThroughThisHouse IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3ThroughThisHouseProducer
		ApplyContext "SaidC3M3ThroughThisHouse:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3UpHereSheva",
		criteria ConceptRemark IsSheva IsC3M3UpHere IsNotSaidC3M3UpHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear100 IsNotSaidC3M3BridgeButton AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3UpHereProducer
		ApplyContext "SaidC3M3UpHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3UsePlanksSheva",
		criteria ConceptRemark IsSheva IsC3M3UsePlanks IsNotSaidC3M3UsePlanks IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 ChanceToFire30Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC3M3UsePlanksProducer
		ApplyContext "SaidC3M3UsePlanks:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkC3M3UsePlanksSheva",
		criteria ConceptRemark IsSheva IsC3M3UsePlanks IsNotSaidC3M3UsePlanks IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "SaidC3M3UsePlanks:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc3m4downroadSheva",
		criteria ConceptRemark IsSheva Isc3m4downroad IsNotSaidc3m4downroad IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc3m4downroadProducer
		ApplyContext "Saidc3m4downroad:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc3m4outhouseSheva",
		criteria ConceptRemark IsSheva Isc3m4outhouse IsNotSaidc3m4outhouse IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc3m4outhouseProducer
		ApplyContext "Saidc3m4outhouse:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkc3m4outhouseSheva",
		criteria ConceptRemark IsSheva Isc3m4outhouse IsNotSaidc3m4outhouse IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 ChanceToFire20Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "Saidc3m4outhouse:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc3m4radioSheva",
		criteria ConceptRemark IsSheva Isc3m4radio IsNotSaidc3m4radio IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_NotButton1 IsNotSpeakingWeight0
		Response PlayerRemarkc3m4radioProducer
		then Mechanic _C3M4_Radio foo:0 0.1
		ApplyContext "Saidc3m4radio:1:0,Talk:1:1.207"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc3m4scaffoldSheva",
		criteria ConceptRemark IsSheva Isc3m4scaffold IsNotSaidc3m4scaffold IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc3m4scaffoldProducer
		ApplyContext "Saidc3m4scaffold:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m1_carcrashSheva",
		criteria ConceptRemark IsSheva Isc4m1_carcrash IsNotSaidc4m1_carcrash IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear500 IsWorldTalkSheva ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m1_carcrashProducer
		then any c4m1_wreck01 foo:0 0.01
		ApplyContext "Saidc4m1_carcrash:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkc4m1_carcrashSheva",
		criteria ConceptRemark IsSheva Isc4m1_carcrash IsNotSaidc4m1_carcrash IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "Saidc4m1_carcrash:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m1_garagesaleSheva",
		criteria ConceptRemark IsSheva Isc4m1_garagesale IsNotSaidc4m1_garagesale IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear400 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m1_garagesaleProducer
		ApplyContext "Saidc4m1_garagesale:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m1_nogasSheva",
		criteria ConceptRemark IsSheva Isc4m1_nogas IsNotSaidc4m1_nogas IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m1_nogasProducer
		then any c4m1_nogas10 foo:0 0.01
		ApplyContext "Saidc4m1_nogas:1:0,Talk:1:4.303,_auto_NoGasGate:1:25"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m1_playgroundfarSheva",
		criteria ConceptRemark IsSheva Isc4m1_playground IsNotSaidc4m1_playground IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear1000 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m1_playgroundfarProducer
		ApplyContext "Saidc4m1_playground:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m1_playgroundnearSheva",
		criteria ConceptRemark IsSheva Isc4m1_playground IsNotSaidc4m1_playground IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m1_playgroundnearProducer
		ApplyContext "Saidc4m1_playground:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m1_throughhereASheva",
		criteria ConceptRemark IsSheva Isc4m1_throughhereA IsNotSaidc4m1_throughhereA IsNotCoughing IsTalk IsTalkSheva IsSubjectNear400 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m1_throughhereAProducer
		ApplyContext "Saidc4m1_throughhereA:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_gasinsidesignSheva",
		criteria ConceptRemark IsSheva Isc4m2_gasinsidesign IsNotSaidc4m2_gasinsidesign IsNotSaidSafeSpotAhead IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear350 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_gasinsidesignProducer
		then any _c4m2_gasinside01 foo:0 0.01
		ApplyContext "Saidc4m2_gasinsidesign:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_millentranceSheva",
		criteria ConceptRemark IsSheva Isc4m2_millentrance IsNotSaidc4m2_millentrance IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_millentranceProducer
		ApplyContext "Saidc4m2_millentrance:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_millentranceexitSheva",
		criteria ConceptRemark IsSheva Isc4m2_millentranceexit IsNotSaidc4m2_millentranceexit IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_millentranceexitProducer
		ApplyContext "Saidc4m2_millentranceexit:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_seegasstationSheva",
		criteria ConceptRemark IsSheva Isc4m2_seegasstation IsNotSaidc4m2_seegasstation IsNotSaidActivatedC4M2Elevator IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_seegasstationProducer
		then self _c4m2_seestation01 foo:0 0.01
		ApplyContext "Talk:1:3,Saidc4m2_seegasstation:1:0,_auto_InsideMill:0:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_streetblockedSheva",
		criteria ConceptRemark IsSheva Isc4m2_streetblocked IsNotSaidc4m2_streetblocked IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_streetblockedProducer
		then any _c4m2_streetblocked01 foo:0 0.01
		ApplyContext "Saidc4m2_streetblocked:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_uprampSheva",
		criteria ConceptRemark IsSheva Isc4m2_upramp IsNotSaidc4m2_upramp IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_uprampProducer
		ApplyContext "Saidc4m2_upramp:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_upthestairsSheva",
		criteria ConceptRemark IsSheva Isc4m2_upthestairs IsNotSaidc4m2_upthestairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_upthestairsProducer
		ApplyContext "Saidc4m2_upthestairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_useelevatorSheva",
		criteria ConceptRemark IsSheva Isc4m2_useelevator IsNotSaidc4m2_useelevator IsNotSaidActivatedC4M2Elevator IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsSaidc4m2_seegasstation AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_useelevatorProducer
		ApplyContext "Saidc4m2_useelevator:1:0,_auto_InsideMill:0:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_waterpoolSheva",
		criteria ConceptRemark IsSheva Isc4m2_waterpool IsNotSaidc4m2_waterpool IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_waterpoolProducer
		then any _c4m2_waterpool02 foo:0 0.01
		ApplyContext "Saidc4m2_waterpool:1:0,c4m2_PastPuddle:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m2_weatherSheva",
		criteria ConceptRemark IsSheva Isc4m2_weather IsNotSaidc4m2_weather IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_weatherProducer
		ApplyContext "Saidc4m2_weather:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_caneSheva",
		criteria ConceptRemark IsSheva Isc4m3_cane IsNotSaidc4m3_cane IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_caneProducer
		ApplyContext "Saidc4m3_cane:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_crosshereSheva",
		criteria ConceptRemark IsSheva Isc4m3_crosshere IsNotSaidc4m3_crosshere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_crosshereProducer
		ApplyContext "Saidc4m3_crosshere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_downhereSheva",
		criteria ConceptRemark IsSheva Isc4m3_downhere IsNotSaidc4m3_downhere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_downhereProducer
		ApplyContext "Saidc4m3_downhere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_downstairsSheva",
		criteria ConceptRemark IsSheva Isc4m3_downstairs IsNotSaidc4m3_downstairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_downstairsProducer
		ApplyContext "Saidc4m3_downstairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_ducatelsignSheva",
		criteria ConceptRemark IsSheva Isc4m3_ducatelsign IsNotSaidc4m3_ducatelsign IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_ducatelsignProducer
		ApplyContext "Saidc4m3_ducatelsign:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_elevatorSheva",
		criteria ConceptRemark IsSheva Isc4m3_elevator IsNotSaidc4m3_elevator IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_elevatorProducer
		ApplyContext "Saidc4m3_elevator:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_floodedSheva",
		criteria ConceptRemark IsSheva Isc4m3_flooded IsNotSaidc4m3_flooded IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_floodedProducer
		then coach _C4M3_FLOODED01 foo:0 0.2
		ApplyContext "Saidc4m3_flooded:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_overtankSheva",
		criteria ConceptRemark IsSheva Isc4m3_overtank IsNotSaidc4m3_overtank IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_overtankProducer
		ApplyContext "Saidc4m3_overtank:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_rainSheva",
		criteria ConceptRemark IsSheva Isc4m3_rain IsNotSaidc4m3_rain IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_rainProducer
		then Mechanic _c4m3_rain02 foo:0 0.02
		ApplyContext "Saidc4m3_rain:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_thiswayaSheva",
		criteria ConceptRemark IsSheva Isc4m3_thisway IsNotSaidc4m3_thisway IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_millentranceexitProducer
		ApplyContext "Saidc4m3_thisway:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m3_uppipesSheva",
		criteria ConceptRemark IsSheva Isc4m3_uppipes IsNotSaidc4m3_uppipes IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_uppipesProducer
		ApplyContext "Saidc4m3_uppipes:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m4_floodedSheva",
		criteria ConceptRemark IsSheva Isc4m4_flooded NotInCombat IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response PlayerRemarkc4m4_floodedProducer
		then any _C4M4_FLOODED01 foo:0 0.5
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m4_garagesaleSheva",
		criteria ConceptRemark IsSheva Isc4m4_garagesale IsNotSaidc4m4_garagesale IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m4_garagesaleProducer
		then any _C4M4_garagesale01 foo:0 0.1
		ApplyContext "Saidc4m4_garagesale:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m4_garagesale2Sheva",
		criteria ConceptRemark IsSheva Isc4m4_garagesale2 IsNotSaidc4m4_garagesale IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m4_garagesaleProducer
		then any _C4M4_garagesale01 foo:0 0.1
		ApplyContext "Saidc4m4_garagesale:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m4_playgroundSheva",
		criteria ConceptRemark IsSheva Isc4m4_playground IsNotSaidc4m4_playground IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival _auto_NotLockA IsNotSpeakingWeight0
		Response PlayerRemarkc4m4_playgroundProducer
		ApplyContext "Saidc4m4_playground:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m4_porchlightSheva",
		criteria ConceptRemark IsSheva Isc4m4_porchlight IsNotSaidc4m4_porchlight IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m4_porchlightProducer
		ApplyContext "Saidc4m4_porchlight:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m4_truckwreckSheva",
		criteria ConceptRemark IsSheva Isc4m4_truckwreck IsNotSaidc4m4_truckwreck IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival _auto_NotLockA IsNotSpeakingWeight0
		Response PlayerRemarkc4m4_truckwreckProducer
		ApplyContext "Saidc4m4_truckwreck:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m4_useroofsSheva",
		criteria ConceptRemark IsSheva Isc4m4_useroofs IsNotSaidc4m4_useroofs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m4_useroofsProducer
		ApplyContext "Saidc4m4_useroofs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkpathc2m1_abandonedcarsSheva",
		criteria ConceptRemark IsSheva Ispathc2m1_abandonedcars IsNotSaidpathc2m1_abandonedcars IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 ChanceToFire60Percent IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkpathc2m1_abandonedcarsProducer
		then Coach _C2M1abandoned01 foo:0 0.02
		ApplyContext "Saidpathc2m1_abandonedcars:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkpathc2m1_abandonedcarsSheva",
		criteria ConceptRemark IsSheva Ispathc2m1_abandonedcars IsNotSaidpathc2m1_abandonedcars IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "Saidpathc2m1_abandonedcars:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkpathc2m1_billboardSheva",
		criteria ConceptRemark IsSheva Ispathc2m1_billboard IsNotSaidpathc2m1_billboard IsNotCoughing NotInCombat IsTalkSheva IsSubjectNear1000 IsWorldTalkSheva IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkpathc2m1_billboardProducer
		then Coach _C2M1Billboard foo:0 0.01
		ApplyContext "Saidpathc2m1_billboard:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkremark_MidnightRidersBusSheva",
		criteria ConceptRemark IsSheva Isremark_MidnightRidersBus IsNotSaidremark_MidnightRidersBus IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear1500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkremark_MidnightRidersBusProducer
		ApplyContext "Saidremark_MidnightRidersBus:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M1CedaMapsSheva",
		criteria ConceptRemark IsSheva IsWorldC1M1CedaMaps IsNotSaidWorldC1M1CedaMaps IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M1CedaMapsProducer
		ApplyContext "SaidWorldC1M1CedaMaps:1:0,Talk:1:6.617"
		applycontexttoworld
	},

	{
		name = "C1M1WeAreScrewedSheva",
		criteria ConceptC1M1WeAreScrewed IsSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response C1M1WeAreScrewedProducer
	},

	{
		name = "PlayerRemarkWorldC1M1DownHereSheva",
		criteria ConceptRemark IsSheva IsWorldC1M1DownHere IsNotSaidWorldC1M1DownHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M1DownHereProducer
		ApplyContext "SaidWorldC1M1DownHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M1DownStairsSheva",
		criteria ConceptRemark IsSheva IsWorldC1M1DownStairs IsNotSaidWorldC1M1DownStairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M1DownStairsProducer
		ApplyContext "SaidWorldC1M1DownStairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M1ElevatorBrokenSheva",
		criteria ConceptRemark IsSheva IsWorldC1M1ElevatorBroken IsNotSaidWorldC1M1ElevatorBroken IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M1ElevatorBrokenProducer
		ApplyContext "SaidWorldC1M1ElevatorBroken:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M1FireSpreadingSheva",
		criteria ConceptRemark IsSheva IsWorldC1M1FireSpreading IsNotSaidWorldC1M1FireSpreading IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M1FireSpreadingProducer
		ApplyContext "SaidWorldC1M1FireSpreading:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M1FirstSheva",
		criteria ConceptRemark IsSheva IsWorldC1M1First IsNotSaidWorldC1M1First IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M1FirstProducer
		ApplyContext "SaidWorldC1M1First:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M1LedgeSheva",
		criteria ConceptRemark IsSheva IsWorldC1M1Ledge IsNotSaidWorldC1M1Ledge IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M1LedgeProducer
		ApplyContext "SaidWorldC1M1Ledge:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M2CloseSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2Close IsNotSaidWorldC1M2Close IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M2CloseProducer
		ApplyContext "SaidWorldC1M2Close:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M1StairsSignSheva",
		criteria ConceptRemark IsSheva IsWorldC1M1StairsSign IsNotSaidWorldC1M1StairsSign IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M1StairsSignProducer
		ApplyContext "SaidWorldC1M1StairsSign:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M2DownStairsSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2DownStairs IsNotSaidWorldC1M2DownStairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 TimeSinceGroupInCombat05 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M2DownStairsProducer
		ApplyContext "SaidWorldC1M2DownStairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M2AbandonedSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2Abandoned IsNotSaidWorldC1M2Abandoned IsNotCoughing NotInCombat IntensityZero IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M2AbandonedProducer
		ApplyContext "SaidWorldC1M2Abandoned:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M2DumpsterSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2Dumpster IsNotSaidWorldC1M2Dumpster IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M2DumpsterProducer
		ApplyContext "SaidWorldC1M2Dumpster:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M2InHereSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2InHere IsNotSaidWorldC1M2InHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M2InHereProducer
		ApplyContext "SaidWorldC1M2InHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M2JumpTruckSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2JumpTruck IsNotSaidWorldC1M2JumpTruck IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M2JumpTruckProducer
		ApplyContext "SaidWorldC1M2JumpTruck:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M2MallSignHereSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2MallSignHere IsNotSaidWorldC1M2MallSignHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear800 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M2MallSignHereProducer
		ApplyContext "SaidWorldC1M2MallSignHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC1M2UpStairsSheva",
		criteria ConceptRemark IsSheva IsWorldC1M2UpStairs IsNotSaidWorldC1M2UpStairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC1M2UpStairsProducer
		ApplyContext "SaidWorldC1M2UpStairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1CheckingHousesSheva",
		criteria ConceptRemark IsSheva IsWorldC3M1CheckingHouses IsNotSaidWorldC3M1CheckingHouses IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear200 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC3M1CheckingHousesProducer
		ApplyContext "SaidWorldC3M1CheckingHouses:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingSheva",
		criteria ConceptRemark IsSheva IsWorldC3M1FerryCrossing IsNotSaidWorldC3M1FerryCrossing IsNotCoughing NotInCombat IsTalkSheva IsSubjectNear200 IsWorldTalkSheva ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		// 	forceweight 1
		Response PlayerRemarkWorldC3M1FerryCrossingProducer
		then any WorldC3M1FerryCrossingA01 foo:0 -4.110
		ApplyContext "SaidWorldC3M1FerryCrossing:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingEllisSheva",
		criteria ConceptRemark IsSheva IsWorldC3M1FerryCrossing IsNotSaidWorldC3M1FerryCrossing IsNotCoughing NotInCombat IsTalkSheva IsSubjectNear200 IsMechanicAlive IsWorldTalkSheva ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		// 	forceweight 2
		Response PlayerRemarkWorldC3M1FerryCrossingEllisProducer
		then mechanic WorldC3M1FerryCrossingB01 foo:0 -2.025
		ApplyContext "SaidWorldC3M1FerryCrossing:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1FerryCrossingNickSheva",
		criteria ConceptRemark IsSheva IsWorldC3M1FerryCrossing IsNotSaidWorldC3M1FerryCrossing IsNotCoughing NotInCombat IsTalkSheva IsSubjectNear200 IsGamblerAlive IsWorldTalkSheva ChanceToFire25Percent AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		// 	forceweight 3
		Response PlayerRemarkWorldC3M1FerryCrossingNickProducer
		then gambler WorldC3M1FerryCrossingC01 foo:0 -3.171
		ApplyContext "SaidWorldC3M1FerryCrossing:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1FerryNagSheva",
		criteria ConceptRemark IsSheva IsWorldC3M1FerryNag IsNotSaidWorldC3M1FerryNag IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear600 IsNotSaidC3M1CallFerry2 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC3M1FerryNagProducer
		then mechanic WorldIntroC3f2 foo:0 0.1
		ApplyContext "SaidWorldC3M1FerryNag:1:0,_auto_TimerLockA:1:15"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1FerryNagaSheva",
		criteria ConceptTalkIdle IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear600 IsSaidWorldC3M1FerryNag IsNotSaidC3M1CallFerry2 AutoIsNotScavenge AutoIsNotSurvival IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotTimerLockA _auto_NotTimerLockSheva
		Response PlayerRemarkWorldC3M1FerryNagaProducer
		ApplyContext "_auto_TimerLockA:1:20,_auto_TimerLockSheva:1:40"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1GetBackUpSheva",
		criteria ConceptRemark IsSheva IsWorldC3M1WeShouldGetBackUp IsNotSaidWorldC3M1WeShouldGetBackUp IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC3M1GetBackUpProducer
		ApplyContext "SaidWorldC3M1WeShouldGetBackUp:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1Path01Sheva",
		criteria ConceptRemark IsSheva IsWorldC3M1Path01 IsNotSaidWorldC3M1Path01 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear400 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC3M1Path01Producer
		ApplyContext "SaidWorldC3M1Path01:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1PlanksRightSheva",
		criteria ConceptRemark IsSheva IsWorldC3M1PlanksRight IsNotSaidWorldC3M1PlanksRight IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC3M1PlanksRightProducer
		ApplyContext "SaidWorldC3M1PlanksRight:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1WalkwaysSheva",
		criteria ConceptRemark IsSheva IsWorldC3M1Walkways IsNotSaidWorldC3M1Walkways IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear600 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC3M1WalkwaysProducer
		then coach WorldC3M1Walkways2 foo:0 -1.209
		ApplyContext "SaidWorldC3M1Walkways:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC3M1WhichWaySheva",
		criteria ConceptRemark IsSheva IsWorldC3M1WhichWay IsNotSaidWorldC3M1WhichWay IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear400 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC3M1WhichWayProducer
		ApplyContext "SaidWorldC3M1WhichWay:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC502AlarmButtonSheva",
		criteria ConceptWorldC502AlarmButton IsSheva IsNotCoughing IsNotScavenge
		Response PlayerRemarkWorldC502AlarmButtonProducer
		then any WorldC502AlarmButtonRun foo:0 .1
	},

	{
		name = "PlayerRemarkWorldC502AlarmStoppedSheva",
		criteria ConceptWorldC502AlarmStopped IsSheva IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerRemarkWorldC502AlarmStoppedProducer
		then any WorldC502AlarmStopped2 foo:0 0.3
	},

	{
		name = "PlayerRemarkWorldC502AlleySheva",
		criteria ConceptRemark IsSheva IsWorldC502Alley IsNotSaidWorldC502Alley IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear300 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC502AlleyProducer
		ApplyContext "SaidWorldC52Alley:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC502SmellSheva",
		criteria ConceptRemark IsSheva IsWorldC502Smell IsNotSaidWorldC502Smell IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear600 IsNotSaidSmell ChanceToFire50Percent IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC502SmellProducer
		then any WorldC502Smell2 foo:0 -2.701
		ApplyContext "SaidWorldC502Smell:1:0,SaidSmell:1:0"
		applycontexttoworld
	},

	{
		name = "AUTOBLANK_PlayerRemarkWorldC502SmellSheva",
		criteria ConceptRemark IsSheva IsWorldC502Smell IsNotSaidWorldC502Smell IsNotCoughing NotInCombat IsTalk IsTalkSheva IsSubjectNear600 IsNotSaidSmell IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response _PlayerInfoRemarkableBlankProducer
		ApplyContext "SaidWorldC502Smell:1:0,SaidSmell:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_AcrossHereSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_AcrossHere IsNotSaidWorldC6M1_AcrossHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_AcrossHereProducer
		ApplyContext "SaidWorldC6M1_AcrossHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_AlleyBelow IsNotSaidWorldC6M1_AlleyBelow IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_AlleyBelowProducer
		ApplyContext "SaidWorldC6M1_AlleyBelow:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_AlleyIntoBuilding IsNotSaidWorldC6M1_AlleyIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_AlleyIntoBuildingProducer
		ApplyContext "SaidWorldC6M1_AlleyIntoBuilding:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_InAptsSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_InApts IsNotSaidWorldC6M1_InApts IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_InAptsProducer
		ApplyContext "SaidWorldC6M1_InApts:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_IntoTheStore IsNotSaidWorldC6M1_IntoTheStore IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_IntoTheStoreProducer
		ApplyContext "SaidWorldC6M1_IntoTheStore:1:0,JustSaidWorldC6M1_IntoTheStore:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_PostWeddingSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_PostWedding IsNotSaidWorldC6M1_PostWedding IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_PostWeddingProducer
		ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleySheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_SafeRoomAlley IsNotSaidWorldC6M1_SafeRoomAlley IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_SafeRoomAlleyProducer
		ApplyContext "SaidWorldC6M1_SafeRoomAlley:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_ThroughBarSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_ThroughBar IsNotSaidWorldC6M1_ThroughBar IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_ThroughBarProducer
		ApplyContext "SaidWorldC6M1_ThroughBar:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_UpHereSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_UpHere IsNotSaidWorldC6M1_UpHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_UpHereProducer
		ApplyContext "SaidWorldC6M1_UpHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_UpTheStairs IsNotSaidWorldC6M1_UpTheStairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_UpTheStairsProducer
		ApplyContext "SaidWorldC6M1_UpTheStairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_UpTheStairs2 IsNotSaidWorldC6M1_UpTheStairs2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_UpTheStairs2Producer
		ApplyContext "SaidWorldC6M1_UpTheStairs2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsWitchPresent IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_WeddingWarnProducer
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnAngelSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsWitchPresent IsMechanicAlive IsMechanicNear400 IsEllisInLoveC6M1 IsZoeyIntroActor AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_WeddingWarnAngelProducer
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_AcrossPlankSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_AcrossPlank IsNotSaidWorldC6M2_AcrossPlank IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear250 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_AcrossPlankProducer
		ApplyContext "SaidWorldC6M2_AcrossPlank:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_AfterGate1 IsNotSaidWorldC6M2_AfterGate1 IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_AfterGate1Producer
		ApplyContext "SaidWorldC6M2_AfterGate1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_AfterGate2 IsNotSaidWorldC6M2_AfterGate2 IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_AfterGate2Producer
		ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGateNickSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_AfterGate2 IsNotSaidWorldC6M2_AfterGate2 IsNotCoughing IsTalk IsTalkSheva IsGamblerAlive IsGamblerNear400 ChanceToFire50Percent IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_AfterGateNickProducer
		ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_DownHereSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_DownHere IsNotSaidWorldC6M2_DownHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_DownHereProducer
		ApplyContext "SaidWorldC6M2_DownHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_DownIntoBuilding IsNotSaidWorldC6M2_DownIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_DownIntoBuildingProducer
		ApplyContext "SaidWorldC6M2_DownIntoBuilding:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalLadderSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_FinalLadder IsNotSaidWorldC6M2_FinalLadder IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_FinalLadderProducer
		ApplyContext "SaidWorldC6M2_FinalLadder:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_FinalWater IsNotSaidWorldC6M2_FinalWater IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_FinalWaterProducer
		ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_FinalWaterGoGo IsNotSaidWorldC6M2_FinalWaterGoGo IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_FinalWaterGoGoProducer
		ApplyContext "SaidWorldC6M2_FinalWaterGoGo:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_InJazzClubSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_InJazzClub IsNotSaidWorldC6M2_InJazzClub IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear1000 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_InJazzClubProducer
		ApplyContext "SaidWorldC6M2_InJazzClub:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_InSewer1 IsNotSaidWorldC6M2_InSewer1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_InSewer1Producer
		ApplyContext "SaidWorldC6M2_InSewer1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_InSewer2 IsNotSaidWorldC6M2_InSewer2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsGamblerAlive IsGamblerNear400 IsSaidWorldC6M2_InSewer1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_InSewer2Producer
		then Gambler WorldC6M2_InSewer201a foo:0 -2.052
		ApplyContext "SaidWorldC6M2_InSewer2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_InSewerLadder1 IsNotSaidWorldC6M2_InSewerLadder1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_InSewerLadder1Producer
		ApplyContext "SaidWorldC6M2_InSewerLadder1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_IntoConstruction IsNotSaidWorldC6M2_IntoConstruction IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_IntoConstructionProducer
		ApplyContext "SaidWorldC6M2_IntoConstruction:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_IntoPoolHall IsNotSaidWorldC6M2_IntoPoolHall IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_IntoPoolHallProducer
		ApplyContext "SaidWorldC6M2_IntoPoolHall:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_JukeBoxSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_JukeBox IsNotSaidWorldC6M2_JukeBox IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_JukeBoxProducer
		ApplyContext "SaidWorldC6M2_JukeBox:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_JumpDownSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_JumpDown IsNotSaidWorldC6M2_JumpDown IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_JumpDownProducer
		ApplyContext "SaidWorldC6M2_JumpDown:1:0"
		applycontexttoworld
	},

	{
		name = "C6M2FallingSheva",
		criteria ConceptC2M1Falling IsSheva Isc6m2_bedlam AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_OnTourWalk1 IsNotSaidWorldC6M2_OnTourWalk1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_OnTourWalk1Producer
		ApplyContext "SaidWorldC6M2_OnTourWalk1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_OnTourWalk2 IsNotSaidWorldC6M2_OnTourWalk2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_OnTourWalk2Producer
		ApplyContext "SaidWorldC6M2_OnTourWalk2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_OnTourWalk3 IsNotSaidWorldC6M2_OnTourWalk3 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_OnTourWalk3Producer
		ApplyContext "SaidWorldC6M2_OnTourWalk3:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_OpenGate1 IsNotSaidWorldC6M2_OpenGate1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSaidOpenedGate1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_OpenGate1Producer
		ApplyContext "SaidWorldC6M2_OpenGate1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_Phase2 IsNotSaidWorldC6M2_Phase2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_Phase2Producer
		ApplyContext "SaidWorldC6M2_Phase2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_Phase2DownProducer
		ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IntensityOver75 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_Phase2DownIntenseProducer
		ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_PostGate1xSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_PostGate1 IsNotSaidWorldC6M2_PostGate1 IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsSaidOpenedGate1 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_PostGate1xProducer
		ApplyContext "SaidWorldC6M2_PostGate1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_SuitcaseSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_Suitcase IsNotSaidWorldC6M2_Suitcase IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_SuitcaseProducer
		ApplyContext "SaidWorldC6M2_Suitcase:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_TourEntranceSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_TourEntrance IsNotSaidWorldC6M2_TourEntrance IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_TourEntranceProducer
		then Sheva WorldC6M2_TourEntrance01a foo:0 -1.841
		ApplyContext "SaidWorldC6M2_TourEntrance:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_UpCatWalk IsNotSaidWorldC6M2_UpCatWalk IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_UpCatWalkProducer
		ApplyContext "SaidWorldC6M2_UpCatWalk:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairsSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_UpStairs IsNotSaidWorldC6M2_UpStairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_UpStairsProducer
		ApplyContext "SaidWorldC6M2_UpStairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_UpStairs2 IsNotSaidWorldC6M2_UpStairs2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_UpStairs2Producer
		ApplyContext "SaidWorldC6M2_UpStairs2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M3_BridgeRunSheva",
		criteria ConceptRemark IsSheva IsWorldC6M3_BridgeRun IsNotSaidWorldC6M3_BridgeRun IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M3_BridgeRunProducer
		then Any WorldC6M3_ByBridge01 foo:0 -0.909
		ApplyContext "SaidWorldC6M3_BridgeRun:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeSheva",
		criteria ConceptRemark IsSheva IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 _auto_C6M3BridgeDown AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M3_ByBridgeProducer
		ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeFrancisSheva",
		criteria ConceptRemark IsSheva IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 IsFrancisIntroActor _auto_C6M3BridgeDown AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M3_ByBridgeFrancisProducer
		then biker WorldC6M3_ByBridge01 foo:0 0.3
		ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldFootLockerSheva",
		criteria ConceptRemark IsSheva IsWorldFootLocker IsNotSaidWorldFootLocker IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldFootLockerProducer
		ApplyContext "SaidWorldFootLocker:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldSignColdBeerSheva",
		criteria ConceptRemark IsSheva IsWorldSignColdBeer IsNotSaidWorldSignColdBeer IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldSignColdBeerProducer
		then Any WorldSignHurricane2 foo:0 0.1
		ApplyContext "SaidWorldSignColdBeer:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldSignHurricaneSheva",
		criteria ConceptWorldSignHurricane3 IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkWorldSignHurricaneProducer
	},

	{
		name = "PlayerRemarkWorldSignReportSick3Sheva",
		criteria ConceptWorldSignReportSick3 IsSheva IsNotCoughing NotInCombat IsTalk IsTalkSheva IssuerClose IsWorldTalkSheva IsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkWorldSignReportSick3Producer
	},

	{
		name = "PlayerRemarkWorldSignWhereIsCEDA2Sheva",
		criteria ConceptWorldSignWhereIsCEDA2 IsSheva IsNotCoughing IsTalk IsTalkSheva IssuerClose IsWorldTalkSheva IsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkWorldSignWhereIsCEDA2Producer
		ApplyContext "Talk:1:3.799"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldSignArmYourselfSheva",
		criteria ConceptWorldC502ArmYourself IsSheva IsNotCoughing NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkWorldSignArmYourselfProducer
	},

	{
		name = "PlayerWorldSignC5AlarmWillSoundSheva",
		criteria ConceptRemark IsSheva IsWorldSignC5AlarmWillSound IsNotSaidWorldSignC5AlarmWillSound IsNotCoughing IsTalk IsTalkSheva IsSubjectNear200 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerWorldSignC5AlarmWillSoundProducer
		then coach WorldSignC5AlarmWillSound3 foo:0 0.1
		ApplyContext "SaidWorldSignC5AlarmWillSound:1:0"
		applycontexttoworld
	},

	{
		name = "RespondAffirmativeSheva",
		criteria ConceptRespondAffirmative IssuerMediumClose IsNotCoughing NotInCombat isSheva IsTalkSheva IsWorldTalkSheva
		Response RespondAffirmativeProducer
	},

	{
		name = "PlayerFollowMeSheva",
		criteria ConceptPlayerFollowMe IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerFollowMeProducer
	},

	{
		name = "PlayerHelpSheva",
		criteria ConceptPlayerHelp IsSheva IsNotCoughing IsNotIncapacitated IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerHelpProducer
	},

	{
		name = "PlayerHurryUpSheva",
		criteria ConceptPlayerHurryUp IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerHurryUpProducer
	},

	{
		name = "PlayerHurryUpC4M2Sheva",
		criteria ConceptPlayerHurryUp IsNotCoughing IsSheva IsTalk IsTalkSheva ismap_c4m2_sugarmill_a IsNotSaidSafeSpotAhead IsNotZombiePresentTank IsWorldTalkSheva _auto_IsShevaInWitchville
		Response PlayerHurryUpC4M2Producer
	},

	{
		name = "PlayerKillThatLightSheva",
		criteria ConceptPlayerKillThatLight IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerKillThatLightProducer
	},

	{
		name = "PlayerLeadOnSheva",
		criteria ConceptPlayerLeadOn IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerLeadOnProducer
	},

	{
		name = "PlayerMoveOnSheva",
		criteria ConceptPlayerMoveOn IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerMoveOnProducer
	},

	{
		name = "PlayerStayTogetherSheva",
		criteria ConceptPlayerStayTogether IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerStayTogetherProducer
	},

	{
		name = "PlayerWatchOutBehindSheva",
		criteria ConceptPlayerWatchOutBehind IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerWatchOutBehindProducer
	},

	{
		name = "PlayerAskReadySheva",
		criteria ConceptPlayerAskReady IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerAskReadyProducer
	},

	{
		name = "PlayerImWithYouSheva",
		criteria ConceptPlayerImWithYou IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerImWithYouProducer
	},

	{
		name = "PlayerLaughSheva",
		criteria ConceptPlayerLaugh IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotVersus
		Response PlayerLaughProducer
	},

	{
		name = "PlayerLostCallSheva",
		criteria ConceptPlayerLostCall IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerLostCallProducer
	},

	{
		name = "PlayerNiceJobResponseSheva",
		criteria ConceptPlayerNiceJob IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerNiceJobResponseProducer
	},

	{
		name = "PlayerNoSheva",
		criteria ConceptPlayerNo IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerNoProducer
	},

	{
		name = "PlayerAnswerLostCallSheva",
		criteria ConceptPlayerAnswerLostCall IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerAnswerLostCallProducer
	},

	{
		name = "KillStealCalledOutSheva",
		criteria ConceptKillStealCalledOut IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response KillStealCalledOutProducer
	},

	{
		name = "PlayerSorrySheva",
		criteria ConceptPlayerSorry IsNotCoughing IsNotShotTeammateSheva IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerSorryProducer
	},

	{
		name = "PlayerSorryFFSheva",
		criteria ConceptPlayerSorry IsNotCoughing IsShotTeammateSheva IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerSorryFFProducer
	},

	{
		name = "PlayerThanksSheva",
		criteria ConceptPlayerThanks IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerThanksProducer
	},

	{
		name = "PlayerYellRunSheva",
		criteria ConceptPlayerYellRun IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerYellRunProducer
	},

	{
		name = "PlayerYesSheva",
		criteria ConceptPlayerYes IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerYesProducer
	},

	{
		name = "PlayerYouAreWelcomeSheva",
		criteria ConceptPlayerYouAreWelcome IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerYouAreWelcomeProducer
	},

	{
		name = "YouAreWelcomeSheva",
		criteria ConceptYouAreWelcome IsNotCoughing IsSheva IsTalk IsTalkSheva TimeSinceGroupInCombat05 IsNotSpeaking IsWorldTalkSheva
		Response PlayerYouAreWelcomeProducer
	},

	{
		name = "YouAreWelcomeCoachSheva",
		criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsSheva IsTalk IsTalkSheva FromIsCoach TimeSinceGroupInCombat05 ChanceToFire30Percent IsWorldTalkSheva
		Response YouAreWelcomeCoachProducer
	},

	{
		name = "YouAreWelcomeCoachC1Sheva",
		criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsSheva IsTalk IsTalkSheva FromIsCoach TimeSinceGroupInCombat05 ChanceToFire30Percent IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response YouAreWelcomeCoachC1Producer
	},

	{
		name = "YouAreWelcomeGamblerC1Sheva",
		criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsSheva IsTalk IsTalkSheva FromIsGambler TimeSinceGroupInCombat05 ChanceToFire30Percent IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response YouAreWelcomeGamblerC1Producer
	},

	{
		name = "YouAreWelcomeMechanicC1Sheva",
		criteria ConceptYouAreWelcome IsNotCoughing IsNotSpeaking IsSheva IsTalk IsTalkSheva FromIsMechanic TimeSinceGroupInCombat05 ChanceToFire30Percent IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response YouAreWelcomeMechanicC1Producer
	},

	{
		name = "BotAttentionBattleSheva",
		criteria ConceptSurvivorBotNoteHumanAttention IsNotCoughing IsSheva IsNotBotAttention IsTalk IsTalkSheva IsNotIncapacitated IsInBattlefield TimeSinceGroupInCombat20 IsWorldTalkSheva IsNotSpeakingWeight0
		Response BotAttentionBattleProducer
		ApplyContext "SaidBotAttention:1:30"
		applycontexttoworld
	},

	{
		name = "BotNoteHumanAttentionSheva",
		criteria ConceptSurvivorBotNoteHumanAttention IsNotCoughing IsSheva IsNotBotAttention IsTalk IsTalkSheva IsNotIncapacitated IsInStartArea IsWorldTalkSheva IsNotSpeakingWeight0
		Response BotNoteHumanAttentionProducer
		ApplyContext "SaidBotAttention:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerNegativeSheva",
		criteria ConceptPlayerNegative IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerNegativeProducer
	},

	{
		name = "PlayerShootCarNotSheva",
		criteria ConceptPanicEvent IsNotCoughing IsSheva SubjectIsNotSheva IsNotc5m3_cemetery IsTalk IsTalkSheva IsCarAlarm ChanceToFire40Percent IsWorldTalkSheva
		Response PlayerShootCarNotProducer
		ApplyContext "Saidremark_caralarm:1:300"
		applycontexttoworld
	},

	{
		name = "PlayerShootCarSheva",
		criteria ConceptPanicEvent IsNotCoughing IsSheva SubjectIsSheva IsNotc5m3_cemetery IsTalk IsTalkSheva IsCarAlarm IsWorldTalkSheva
		Response PlayerShootCarProducer
		ApplyContext "Saidremark_caralarm:1:300"
		applycontexttoworld
	},

	{
		name = "PlayerHeardBoomerSheva",
		criteria ConceptPlayerHeardBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerHeardBoomerProducer
	},

	{
		name = "PlayerHeardHunterSheva",
		criteria ConceptPlayerHeardHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerHeardHunterProducer
	},

	{
		name = "PlayerHeardSmokerSheva",
		criteria ConceptPlayerHeardSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerHeardSmokerProducer
	},

	{
		name = "PlayerHeardChargerSheva",
		criteria ConceptPlayerHeardCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerHeardChargerProducer
	},

	{
		name = "PlayerHeardSpitterSheva",
		criteria ConceptPlayerHeardSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerHeardSpitterProducer
	},

	{
		name = "PlayerHeardJockeySheva",
		criteria ConceptPlayerHeardJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerHeardJockeyProducer
	},

	{
		name = "PlayerHeardBoomerC1Sheva",
		criteria ConceptPlayerHeardBoomer IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowBoomer
		Response PlayerHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
	},

	{
		name = "PlayerHeardHunterC1Sheva",
		criteria ConceptPlayerHeardHunter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowHunter
		Response PlayerHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
	},

	{
		name = "PlayerHeardSmokerC1Sheva",
		criteria ConceptPlayerHeardSmoker IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowSmoker
		Response PlayerHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
	},

	{
		name = "PlayerHeardChargerC1Sheva",
		criteria ConceptPlayerHeardCharger IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowCharger
		Response PlayerHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
	},

	{
		name = "PlayerHeardSpitterC1Sheva",
		criteria ConceptPlayerHeardSpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowSpitter
		Response PlayerHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
	},

	{
		name = "PlayerHeardJockeyC1Sheva",
		criteria ConceptPlayerHeardJockey IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowJockey
		Response PlayerHeardJockeyC1Producer
	},

	{
		name = "PlayerHeardTankSheva",
		criteria ConceptPlayerHeardTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerHeardTankProducer
	},

	{
		name = "PlayerHeardWitchSheva",
		criteria ConceptPlayerHeardWitch IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerHeardWitchProducer
	},

	{
		name = "PlayerHurrahSheva",
		criteria ConceptPlayerHurrah IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerHurrahProducer
	},

	{
		name = "PlayerWarnCarefulSheva",
		criteria ConceptPlayerWarnCareful IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerWarnCarefulProducer
	},

	{
		name = "SurvivorSpottedWorldFarSheva",
		criteria ConceptPlayerLook IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsWorldTalkSheva
		Response SurvivorSpottedWorldFarProducer
	},

	{
		name = "C6M3_PourFinishedSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsL4D1Alive Isc6m3_port ChanceToFire20Percent
		Response C6M3_PourFinishedProducer
		then Manager L4D1_NiceJobPour foo:0 0
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "GasPour20MoreSCSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Score20MoreSC
		Response GasPour20MoreSCProducer
		then self GasPour20More foo:0 0.01
		ApplyContext "_auto_GasCountOK:1:4,_auto_NoGasPourLine:1:0"
		applycontexttoworld
	},

	{
		name = "GasPour20MoreWaitSheva",
		criteria ConceptGasPour20More IsSheva IsSpeaking _auto_IsGasCountOK
		Response GasPour20MoreWaitProducer
		then self GasPour20More foo:0 0.1
	},

	{
		name = "GasPour10MoreSCSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Score10MoreSC
		Response GasPour10MoreSCProducer
		then self GasPour10More foo:0 0.01
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},

	{
		name = "GasPour10MoreWaitSheva",
		criteria ConceptGasPour10More IsSheva IsSpeaking _auto_IsGasCountOK
		Response GasPour10MoreWaitProducer
		then self GasPour10More foo:0 0.1
	},

	{
		name = "GasPour1MoreSCSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Score1MoreSC
		Response GasPour1MoreSCProducer
		then self GasPour1More foo:0 0.01
		ApplyContext "_auto_GasCountOK:1:4,_auto_NoGasPourLine:1:0"
		applycontexttoworld
	},

	{
		name = "GasPour1MoreWaitSheva",
		criteria ConceptGasPour1More IsSheva IsSpeaking _auto_IsGasCountOK
		Response GasPour1MoreWaitProducer
		then self GasPour1More foo:0 0.1
	},

	{
		name = "GasPour2MoreSCSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Score2MoreSC
		Response GasPour2MoreSCProducer
		then self GasPour2More foo:0 0.01
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},

	{
		name = "GasPour2MoreWaitSheva",
		criteria ConceptGasPour2More IsSheva IsSpeaking _auto_IsGasCountOK
		Response GasPour2MoreWaitProducer
		then self GasPour2More foo:0 0.1
	},

	{
		name = "GasPour3MoreSCSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Score3MoreSC
		Response GasPour3MoreSCProducer
		then self GasPour3More foo:0 0.01
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},

	{
		name = "GasPour3MoreWaitSheva",
		criteria ConceptGasPour3More IsSheva IsSpeaking _auto_IsGasCountOK
		Response GasPour3MoreWaitProducer
		then self GasPour3More foo:0 0.1
	},

	{
		name = "GasPour5MoreSCSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Score5MoreSC
		Response GasPour5MoreSCProducer
		then self GasPour5More foo:0 0.01
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},

	{
		name = "GasPour5MoreWaitSheva",
		criteria ConceptGasPour5More IsSheva IsSpeaking _auto_IsGasCountOK
		Response GasPour5MoreWaitProducer
		then self GasPour5More foo:0 0.1
	},

	{
		name = "GasPourDoneSCSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsScavenge ScoreDoneSC
		Response GasPourDoneSCProducer
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "GasPourSCSheva",
		criteria ConceptPlayerPourStarted IsSheva IsTalk IsTalkSheva IsNotAlone IsWorldTalkSheva IsScavenge ChanceToFire50Percent _auto_NotNoGasPourLine
		Response GasPourSCProducer
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "GasPourSCAloneSheva",
		criteria ConceptPlayerPourStarted IsSheva IsAlone IsTalk IsTalkSheva IsWorldTalkSheva IsScavenge ChanceToFire50Percent _auto_NotNoGasPourLine
		Response GasPourSCAloneProducer
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "GrabbingGasSCSheva",
		criteria ConceptPlayerEquippedScavengeItem IsSheva IsTalk IsNotAlone IsClosestSurvivorNear500 IsTalkSheva IsWorldTalkSheva NotSaidGrabbingCan
		Response GrabbingGasSCProducer
		ApplyContext "SaidGrabbingCan:1:8"
	},

	{
		name = "PlayerShotGasCanSheva",
		criteria ConceptPlayerShotGasCan IsSheva IsNotSaidPlayerShotGasCan IsScavenge
		Response PlayerShotGasCanProducer
		ApplyContext "SaidPlayerShotGasCan:1:10"
		applycontexttoworld
	},

	{
		name = "ScavengeStartSheva",
		criteria ConceptSurvivorLeavingCheckpoint IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsScavenge IsNotSaidLeavingSafeArea
		Response ScavengeStartProducer
		ApplyContext "SaidLeavingSafeArea:1:0"
		applycontexttoworld
	},

	{
		name = "ScavengeStartC1M4Sheva",
		criteria ConceptSurvivorLeavingCheckpoint IsSheva IsTalk IsTalkSheva ismap_c1m4_atrium IsWorldTalkSheva IsScavenge IsNotSaidLeavingSafeArea
		Response FinaleStartC1M4Producer
		ApplyContext "SaidLeavingSafeArea:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerCommentJockeySheva",
		criteria ConceptCommentJockey IsSheva IssuerCloseEnough FromIsNotTeenGirl IsNotIncapacitated IntensityUnder50 IsNotSaidCommentJockey IsNotSaidBeenJockeyedSheva IsNotBeingJockeyed
		Response PlayerCommentJockeyProducer
		ApplyContext "SaidCommentJockey:1:0"
		applycontexttoworld
	},

	{
		name = "C4M2LockTheDoorCheckPointSheva",
		criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsSheva IsInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva ismap_c4m2_sugarmill_a AutoIsNotScavenge AutoIsNotSurvival
		Response C4M2LockTheDoorCheckPointProducer
	},

	{
		name = "GoingToDieCoachCoachSheva",
		criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotComplainBlock IsCoachAlive IsCoachNear200 ChanceToFire30Percent IsWorldTalkSheva IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		Response GoingToDieCoachCoachProducer
		then coach coachcoaches foo:0 .5
		ApplyContext "IsComplain:1:25"
	},

	{
		name = "PlayerAlertGiveItemStopSheva",
		criteria ConceptAlertGiveItemStop IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidAlertGiveItemStop IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerAlertGiveItemStopProducer
		ApplyContext "SaidAlertGiveItemStop:1:10"
	},

	{
		name = "PlayerAlertGiveItemStopAnFirstAidSheva",
		criteria ConceptAlertGiveItemStopFirstAidA IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidAlertGiveItemStopFirstAid NoHasFirstAidKit IsWorldTalkSheva
		Response PlayerAlertGiveItemStopAnFirstAidProducer
		then subject AlertGiveItemStop foo:0 0
	},

	{
		name = "PlayerAlertGiveItemStopC1Sheva",
		criteria ConceptAlertGiveItemStop IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidAlertGiveItemStop IsWorldTalkSheva ismap_c1m1_hotel NoKnowNames
		Response PlayerAlertGiveItemStopC1Producer
		ApplyContext "SaidAlertGiveItemStop:1:10"
	},

	{
		name = "PlayerAlertGiveItemStopQnFirstAidSheva",
		criteria ConceptBashWithItem IsNotCoughing IsSheva IsTalk IsTalkSheva IsItemFirstAidKit IsNotSaidAlertGiveItemStopFirstAid IsWorldTalkSheva
		Response PlayerAlertGiveItemStopQnFirstAidProducer
		then subject AlertGiveItemStopFirstAidA foo:0 0
		ApplyContext "SaidAlertGiveItemStopFirstAid:1:10"
	},

	{
		name = "PlayerPouncedSheva",
		criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsNotTeenGirl IsNotSaidPlayerPounced IsSheva IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets
		Response PlayerPouncedProducer
		ApplyContext "SaidPlayerPounced:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerCoachPouncedSheva",
		criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsCoach IsNotSaidCoachPounced IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerCoachPouncedProducer
		ApplyContext "SaidCoachPounced:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerCoachPouncedC1Sheva",
		criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsCoach IsNotSaidCoachPounced IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowHunter IsNotSurvival
		Response PlayerCoachPouncedC1Producer
		ApplyContext "SaidCoachPounced:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerGamblerPouncedC1Sheva",
		criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsGambler IsNotSaidGamblerPounced IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowHunter IsNotSurvival
		Response PlayerCoachPouncedC1Producer
		ApplyContext "SaidGamblerPounced:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerMechanicPouncedC1Sheva",
		criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsMechanic IsNotSaidMechanicPounced IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowHunter IsNotSurvival
		Response PlayerCoachPouncedC1Producer
		ApplyContext "SaidMechanicPounced:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerEatPillsSheva",
		criteria ConceptEatPills IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerEatPillsProducer
	},

	{
		name = "PlayerGamblerPouncedSheva",
		criteria ConceptSurvivorWasPounced ChanceToFire90Percent IsNotCoughing SubjectIsGambler IsNotSaidGamblerPounced IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerGamblerPouncedProducer
		ApplyContext "SaidGamblerPounced:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerGetInsideCheckPointSheva",
		criteria ConceptPlayerGetInsideCheckPoint IsNotCoughing IsSheva IsInSafeSpot IsTalk IsTalkSheva SomeoneOutsideSafeSpot IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerGetInsideCheckPointProducer
		then any StayTogetherInsideReponse foo:0 -1.498
	},

	{
		name = "PlayerStayTogetherSaferoomSheva",
		criteria ConceptPlayerStayTogether IsNotCoughing IsSheva IsInSafeSpot IsTalk IsTalkSheva SomeoneOutsideSafeSpot IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerStayTogetherSaferoomProducer
	},

	{
		name = "PlayerGrabbedByJockeySheva",
		criteria ConceptSurvivorJockeyed IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidBeenJockeyedSheva IsWorldTalkSheva
		Response PlayerGrabbedByJockeyProducer
		ApplyContext "SaidBeenJockeyedSheva:1:6,TalkSheva:1:6"
		applycontexttoworld
	},

	{
		name = "PlayerGrabbedByJockeyC1Sheva",
		criteria ConceptSurvivorJockeyed IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidBeenJockeyedSheva IsWorldTalkSheva C1M1orC1M2 IsNotSurvival
		Response PlayerGrabbedByJockeyC1Producer
		ApplyContext "SaidBeenJockeyedSheva:1:6,TalkSheva:1:6"
		applycontexttoworld
	},

	{
		name = "PlayerGrenadeMolotovSheva",
		criteria ConceptThrewGrenade IsNotCoughing IsSheva IsTalk IsTalkSheva IsGrenadeMolotov IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerGrenadeMolotovProducer
		then Any GrenadeCareful foo:0 -1.119
	},

	{
		name = "PlayerGrenadeMolotovTankSheva",
		criteria ConceptThrewGrenade IsNotCoughing IsSheva IsTalk IsTalkSheva IsGrenadeMolotov IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerGrenadeMolotovTankProducer
	},

	{
		name = "PlayerGrenadePipeBombSheva",
		criteria ConceptThrewGrenade IsNotCoughing IsSheva IsTalk IsTalkSheva IsGrenadePipeBomb IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerGrenadePipeBombProducer
		then Any GrenadeCareful foo:0 -0.642
	},

	{
		name = "PlayerGrenadeVomitJarSheva",
		criteria ConceptThrewGrenade IsNotCoughing IsSheva IsTalk IsTalkSheva IsGrenadeVomitJar IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerGrenadeVomitJarProducer
		then Any GrenadeCareful foo:0 -1.702
	},

	{
		name = "PlayerGrenadeVomitJarC1Sheva",
		criteria ConceptThrewGrenade IsNotCoughing IsSheva IsTalk IsTalkSheva IsGrenadeVomitJar IsWorldTalkSheva ismap_c1m1_hotel
		Response PlayerGrenadeVomitJarC1Producer
		then Any GrenadeCareful foo:0 -1.702
	},

	{
		name = "PlayerIncapacitatedInitialSheva",
		criteria ConceptPlayerIncapacitated IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerIncapacitatedInitialProducer
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "PlayerIncapacitatedInitialC1M2Sheva",
		criteria ConceptPlayerIncapacitated IsSheva ismap_c1m2_streets IsC1M2WhitakerErrand
		Response PlayerIncapacitatedInitialC1M2Producer
		then orator C1M2SurvivorDown foo:0 0.1
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "PlayerKillConfirmationSheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva SubjectIsNotTank SubjectIsNotAWitch IsTalk IsTalkSheva IsSubjectFar300 ChanceToFire40Percent isNotmap_c1m1_hotel IsWorldTalkSheva isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response PlayerKillConfirmationProducer
		then Any PlayerNiceShot foo:0 -0.465
	},

	{
		name = "PlayerKillConfirmationC1M1Sheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva SubjectIsNotTank IsTalk IsTalkSheva IsUsingFirearm ismap_c1m1_hotel IsNotFirstKillC1 IsWorldTalkSheva
		Response PlayerKillConfirmationC1M1Producer
		ApplyContext "Talk:1:3,FirstKill:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerKillConfirmationC1M1MeleeSheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva SubjectIsNotTank SubjectIsNotBoomer SubjectIsNotSmoker IsTalk IsTalkSheva EquippedMeleeWeapon ismap_c1m1_hotel IsNotFirstKillC1 IsWorldTalkSheva
		Response PlayerKillConfirmationC1M1MeleeProducer
		ApplyContext "Talk:1:10,FirstKill:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerKillConfirmationC1M2Sheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva SubjectIsNotTank IsTalk IsTalkSheva IsUsingFirearm ismap_c1m2_streets IsSaidC1M2InsideGunShop IsWorldTalkSheva _auto_IsButton1 IsNotSpeaking
		Response PlayerKillConfirmationC1M2Producer
		then Mechanic C1M2GunshopKill foo:0 0.1
	},

	{
		name = "RightfulKillerSheva",
		criteria ConceptRightfulKiller IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response RightfulKillerProducer
		then From InsistMine foo:0 0
	},

	{
		name = "PlayerKillTankConfirmationSheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva IsTalk IsTalkSheva SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsRocking IsWorldTalkSheva _auto_NotFinaleStarted _auto_NotSpottedVehicle
		Response PlayerKillTankConfirmationProducer
		ApplyContext "SaidTankDead:1:60,TalkSheva:1:5"
		applycontexttoworld
	},

	{
		name = "PlayerKillConfirmationEllisCloseSheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva IsTalk IsTalkSheva SubjectIsNotTank SubjectIsNotAWitch IsMechanicAlive IsMechanicNear400 IsEllisAlsoWarn ChanceToFire5Percent IsNotAlone IsNotIncapacitated IsRocking IsWorldTalkSheva _auto_NotFinaleStarted _auto_NotSpottedVehicle
		// 	forceweight 100
		Response PlayerKillConfirmationEllisCloseProducer
		then Mechanic KillSteal foo:0 0
	},

	{
		name = "PlayerKillTankConfirmationC1M2Sheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva IsTalk IsTalkSheva SubjectIsTank IsNotSaidTankDead IsNotIncapacitated IsWorldTalkSheva ismap_c1m2_streets IsEveryoneAlive IsNotSurvival
		Response PlayerKillTankConfirmationC1M2Producer
		then mechanic C1M2TankInfo foo:0 0.1
		ApplyContext "SaidTankDead:1:0,Talk:1:12"
		applycontexttoworld
	},

	{
		name = "PlayerCr0wnedWitchSheva",
		criteria ConceptKilledZombie IsSheva SubjectIsAWitch IsNotWitchAggro
		Response NoResponse
	},

	{
		name = "PlayerKilledStartledWitchSheva",
		criteria ConceptKilledZombie IsSheva SubjectIsAWitch IsWitchAggro
		Response NoResponse
		ApplyContext "WitchAggro:--1"
		applycontexttoworld
	},

	{
		name = "PlayerKillTankNotHealthySheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva IsTalk IsTalkSheva SubjectIsTank IsNotSaidTankDead IsNotAlone IsNotIncapacitated IsNotHealthy IsWorldTalkSheva _auto_NotFinaleStarted _auto_NotSpottedVehicle
		Response PlayerKillTankNotHealthyProducer
		ApplyContext "SaidTankDead:1:60,TalkSheva:1:5"
		applycontexttoworld
	},

	{
		name = "PlayerLockTheDoorCheckPointSheva",
		criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsSheva IsInSafeSpot IsNotAlone IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerLockTheDoorCheckPointProducer
	},

	{
		name = "PlayerLockTheDoorCheckPointC1Sheva",
		criteria ConceptPlayerLockTheDoorCheckPoint IsNotCoughing IsSheva IsInSafeSpot IsNotAlone IsTalk IsTalkSheva ismap_c1m1_hotel IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerLockTheDoorCheckPointC1Producer
	},

	{
		name = "PlayerMechanicPouncedSheva",
		criteria ConceptSurvivorWasPounced ChanceToFire30Percent IsNotCoughing SubjectIsMechanic IsNotSaidMechanicPounced IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerMechanicPouncedProducer
		ApplyContext "SaidMechanicPounced:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerRevivedByDefibrillatorSheva",
		criteria ConceptRevivedByDefibrillator IsNotCoughing IsSheva
		Response PlayerRevivedByDefibrillatorProducer
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "PlayerRevivedByDefibrillator2Sheva",
		criteria ConceptRevivedByDefibrillatorDelayed IsSheva
		Response PlayerRevivedByDefibrillator2Producer
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "PlayerSuggestMeHealthSheva",
		criteria ConceptTalkIdle IsNotHealthy TimeSinceGroupInCombat20 ChanceToFire50Percent IsNotSuggestedHealth IsNotIncapacitated YesHasFirstAidKit IsSheva IsNotBeingHealed IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerSuggestMeHealthProducer
		then Any PlayerSuggestHealth foo:0 0
	},

	{
		name = "PlayerSuggestHealthGenericSheva",
		criteria ConceptPlayerSuggestHealth IsSheva IssuerReallyClose IsNotBeingHealed IsTalk IsTalkSheva IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 IsWorldTalkSheva
		Response PlayerSuggestHealthGenericProducer
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},

	{
		name = "PlayerSuggestHealthCoachSheva",
		criteria ConceptPlayerSuggestHealth IsSheva IssuerReallyClose IsNotBeingHealed IsTalk IsTalkSheva IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsCoach ChanceToFire50Percent IsWorldTalkSheva isNotmap_c1m1_hotel
		Response PlayerSuggestHealthCoachProducer
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},

	{
		name = "PlayerSuggestHealthGamblerSheva",
		criteria ConceptPlayerSuggestHealth IsSheva IssuerReallyClose IsNotBeingHealed IsTalk IsTalkSheva IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsGambler ChanceToFire50Percent IsWorldTalkSheva isNotmap_c1m1_hotel
		Response PlayerSuggestHealthGamblerProducer
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},

	{
		name = "PlayerSuggestHealthMechanicSheva",
		criteria ConceptPlayerSuggestHealth IsSheva IssuerReallyClose IsNotBeingHealed IsTalk IsTalkSheva IsNotIncapacitated TimeSinceGroupInCombat20 IsNotSpeakingWeight0 FromIsMechanic ChanceToFire50Percent IsWorldTalkSheva isNotmap_c1m1_hotel
		Response PlayerSuggestHealthMechanicProducer
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},

	{
		name = "PlayerTransitionSheva",
		criteria ConceptPlayerTransition IsNotCoughing IsSheva IsNotSaidPlayerTransition IsTalk IsTalkSheva IsWorldTalkSheva IsNotSomeoneDied isNotmap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerTransitionProducer
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},

	{
		name = "PlayerTransitionCloseSheva",
		criteria ConceptPlayerTransition IsNotCoughing IsSheva IsNotSaidPlayerTransition IsTalk IsTalkSheva IsWorldTalkSheva IsNotAlone IsSomeoneDied isNotmap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerTransitionCloseProducer
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},

	{
		name = "PlayerTransitionC1M3Sheva",
		criteria ConceptPlayerTransition IsNotCoughing IsSheva IsNotSaidPlayerTransition IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m3_mall IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerTransitionC1M3Producer
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},

	{
		name = "PlayerTransitionC2M1Sheva",
		criteria ConceptPlayerTransition IsNotCoughing IsSheva IsNotSaidPlayerTransition IsTalk IsTalkSheva IsWorldTalkSheva ismap_c2m1 IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerTransitionC2M1Producer
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},

	{
		name = "PlayerTransitionC2M1EllisSheva",
		criteria ConceptPlayerTransition IsNotCoughing IsSheva IsNotSaidPlayerTransition IsTalk IsTalkSheva IsWorldTalkSheva ismap_c2m1 IsNotAlone IsMechanicAlive ChanceToFire50Percent IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerTransitionC2M1EllisProducer
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},

	{
		name = "PlayerTransitionC5M4Sheva",
		criteria ConceptPlayerTransition IsNotCoughing IsSheva IsNotSaidPlayerTransition IsTalk IsTalkSheva IsWorldTalkSheva IsMapc5m4_quarter IsNotAlone IsNotSomeoneDied AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerTransitionC5M4Producer
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},

	{
		name = "PlayerUsingDefibrillatorSheva",
		criteria ConceptPlayerUsingDefibrillator IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerUsingDefibrillatorProducer
	},

	{
		name = "PlayerWarnHeardBoomerSheva",
		criteria ConceptPlayerWarnHearZombie IsBoomerClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardBoomer NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerWarnHeardBoomerProducer
		ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardChargerSheva",
		criteria ConceptPlayerWarnHearZombie IsChargerClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardCharger NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerWarnHeardChargerProducer
		ApplyContext "WarnHeardCharger:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardHunterSheva",
		criteria ConceptPlayerWarnHearZombie IsHunterClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardHunter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerWarnHeardHunterProducer
		ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardHunterC1M3Sheva",
		criteria ConceptPlayerWarnHearZombie IsHunterClass IsNotCoughing IsSheva IsNotAlone IsNotWarnHeardHunter NotInCombat IsSaidC1M3CoachFoodCourt ismap_c1m3_mall IsNotSaidSpecialWarn IsCoachAlive IsCoachNear200 ChanceToFire5Percent IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerWarnHeardHunterC1M3Producer
		then Coach PlayerLaugh foo:0 0
		ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardJockeySheva",
		criteria ConceptPlayerWarnHearZombie IsJockeyClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardJockey NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerWarnHeardJockeyProducer
		ApplyContext "WarnHeardJockey:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardSmokerSheva",
		criteria ConceptPlayerWarnHearZombie IsSmokerClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardSmoker NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerWarnHeardSmokerProducer
		ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardSpitterSheva",
		criteria ConceptPlayerWarnHearZombie IsSpitterClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardSpitter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerWarnHeardSpitterProducer
		ApplyContext "WarnHeardSpitter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardJockeyC1Sheva",
		criteria ConceptPlayerWarnHearZombie IsJockeyClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardJockey NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowJockey IsNotSurvival
		Response PlayerWarnHeardJockeyC1Producer
		ApplyContext "WarnHeardJockey:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardBoomerC1Sheva",
		criteria ConceptPlayerWarnHearZombie IsBoomerClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardBoomer NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowBoomer IsNotSurvival
		Response PlayerWarnHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
		ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardChargerC1Sheva",
		criteria ConceptPlayerWarnHearZombie IsChargerClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardCharger NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowCharger IsNotSurvival
		Response PlayerWarnHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
		ApplyContext "WarnHeardCharger:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardHunterC1Sheva",
		criteria ConceptPlayerWarnHearZombie IsHunterClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardHunter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowHunter IsNotSurvival
		Response PlayerWarnHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
		ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardSmokerC1Sheva",
		criteria ConceptPlayerWarnHearZombie IsSmokerClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardSmoker NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowSmoker IsNotSurvival
		Response PlayerWarnHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
		ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardSpitterC1Sheva",
		criteria ConceptPlayerWarnHearZombie IsSpitterClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardSpitter NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowSpitter IsNotSurvival
		Response PlayerWarnHeardBoomerC1Producer
		then mechanic Player.C1WorseThanZombies foo:0 0.1
		ApplyContext "WarnHeardSpitter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardWitchSheva",
		criteria ConceptPlayerWarnHearZombie IsWitchClass IsNotCoughing IsNotAlone IsClosestSurvivorNear1200 IsSheva IsNotWarnHeardWitch NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva IsNotmap_c4m2 IsNotc6m1_riverbank _auto_NotAlarmV2 _auto_NotFinaleStarted
		Response PlayerWarnHeardWitchProducer
		then any PlayerKillThatLight foo:0 -1.093
		ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnHeardWitchC1Sheva",
		criteria ConceptPlayerWarnHearZombie IsWitchClass IsNotCoughing IsSheva IsNotAlone IsClosestSurvivorNear1200 IsNotWarnHeardWitch NotInCombat IsNotSaidSpecialWarn IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2
		Response PlayerWarnHeardWitchC1Producer
		ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerHeardWitchC1Sheva",
		criteria ConceptPlayerHeardWitch IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 IsNotSurvival
		Response PlayerWarnHeardWitchC1Producer
	},

	{
		name = "BeNiceSheva",
		criteria ConceptBeNice IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotIncapacitated IsNotInSafeSpot IssuerClose
		Response BeNiceProducer
	},

	{
		name = "PlayerWarnMegaMobSheva",
		criteria ConceptPlayerWarnMegaMob IsNotCoughing IsSheva IsNotWarnMegaMob IsTalk IsTalkSheva IsNotSpeaking IsWorldTalkSheva IsNotScavenge _auto_NotSpottedVehicle
		Response PlayerWarnMegaMobProducer
		ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWarnWitchAngrySheva",
		criteria ConceptWitchGettingAngry IsNotCoughing IsSheva IsNotWarnAngryWitch IsTalk IsTalkSheva IsWorldTalkSheva IsNotmap_c4m2 IsNotc6m1_riverbank
		Response PlayerWarnWitchAngryProducer
		ApplyContext "WarnAngryWitch:1:5,SaidSpecialWarn:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerWorldIntroC31BlankSheva",
		criteria ConceptintroC3M1 IsSheva IsNotSaidCXM1Intro IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldIntroC31BlankProducer
		then any WorldIntroC31 foo:0 5
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerWorldIntroC51Sheva",
		criteria ConceptintroC5M1 IsSheva IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerWorldIntroC51Producer
		then orator C5M1_intro001 foo:0 0.01
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorCaughtVomitSheva",
		criteria ConceptPlayerVomitInFace IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorCaughtVomitProducer
		ApplyContext "TalkSheva:1:10"
	},

	{
		name = "PlayerVomitExpiredC1Sheva",
		criteria ConceptPlayerVomitExpired IsNotCoughing ismap_c1m1_hotel IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerVomitExpiredC1Producer
	},

	{
		name = "SurvivorchargerpoundSheva",
		criteria Conceptchargerpound IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidchargerpound IsWorldTalkSheva
		Response SurvivorchargerpoundProducer
		ApplyContext "Saidchargerpound:1:5,TalkSheva:1:5"
	},

	{
		name = "SurvivorchargerpoundC1Sheva",
		criteria Conceptchargerpound IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidchargerpound IsWorldTalkSheva C1M1orC1M2 NoKnowCharger IsNotSurvival
		Response SurvivorchargerpoundC1Producer
		ApplyContext "Saidchargerpound:1:5,TalkSheva:1:5"
	},

	{
		name = "SurvivorCoughingSheva",
		criteria ConceptSurvivorCoughing IsCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorCoughingProducer
	},

	{
		name = "SurvivorCoughingDeathSheva",
		criteria ConceptPlayerDeath IsCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotVersus
		Response SurvivorCoughingProducer
	},

	{
		name = "SurvivorDeathSheva",
		criteria ConceptPlayerDeath IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotVersus
		Response SurvivorDeathProducer
	},

	{
		name = "SurvivorGooedBySpitterSheva",
		criteria ConceptGooedBySpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidGooedBySpitter IsWorldTalkSheva IsNotIncapacitated
		Response SurvivorGooedBySpitterProducer
		ApplyContext "SaidGooedBySpitter:1:20,TalkSheva:1:3"
	},

	{
		name = "SurvivorGooedBySpitterC1Sheva",
		criteria ConceptGooedBySpitter IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidGooedBySpitter IsWorldTalkSheva C1M1orC1M2 NoKnowSpitter IsNotSurvival IsNotIncapacitated
		Response SurvivorGooedBySpitterC1Producer
		ApplyContext "SaidGooedBySpitter:1:20,TalkSheva:1:3"
	},

	{
		name = "SurvivorGrabbedByTongueSheva",
		criteria ConceptPlayerGrabbedByTongue IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorGrabbedByTongueProducer
	},

	{
		name = "SurvivorGrabbedByTongueC1Sheva",
		criteria ConceptPlayerGrabbedByTongue IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva C1M1orC1M2 NoKnowSmoker IsNotSurvival
		Response SurvivorGrabbedByTongueC1Producer
	},

	{
		name = "SurvivorNearCheckpointSheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointProducer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC1M1Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c1m1_hotel IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC1M1Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC1M2Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c1m2_streets IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC1M2Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC1M3Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c1m3_mall IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC1M3Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC2M1Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c2m1 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC2M1Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC2M2Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c2m2 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC2M2Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC2M4Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c2m4 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC2M4Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC3M1Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c3m1_plankcountry IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC3M1Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC3M2Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismapc3m2_swamp IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC3M2Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkC3M3SafeHouseAheadSheva",
		criteria ConceptRemark IsSheva IsC3M3SafeHouseAhead IsNotSaidSafeSpotAhead IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response SurvivorNearCheckpointC3M3Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC4M1Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c4m1_milltown_a IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC4M1Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC4M2Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva ismap_c4m2_sugarmill_a IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC4M2Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC4M3Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva isc4m3 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC4M3Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC4M4Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva isc4m4 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC5M2Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva IsMapc5m2_park IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC5M2Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC6M1Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva Isc6m1_riverbank IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC6M1Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearCheckpointC6M2Sheva",
		criteria ConceptPlayerNearCheckpoint IsNotCoughing IsSheva IsNotSaidSafeSpotAhead IsNotAlone IsNotInCheckpoint IsTalk IsTalkSheva Isc6m2_bedlam IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearCheckpointC6M2Producer
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearFinaleSheva",
		criteria ConceptPlayerNearFinale IsNotCoughing IsSheva IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkSheva IsNotIncapacitated IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearFinaleProducer
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearFinaleC1M4Sheva",
		criteria ConceptPlayerNearFinale IsNotCoughing IsSheva IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkSheva IsNotIncapacitated IsWorldTalkSheva ismap_c1m4_atrium AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearFinaleC2M5Sheva",
		criteria ConceptPlayerNearFinale IsNotCoughing IsSheva IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkSheva IsNotIncapacitated IsWorldTalkSheva ismap_c2m5 AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearFinaleC2M5Producer
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearFinaleC3M4Sheva",
		criteria ConceptPlayerNearFinale IsNotCoughing IsSheva IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkSheva IsNotIncapacitated IsWorldTalkSheva ismapc3m4_plantation AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorNearFinaleC3M4Producer
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearFinaleC4M5Sheva",
		criteria ConceptPlayerNearFinale IsNotCoughing IsSheva IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkSheva IsNotIncapacitated IsWorldTalkSheva isc4m5 AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearFinaleC5M5Sheva",
		criteria ConceptPlayerNearFinale IsNotCoughing IsSheva IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkSheva IsNotIncapacitated IsWorldTalkSheva IsMapc5m5_bridge AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorNearFinaleC6M3Sheva",
		criteria ConceptPlayerNearFinale IsNotCoughing IsSheva IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkSheva IsNotIncapacitated IsWorldTalkSheva Isc6m3_port AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorPouncedByHunterSheva",
		criteria ConceptScreamWhilePounced IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorPouncedByHunterProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "SurvivorTankPoundSheva",
		criteria ConceptPlayerGroundPoundedByTank IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorTankPoundProducer
		ApplyContext "TalkSheva:1:7"
	},

	{
		name = "SurvivorVocalizeBackUpSheva",
		criteria ConceptPlayerBackUp IsSheva IsNotCoughing IsNotInSafeSpot IsNotInCheckpoint IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorVocalizeBackUpProducer
	},

	{
		name = "SurvivorVocalizeEmphaticGoSheva",
		criteria ConceptPlayerEmphaticGo IsSheva IsNotCoughing IsNotInSafeSpot IsNotInCheckpoint IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorVocalizeEmphaticGoProducer
	},

	{
		name = "SurvivorVocalizeGoingToDieSheva",
		criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotComplainBlock IsWorldTalkSheva IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		Response SurvivorVocalizeGoingToDieProducer
		ApplyContext "IsComplain:1:25"
	},

	{
		name = "SurvivorVocalizeGoingToDie3Sheva",
		criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsSheva IsOnThirdStrike IsTalk IsTalkSheva IsNotComplainBlock IsWorldTalkSheva IsNotInStartArea IsNotInCheckpoint _auto_NotSpottedVehicle
		Response SurvivorVocalizeGoingToDie3Producer
		ApplyContext "IsComplain:1:25"
	},

	{
		name = "SurvivorVocalizeGoingToDieC5M5Sheva",
		criteria ConceptPlayerGoingToDie IsNotSpeaking IsNotCoughing IsSheva IsOnThirdStrike IsTalk IsTalkSheva ChanceToFire30Percent IsNotSaidGoingToDieC5M5 IsMapc5m5_bridge IsNotComplainBlock IsWorldTalkSheva IsNotInStartArea IsNotInCheckpoint
		Response SurvivorVocalizeGoingToDieC5M5Producer
		ApplyContext "IsComplain:1:25,TalkSheva:1:8,SaidGoingToDieC5M5:1:0"
	},

	{
		name = "SurvivorVocalizeLookOutSheva",
		criteria ConceptPlayerLookOut IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorVocalizeLookOutProducer
	},

	{
		name = "SurvivorVocalizeThisWaySheva",
		criteria ConceptPlayerThisWay IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorVocalizeThisWayProducer
	},

	{
		name = "SurvivorVocalizeWaitHereSheva",
		criteria ConceptPlayerWaitHere IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorVocalizeWaitHereProducer
	},

	{
		name = "SurvivorWarnSpitterIncomingSheva",
		criteria ConceptWarnSpitterIncoming IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidWarnSpitterIncoming IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorWarnSpitterIncomingProducer
		ApplyContext "SaidWarnSpitterIncoming:1:10"
	},

	{
		name = "SurvivorWarnSpitterIncomingC1Sheva",
		criteria ConceptWarnSpitterIncoming IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidWarnSpitterIncoming C1M1orC1M2 IsWorldTalkSheva NoKnowSpitter IsNotSurvival
		Response SurvivorWarnSpitterIncomingC1Producer
		ApplyContext "SaidWarnSpitterIncoming:1:10"
	},

	{
		name = "PlayerLedgeHangEndSheva",
		criteria ConceptPlayerLedgeHangEnd IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerLedgeHangEndProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerLedgeHangMiddleSheva",
		criteria ConceptPlayerLedgeHangMiddle IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerLedgeHangMiddleProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerLedgeHangStartSheva",
		criteria ConceptPlayerLedgeHangStart IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerLedgeHangStartProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "SurvivorFirstDeathSheva",
		criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsSheva IsNotSaidSomeoneDied IsEveryoneAlive IsTalk IsTalkSheva IsNotSaidFaultFriendlyFireGeneral IsWorldTalkSheva
		Response SurvivorFirstDeathProducer
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
	},

	{
		name = "DeathAloneSheva",
		criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsSheva IsWithTwo IsNotSaidFaultFriendlyFireGeneral IsTalk IsTalkSheva IsWorldTalkSheva
		Response DeathAloneProducer
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
	},

	{
		name = "DoubleDeath2Sheva",
		criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedNearEnough IsSheva IsNotSaidSomeoneDied IsTalk IsTalkSheva IsWithOnlyThree IsNotIncapacitated IsNotSaidFaultFriendlyFireGeneral IsWorldTalkSheva
		Response DoubleDeath2Producer
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
	},

	{
		name = "TeamKillSheva",
		criteria ConceptSurvivorDied IsNotCoughing SurvivorDiedReallyClose IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSaidFaultFriendlyFireGeneral IsNotSaidFaultFriendlyFireSheva IsWorldTalkSheva
		Response TeamKillProducer
		ApplyContext "SaidSomeoneDied:1:10,TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "C6M1TakeSubMachineGunSheva",
		criteria ConceptPlayerPickup IsSheva IsPickedUpSMG IsTalk IsTalkSheva IsWorldTalkSheva isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		Response C6M1TakeSubMachineGunProducer
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},

	{
		name = "C6M1TakeSubMachineGunSilencedSheva",
		criteria ConceptPlayerPickup IsSheva IsPickedUpSmg_silenced IsTalk IsTalkSheva IsWorldTalkSheva isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		Response C6M1TakeSubMachineGunProducer
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},

	{
		name = "C6M1TakePumpShotgunSheva",
		criteria ConceptPlayerPickup IsSheva IsPickedUpPumpShotgun IsTalk IsTalkSheva IsWorldTalkSheva isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		Response C6M1TakeSubMachineGunProducer
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},

	{
		name = "C6M1TakeChromeShotgunSheva",
		criteria ConceptPlayerPickup IsSheva IsPickedUpShotgun_Chrome IsTalk IsTalkSheva IsWorldTalkSheva isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		Response C6M1TakeSubMachineGunProducer
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},

	{
		name = "C6M1TakeCSSMP5Sheva",
		criteria ConceptPlayerPickup IsSheva IsPickedUpSmg_mp5 IsTalk IsTalkSheva IsWorldTalkSheva isc6m1_riverbank IsJustSaidWorldC6M1_IntoTheStore
		Response C6M1TakeSubMachineGunProducer
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},

	{
		name = "SurvivorDeployUpExplosivesSheva",
		criteria ConceptPlayerDeployingUpgradeAmmo IsNotCoughing IsSheva IsNotSpeaking IsTalk IsTalkSheva IsWorldTalkSheva IsNotSaidDeployUpgradePack_Explosive HasUpgradePack_Explosive IsNotInStartArea _auto_NotSpottedVehicle
		Response SurvivorDeployUpExplosivesProducer
		ApplyContext "SaidDeployUpgradePack_Explosive:1:30"
	},

	{
		name = "SurvivorDeployUpIncendiarySheva",
		criteria ConceptPlayerDeployingUpgradeAmmo IsNotCoughing IsSheva IsNotSpeaking IsTalk IsTalkSheva IsWorldTalkSheva IsNotSaidDeployUpgradePack_Incendiary HasUpgradePack_Incendiary IsNotInStartArea _auto_NotSpottedVehicle
		Response SurvivorDeployUpIncendiaryProducer
		ApplyContext "SaidDeployUpgradePack_Incendiary:1:30"
	},

	{
		name = "SurvivorPickupAdrenalineSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpAdrenaline IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorPickupAdrenalineProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupAutoShotgunSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpAutoShotgun IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupAutoShotgunProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupSpasShotgunSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpShotgun_spas IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupAutoShotgunProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupAutoShotgunC1M2Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpAutoShotgun IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m2_streets IsSaidC1M2InsideGunShop _auto_IsButton1
		Response SurvivorPickupAutoShotgunC1M2Producer
		then Mechanic C1M2InsideGunShopPickupResponse2 foo:0 0.1
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupSpasShotgunC1M2Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpShotgun_spas IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m2_streets IsSaidC1M2InsideGunShop _auto_IsButton1
		Response SurvivorPickupAutoShotgunC1M2Producer
		then Mechanic C1M2InsideGunShopPickupResponse2 foo:0 0.1
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupbaseball_batSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpbaseball_bat IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupbaseball_batProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupShovelSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpShovel IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupbaseball_batProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupPitchforkSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpPitchfork IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupbaseball_batProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupchainsawSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpchainsaw IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupchainsawProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupcricket_batSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpcricket_bat IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupcricket_batProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupKnifeSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpKnife IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		Response SurvivorPickupbaseball_batProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupCrowBarSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpCrowBar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupCrowBarProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupDefibrillatorSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpDefibrillator ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotSpeaking IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea _auto_NotSpottedVehicle
		Response SurvivorPickupDefibrillatorProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupelectric_guitarSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpelectric_guitar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupelectric_guitarProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupFireAxeSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpFireAxe ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsNotSpeaking IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupFireAxeProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupFirstAidKitSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpFirstAidKit IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva IsNotScavenge _auto_NotSpottedVehicle
		Response SurvivorPickupFirstAidKitProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupFirstSMGSheva",
		criteria ConceptPlayerPickup IsSheva IsPickedUpSmg_silenced IsTalk IsTalkSheva IsNotSaidPickupFirstSMG IsSaidC1M1OpenDoor ExtraWeight10 IsWorldTalkSheva
		Response SurvivorPickupFirstSMGProducer
		then self PlayerPickupFirstSMG2 foo:0 0.2
		ApplyContext "SaidPickupFirstSMG:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorPickupFryingPanSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpFryingPan IsNotSpeaking ChanceToFire30Percent IsNotInStartArea NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupFryingPanProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupGolfClubSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpGolfClub IsNotSpeaking ChanceToFire30Percent IsNotInStartArea NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupGolfClubProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupGrenadeLauncherSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpGrenadeLauncher NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsNotSpeaking IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupGrenadeLauncherProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupGunC1M2Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsNotSpeaking IsTalk IsSaidC1M2InsideGunShop IsNotPickedUpFirstAidKit IsNotPickedUpAdrenaline IsNotPickedUpPainPills IsNotPickedUpAmmo IsNotPickedUpVomitJar IsNotPickedUpLaserSights IsNotPickedUpMolotov IsNotPickedUpPipeBomb IsWorldTalkSheva _auto_NotButton1
		Response SurvivorPickupGunC1M2Producer
		then Mechanic C1M2InsideGunShopPickupResponse foo:0 0.1
	},

	{
		name = "SurvivorPickupHuntingRifleSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpHuntingRifle IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupHuntingRifleProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupMilitarySniperSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpSniper_Military IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupHuntingRifleProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupScoutSniperSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpSniper_scout IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupHuntingRifleProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupAWPSniperSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpSniper_awp IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupHuntingRifleProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupHuntingRifleC1M2Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpHuntingRifle IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m2_streets IsSaidC1M2InsideGunShop _auto_IsButton1
		Response SurvivorPickupHuntingRifleC1M2Producer
		then Mechanic C1M2InsideGunShopPickupResponse2 foo:0 -1.564
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupMilitarySniperC1M2Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpSniper_Military IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m2_streets IsSaidC1M2InsideGunShop _auto_IsButton1
		Response SurvivorPickupHuntingRifleC1M2Producer
		then Mechanic C1M2InsideGunShopPickupResponse2 foo:0 -1.564
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupIncendiaryAmmoSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpIncendiaryAmmo IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupIncendiaryAmmoProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupKatanaSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpKatana IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupKatanaProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupLaserSightsAlwaysSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpLaserSights IsNotSpeaking IsBotNotAvailable ChanceToFire50Percent IsNotInStartArea IsNotInCheckpoint IsNotInSafeSpot NotPickedUpItem IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorPickupLaserSightsAlwaysProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupM60Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpM60 IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupM60Producer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupMacheteSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpMachete IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupMacheteProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupMagnumSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpMagnum IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupMagnumProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupMolotovSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpMolotov IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupMolotovProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupPainPillsSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpPainPills IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva IsNotScavenge _auto_NotSpottedVehicle
		Response SurvivorPickupPainPillsProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupPipeBombSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpPipeBomb IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupPipeBombProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupPumpShotgunSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpPumpShotgun IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupPumpShotgunProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupChromeShotgunSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpShotgun_Chrome IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupPumpShotgunProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupRifleSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpRifle IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupRifleProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupDesertRifleSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpRifle_Desert IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupRifleProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupAK47RifleSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpRifle_AK47 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupRifleProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupSG552RifleSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpRifle_sg552 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupRifleProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupRifleC1M2Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpRifle IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m2_streets IsSaidC1M2InsideGunShop _auto_IsButton1
		Response SurvivorPickupRifleC1M2Producer
		then Mechanic C1M2InsideGunShopPickupResponse2 foo:0 -1.564
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupDesertRifleC1M2Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpRifle_Desert IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m2_streets IsSaidC1M2InsideGunShop _auto_IsButton1
		Response SurvivorPickupRifleC1M2Producer
		then Mechanic C1M2InsideGunShopPickupResponse2 foo:0 -1.564
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupAK47RifleC1M2Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpRifle_AK47 IsNotSpeaking NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m2_streets IsSaidC1M2InsideGunShop _auto_IsButton1
		Response SurvivorPickupRifleC1M2Producer
		then Mechanic C1M2InsideGunShopPickupResponse2 foo:0 -1.564
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupSecondPistolSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpSecondPistol IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupSecondPistolProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupSMGSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpSMG IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupSMGProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupSilencedSMGSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpSMG_silenced IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupSMGProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupSilencedMP5SMGSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpSMG_mp5 IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupSMGProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickuptonfaSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUptonfa IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva IsNotInStartArea isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickuptonfaProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupUpExplosiveAmmoSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpExplosiveAmmo IsNotSpeaking IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorPickupUpExplosiveAmmoProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupUpExplosivesSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpUpgradePack_Explosive IsNotSpeaking IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorPickupUpExplosivesProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupUpIncendiarySheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpUpgradePack_Incendiary IsNotSpeaking IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorPickupUpIncendiaryProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupVomitJarSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpVomitJar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsNotInStartArea IsTalk IsTalkSheva IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorPickupVomitJarProducer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupVomitJarAlwaysC1Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpVomitJar IsNotSpeaking ChanceToFire30Percent NotPickedUpItem IsNotInSafeSpot IsTalk IsTalkSheva IsWorldTalkSheva ismap_c1m1_hotel
		Response SurvivorPickupVomitJarAlwaysC1Producer
		ApplyContext "PickedUpItem:1:30"
	},

	{
		name = "PlayerGettingRevivedSheva",
		criteria ConceptReviveFriendDown IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva
		Response PlayerGettingRevivedProducer
		then From ReviveFriendDownFinal foo:0 -3.840
	},

	{
		name = "PlayerHealOtherSheva",
		criteria ConceptPlayerHealingOther IsNotCoughing IsSheva IsTalk IsTalkSheva NotInIntenseCombat IsWorldTalkSheva
		Response PlayerHealOtherProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerHealOtherCombatSheva",
		criteria ConceptPlayerHealingOther IsNotCoughing IsSheva IsTalk IsTalkSheva InIntenseCombat IsWorldTalkSheva
		Response PlayerHealOtherCombatProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerHealOtherTankSheva",
		criteria ConceptPlayerHealingOther IsNotCoughing IsSheva IsTalk IsTalkSheva IsZombiePresentTank IsSaidTankWarn2 IsWorldTalkSheva
		// 	forceweight 30
		Response PlayerHealOtherCombatProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerLedgeSaveSheva",
		criteria ConceptPlayerLedgeSave IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerLedgeSaveProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerReviveFriendSheva",
		criteria ConceptPlayerReviveFriend IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva NotInIntenseCombat _auto_NotSpottedVehicle
		Response PlayerReviveFriendProducer
		then Subject ReviveFriendDown foo:0 -0.633
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "PlayerReviveEllisSheva",
		criteria ConceptPlayerReviveFriend IsNotCoughing IsSheva IsTalk IsTalkSheva SubjectIsMechanic ChanceToFire5Percent IsWorldTalkSheva NotInIntenseCombat _auto_NotSpottedVehicle
		Response PlayerReviveEllisProducer
		then Subject ReviveFriendDown foo:0 -0.897
		ApplyContext "TalkSheva:1:2,EllisCrying:1:2"
		applycontexttoworld
	},

	{
		name = "PlayerReviveFriendBSheva",
		criteria ConceptReviveFriendDownFinal IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotReviveInterrupt
		Response PlayerReviveFriendBProducer
	},

	{
		name = "PlayerReviveFriendCriticalSheva",
		criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva NotInIntenseCombat _auto_NotSpottedVehicle
		Response PlayerReviveFriendCriticalProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerReviveFriendLoudSheva",
		criteria ConceptPlayerReviveFriend IsNotCoughing IsSheva IsZombiePresentTank IsSaidTankWarn2 IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerReviveFriendLoudProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerLedgeSaveCriticalSheva",
		criteria ConceptPlayerLedgeSaveCritical IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerLedgeSaveProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerReviveFriendFFSheva",
		criteria ConceptPlayerReviveFriend IsNotCoughing IsSheva IsTalk IsTalkSheva IsShotTeammateSheva IsWorldTalkSheva NotInIntenseCombat _auto_NotSpottedVehicle
		// 	forceweight 20
		Response PlayerReviveFriendFFProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerReviveFriendCriticalFFSheva",
		criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsSheva IsTalk IsTalkSheva IsShotTeammateSheva IsWorldTalkSheva NotInIntenseCombat _auto_NotSpottedVehicle
		// 	forceweight 20
		Response PlayerReviveFriendFFProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerReviveFriendLoud2Sheva",
		criteria ConceptPlayerReviveFriend IsNotCoughing IsSheva InIntenseCombat IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerReviveFriendLoudProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerReviveFriendLoudCritSheva",
		criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsSheva InIntenseCombat IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerReviveFriendLoudProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "PlayerReviveFriendLoudCrit2Sheva",
		criteria ConceptPlayerReviveFriendCritical IsNotCoughing IsSheva IsZombiePresentTank IsSaidTankWarn2 IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		// 	forceweight 30
		Response PlayerReviveFriendLoudProducer
		ApplyContext "TalkSheva:1:5"
	},

	{
		name = "_C1M1_ElevatorHelloSheva",
		criteria Concept_C1M1_ElevatorHello IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHelloProducer
	},

	{
		name = "_C1M1_ElevatorHelloStartAllAliveSheva",
		criteria Concept_C1M1_ElevatorHelloStart IsSheva AutoIsNotScavenge AutoIsNotSurvival IsEveryoneAlive
		Response _C1M1_ElevatorHelloStartAllAliveProducer
		then mechanic _C1M1_ElevatorHello05c foo:0 -4.637
	},

	{
		name = "_C1M1_ElevatorHelloStart3AliveSheva",
		criteria Concept_C1M1_ElevatorHelloStart IsSheva AutoIsNotScavenge AutoIsNotSurvival IsWithOnlyThree
		Response _C1M1_ElevatorHelloStart3AliveProducer
		then self _C1M1_ElevatorHello3AliveShevaIntro foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHelloStart2AliveSheva",
		criteria Concept_C1M1_ElevatorHelloStart IsSheva AutoIsNotScavenge AutoIsNotSurvival IsWithTwo
		Response _C1M1_ElevatorHelloStart2AliveProducer
		then any _C1M1_ElevatorHello2AliveName1 foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello01cSheva",
		criteria Concept_C1M1_ElevatorHello01c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello01cProducer
		then mechanic _C1M1_ElevatorHello13a foo:0 -4.068
	},

	{
		name = "_C1M1_ElevatorHello02aSheva",
		criteria Concept_C1M1_ElevatorHello02a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello02aProducer
		then mechanic _C1M1_ElevatorHello03a foo:0 -1.195
	},

	{
		name = "_C1M1_ElevatorHello02dSheva",
		criteria Concept_C1M1_ElevatorHello02d IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello02dProducer
		then mechanic _C1M1_ElevatorHello03d foo:0 -0.555
	},

	{
		name = "_C1M1_ElevatorHello03cSheva",
		criteria Concept_C1M1_ElevatorHello03c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello03cProducer
		then gambler _C1M1_ElevatorHello04c foo:0 -1.195
	},

	{
		name = "_C1M1_ElevatorHello04bSheva",
		criteria Concept_C1M1_ElevatorHello04b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello04bProducer
		then mechanic _C1M1_ElevatorHello05b foo:0 -1.195
	},

	{
		name = "_C1M1_ElevatorHello04dSheva",
		criteria Concept_C1M1_ElevatorHello04d IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello04dProducer
	},

	{
		name = "_C1M1_ElevatorHello07aSheva",
		criteria Concept_C1M1_ElevatorHello07a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello07aProducer
		then mechanic _C1M1_ElevatorHello12a foo:0 -2.849
	},

	{
		name = "_C1M1_ElevatorHello07cSheva",
		criteria Concept_C1M1_ElevatorHello07c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello07cProducer
		then mechanic _C1M1_ElevatorHello07d foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello07eSheva",
		criteria Concept_C1M1_ElevatorHello07e IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello07eProducer
		then mechanic _C1M1_ElevatorHello07f foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello08bSheva",
		criteria Concept_C1M1_ElevatorHello08b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello08bProducer
		then mechanic _C1M1_ElevatorHello08c foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello08dSheva",
		criteria Concept_C1M1_ElevatorHello08d IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello08dProducer
		then mechanic _C1M1_ElevatorHello08e foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello09aSheva",
		criteria Concept_C1M1_ElevatorHello09a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello09aProducer
		then gambler _C1M1_ElevatorHello04e foo:0 -3.927
	},

	{
		name = "_C1M1_ElevatorHello11aSheva",
		criteria Concept_C1M1_ElevatorHello11a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello11aProducer
		then coach _C1M1_ElevatorHello07g foo:0 -1.195
	},

	{
		name = "_C1M1_ElevatorHello13aSheva",
		criteria Concept_C1M1_ElevatorHello13a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello13aProducer
		then coach _C1M1_ElevatorHello13b foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello13bSheva",
		criteria Concept_C1M1_ElevatorHello13b IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello13bProducer
		then gambler _C1M1_ElevatorHello13d foo:0 -1.195
	},

	{
		name = "_C1M1_ElevatorHello13cSheva",
		criteria Concept_C1M1_ElevatorHello13c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello13cProducer
		then gambler _C1M1_ElevatorHello04c foo:0 -1.195
	},

	{
		name = "_c1m4startelevator3aSheva",
		criteria Concept_c1m4startelevator3a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _c1m4startelevator3aProducer
		then mechanic _c1m4startelevator3b foo:0 0.2
	},

	{
		name = "_c1m4startelevator3cSheva",
		criteria Concept_c1m4startelevator3c IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _c1m4startelevator3cProducer
		then any _c1m4startelevatorLast foo:0 -5.233
	},

	{
		name = "_c1m4startelevator5aSheva",
		criteria Concept_c1m4startelevator5a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _c1m4startelevator5aProducer
		then mechanic _c1m4startelevator5a foo:0 -5.233
	},

	{
		name = "_c1m4startelevatorLastSheva",
		criteria Concept_c1m4startelevatorLast IsSheva ElevatorTimeNotUp AutoIsNotScavenge AutoIsNotSurvival
		Response _c1m4startelevatorLastProducer
		ApplyContext "Talk:1:5"
		applycontexttoworld
	},

	{
		name = "_c1m4startelevatorLastSheva",
		criteria Concept_c1m4startelevatorLast IsSheva ElevatorTimeUp AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "_C2M1_Fall02Sheva",
		criteria Concept_C2M1_Fall02 IsSheva NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M1_Fall02Producer
	},

	{
		name = "_c2m1_searchlights01Sheva",
		criteria Concept_c2m1_searchlights01 IsSheva NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		Response _c2m1_searchlights01Producer
		ApplyContext "Talk:1:2.003"
		applycontexttoworld
	},

	{
		name = "_c2m1_searchlights04Sheva",
		criteria Concept_c2m1_searchlights04 IsSheva NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response _c2m1_searchlights04Producer
		ApplyContext "Talk:1:2.003"
		applycontexttoworld
	},

	{
		name = "_C2M1abandoned02Sheva",
		criteria Concept_C2M1abandoned02 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M1abandoned02Producer
	},

	{
		name = "_C2M2_Kiddie01Sheva",
		criteria Concept_C2M2_Kiddie01 IsSheva NotInCombat IsSubjectDistNear500 ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_Kiddie01Producer
		then self _C2M2_Kiddie02 foo:0 0.3
		ApplyContext "Talk:1:1.713"
		applycontexttoworld
	},

	{
		name = "_C2M2_Kiddie02Sheva",
		criteria Concept_C2M2_Kiddie02 IsSheva NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_Kiddie02Producer
		ApplyContext "Talk:1:3.566"
		applycontexttoworld
	},

	{
		name = "_C2M2_Kiddie05Sheva",
		criteria Concept_C2M2_Kiddie05 IsSheva NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_Kiddie05Producer
		ApplyContext "Talk:1:2.576"
		applycontexttoworld
	},

	{
		name = "_C2M2_CobblerSheva",
		criteria Concept_C2M2_Cobbler IsSheva IssuerClose ChanceToFire40Percent AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_CobblerProducer
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "_C2M2_Steak01Sheva",
		criteria Concept_C2M2_Steak01 IsSheva NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		Response _C2M2_Steak01Producer
		ApplyContext "Talk:1:9.2"
		applycontexttoworld
	},

	{
		name = "_C2M2_ThisTall01Sheva",
		criteria Concept_C2M2_ThisTall01 IsSheva NotInCombat IsSubjectDistNear500 ChanceToFire80Percent AutoIsNotScavenge AutoIsNotSurvival _auto_NotAlarm
		Response _C2M2_ThisTall01Producer
		ApplyContext "Talk:1:2.272"
		applycontexttoworld
	},

	{
		name = "_C2M2_MiscFoodSheva",
		criteria Concept_C2M2_MiscFood IsSheva NotInCombat ChanceToFire40Percent IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_MiscFoodProducer
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "_C2M2_OkraSheva",
		criteria Concept_C2M2_Okra IsSheva NotInCombat IssuerClose AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M2_OkraProducer
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m2_okraSheva",
		criteria ConceptRemark IsSheva Isc2m2_okra IsNotSaidc2m2_okra IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival _auto_NotCoachFoodBreak _auto_NotAlarm IsNotSpeakingWeight0
		Response PlayerRemarkc2m2_okraProducer
		then coach _C2M2_Okra foo:0 0.1
		ApplyContext "Saidc2m2_okra:1:0,Talk:1:6.240,_auto_CoachFoodBreak:1:15"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc2m2_okrabSheva",
		criteria ConceptRemark IsSheva Isc2m2_okra2 IsNotSaidc2m2_okra IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 AutoIsNotScavenge AutoIsNotSurvival _auto_NotCoachFoodBreak _auto_NotAlarmV2 IsNotSpeakingWeight0
		Response PlayerRemarkc2m2_okraProducer
		then coach _C2M2_Okra foo:0 0.1
		ApplyContext "Saidc2m2_okra:1:0,Talk:1:6.240,_auto_CoachFoodBreak:1:15"
		applycontexttoworld
	},

	{
		name = "_C2M4_GateOpen001Sheva",
		criteria Concept_C2M4_GateOpen001 IsSheva IsNotIncapacitated AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M4_GateOpen001Producer
	},

	{
		name = "_C4_BigStormHits01Sheva",
		criteria Concept_C4_BigStormHits01 IsSheva _auto_NotC4ShevaInCover _auto_IsTimerA FromIsAnOrator
		Response _C4_BigStormHits01Producer
		then any _C4_BigStormHits02 foo:0 0.04
		ApplyContext "Talk:1:1.662"
		applycontexttoworld
	},

	{
		name = "_C4_BigStormHits02Sheva",
		criteria Concept_C4_BigStormHits02 IsSheva IsNotCoughing IssuerClose IsNotIncapacitated _auto_NotC4ShevaInCover
		Response _C4_BigStormHits02Producer
		ApplyContext "Talk:1:1.050"
		applycontexttoworld
	},

	{
		name = "_c4m1_rainresponseSheva",
		criteria Concept_c4m1_rainresponse IsSheva NotInCombat IsTalkSheva IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSaidc4m1_rainresponse
		Response _c4m1_rainresponseProducer
		ApplyContext "Saidc4m1_rainresponse:1:0"
		applycontexttoworld
	},

	{
		name = "C4M1IntroSheva",
		criteria ConceptIntroC4M1 IsSheva IsNotSaidCXM1Intro AutoIsNotScavenge AutoIsNotSurvival
		Response C4M1IntroProducer
		then orator _c4m1Intro01 foo:0 0.01
		ApplyContext "CXM1Intro:1:0,Saidremark_caralarm:1:400"
		applycontexttoworld
	},

	{
		name = "_c4m1Intro03Sheva",
		criteria Concept_c4m1Intro03 IsSheva IsEveryoneAlive AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m1Intro03Producer
		then gambler _c4m1Intro04 foo:0 0.01
	},

	{
		name = "_c4m1Intro04Sheva",
		criteria Concept_c4m1Intro04 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m1Intro04Producer
		then coach _c4m1Intro04 foo:0 0.01
	},

	{
		name = "_c4m1Intro06Sheva",
		criteria Concept_c4m1Intro06 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m1Intro06Producer
		then mechanic _c4m1Intro07 foo:0 0.01
	},

	{
		name = "_c4m1Intro08Sheva",
		criteria Concept_c4m1Intro08 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m1Intro08Producer
		then self _c4m1Intro08 foo:0 0.01
	},

	{
		name = "_c4m1Intro10Sheva",
		criteria Concept_c4m1Intro10 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m1Intro10Producer
		then gambler _c4m1Intro11 foo:0 0.01
	},

	{
		name = "_c4m2_caneyell01Sheva",
		criteria Concept_c4m2_caneyell01 IsSheva ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival _auto_IsShevaInCane
		Response _c4m2_caneyell01Producer
	},

	{
		name = "_c4m2_ElevatorHere01Sheva",
		criteria Concept_c4m2_ElevatorHere01 IsSheva IsNotIncapacitated IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m2_ElevatorHere01Producer
	},

	{
		name = "_c4m2_gasinside01Sheva",
		criteria Concept_c4m2_gasinside01 IsSheva NotInCombat IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival _auto_NotShevaInCane
		Response _c4m2_gasinside01Producer
	},

	{
		name = "_c4m2_streetblocked01Sheva",
		criteria Concept_c4m2_streetblocked01 IsSheva IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m2_streetblocked01Producer
	},

	{
		name = "_c4m2_streetblocked01bSheva",
		criteria Concept_c4m2_streetblocked01 IsSheva IsSubjectDistFar400 AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m2_streetblocked01bProducer
		then subject _c4m2_streetblocked02 foo:0 0.01
	},

	{
		name = "_c4m2_streetblocked02Sheva",
		criteria Concept_c4m2_streetblocked02 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m2_streetblocked01Producer
	},

	{
		name = "_c4m2_Witchville02Sheva",
		criteria Concept_c4m2_Witchville02 IsSheva IssuerClose NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m2_Witchville02Producer
	},

	{
		name = "_c4m2_seestation01Sheva",
		criteria Concept_c4m2_seestation01 IsSheva IsSubjectDistNear200 IsNotSaidActivatedC4M2Elevator NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m2_seestation01Producer
		then mechanic _c4m2_seestation02 foo:0 0.01
		ApplyContext "Talk:1:2"
		applycontexttoworld
	},

	{
		name = "_c4m2_seestation03Sheva",
		criteria Concept_c4m2_seestation03 IsSheva IsSubjectDistNear200 IsNotSaidActivatedC4M2Elevator NotInCombat ChanceToFire50Percent AutoIsNotScavenge AutoIsNotSurvival
		Response _c4m2_seestation03Producer
		ApplyContext "Talk:1:2"
		applycontexttoworld
	},

	{
		name = "_C4M5_FinaleStart01Sheva",
		criteria Concept_C4M5_FinaleStart01 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C4M5_FinaleStart01Producer
	},

	{
		name = "_C4M5_BoatComing01Sheva",
		criteria Concept_C4M5_BoatComing01 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C4M5_BoatComing01Producer
	},

	{
		name = "_C4M5_Intro03Sheva",
		criteria Concept_C4M5_Intro03 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C4M5_Intro03Producer
		then any _C4M5_Intro04 foo:0 0.1
	},

	{
		name = "_C4M5_Intro04Sheva",
		criteria Concept_C4M5_Intro04 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C4M5_Intro04Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "PlayerRemarkc4m5_BurgerTankSheva",
		criteria ConceptRemark IsSheva Isc4m5_burgertank IsNotSaidc4m5_burgertank IsNotCoughing IsTalk IsTalkSheva IsSubjectNear1000 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m5_BurgerTankProducer
		ApplyContext "Saidc4m5_burgertank:1:0,Talk:1:2"
		applycontexttoworld
	},

	{
		name = "_introc1m1MovieIntroSheva",
		criteria Concept_introc1m1MovieIntro IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1MovieIntroProducer
		then coach _introc1m1MovieIntro foo:0 -4
	},

	{
		name = "_introc1m1a02Sheva",
		criteria Concept_introc1m1a02 IsSheva IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1a02Producer
		then any _introc1m1a03 foo:0 -1
	},

	{
		name = "_introc1m1a02AloneSheva",
		criteria Concept_introc1m1a02 IsSheva IsAlone AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1a02AloneProducer
	},

	{
		name = "_introc1m1a04Sheva",
		criteria Concept_introc1m1a04 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1a04Producer
		then gambler _introc1m1a04 foo:0 0.1
	},

	{
		name = "_introc1m1b05Sheva",
		criteria Concept_introc1m1b05 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1b05Producer
		then any _introc1m1b08 foo:0 0.1
	},

	{
		name = "_introc1m1b06Sheva",
		criteria Concept_introc1m1b06 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1b06Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "_introc1m1d01Sheva",
		criteria Concept_introc1m1d01 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1d01Producer
		then coach _introc1m1b08 foo:0 0.1
	},

	{
		name = "_introc1m1lastSheva",
		criteria Concept_introc1m1last IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1lastProducer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "_introc1m1lastweaponsSheva",
		criteria Concept_introc1m1lastweapons IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1lastProducer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "_introc1m1b07Sheva",
		criteria Concept_introc1m1b07 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1b07Producer
		then any _introc1m1b08 foo:0 0.1
	},

	{
		name = "_introc1m1b08Sheva",
		criteria Concept_introc1m1b08 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _introc1m1b08Producer
		then any _introc1m1last foo:0 0.1
	},

	{
		name = "BlankTestoSheva",
		criteria ConceptBlankTesto IsSheva
		Response NoResponse
		ApplyContext "_auto_BlankTesto:1:0"
		applycontexttoworld
	},

	{
		name = "c1m1_elevator_door_openSheva",
		criteria Conceptc1m1_elevator_door_open2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c1m1_elevator_door_openProducer
		then all C1M1Cough foo:0 -2.638
	},

	{
		name = "c1m1_elevator_ready2Sheva",
		criteria Conceptc1m1_elevator_ready2 IsSheva IsNotSaidC1M1OpenDoor AutoIsNotScavenge AutoIsNotSurvival
		Response c1m1_elevator_ready2Producer
		then sheva C1M1Cough foo:0 -2.467
		ApplyContext "SaidC1M1OpenDoor:1:30"
		applycontexttoworld
	},

	{
		name = "_C1M1_ElevatorHello2AliveName2Sheva",
		criteria Concept_C1M1_ElevatorHello2AliveName2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello2AliveName2Producer
	},

	{
		name = "_C1M1_ElevatorHello2AliveName2CSheva",
		criteria Concept_C1M1_ElevatorHello2AliveName2 IsSheva FromIsCoach ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello2AliveName2CProducer
	},

	{
		name = "_C1M1_ElevatorHello2AliveExtra1Sheva",
		criteria Concept_C1M1_ElevatorHello2AliveExtra1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello2AliveExtra1Producer
		then any _C1M1_ElevatorHello2AliveExtra1 foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello2AliveExtra2Sheva",
		criteria Concept_C1M1_ElevatorHello2AliveExtra2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello2AliveExtra2Producer
	},

	{
		name = "_C1M1_ElevatorHello3AliveRochelleIntroSheva",
		criteria Concept_C1M1_ElevatorHello3AliveShevaIntro IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveRochelleIntroProducer
		then any _C1M1_ElevatorHello3AliveName1 foo:0 0.1
		ApplyContext "ShevaIntroduced:1:0"
		applycontexttoworld
	},

	{
		name = "_C1M1_ElevatorHello3AliveExtra1Sheva",
		criteria Concept_C1M1_ElevatorHello3AliveExtra1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveExtra1Producer
		then from _C1M1_ElevatorHello3AliveName1 foo:0 0.1
		ApplyContext "ShevaElevatorIntro:1:0"
		applycontexttoworld
	},

	{
		name = "_C1M1_ElevatorHello3AliveExtra2Sheva",
		criteria Concept_C1M1_ElevatorHello3AliveExtra2 IsShevaElevatorIntro IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveExtra2Producer
		then any _C1M1_ElevatorHello3AliveName2 foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello3AliveName1Sheva",
		criteria Concept_C1M1_ElevatorHello3AliveName1 IsSheva IsNotShevaIntroduced AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveName1Producer
		then any _C1M1_ElevatorHello3AliveName2 foo:0 -0.648
		ApplyContext "ShevaIntroduced:1:0"
		applycontexttoworld
	},

	{
		name = "_C1M1_ElevatorHello3AliveName2Sheva",
		criteria Concept_C1M1_ElevatorHello3AliveName2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveName2Producer
	},

	{
		name = "_C1M1_ElevatorHello3AliveName2CNSheva",
		criteria Concept_C1M1_ElevatorHello3AliveName2 IsSheva FromIsGambler IsMechanicNotAlive ChanceToFire100Percent AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveName2CNProducer
		then self _C1M1_ElevatorHello3AliveExtraGuns foo:0 0.1
	},

	{
		name = "_C1M1_ElevatorHello3AliveExtraGunsSheva",
		criteria Concept_C1M1_ElevatorHello3AliveExtraGuns IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveExtraGunsProducer
	},

	{
		name = "_C1M1_ElevatorHello3AliveWhoIsDeadSheva",
		criteria Concept_C1M1_ElevatorHello3AliveWhoIsDead IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveWhoIsDeadProducer
		then any _C1M1_ElevatorHello3AliveNameDead foo:0 -0.858
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadNSheva",
		criteria Concept_C1M1_ElevatorHello3AliveNameDead IsGamblerNotAlive IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveNameDeadNProducer
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadESheva",
		criteria Concept_C1M1_ElevatorHello3AliveNameDead IsMechanicNotAlive IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveNameDeadEProducer
	},

	{
		name = "_C1M1_ElevatorHello3AliveNameDeadCSheva",
		criteria Concept_C1M1_ElevatorHello3AliveNameDead IsCoachNotAlive IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveNameDeadCProducer
	},

	{
		name = "_C1M1_ElevatorHello3AliveExtraEnd1Sheva",
		criteria Concept_C1M1_ElevatorHello3AliveExtraEnd1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C1M1_ElevatorHello3AliveExtraEnd1Producer
	},

	{
		name = "C1M1CoughSheva",
		criteria ConceptC1M1Cough IsSheva ismap_c1m1_hotel AutoIsNotScavenge AutoIsNotSurvival
		Response C1M1CoughProducer
	},

	{
		name = "C1M2SafeRoomSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat ismap_c1m2_streets IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival _auto_IsSafeRoomStart _auto_NotSafeRoomQuiet IsNotSpeakingWeight0
		Response C1M2SafeRoomProducer
		then mechanic C1M2SafeRoomc1 foo:0 -2.170
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "C1M3AlarmOffaSheva",
		criteria ConceptC1M3AlarmOffa IsSheva IsSubjectDistNear600 AutoIsNotScavenge AutoIsNotSurvival
		Response C1M3AlarmOffaProducer
	},

	{
		name = "C1M3SafeRoomSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea ismap_c1m3_mall AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		Response C1M3SafeRoomProducer
		then gambler C1M3SafeRoom2a foo:0 -3.646
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "C1M3SafeRoom2eSheva",
		criteria ConceptC1M3SafeRoom2e IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M3SafeRoom2eProducer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C1M4NearFinale03aSheva",
		criteria ConceptC1M4NearFinale03a IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M4NearFinale03aProducer
	},

	{
		name = "C1M4NearFinale02dSheva",
		criteria ConceptC1M4NearFinale02d IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M4NearFinale02dProducer
	},

	{
		name = "c1m4NearFinale1Sheva",
		criteria Conceptc1m4NearFinale1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response c1m4NearFinale1Producer
	},

	{
		name = "C1M4SafeRoomSheva",
		criteria ConceptTalkIdle IsSheva NotInCombat IsInStartArea IsNotAlone IsNotSaidLeavingSafeArea ismap_c1m4_atrium AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomQuiet _auto_IsSafeRoomStart IsNotSpeakingWeight0
		Response C1M4SafeRoomProducer
		then mechanic C1M4SafeRoom2b1 foo:0 -1.823
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},

	{
		name = "C1M4SafeRoom2b2Sheva",
		criteria ConceptC1M4SafeRoom2b2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C1M4SafeRoom2b2Producer
		then mechanic C1M4SafeRoom2b3 foo:0 -2.719
	},

	{
		name = "C1M4SafeRoomEndSheva",
		criteria ConceptSurvivorLeavingInitialCheckpoint ismap_c1m4_atrium IsSheva IsNotSaidLeavingSafeArea _auto_NotTellingStory
		Response C1M4SafeRoomEndProducer
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C1M4FinaleStartResponseSheva",
		criteria ConceptC1M4FinaleStartResponse IsSheva
		Response C1M4FinaleStartResponseProducer
	},

	{
		name = "C2M1IntroStartSheva",
		criteria ConceptIntroC2M1 IsSheva IsNotSaidCXM1Intro IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		Response C2M1IntroStartProducer
		then Mechanic C2M1Intro002 foo:0 0.01
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},

	{
		name = "C2M1Intro002Sheva",
		criteria ConceptC2M1Intro002 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M1Intro002Producer
		then coach C2M1Intro002 foo:0 0.01
	},

	{
		name = "C2M1Intro003Sheva",
		criteria ConceptC2M1Intro003 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M1Intro003Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C2M1Intro_400Sheva",
		criteria ConceptC2M1Intro_400 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C2M1Intro_400Producer
		then mechanic C2M1Intro_400 foo:0 1
		ApplyContext "Talk:1:5.363"
		applycontexttoworld
	},

	{
		name = "LeavingC2M1StartSheva",
		criteria ConceptSurvivorLeavingCheckpoint IsNotSaidLeavingSafeArea IsSheva Ismap_c2m1 IsTalk
		Response LeavingC2M1StartProducer
		then mechanic C2M1Intro005 foo:0 0.1
		ApplyContext "SaidLeavingSafeArea:1:0"
		applycontexttoworld
	},

	{
		name = "_C2M1MonsterTruckSheva",
		criteria Concept_C2M1MonsterTruck IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response _C2M1MonsterTruckProducer
	},

	{
		name = "C2M4PenSmell001Sheva",
		criteria ConceptC2M4PenSmell001 IsSheva IsTalk NotInCombat IssuerClose IsNotCoughing AutoIsNotScavenge AutoIsNotSurvival
		Response C2M4PenSmell001Producer
	},

	{
		name = "C4EnterCoverSheva",
		criteria ConceptC4EnterCover IsSheva
		Response NoResponse
		ApplyContext "_auto_C4ShevaInCover:1:0"
		applycontexttoworld
	},

	{
		name = "C4ExitCoverSheva",
		criteria ConceptC4ExitCover IsSheva
		Response NoResponse
		ApplyContext "_auto_C4ShevaInCover:0:0"
		applycontexttoworld
	},

	{
		name = "c4m1_InBurgerTank01Sheva",
		criteria Conceptc4m1_InBurgerTank01 IsSheva NotInCombat AutoIsNotScavenge AutoIsNotSurvival
		Response c4m1_InBurgerTank01Producer
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "c4m1_InBurgerTank02Sheva",
		criteria Conceptc4m1_InBurgerTank02 IsSheva NotInCombat ChanceToFire40Percent AutoIsNotScavenge AutoIsNotSurvival
		Response c4m1_InBurgerTank02Producer
		ApplyContext "TalkSheva:1:3"
		applycontexttoworld
	},

	{
		name = "C4FinaleStartSheva",
		criteria ConceptC4FinaleStart IsSheva
		Response C4FinaleStartProducer
		then any _C4M5_FinaleStart01 foo:0 0.01
		ApplyContext "_auto_NoLostCall:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkc4m1_InBurgerTankSheva",
		criteria ConceptRemark IsSheva Isc4m1_InBurgerTank IsNotSaidc4m1_InBurgerTank IsNotCoughing IsTalk IsTalkSheva IsSubjectNear200 IsWorldTalkSheva AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m1_InBurgerTankProducer
		ApplyContext "Saidc4m1_InBurgerTank:1:0,TalkSheva:1:4"
		applycontexttoworld
	},

	{
		name = "c4m1_nogas01Sheva",
		criteria Conceptc4m1_nogas01 IsSheva NotInCombat IsSubjectDistNear500 AutoIsNotScavenge AutoIsNotSurvival
		Response c4m1_nogas01Producer
		then coach c4m1_nogas06 foo:0 0.01
		ApplyContext "Talk:1:2.502"
		applycontexttoworld
	},

	{
		name = "c4m1_nogas04Sheva",
		criteria Conceptc4m1_nogas04 IsSheva NotInCombat IsSubjectDistNear500 AutoIsNotScavenge AutoIsNotSurvival
		Response c4m1_nogas04Producer
		ApplyContext "Talk:1:2.502"
		applycontexttoworld
	},

	{
		name = "GasPour20MoreSheva",
		criteria ConceptGasPour20More IsSheva IsNotSpeaking _auto_IsGasCountOK
		Response GasPour20MoreProducer
	},

	{
		name = "GasPour10MoreTalkSheva",
		criteria ConceptGasPour10More IsSheva IsNotSpeaking _auto_IsGasCountOK
		Response GasPour10MoreTalkProducer
	},

	{
		name = "GasPour1MoreSheva",
		criteria ConceptGasPour1More IsSheva IsNotSpeaking _auto_IsGasCountOK
		Response GasPour1MoreProducer
	},

	{
		name = "GasPour2MoreSheva",
		criteria ConceptGasPour2More IsSheva IsNotSpeaking _auto_IsGasCountOK
		Response GasPour2MoreProducer
	},

	{
		name = "GasPour3MoreSheva",
		criteria ConceptGasPour3More IsSheva IsNotSpeaking _auto_IsGasCountOK
		Response GasPour3MoreProducer
	},

	{
		name = "GasPour5MoreSheva",
		criteria ConceptGasPour5More IsSheva IsNotSpeaking _auto_IsGasCountOK
		Response GasPour5MoreProducer
	},

	{
		name = "HistoricTour02bSheva",
		criteria ConceptHistoricTour02b IsSheva
		Response HistoricTour02bProducer
	},

	{
		name = "Player_KnowHunter2Sheva",
		criteria ConceptPlayer_KnowHunter2 IsSheva IssuerClose IsNotIncapacitated IsTalkSheva IsWorldTalkSheva
		Response Player_KnowHunter2Producer
	},

	{
		name = "C1M2TankInfoSheva",
		criteria ConceptC1M2TankInfo IsSheva
		Response C1M2TankInfoProducer
		then Gambler C1M2TankInfo foo:0 0.1
	},

	{
		name = "Player_NotPackingHeatSheva",
		criteria ConceptPlayer_NotPackingHeat IsSheva
		Response Player_NotPackingHeatProducer
		then gambler Player.NotPackingHeat foo:0 0.1
	},

	{
		name = "Player_NotPackingHeat2Sheva",
		criteria ConceptPlayer_NotPackingHeat2 IsSheva
		Response Player_NotPackingHeat2Producer
		then gambler Player.NotPackingHeat2 foo:0 0.1
	},

	{
		name = "PlayerCr0wnedBrideSheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva SubjectIsAWitch KilledByCr0wn IsNotWitchAggro ChanceToFire100Percent IsTalk IsTalkSheva isc6m1_riverbank IsWorldTalkSheva
		// 	forceweight 101
		Response PlayerCr0wnedBrideProducer
	},

	{
		name = "PlayerCr0wnedBrideGamblerSheva",
		criteria ConceptKilledZombie IsNotCoughing IsSheva SubjectIsAWitch KilledByCr0wn IsNotWitchAggro IsGamblerAlive IsGamblerNear400 ChanceToFire30Percent IsTalk IsTalkSheva isc6m1_riverbank IsWorldTalkSheva
		// 	forceweight 102
		Response PlayerCr0wnedBrideGamblerProducer
		then Gambler WeddingWitchDead04 foo:0 3.1
	},

	{
		name = "WeddingWitchDead01Sheva",
		criteria ConceptWeddingWitchDead01 IsSheva
		Response WeddingWitchDead01Producer
	},

	{
		name = "WeddingWitchDead02aSheva",
		criteria ConceptWeddingWitchDead02a IsSheva
		Response WeddingWitchDead02aProducer
	},

	{
		name = "WorldIntroC31a2Sheva",
		criteria ConceptWorldIntroC31a2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldIntroC31a2Producer
		then sheva WorldIntroC31a4 foo:0 -6.296
	},

	{
		name = "WorldIntroC31a4Sheva",
		criteria ConceptWorldIntroC31a4 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldIntroC31a4Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "WorldIntroC31c3Sheva",
		criteria ConceptWorldIntroC31c3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldIntroC31c3Producer
		then gambler WorldIntroC31c4 foo:0 -2.381
	},

	{
		name = "WorldIntroC31d2Sheva",
		criteria ConceptWorldIntroC31d2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldIntroC31d2Producer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "WorldIntroC31e1Sheva",
		criteria ConceptWorldIntroC31e1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldIntroC31e1Producer
		then sheva WorldIntroC31e2 foo:0 -4.802
	},

	{
		name = "WorldIntroC31e2Sheva",
		criteria ConceptWorldIntroC31e2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response WorldIntroC31e2Producer
		then coach WorldIntroC31e3 foo:0 -1.530
	},

	{
		name = "PlayerCoverMeHealSheva",
		criteria ConceptPlayerHealing IsNotCoughing IsSheva IsNotAskedForCover IsTalk IsTalkSheva IsNotAlone IsWorldTalkSheva _auto_NotSpottedVehicle
		Response PlayerCoverMeHealProducer
		ApplyContext "AskForCover:1:30"
	},

	{
		name = "PlayerCoverMeHealC1Sheva",
		criteria ConceptPlayerHealing IsNotCoughing IsSheva IsNotAskedForCover IsTalk IsTalkSheva IsNotAlone IsWorldTalkSheva ismap_c1m1_hotel
		Response PlayerCoverMeHealC1Producer
		ApplyContext "AskForCover:1:30"
	},

	{
		name = "Player_LostCallC6M3Sheva",
		criteria ConceptTalkIdle IsSheva IsClosestSurvivorFar3000 IsNotAlone IsNotSaidPlayerLostCall Isc6m3_port ChanceToFire100Percent IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response Player_LostCallC6M3Producer
		ApplyContext "SaidPlayerLostCall:1:50"
		applycontexttoworld
	},

	{
		name = "AutoPlayerLostCallSheva",
		criteria ConceptTalkIdle IsSheva IsClosestSurvivorFar3000 IsNotAlone IsNotSaidPlayerLostCall _auto_NotNoLostCall IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response AutoPlayerLostCallProducer
		ApplyContext "SaidPlayerLostCall:1:50"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedChainsawSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsChainsaw IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedChainsawProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedChainsawAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsChainsaw IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedChainsawProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedcricket_batSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto Iscricket_bat IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedcricket_batProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedcricket_batAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Iscricket_bat IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedcricket_batProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedcrowbarSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto Iscrowbar IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedcrowbarProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedcrowbarAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Iscrowbar IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedcrowbarProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGolfClubSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGolfClub IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedGolfClubProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGolfClubAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsGolfClub IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedGolfClubProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGuitarSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsGuitar IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedGuitarProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGuitarAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGuitar IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedGuitarProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedKatanaSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsKatana IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedKatanaProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedKatanaAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSaidSpot IsKatana IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedKatanaProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedLaserSightsSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsLaserSights IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedLaserSightsProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedLaserSightsAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsLaserSights IsWorldTalkSheva IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedLaserSightsProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorBotPickupLaserSightsSpottedSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpLaserSights IsNotSpeaking IsBotIsAvailable IsNotInStartArea IsNotInCheckpoint IsNotInSafeSpot IsNotSaidSpotWeapons IsTalk IsTalkSheva IsWorldTalkSheva _auto_NotSpottedVehicle
		Response SurvivorSpottedLaserSightsProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedM60Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsM60 IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedM60Producer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedM60AutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsM60 IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedM60Producer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMacheteSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsMachete IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedMacheteProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMacheteAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsMachete IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMacheteProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMagnumSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsMagnum IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedMagnumProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMagnumAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsMagnum IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMagnumProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSMGSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsSMG IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedSMGProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSMGAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSMG IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedSMGProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSMG_silencedSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsSmg_silenced IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedSMGProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSMG_silencedAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSmg_silenced IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedSMGProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSMG_MP5Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsSmg_mp5 IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedSMGProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSMG_MP5AutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSmg_mp5 IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedSMGProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedtonfaSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto Istonfa IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedtonfaProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedtonfaAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Istonfa IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedtonfaProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSecondPistolSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsSecondPistol IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedPistolProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedSecondPistolAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSecondPistol IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedPistolProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAutoShotgunSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsAutoShotgun IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAutoShotgunAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsAutoShotgun IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedPumpShotgunSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsPumpShotgun IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedPumpShotgunAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsPumpShotgun IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedShotgun_ChromeSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsShotgun_Chrome IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedShotgun_ChromeAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsShotgun_Chrome IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedShotgun_spasSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsShotgun_spas IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedShotgun_spasAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsShotgun_spas IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedRifleSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedRifleAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedRifle_AK47Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_AK47 IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedRifle_AK47AutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_AK47 IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedRifle_desertSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_desert IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedRifle_desertAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_desert IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedRifle_SG552Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsRifle_sg552 IsWorldTalkSheva isNotmap_c1m1_hotel _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedRifle_SG552AutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsRifle_sg552 IsWorldTalkSheva isNotmap_c1m1_hotel IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMilitarySniperSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsSniper_military IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedMilitarySniperAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSniper_military IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHuntingRifleSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsHuntingRifle IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedHuntingRifleAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsHuntingRifle IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedScoutSniperSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsSniper_scout IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedScoutSniperAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSniper_scout IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAWPSniperSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsSniper_awp IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAWPSniperAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsSniper_awp IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedBaseBallBatSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied Isbaseball_bat IsNotSmartLookAuto IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedBaseBallBatAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot Isbaseball_bat IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAxeSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsFryingPan IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedFryingPanAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsWorldTalkSheva IsFryingPan isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedFryingPanSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsFireAxe IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedAxeAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsFireAxe IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedShovelSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsShovel IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedShovelAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsShovel IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedPitchforkSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsPitchfork IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedPitchforkAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsPitchfork IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedKnifeSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsKnife IsNotSmartLookAuto IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedKnifeAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsKnife IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets IsNotSpeakingWeight0 _auto_NotSpottedVehicle
		Response SurvivorSpottedMeleeWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedOtherWeaponSheva",
		criteria ConceptPlayerSpotOtherWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedWeaponProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedWeaponPistolSheva",
		criteria ConceptPlayerSpotPistol IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedPistolProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedShotgunSheva",
		criteria ConceptPlayerSpotShotgun IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSaidSomeoneDied IsNotSmartLookAuto IsWorldTalkSheva isNotmap_c1m1_hotel isNotmap_c1m2_streets _auto_NotSpottedVehicle
		Response SurvivorSpottedShotgunProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "C2M3AlarmOffNagSheva",
		criteria ConceptTalkIdle IsSheva ChanceToFire50Percent IsNotIncapacitated ismap_c2m3 AutoIsNotScavenge AutoIsNotSurvival _auto_IsAlarm _auto_IsTracksOK _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response PlayerRemarkc2m3_coasteroffProducer
		ApplyContext "_auto_TimerLockA:1:8,_auto_TimerLockSheva:1:11"
		applycontexttoworld
	},

	{
		name = "C2M3Chopper001Sheva",
		criteria ConceptC2M3Chopper001 IsSheva IsTalk IsSubjectDistNear400 AutoIsNotScavenge AutoIsNotSurvival
		Response C2M3Chopper001Producer
	},

	{
		name = "AskWhatSheva",
		criteria ConceptAskWhat IsSheva
		Response AskWhatProducer
	},

	{
		name = "C13M1IntroStartSheva",
		criteria ConceptIntroC13M1 IsSheva IsNotSaidCXM1Intro IsNotAlone AutoIsNotScavenge AutoIsNotSurvival
		Response C13M1IntroStartProducer
		then any C13M1Intro2 foo:0 0.1
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},

	{
		name = "C13M1Intro2Sheva",
		criteria ConceptC13M1Intro2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M1Intro2Producer
		then any C13M1Intro2 foo:0 0.1
	},

	{
		name = "C13M1Intro3Sheva",
		criteria ConceptC13M1Intro3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M1Intro3Producer
		then any C13M1IntroLast foo:0 -1.675
	},

	{
		name = "C13M1IntroLastSheva",
		criteria ConceptC13M1IntroLast IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M1IntroLastProducer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "C13M1IntroLocationLastSheva",
		criteria ConceptC13M1IntroLocationLast IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M1IntroLocationLastProducer
		then self IntroEnd foo:0 0.1
	},

	{
		name = "RemarkC13M1UpHillSheva",
		criteria ConceptRemark IsSheva IsC13M1UpHill IsNotRemarkedC13M1UpHill NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m2_upthestairsProducer
		ApplyContext "RemarkedC13M1UpHill:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M1DownHereSheva",
		criteria ConceptRemark IsSheva IsC13M1DownHere IsNotRemarkedC13M1DownHere NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_downstairsProducer
		ApplyContext "RemarkedC13M1DownHere:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M1ThroughHereSheva",
		criteria ConceptRemark IsSheva IsC13M1ThroughHere IsNotRemarkedC13M1ThroughHere NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response RemarkC13M1ThroughHereProducer
		ApplyContext "RemarkedC13M1ThroughHere:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M1ThroughWindowSheva",
		criteria ConceptRemark IsSheva IsC13M1ThroughWindow IsNotRemarkedC13M1ThroughWindow NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_throughwindowProducer
		ApplyContext "RemarkedC13M1ThroughWindow:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M1UpStepsSheva",
		criteria ConceptRemark IsSheva IsC13M1UpSteps IsNotRemarkedC13M1UpSteps NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_UpTheStairsProducer
		ApplyContext "RemarkedC13M1UpSteps:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M1CrossHereSheva",
		criteria ConceptRemark IsSheva IsC13M1CrossHere IsNotRemarkedC13M1CrossHere NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc4m3_crosshereProducer
		ApplyContext "RemarkedC13M1CrossHere:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M1PreBunkerOpenSheva",
		criteria ConceptRemark IsSheva IsC13M1PreBunkerOpen IsNotRemarkedC13M1PreBunkerOpen NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkC1M2PreAlarmDoorProducer
		ApplyContext "RemarkedC13M1PreBunkerOpen:1:0"
		applycontexttoworld
	},

	{
		name = "C13M1OpeningBunkerSheva",
		criteria ConceptC13M1OpeningBunker IsSheva IsNotC13M1OpeningBunker AutoIsNotScavenge AutoIsNotSurvival
		Response C13M1OpeningBunkerProducer
		ApplyContext "C13M1OpeningBunker:1:0,RemarkedC13M1PreBunkerOpen:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M2UpHillSheva",
		criteria ConceptRemark IsSheva IsC13M2UpHill IsNotRemarkedC13M2UpHill NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear100 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc2m1_uphillProducer
		ApplyContext "RemarkedC13M2UpHill:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M2DownHereSheva",
		criteria ConceptRemark IsSheva IsC13M2DownHere IsNotRemarkedC13M2DownHere NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response RemarkC13M2DownHereProducer
		ApplyContext "RemarkedC13M2DownHere:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M2UpLadderSheva",
		criteria ConceptRemark IsSheva IsC13M2UpLadder IsNotRemarkedC13M2UpLadder NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkc5m3upladderProducer
		ApplyContext "RemarkedC13M2UpStairs:1:0"
		applycontexttoworld
	},

	{
		name = "RemarkC13M2UpStairsSheva",
		criteria ConceptRemark IsSheva IsC13M2UpStairs IsNotRemarkedC13M2UpStairs NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_UpTheStairsProducer
		ApplyContext "RemarkedC13M2UpStairs:1:0"
		applycontexttoworld
	},

	{
		name = "C13M2TankApproachingSheva",
		criteria ConceptC13M2TankApproaching IsSheva IsNotNoticedC13M2ShakingGround AutoIsNotScavenge AutoIsNotSurvival
		Response C13M2TankApproachingProducer
		ApplyContext "NoticedC13M2ShakingGround:1:0"
		applycontexttoworld
	},

	{
		name = "C13M2BarrelsIgnitedSheva",
		criteria ConceptC13M2BarrelsIgnited IsSheva IsNotC13M2IgnitedBarrels AutoIsNotScavenge AutoIsNotSurvival
		Response C13M2BarrelsIgnitedProducer
		then any C13M2Barrels1 foo:0 5
		ApplyContext "C13M2IgnitedBarrels:1:0"
		applycontexttoworld
	},

	{
		name = "C13M2Barrels1Sheva",
		criteria ConceptC13M2Barrels1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M2Barrels1Producer
		then any C13M2Barrels2 foo:0 0.1
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "C13M2Barrels2Sheva",
		criteria ConceptC13M2Barrels2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerYellRunProducer
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "RemarkC13M3DownHereSheva",
		criteria ConceptRemark IsSheva IsC13M3DownHere IsNotRemarkedC13M3DownHere NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 AutoIsNotScavenge AutoIsNotSurvival IsNotSpeakingWeight0
		Response RemarkC13M2DownHereProducer
		ApplyContext "RemarkedC13M3DownHere:1:0"
		applycontexttoworld
	},

	{
		name = "C13M3ApproachingTankerSheva",
		criteria ConceptC13M3ApproachingTanker IsSheva IsNotSawC13M3Tanker AutoIsNotScavenge AutoIsNotSurvival
		Response C13M3ApproachingTankerProducer
		then any C13M3Tanker1 foo:0 3
		ApplyContext "SawC13M3Tanker:1:0"
		applycontexttoworld
	},

	{
		name = "C13M3Tanker1Sheva",
		criteria ConceptC13M3Tanker1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M3Tanker1Producer
		then any C13M3Tanker2 foo:0 -0.3
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "C13M3Tanker2Sheva",
		criteria ConceptC13M3Tanker2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M3Tanker2Producer
		then any C13M3Tanker3 foo:0 3
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "C13M3Tanker3Sheva",
		criteria ConceptC13M3Tanker3 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M3Tanker3Producer
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "C13M3OnScaffoldSheva",
		criteria ConceptC13M3OnScaffold IsSheva IsNotOnC13M3Scaffold AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkWorldC1M2DownStairsProducer
		ApplyContext "OnC13M3Scaffold:1:0"
		applycontexttoworld
	},

	{
		name = "C13M3AirstrikeSheva",
		criteria ConceptC13M3Airstrike IsSheva IsNotWitnissedC13M3Airstrike AutoIsNotScavenge AutoIsNotSurvival
		Response C13M3AirstrikeProducer
		then any C13M3Airstrike2 foo:0 0.3
		ApplyContext "WitnissedC13M3Airstrike:1:0"
		applycontexttoworld
	},

	{
		name = "C13M3Airstrike2Sheva",
		criteria ConceptC13M3Airstrike2 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M3Airstrike2Producer
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "C13M4Button1Sheva",
		criteria ConceptC13M4Button1 IsSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M4Button1Producer
		then orator C13M4FinaleBrief foo:0 0.3
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "C13M4FinaleTriggeredSheva",
		criteria ConceptFinaleTriggered IsSheva ismapc13m4_cutthroatcreek IsTriggeredBySheva _auto_NotFinaleStarted
		Response C13M4FinaleTriggeredProducer
		then orator C13M4FinaleStart foo:0 0.01
		ApplyContext "_auto_Finale:1:0,_auto_TalkingSheva:1:0"
		applycontexttoworld
	},

	{
		name = "C13M4FinaleStart2Sheva",
		criteria ConceptC13M4FinaleStart2 IsSheva _auto_IsTalkingSheva AutoIsNotScavenge AutoIsNotSurvival
		Response C13M4FinaleStart2Producer
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},

	{
		name = "C13M4DownCreekSheva",
		criteria ConceptC13M4DownCreek IsSheva IsNotInC13M4Creek AutoIsNotScavenge AutoIsNotSurvival
		Response PlayerRemarkWorldC6M2_FinalWaterProducer
		ApplyContext "Talk:1:3,InC13M4Creek:1:0"
		applycontexttoworld
	},

	{
		name = "C13M4InSmokeSheva",
		criteria ConceptC13M4InSmoke IsSheva IsNotInC13M4Smoke AutoIsNotScavenge AutoIsNotSurvival
		Response SurvivorCoughingProducer
		ApplyContext "TalkSheva:1:3,InC13M4Smoke:1:0"
	},

	{
		name = "C13M4NoticedHelicopterSheva",
		criteria ConceptC13M4NoticedHelicopter IsSheva IsNotNoticedC13M4Helicopter AutoIsNotScavenge AutoIsNotSurvival
		Response c2m3SeeChopperProducer
		ApplyContext "Talk:1:3,NoticedC13M4Helicopter:1:0"
		applycontexttoworld
	},

	{
		name = "C13M4AlmostThereSheva",
		criteria ConceptC13M4AlmostThere IsSheva IsNotC13M4AlmostThere AutoIsNotScavenge AutoIsNotSurvival
		Response C13M4AlmostThereProducer
		ApplyContext "Talk:1:3,C13M4AlmostThere:1:0"
		applycontexttoworld
	},

	{
		name = "C13M4SpottedVehicleSheva",
		criteria ConceptFinalVehicleSpotted IsSheva ismapc13m4_cutthroatcreek _auto_IsFinaleStarted
		Response C13M4SpottedVehicleProducer
		then pilot C13M4PilotEscapeNag foo:0 2
		ApplyContext "_auto_Finale:2:0,_auto_TimerLockA:1:5"
		applycontexttoworld
	},

	{
		name = "C13M4GetToVehicleSheva",
		criteria ConceptGetToVehicle IsSheva ismapc13m4_cutthroatcreek IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsNotInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C13M4GetToVehicleProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "C13M4InsideVehicleSheva",
		criteria ConceptGetToVehicle IsSheva ismapc13m4_cutthroatcreek IsNotCoughing IsNotIncapacitated IsNotAlone IsTalk AutoIsNotScavenge AutoIsNotSurvival IsInRescueVehicle _auto_IsEscapeReady _auto_NotTimerLockA _auto_NotTimerLockSheva IsNotSpeakingWeight0
		Response C13M4InsideVehicleProducer
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockSheva:1:30"
		applycontexttoworld
	},

	{
		name = "SafeRoomStartSheva",
		criteria ConceptTalkIdle IsSheva IsInStartArea AutoIsNotScavenge AutoIsNotSurvival _auto_NotSafeRoomStart
		Response NoResponse
		ApplyContext "Talk:1:45,_auto_SafeRoomStart:1:0,_auto_SafeRoomQuiet:1:5"
		applycontexttoworld
	},

	{
		name = "IntroEndSheva",
		criteria ConceptIntroEnd IsSheva FromIsSheva IsNotSaidLeavingSafeArea AutoIsNotScavenge AutoIsNotSurvival
		Response NoResponse
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "LeavingSafeAreaSheva",
		criteria ConceptSurvivorLeavingCheckpoint IsSheva IsNotSaidLeavingSafeArea
		Response NoResponse
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},

	{
		name = "LeavingSafeRoomSheva",
		criteria ConceptSurvivorLeavingInitialCheckpoint IsSheva IsNotSaidLeavingSafeArea
		Response NoResponse
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},

	{
		name = "FinaleTriggeredSheva",
		criteria ConceptFinaleTriggered IsSheva IsTriggeredBySheva AutoIsNotScavenge AutoIsNotSurvival _auto_NotFinaleStarted
		Response NoResponse
		ApplyContext "_auto_Finale:1:0"
		applycontexttoworld
	},

	{
		name = "FinalVehicleSpottedSheva",
		criteria ConceptFinalVehicleSpotted IsSheva _auto_IsFinaleStarted _auto_NotEscapeReady
		Response NoResponse
		ApplyContext "_auto_Finale:2:0"
		applycontexttoworld
	},

	{
		name = "FinalVehicleArrivedSheva",
		criteria ConceptFinalVehicleArrived IsSheva _auto_HasSpottedVehicle _auto_NotEscapeReady
		Response NoResponse
		ApplyContext "_auto_Escape:1:0"
		applycontexttoworld
	},

	{
		name = "L4D1PlayerNiceShotSheva",
		criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsSheva IsSubjectDistNear1500 IsTalk IsTalkSheva IsWorldTalkSheva IsNotSpeaking ChanceToFire70Percent
		Response L4D1PlayerNiceShotProducer
	},

	{
		name = "L4D1PlayerNiceShotFrancisSheva",
		criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsSheva IsSubjectDistNear1500 IsTalk IsTalkSheva IsWorldTalkSheva SubjectIsBiker ChanceToFire70Percent IsNotSpeaking
		Response L4D1PlayerNiceShotFrancisProducer
	},

	{
		name = "L4D1PlayerNiceShotLouisSheva",
		criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsSheva IsSubjectDistNear1500 IsTalk IsTalkSheva IsWorldTalkSheva SubjectIsManager ChanceToFire70Percent IsNotSpeaking
		Response L4D1PlayerNiceShotLouisProducer
	},

	{
		name = "L4D1PlayerNiceShotZoeySheva",
		criteria ConceptL4D1PlayerNiceShot IsNotCoughing IsSheva IsSubjectDistNear1500 IsTalk IsTalkSheva IsWorldTalkSheva SubjectIsTeenGirl ChanceToFire70Percent IsNotSpeaking
		Response L4D1PlayerNiceShotZoeyProducer
	},

	{
		name = "C6M3GasPourSheva",
		criteria ConceptPlayerPourStarted IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotScavenge isC6M3_Port ChanceToFire70Percent
		Response C6M3GasPourProducer
		ApplyContext "TalkSheva:1:2"
	},

	{
		name = "C6M1_IntotheparkNoHealthSheva",
		criteria ConceptC6M1_IntotheparkNoHealth IsSheva
		Response C6M1_IntotheparkNoHealthProducer
	},

	{
		name = "C6M1Intro_01Biker03Sheva",
		criteria ConceptintroC6M1 IsSheva IsFrancisIntroActor IsNotSaidIntroScene FrancisGroup3 IsNotVersus
		Response C6M1Intro_01Biker03Producer
		then Biker C6M1Intro_06a foo:0 -2.023
		ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_01Biker04Sheva",
		criteria ConceptintroC6M1 IsSheva IsFrancisIntroActor IsNotSaidIntroScene FrancisGroup4 IsNotVersus
		Response C6M1Intro_01Biker04Producer
		then Biker C6M1Intro_18a foo:0 -3.074
		ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_01TeenGirl03Sheva",
		criteria ConceptintroC6M1 IsSheva IsZoeyIntroActor IsNotSaidIntroScene MoreThan40 LessThan60 IsNotVersus
		Response C6M1Intro_01TeenGirl03Producer
		then TeenGirl C6M1Intro_03a foo:0 -3.225
		ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_05aSheva",
		criteria ConceptC6M1Intro_05a IsSheva
		Response C6M1Intro_05aProducer
		then Biker C6M1Intro_05b foo:0 -2.451
	},

	{
		name = "C6M1Intro_05cSheva",
		criteria ConceptC6M1Intro_05c IsSheva
		Response C6M1Intro_05cProducer
		then Biker C6M1Intro_05d foo:0 -1.958
	},

	{
		name = "C6M1Intro_05eSheva",
		criteria ConceptC6M1Intro_05e IsSheva
		Response C6M1Intro_05eProducer
		then Any WorldC6M1_HistoricTour foo:0 -1.874
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_06bSheva",
		criteria ConceptC6M1Intro_06b IsSheva
		Response C6M1Intro_06bProducer
		then Biker C6M1Intro_06c foo:0 -2.236
	},

	{
		name = "C6M1Intro_06dSheva",
		criteria ConceptC6M1Intro_06d IsSheva
		Response C6M1Intro_06dProducer
		then Biker C6M1Intro_06e foo:0 -0.709
	},

	{
		name = "C6M1Intro_07cSheva",
		criteria ConceptC6M1Intro_07c IsSheva
		Response C6M1Intro_07cProducer
		then Any WorldC6M1_HistoricTour foo:0 1
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_09eSheva",
		criteria ConceptC6M1Intro_09e IsSheva
		Response C6M1Intro_09eProducer
		then Sheva C6M1Intro_09f foo:0 -2.022
	},

	{
		name = "C6M1Intro_09fSheva",
		criteria ConceptC6M1Intro_09f IsSheva
		Response C6M1Intro_09fProducer
		then Biker C6M1Intro_09g foo:0 -1.643
	},

	{
		name = "C6M1Intro_10bSheva",
		criteria ConceptC6M1Intro_10b IsSheva
		Response C6M1Intro_10bProducer
		then Biker C6M1Intro_10c foo:0 -4.931
	},

	{
		name = "C6M1Intro_10dSheva",
		criteria ConceptC6M1Intro_10d IsSheva
		Response C6M1Intro_10dProducer
		then Sheva C6M1Intro_10e foo:0 -2.369
	},

	{
		name = "C6M1Intro_10eSheva",
		criteria ConceptC6M1Intro_10e IsSheva
		Response C6M1Intro_10eProducer
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_12aSheva",
		criteria ConceptC6M1Intro_12a IsSheva
		Response C6M1Intro_12aProducer
		then Mechanic C6M1Intro_12b foo:0 -2.341
	},

	{
		name = "C6M1Intro_12cSheva",
		criteria ConceptC6M1Intro_12c IsSheva
		Response C6M1Intro_12cProducer
		then Any WorldC6M1_HistoricTour foo:0 1
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_14dSheva",
		criteria ConceptC6M1Intro_14d IsSheva
		Response C6M1Intro_14dProducer
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_15cSheva",
		criteria ConceptC6M1Intro_15c IsSheva
		Response C6M1Intro_15cProducer
		then TeenGirl C6M1Intro_15d foo:0 -2.339
	},

	{
		name = "C6M1Intro_17bSheva",
		criteria ConceptC6M1Intro_17b IsSheva
		Response C6M1Intro_17bProducer
		then TeenGirl C6M1Intro_17c foo:0 -4.790
	},

	{
		name = "C6M1Intro_17dSheva",
		criteria ConceptC6M1Intro_17d IsSheva
		Response C6M1Intro_17dProducer
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_18bSheva",
		criteria ConceptC6M1Intro_18b IsSheva
		Response C6M1Intro_18bProducer
		then Biker C6M1Intro_18c foo:0 -2.243
	},

	{
		name = "C6M1Intro_18dSheva",
		criteria ConceptC6M1Intro_18d IsSheva
		Response C6M1Intro_18dProducer
		then Biker C6M1Intro_18e foo:0 -2.015
	},

	{
		name = "C6M1Intro_19bSheva",
		criteria ConceptC6M1Intro_19b IsSheva
		Response C6M1Intro_19bProducer
		then Any WorldC6M1_HistoricTour foo:0 1
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_20aSheva",
		criteria ConceptC6M1Intro_20a IsSheva
		Response C6M1Intro_20aProducer
		then Sheva C6M1Intro_20b foo:0 -0.951
	},

	{
		name = "C6M1Intro_20bSheva",
		criteria ConceptC6M1Intro_20b IsSheva
		Response C6M1Intro_20bProducer
		then Biker C6M1Intro_20c foo:0 -2.037
	},

	{
		name = "C6M1Intro_20dSheva",
		criteria ConceptC6M1Intro_20d IsSheva
		Response C6M1Intro_20dProducer
		then Biker C6M1Intro_20e foo:0 -4.900
	},

	{
		name = "C6M1Intro_20gSheva",
		criteria ConceptC6M1Intro_20g IsSheva
		Response C6M1Intro_20gProducer
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M1Intro_22aSheva",
		criteria ConceptC6M1Intro_22a IsSheva
		Response C6M1Intro_22aProducer
		then TeenGirl C6M1Intro_22b foo:0 -3.403
	},

	{
		name = "C6M1Intro_22cSheva",
		criteria ConceptC6M1Intro_22c IsSheva
		Response C6M1Intro_22cProducer
		then TeenGirl C6M1Intro_22d foo:0 -2.930
	},

	{
		name = "C6M1Intro_22fSheva",
		criteria ConceptC6M1Intro_22f IsSheva
		Response C6M1Intro_22fProducer
		then TeenGirl C6M1Intro_22g foo:0 -3.037
	},

	{
		name = "C6M1Intro_22hSheva",
		criteria ConceptC6M1Intro_22h IsSheva
		Response C6M1Intro_22hProducer
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},

	{
		name = "LeavingC6M1StartSheva",
		criteria ConceptSurvivorLeavingCheckpoint IsSheva
		Response LeavingC6M1StartProducer
		ApplyContext "LeftC6M1Start:1:0"
		applycontexttoworld
	},

	{
		name = "RemWorldC6M1_WeddingWarn01Sheva",
		criteria ConceptRemWorldC6M1_WeddingWarn01 IsSheva IsSubjectDistNear800
		Response RemWorldC6M1_WeddingWarn01Producer
		ApplyContext "AtWedding:1:60"
		applycontexttoworld
	},

	{
		name = "WorldC6M1_HistoricTourSheva",
		criteria ConceptWorldC6M1_HistoricTour IsSheva IsNotLeftC6M1Start
		Response WorldC6M1_HistoricTourProducer
		then Coach HistoricTour02a foo:0 -3.829
	},

	{
		name = "WorldC6M1_PostWedding02aSheva",
		criteria ConceptWorldC6M1_PostWedding02a IsSheva IsSubjectDistNear800
		Response WorldC6M1_PostWedding02aProducer
	},

	{
		name = "WorldC6M1_WeddingWarn03bSheva",
		criteria ConceptWorldC6M1_WeddingWarn03b IsSheva
		Response WorldC6M1_WeddingWarn03bProducer
		ApplyContext "AtWedding:1:60"
		applycontexttoworld
	},

	{
		name = "C6M2_OpenGate1Sheva",
		criteria ConceptC6M2_OpenGate1 IsSheva
		Response C6M2_OpenGate1Producer
		ApplyContext "SaidOpenedGate1:1:0"
		applycontexttoworld
	},

	{
		name = "C6M2_OpenGate2Sheva",
		criteria ConceptC6M2_OpenGate2 IsSheva
		Response C6M2_OpenGate2Producer
		ApplyContext "Said:OpenedGate2:1:0"
		applycontexttoworld
	},

	{
		name = "C6M2SafeRoomSheva",
		criteria ConceptTalkIdle Joined3 IsSheva isC6m2_bedlam IsInStartArea AutoIsNotScavenge AutoIsNotSurvival IsNotSaidC6M2SafeRoom IsNotSpeakingWeight0
		Response C6M2SafeRoomProducer
		then any C6M2SafeRoom2 foo:0 3
		ApplyContext "SaidC6M2SafeRoom:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo01aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo01a IsSheva
		Response DLC1_C6M2_SafeRoomConvo01aProducer
		then Gambler DLC1_C6M2_SafeRoomConvo01b foo:0 -2.711
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo03a IsSheva
		Response DLC1_C6M2_SafeRoomConvo03aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo03b foo:0 -2.886
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo03cSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo03c IsSheva
		Response DLC1_C6M2_SafeRoomConvo03cProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo04aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo04a IsSheva
		Response DLC1_C6M2_SafeRoomConvo04aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo06aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo06a IsSheva
		Response DLC1_C6M2_SafeRoomConvo06aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo07Sheva",
		criteria ConceptC6M2SafeRoom2 IsSheva IsFrancisIntroActor FrancisGroup3 IsNotSaidC6M2SafeRoom2
		Response DLC1_C6M2_SafeRoomConvo07Producer
		then Gambler DLC1_C6M2_SafeRoomConvo08a foo:0 -1.679
		ApplyContext "SaidC6M2SafeRoom2:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo07aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo07a IsSheva
		Response DLC1_C6M2_SafeRoomConvo07aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08bSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo08b IsSheva
		Response DLC1_C6M2_SafeRoomConvo08bProducer
		then Gambler DLC1_C6M2_SafeRoomConvo08c foo:0 -1.262
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08dSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo08d IsSheva
		Response DLC1_C6M2_SafeRoomConvo08dProducer
		then Gambler DLC1_C6M2_SafeRoomConvo08e foo:0 -0.977
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo08fSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo08f IsSheva
		Response DLC1_C6M2_SafeRoomConvo08fProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo10aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo10a IsSheva
		Response DLC1_C6M2_SafeRoomConvo10aProducer
		then Gambler DLC1_C6M2_SafeRoomConvo10b foo:0 -2.753
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo10cSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo10c IsSheva
		Response DLC1_C6M2_SafeRoomConvo10cProducer
		then Gambler DLC1_C6M2_SafeRoomConvo10d foo:0 -3.678
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo13Sheva",
		criteria ConceptC6M2SafeRoom2 IsSheva IsZoeyIntroActor ZoeyGroup3 IsNotSaidC6M2SafeRoom2
		Response DLC1_C6M2_SafeRoomConvo13Producer
		then Sheva DLC1_C6M2_SafeRoomConvo14a foo:0 -1.209
		ApplyContext "SaidC6M2SafeRoom2:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo14a IsSheva
		Response DLC1_C6M2_SafeRoomConvo14aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo14b foo:0 -5.157
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14cSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo14c IsSheva
		Response DLC1_C6M2_SafeRoomConvo14cProducer
		then Coach DLC1_C6M2_SafeRoomConvo14d foo:0 -3.757
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo14eSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo14e IsSheva
		Response DLC1_C6M2_SafeRoomConvo14eProducer
		then Gambler DLC1_C6M2_SafeRoomConvo14f foo:0 -0.987
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo15aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo15a IsSheva
		Response DLC1_C6M2_SafeRoomConvo15aProducer
		then Coach DLC1_C6M2_SafeRoomConvo15b foo:0 -3.064
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16Sheva",
		criteria ConceptC6M2SafeRoom2 IsSheva IsFrancisIntroActor IsNotSaidC6M2SafeRoom2
		Response DLC1_C6M2_SafeRoomConvo16Producer
		then Mechanic DLC1_C6M2_SafeRoomConvo17a foo:0 -10.043
		ApplyContext "SaidC6M2SafeRoom2:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo16a IsSheva
		Response DLC1_C6M2_SafeRoomConvo16aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo16b foo:0 -5.036
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo16cSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo16c IsSheva
		Response DLC1_C6M2_SafeRoomConvo16cProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo16d foo:0 -3.803
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo17bSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo17b IsSheva
		Response DLC1_C6M2_SafeRoomConvo17bProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo18a IsSheva
		Response DLC1_C6M2_SafeRoomConvo18aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo18b foo:0 -2.626
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo18dSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo18d IsSheva
		Response DLC1_C6M2_SafeRoomConvo18dProducer
		then Coach DLC1_C6M2_SafeRoomConvo18e foo:0 -1.428
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo19aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo19a IsSheva
		Response DLC1_C6M2_SafeRoomConvo19aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo20aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo20a IsSheva
		Response DLC1_C6M2_SafeRoomConvo20aProducer
	},

	{
		name = "DLC1_C6M2_SafeRoomConvo21aSheva",
		criteria ConceptDLC1_C6M2_SafeRoomConvo21a IsSheva
		Response DLC1_C6M2_SafeRoomConvo21aProducer
		then Mechanic DLC1_C6M2_SafeRoomConvo21b foo:0 -3.574
	},

	{
		name = "WorldC6M2_InSewer101aSheva",
		criteria ConceptWorldC6M2_InSewer101a IsSheva
		Response WorldC6M2_InSewer101aProducer
		then Sheva WorldC6M2_InSewer101b foo:0 -2.388
	},

	{
		name = "WorldC6M2_InSewer102bSheva",
		criteria ConceptWorldC6M2_InSewer102b IsSheva
		Response WorldC6M2_InSewer102bProducer
	},

	{
		name = "WorldC6M2_InSewer202aSheva",
		criteria ConceptWorldC6M2_InSewer202a IsSheva
		Response WorldC6M2_InSewer202aProducer
	},

	{
		name = "WorldC6M2_OnTourWalk101aSheva",
		criteria ConceptWorldC6M2_OnTourWalk101a IsSheva
		Response WorldC6M2_OnTourWalk101aProducer
		then Sheva WorldC6M2_OnTourWalk101b foo:0 -0.850
	},

	{
		name = "WorldC6M2_OnTourWalk101bSheva",
		criteria ConceptWorldC6M2_OnTourWalk101b IsSheva
		Response WorldC6M2_OnTourWalk101bProducer
	},

	{
		name = "WorldC6M2_OnTourWalk102bSheva",
		criteria ConceptWorldC6M2_OnTourWalk102b IsSheva
		Response WorldC6M2_OnTourWalk102bProducer
	},

	{
		name = "WorldC6M2_Phase201aSheva",
		criteria ConceptWorldC6M2_Phase201a IsSheva
		Response WorldC6M2_Phase201aProducer
	},

	{
		name = "WorldC6M2_Tattoo01a_Sheva",
		criteria ConceptWorldC6M2_Tattoo01a_ IsSheva
		Response WorldC6M2_Tattoo01a_Producer
		then Gambler WorldC6M2_Tattoo01b> foo:0 -2.084
	},

	{
		name = "WorldC6M2_Tattoo02a_Sheva",
		criteria ConceptWorldC6M2_Tattoo02a_ IsSheva
		Response WorldC6M2_Tattoo02a_Producer
		then Coach WorldC6M2_Tattoo02b> foo:0 -0.489
	},

	{
		name = "WorldC6M2_Tattoo02c_Sheva",
		criteria ConceptWorldC6M2_Tattoo02c_ IsSheva
		Response WorldC6M2_Tattoo02c_Producer
	},

	{
		name = "WorldC6M2_Tattoo02d_Sheva",
		criteria ConceptWorldC6M2_Tattoo02d_ IsSheva
		Response WorldC6M2_Tattoo02d_Producer
	},

	{
		name = "WorldC6M2_TourEntrance01aSheva",
		criteria ConceptWorldC6M2_TourEntrance01a IsSheva
		Response WorldC6M2_TourEntrance01aProducer
	},

	{
		name = "C6M3_BridgeDownSheva",
		criteria ConceptC6M3_BridgeDown IsSheva
		Response C6M3_BridgeDownProducer
		ApplyContext "SaidGetToCar:1:20"
		applycontexttoworld
	},

	{
		name = "C6M3_BridgeGettoCarSheva",
		criteria ConceptGetToVehicle IsSheva IsNotSaidGetToCar Isc6m3_port
		Response C6M3_BridgeGettoCarProducer
		ApplyContext "SaidGetToCar:1:20"
		applycontexttoworld
	},

	{
		name = "C6M3_elevatorSheva",
		criteria Conceptc6m3_elevatorCancel IsSheva IsNotSaidC6M3Elevator IsC6M3_port
		// 	forceweight 1
		Response C6M3_elevatorProducer
		ApplyContext "SaidC6M3Elevator:1:0,Talk:0:0"
		applycontexttoworld
	},

	{
		name = "C6M3_GivenItemBikerSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorBiker Isc6m3_portHeavy
		Response C6M3_GivenItemBikerProducer
	},

	{
		name = "C6M3_GivenItemTeenGirlSheva",
		criteria ConceptPlayerPickup IsSheva IsDonorTeenGirl Isc6m3_portHeavy
		Response C6M3_GivenItemTeenGirlProducer
	},

	{
		name = "C6M3SafeRoomSheva",
		criteria ConceptTalkIdle Joined3 IsSheva isC6m3_port IsInStartArea AutoIsNotScavenge AutoIsNotSurvival IsNotSaidC6M3SafeRoom IsNotSpeakingWeight0
		Response C6M3SafeRoomProducer
		then any C6M3SafeRoom2 foo:0 3
		ApplyContext "SaidC6M3SafeRoom:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01Sheva",
		criteria ConceptC6M3SafeRoom2 IsSheva IsNotSaidC6M3SafeRoom2 IsFrancisIntroActor FrancisGroup3 IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo01Producer
		then Mechanic DLC1_C6M3_SafeRoomConvo01a foo:0 -1.260
		ApplyContext "SaidC6M3SafeRoom2:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo01bSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo01b IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo01bProducer
		then Mechanic DLC1_C6M3_SafeRoomConvo01c foo:0 -0.926
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02a1Sheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo02a1 IsSheva
		Response DLC1_C6M3_SafeRoomConvo02a1Producer
		then Gambler DLC1_C6M3_SafeRoomConvo02b foo:0 -0.760
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo02cSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo02c IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo02cProducer
		then Gambler DLC1_C6M3_SafeRoomConvo02d foo:0 -1.258
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04bSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo04b IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo04bProducer
		then Gambler DLC1_C6M3_SafeRoomConvo04c foo:0 -2.568
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo04dSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo04d IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo04dProducer
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo05cSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo05c IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo05cProducer
		then Gambler DLC1_C6M3_SafeRoomConvo05d foo:0 -1.309
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo06aSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo06a IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo06aProducer
		then Mechanic DLC1_C6M3_SafeRoomConvo06b foo:0 -3.045
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07Sheva",
		criteria ConceptC6M3SafeRoom2 IsSheva IsNotSaidC6M3SafeRoom2 IsZoeyIntroActor IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo07Producer
		then Mechanic DLC1_C6M3_SafeRoomConvo07a foo:0 -3.413
		ApplyContext "SaidC6M3SafeRoom2:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo07bSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo07b IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo07bProducer
		then Mechanic DLC1_C6M3_SafeRoomConvo07c foo:0 -4.242
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo08gSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo08g IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo08gProducer
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo09Sheva",
		criteria ConceptC6M3SafeRoom2 IsSheva IsNotSaidC6M3SafeRoom2 IsZoeyIntroActor ZoeyGroup1 IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo09Producer
		then Mechanic DLC1_C6M3_SafeRoomConvo09a foo:0 -4.131
		ApplyContext "SaidC6M3SafeRoom2:1:0"
		applycontexttoworld
	},

	{
		name = "DLC1_C6M3_SafeRoomConvo09bSheva",
		criteria ConceptDLC1_C6M3_SafeRoomConvo09b IsSheva IsInStartArea
		Response DLC1_C6M3_SafeRoomConvo09bProducer
	},

	{
		name = "IncapBounceSheva",
		criteria ConceptSurvivorIncapacitated IsSheva IsNotSaidInCapBounce isC6m3_port
		Response IncapBounceProducer
		then Biker InCapBounce2 foo:0 0
		ApplyContext "SaidInCapBounce:1:0"
		applycontexttoworld
	},

	{
		name = "C6M3_CansDoneSheva",
		criteria Conceptc6m3escapeready IsSheva IsC6M3_Port IsNotSaidc6m3escapeready
		Response C6M3_CansDoneProducer
		then any EmphaticArriveRun foo:0 -1.498
		ApplyContext "Saidc6m3escapeready:1:0,Talk:1:5"
		applycontexttoworld
	},

	{
		name = "L4D1AlsoSpottedTankSheva",
		criteria ConceptPlayerAlsoWarnTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Isc6m3_port
		Response L4D1AlsoSpottedTankProducer
		ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		applycontexttoworld
	},

	{
		name = "L4D1SpottedTankSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeTank IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Isc6m3_port IsNotSpeakingWeight0
		Response L4D1SpottedTankProducer
		ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedFallenSheva",
		criteria ConceptPlayerWarnSpecial IsSpecialTypeFallen IsNotCoughing IsSheva IsTalk IsTalkSheva IsWorldTalkSheva IsNotSaidFallenWarn IsNotSpeakingWeight0
		Response SurvivorSpottedFallenProducer
		ApplyContext "SaidFallenWarn:1:20"
		applycontexttoworld
	},

	{
		name = "PlayerWitchChasingC6M1Sheva",
		criteria ConceptPlayerExertionMinor IsSheva IsWitchPresent SubjectIsNotWitch IsNotSaidShevaWitchChasing IsSaidShevaWitchAttacking isc6m1_riverbank
		// 	forceweight 20
		Response PlayerWitchChasingC6M1Producer
		ApplyContext "SaidShevaWitchChasing:1:15,TalkSheva:1:2"
	},

	{
		name = "PlayerRemarkremark_MidnightRidersBusSheva",
		criteria ConceptRemark IsSheva Isremark_MidnightRidersBus IsNotSaidremark_MidnightRidersBus IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear1500 IsNotSpeakingWeight0
		Response PlayerRemarkremark_MidnightRidersBusProducer
		ApplyContext "Saidremark_MidnightRidersBus:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_AcrossHereSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_AcrossHere IsNotSaidWorldC6M1_AcrossHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_AcrossHereProducer
		ApplyContext "SaidWorldC6M1_AcrossHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_AlleyBelow IsNotSaidWorldC6M1_AlleyBelow IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_AlleyBelowProducer
		ApplyContext "SaidWorldC6M1_AlleyBelow:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_AlleyIntoBuilding IsNotSaidWorldC6M1_AlleyIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_AlleyIntoBuildingProducer
		ApplyContext "SaidWorldC6M1_AlleyIntoBuilding:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_InAptsSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_InApts IsNotSaidWorldC6M1_InApts IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_InAptsProducer
		ApplyContext "SaidWorldC6M1_InApts:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_IntotheparkSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_Intothepark IsNotSaidWorldC6M1_Intothepark IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_IntotheparkProducer
		ApplyContext "SaidWorldC6M1_Intothepark:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoThePark2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_IntoThePark2 IsNotSaidWorldC6M1_IntoThePark2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_IntoThePark2Producer
		ApplyContext "SaidWorldC6M1_IntoThePark2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_IntoTheStore IsNotSaidWorldC6M1_IntoTheStore IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_IntoTheStoreProducer
		ApplyContext "SaidWorldC6M1_IntoTheStore:1:0,JustSaidWorldC6M1_IntoTheStore:1:30"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_PostWeddingSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_PostWedding IsNotSaidWorldC6M1_PostWedding IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_PostWeddingProducer
		ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleySheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_SafeRoomAlley IsNotSaidWorldC6M1_SafeRoomAlley IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear600 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_SafeRoomAlleyProducer
		ApplyContext "SaidWorldC6M1_SafeRoomAlley:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_ThroughBarSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_ThroughBar IsNotSaidWorldC6M1_ThroughBar IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_ThroughBarProducer
		ApplyContext "SaidWorldC6M1_ThroughBar:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_UpHereSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_UpHere IsNotSaidWorldC6M1_UpHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_UpHereProducer
		ApplyContext "SaidWorldC6M1_UpHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_UpTheStairs IsNotSaidWorldC6M1_UpTheStairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_UpTheStairsProducer
		ApplyContext "SaidWorldC6M1_UpTheStairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_UpTheStairs2 IsNotSaidWorldC6M1_UpTheStairs2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_UpTheStairs2Producer
		ApplyContext "SaidWorldC6M1_UpTheStairs2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_WeddingWarnProducer
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_WeddingWarn1 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_WeddingWarn1Producer
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_WeddingWarn2 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_WeddingWarn2Producer
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn3Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_WeddingWarn3 IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_WeddingWarn3Producer
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnAngelSheva",
		criteria ConceptRemark IsSheva IsWorldC6M1_WeddingWarn IsNotSaidWorldC6M1_WeddingWarn IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsMechanicNear800Weight0 IsZoeyIntroActor ZoeyGroup2 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M1_WeddingWarnAngelProducer
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_AcrossPlankSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_AcrossPlank IsNotSaidWorldC6M2_AcrossPlank IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear250 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_AcrossPlankProducer
		ApplyContext "SaidWorldC6M2_AcrossPlank:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_AfterGate1 IsNotSaidWorldC6M2_AfterGate1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_AfterGate1Producer
		ApplyContext "SaidWorldC6M2_AfterGate1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_AfterGate2 IsNotSaidWorldC6M2_AfterGate2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_AfterGate2Producer
		ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_DownHereSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_DownHere IsNotSaidWorldC6M2_DownHere IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_DownHereProducer
		ApplyContext "SaidWorldC6M2_DownHere:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_DownIntoBuilding IsNotSaidWorldC6M2_DownIntoBuilding IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear400 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_DownIntoBuildingProducer
		ApplyContext "SaidWorldC6M2_DownIntoBuilding:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalLadderSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_FinalLadder IsNotSaidWorldC6M2_FinalLadder IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_FinalLadderProducer
		ApplyContext "SaidWorldC6M2_FinalLadder:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_FinalWater IsNotSaidWorldC6M2_FinalWater IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_FinalWaterProducer
		ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_FinalWaterGoGo IsNotSaidWorldC6M2_FinalWaterGoGo IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_FinalWaterGoGoProducer
		ApplyContext "SaidWorldC6M2_FinalWaterGoGo:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_InJazzClubSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_InJazzClub IsNotSaidWorldC6M2_InJazzClub IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear1000 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_InJazzClubProducer
		ApplyContext "SaidWorldC6M2_InJazzClub:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_InSewer1 IsNotSaidWorldC6M2_InSewer1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_InSewer1Producer
		ApplyContext "SaidWorldC6M2_InSewer1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewer2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_InSewer2 IsNotSaidWorldC6M2_InSewer2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsSaidWorldC6M2_InSewer1 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_InSewer2Producer
		then Gambler WorldC6M2_InSewer201a foo:0 -2.052
		ApplyContext "SaidWorldC6M2_InSewer2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_InSewerLadder1 IsNotSaidWorldC6M2_InSewerLadder1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_InSewerLadder1Producer
		ApplyContext "SaidWorldC6M2_InSewerLadder1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_IntoConstruction IsNotSaidWorldC6M2_IntoConstruction IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_IntoConstructionProducer
		ApplyContext "SaidWorldC6M2_IntoConstruction:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_IntoPoolHall IsNotSaidWorldC6M2_IntoPoolHall IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_IntoPoolHallProducer
		ApplyContext "SaidWorldC6M2_IntoPoolHall:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_JukeBoxSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_JukeBox IsNotSaidWorldC6M2_JukeBox IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear150 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_JukeBoxProducer
		ApplyContext "SaidWorldC6M2_JukeBox:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_JumpDownSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_JumpDown IsNotSaidWorldC6M2_JumpDown IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_JumpDownProducer
		ApplyContext "SaidWorldC6M2_JumpDown:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_OnTourWalk1 IsNotSaidWorldC6M2_OnTourWalk1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_OnTourWalk1Producer
		ApplyContext "SaidWorldC6M2_OnTourWalk1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_OnTourWalk2 IsNotSaidWorldC6M2_OnTourWalk2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_OnTourWalk2Producer
		ApplyContext "SaidWorldC6M2_OnTourWalk2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk3Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_OnTourWalk3 IsNotSaidWorldC6M2_OnTourWalk3 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_OnTourWalk3Producer
		ApplyContext "SaidWorldC6M2_OnTourWalk3:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_OpenGate1 IsNotSaidWorldC6M2_OpenGate1 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSaidOpenedGate1 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_OpenGate1Producer
		ApplyContext "SaidWorldC6M2_OpenGate1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_Phase2 IsNotSaidWorldC6M2_Phase2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_Phase2Producer
		ApplyContext "SaidWorldC6M2_Phase2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_Phase2DownProducer
		ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_Phase2Down IsNotSaidWorldC6M2_Phase2Down IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IntensityOver75 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_Phase2DownIntenseProducer
		ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_PostGate1xSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_PostGate1 IsNotSaidWorldC6M2_PostGate1 IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsSaidOpenedGate1 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_PostGate1xProducer
		ApplyContext "SaidWorldC6M2_PostGate1:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_SafeRoomSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_SafeRoom IsNotSaidWorldC6M2_SafeRoom IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear800 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_SafeRoomProducer
		ApplyContext "SaidWorldC6M2_SafeRoom:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_SuitcaseSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_Suitcase IsNotSaidWorldC6M2_Suitcase IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear100 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_SuitcaseProducer
		ApplyContext "SaidWorldC6M2_Suitcase:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_TourEntranceSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_TourEntrance IsNotSaidWorldC6M2_TourEntrance IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_TourEntranceProducer
		then Sheva WorldC6M2_TourEntrance01a foo:0 -1.841
		ApplyContext "SaidWorldC6M2_TourEntrance:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_UpCatWalk IsNotSaidWorldC6M2_UpCatWalk IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_UpCatWalkProducer
		ApplyContext "SaidWorldC6M2_UpCatWalk:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairsSheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_UpStairs IsNotSaidWorldC6M2_UpStairs IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_UpStairsProducer
		ApplyContext "SaidWorldC6M2_UpStairs:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Sheva",
		criteria ConceptRemark IsSheva IsWorldC6M2_UpStairs2 IsNotSaidWorldC6M2_UpStairs2 IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear200 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M2_UpStairs2Producer
		ApplyContext "SaidWorldC6M2_UpStairs2:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M3_BridgeRunSheva",
		criteria ConceptRemark IsSheva IsWorldC6M3_BridgeRun IsNotSaidWorldC6M3_BridgeRun IsNotCoughing IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M3_BridgeRunProducer
		then Any WorldC6M3_ByBridge01 foo:0 -0.909
		ApplyContext "SaidWorldC6M3_BridgeRun:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldC6M3_ByBridgeSheva",
		criteria ConceptRemark IsSheva IsWorldC6M3_ByBridge IsNotSaidWorldC6M3_ByBridge IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear300 IsSaidFinalVehicleArrived IsNotSpeakingWeight0
		Response PlayerRemarkWorldC6M3_ByBridgeProducer
		ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		applycontexttoworld
	},

	{
		name = "PlayerRemarkWorldFootLockerSheva",
		criteria ConceptRemark IsSheva IsWorldFootLocker IsNotSaidWorldFootLocker IsNotCoughing NotInCombat IsTalk IsTalkSheva IsWorldTalkSheva IsSubjectNear500 IsNotSpeakingWeight0
		Response PlayerRemarkWorldFootLockerProducer
		ApplyContext "SaidWorldFootLocker:1:0"
		applycontexttoworld
	},

	{
		name = "C6M3_PourFinishedSheva",
		criteria ConceptPlayerPourFinished IsSheva IsTalk IsTalkSheva IsWorldTalkSheva Isc6m3_port ChanceToFire20Percent
		Response C6M3_PourFinishedProducer
		then Manager L4D1_NiceJobPour foo:0 0
		ApplyContext "Talk:1:3"
	},

	{
		name = "SurvivorNearFinaleC6M3Sheva",
		criteria ConceptPlayerNearFinale IsNotCoughing IsSheva IsNotSaidFinaleAhead NotInCombat IsTalk IsTalkSheva IsNotIncapacitated IsWorldTalkSheva Isc6m3_port
		Response SurvivorNearFinaleC6M3Producer
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},

	{
		name = "SurvivorPickupGolfCLubSheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpGolfClub IsNotSpeaking ShevaNotPickedUpItem IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorPickupGolfCLubProducer
		ApplyContext "ShevaPickedUpItem:1:30"
	},

	{
		name = "SurvivorPickupM60Sheva",
		criteria ConceptPlayerPickup IsNotCoughing IsSheva IsPickedUpM60 IsNotSpeaking ShevaNotPickedUpItem IsTalk IsTalkSheva IsWorldTalkSheva
		Response SurvivorPickupM60Producer
		ApplyContext "ShevaPickedUpItem:1:30"
	},

	{
		name = "HistoricTour02bSheva",
		criteria ConceptHistoricTour02b IsSheva
		Response HistoricTour02bProducer
	},

	{
		name = "WeddingWitchDead01Sheva",
		criteria ConceptWeddingWitchDead01 IsSheva
		Response WeddingWitchDead01Producer
	},

	{
		name = "WeddingWitchDead04Sheva",
		criteria ConceptWeddingWitchDead04 IsSheva
		Response WeddingWitchDead04Producer
	},

	{
		name = "Player_LostCallC6M3Sheva",
		criteria ConceptTalkIdle IsSheva IsClosestSurvivorFar3000 IsNotSaidPlayerLostCall Isc6m3_port ChanceToFire100Percent IsNotSpeakingWeight0
		Response Player_LostCallC6M3Producer
		ApplyContext "SaidPlayerLostCall:1:50"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGolfClubSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsGolfClub IsWorldTalkSheva IsNotSpeakingWeight0
		Response SurvivorSpottedGolfClubProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedGolfClubAutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsGolfClub IsWorldTalkSheva
		Response SurvivorSpottedGolfClubAutoProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedM60Sheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsSmartLookAuto IsNotInSafeSpot IsNotAlone IsNotSaidSpotWeapons IsNotSaidSpot IsM60 IsWorldTalkSheva IsNotSpeakingWeight0
		Response SurvivorSpottedM60Producer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "SurvivorSpottedM60AutoSheva",
		criteria ConceptPlayerSpotWeapon IsNotCoughing IsSheva IsTalk IsTalkSheva IsNotSmartLookAuto IsM60 IsWorldTalkSheva
		Response SurvivorSpottedM60AutoProducer
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},

	{
		name = "HitCraneButtonSheva",
		criteria ConceptAirport02CraneStarted PanicEventSheva
		Response HitCraneButtonProducer
		then Sheva airport02_creshendoCrane foo:0  .01
	},

	{
		name = "Airport03FireStartedSheva",
		criteria ConceptAirport03FireStarted PanicEventSheva
		Response Airport03FireStartedProducer
		then Sheva Airport03FireStartedX foo:0  .01
	},

	{
		name = "FinaleSceneTriggerFrancisSheva",
		criteria ConceptC6M3Stairs IsSheva IsNotSaidFinaleExchange Isc6m3_port IsFrancisIntroActor IsNotVersus
		Response FinaleSceneTriggerFrancisProducer
		ApplyContext "SaidFinaleExchange:1:0,Talk:1:28,SaidEllisBridgeStoryStart:1:60,EndEllisBridgeStoryStart:1:0"
		applycontexttoworld
	},

	{
		name = "FinaleSceneTriggerLouisSheva",
		criteria ConceptC6M3Stairs IsSheva IsNotSaidFinaleExchange Isc6m3_port IsZoeyIntroActor IsNotVersus
		Response FinaleSceneTriggerLouisProducer
		ApplyContext "SaidFinaleExchange:1:0,Talk:1:23,SaidEllisBridgeStoryStart:1:60,EndEllisBridgeStoryStart:1:0"
		applycontexttoworld
	},

];

rr_ProcessRules(sheva_alomar_rules);
