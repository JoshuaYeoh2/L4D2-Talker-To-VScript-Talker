// arcade ============================================================================================================================

function isYusuke(query) { return query.who == "Yusuke"; }
function isSara(query) { return query.who == "Sara"; }
function isHaruka(query) { return query.who == "Haruka"; }
function isBlake(query) { return query.who == "Blake"; }
function IsBlakeNear800Weight0(query) { return query.disttoblake < 800; }
function IsYusukeNear800Weight0(query) { return query.disttoyusuke < 800; }
function IsHarukaNear800Weight0(query) { return query.disttoharuka < 800; }
function IsNotSaidYusukeWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsNotSaidSaraWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsNotSaidHarukaWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsNotSaidBlakeWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidYusukeWitchAttacking(query) { return query.saidwitchattacking == 1; }
function IsSaidSaraWitchAttacking(query) { return query.saidwitchattacking == 1; }
function IsSaidHarukaWitchAttacking(query) { return query.saidwitchattacking == 1; }
function IsSaidBlakeWitchAttacking(query) { return query.saidwitchattacking == 1; }
function YusukeNotPickedUpItem(query) { return query.pickedupitem != 1; }
function SaraNotPickedUpItem(query) { return query.pickedupitem != 1; }
function HarukaNotPickedUpItem(query) { return query.pickedupitem != 1; }
function BlakeNotPickedUpItem(query) { return query.pickedupitem != 1; }

// mike ============================================================================================================================

function isMike(query) { return query.who == "Mike"; }
function IsSmalltownBarricadeMike(query) { return query.worldsmalltownbarricademike != 1; }
function ConceptC7M2CrowsFlySpeakMike(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakMike(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakMike(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakMike(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

// cliffe ============================================================================================================================

function isCliffe(query) { return query.who == "Cliffe"; }
function CliffeNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidCliffeWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidCliffeWitchAttacking(query) { return query.saidwitchattacking == 1; }

// replica ============================================================================================================================

function isReplica(query) { return query.who == "Replica"; }
function ReplicaNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidReplicaWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidReplicaWitchAttacking(query) { return query.saidwitchattacking == 1; }

// csgo sas============================================================================================================================

function isCsgo_sas(query) { return query.who == "CSGO_SAS"; }
function Csgo_sasNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidCsgo_sasWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidCsgo_sasWitchAttacking(query) { return query.saidwitchattacking == 1; }

// ada ============================================================================================================================

function isAda(query) { return query.who == "Ada"; }
function AdaNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidAdaWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidAdaWitchAttacking(query) { return query.saidwitchattacking == 1; }

// wesker ============================================================================================================================

function isWesker(query) { return query.who == "Wesker"; }
function WeskerNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidWeskerWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidWeskerWitchAttacking(query) { return query.saidwitchattacking == 1; }

// barry ============================================================================================================================

function isBarry(query) { return query.who == "Barry"; }
function IsNotBarry(query) { return query.who != "Barry"; }
function BarryNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidBarryWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidBarryWitchAttacking(query) { return query.saidwitchattacking == 1; }

function ConceptC7M3FinalSpeakBarry(query) { return query.concept == "C7M3FinalSpeakBarry"; } 
function ConceptPlayerSuggestHealthBarry(query) { return query.concept == "PlayerSuggestHealthBarry"; } 
function IsNotSaidBarrySuggestsCrane(query) { return query.worldsaidbarrysuggestscrane != 1; } 
function IsBarryNear500(query) { return query.disttobarry < 500; } 
function IsNotSaidLaughBarry(query) { return query.worldsaidlaughbarry != 1; } 

// chris ============================================================================================================================

function isChris(query) { return query.who == "Chris"; }
function ChrisNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidChrisWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidChrisWitchAttacking(query) { return query.saidwitchattacking == 1; }

function IsChrisNear800Weight0(query) { return query.disttochris < 800; }
function IsChrisInLoveC6M1(query) { return false; }
function ConceptC13M1Intro2Chris(query) { return false; }
function ConceptC3M4ButtonAnswerChris(query) { return false; }
function ConceptChrisInterrupt(query) { return false; }
function ConceptChrisStoryReac01(query) { return false; }
function Conceptc1m4escapeChrisCheckFail(query) { return false; }
function Conceptc1m4escapeChrisCheckSuccess(query) { return false; }
function IsChrisAlsoWarn(query) { return false; }
function IsSaidOpenedGate1BlameChris(query) { return false; }

// claire ============================================================================================================================

function isClaire(query) { return query.who == "Claire"; }
function IsSmalltownBarricadeClaire(query) { return query.worldsmalltownbarricadeclaire != 1; }
function ClaireGroup1(query) { return false; }
function ClaireGroup2(query) { return false; }
function ConceptC7M2CrowsFlySpeakClaire(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakClaire(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakClaire(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakClaire(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

// clementine ============================================================================================================================

function isClementine(query) { return query.who == "Clementine"; }
function IsNotClementine(query) { return query.who != "Clementine"; }
function ClementineNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidClementineWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidClementineWitchAttacking(query) { return query.saidwitchattacking == 1; }

function ConceptC7M3FinalSpeakClementine(query) { return query.concept == "C7M3FinalSpeakClementine"; } 
function ConceptPlayerSuggestHealthClementine(query) { return query.concept == "PlayerSuggestHealthClementine"; } 
function IsNotSaidClementineSuggestsCrane(query) { return query.worldsaidclementinesuggestscrane != 1; } 

// violet ============================================================================================================================

function ConceptVioletInterrupt(query) { return false; }
function ConceptVioletStoryReac01(query) { return false; }
function Conceptc1m4escapeVioletCheckFail(query) { return false; }
function Conceptc1m4escapeVioletCheckSuccess(query) { return false; }
function FromIsViolet(query) { return false; }
function IsDeadViolet(query) { return false; }
function IsDonorViolet(query) { return false; }
function IsNotSaidVioletPounced(query) { return false; }
function IsVioletAlive(query) { return false; }
function IsVioletAlsoWarn(query) { return false; }
function IsVioletFar400(query) { return false; }
function IsVioletInLoveC6M1(query) { return false; }
function IsVioletNear400(query) { return false; }
function IsVioletNear800(query) { return false; }
function IsVioletNear800Weight0(query) { return false; }
function IsVioletNotAlive(query) { return false; }
function SubjectIsNotViolet(query) { return false; }
function SubjectIsViolet(query) { return false; }

// james ============================================================================================================================

function FromIsJames(query) { return false; }
function IsDeadJames(query) { return false; }
function IsJamesAlive(query) { return false; }
function IsJamesFar400(query) { return false; }
function IsJamesNear400(query) { return false; }
function IsJamesNotAlive(query) { return false; }
function IsNotSaidJamesPounced(query) { return false; }
function SubjectIsJames(query) { return false; }
function SubjectIsNotJames(query) { return false; }

// louis ============================================================================================================================

function IsSaidC1M3ManagerFoodCourt(query) { return false; }
function ManagerMadAtRiders(query) { return false; }
function NotManagerMadAtRiders(query) { return false; }
function _auto_NotManagerFoodBreak(query) { return false; }

// dina ============================================================================================================================

function isDina(query) { return query.who == "Dina"; }
function IsNotDina(query) { return query.who != "Dina"; }
function IsSmalltownBarricadeDina(query) { return query.worldsmalltownbarricadedina != 1; }
function ConceptC7M2CrowsFlySpeakDina(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakDina(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakDina(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakDina(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

// ellie ============================================================================================================================

function isEllie(query) { return query.who == "Ellie"; }
function IsNotEllie(query) { return query.who != "Ellie"; }
function IsSmalltownBarricadeEllie(query) { return query.worldsmalltownbarricadeellie != 1; }
function ConceptC7M2CrowsFlySpeakEllie(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakEllie(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakEllie(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakEllie(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }
function EllieGroup1(query) { return false; }
function EllieGroup2(query) { return false; }

// joel ============================================================================================================================

function IsNotJoel(query) { return query.who != "Joel"; }

// holly ============================================================================================================================

function isHolly(query) { return query.who == "Holly"; }
function HollyNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidHollyWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidHollyWitchAttacking(query) { return query.saidwitchattacking == 1; }

// hunk ============================================================================================================================

function isHunk(query) { return query.who == "Hunk"; }
function IsSmalltownBarricadeHunk(query) { return query.worldsmalltownbarricadehunk != 1; }
function ConceptC7M2CrowsFlySpeakHunk(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakHunk(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakHunk(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakHunk(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

// jill ============================================================================================================================

function isJill(query) { return query.who == "Jill"; }
function JillNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidJillWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidJillWitchAttacking(query) { return query.saidwitchattacking == 1; }

// josh ============================================================================================================================

function isJosh(query) { return query.who == "Josh"; }
function IsNotJosh(query) { return query.who != "Josh"; }
function IsSmalltownBarricadeJosh(query) { return query.worldsmalltownbarricadejosh != 1; }
function ConceptC7M2CrowsFlySpeakJosh(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakJosh(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakJosh(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakJosh(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

// kenny ============================================================================================================================

function isKenny(query) { return query.who == "Kenny"; }
function IsNotKenny(query) { return query.who != "Kenny"; }
function IsSmalltownBarricadeKenny(query) { return query.worldsmalltownbarricadekenny != 1; }
function ConceptC7M2CrowsFlySpeakKenny(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakKenny(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakKenny(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakKenny(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

function KennyGroup1(query) { return false; }
function KennyGroup3(query) { return false; }
function KennyGroup5(query) { return false; }
function KennyGroup6(query) { return false; }
function KennyGroup7(query) { return false; }
function KennyGroup8(query) { return false; }

// lee ============================================================================================================================

function isLee(query) { return query.who == "Lee"; }
function IsSmalltownBarricadeLee(query) { return query.worldsmalltownbarricadelee != 1; }
function ConceptC7M2CrowsFlySpeakLee(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakLee(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakLee(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakLee(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

// chuck ============================================================================================================================

function ConceptC7M3FinalSpeakChuck(query) { return false; }
function ConceptPlayerSuggestHealthChuck(query) { return false; }
function FromIsChuck(query) { return false; }
function IsChuck(query) { return false; }
function IsChuckAlive(query) { return false; }
function IsChuckFar400(query) { return false; }
function IsChuckNear400(query) { return false; }
function IsDeadChuck(query) { return false; }
function IsDonorChuck(query) { return false; }
function IsNotChuck(query) { return false; }
function IsNotSaidChuckPounced(query) { return false; }
function IsNotSaidFaultFriendlyFireChuck(query) { return false; }
function NotChuckAlive(query) { return false; }
function SubjectIsChuck(query) { return false; }

// leon ============================================================================================================================

function isLeon(query) { return query.who == "Leon"; }
function LeonNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidLeonWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidLeonWitchAttacking(query) { return query.saidwitchattacking == 1; }

// rebecca ============================================================================================================================

function isRebecca(query) { return query.who == "Rebecca"; }
function IsSmalltownBarricadeRebecca(query) { return query.worldsmalltownbarricaderebecca != 1; }
function ConceptC7M2CrowsFlySpeakRebecca(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakRebecca(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakRebecca(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakRebecca(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

function RebeccaGroup1(query) { return false; }
function RebeccaGroup2(query) { return false; }

// excella ============================================================================================================================

function ConceptC7M3FinalSpeakExcella(query) { return false; }
function ConceptPlayerSuggestHealthExcella(query) { return false; }
function FromIsExcella(query) { return false; }
function IsDeadExcella(query) { return false; }
function IsDonorExcella(query) { return false; }
function IsExcella(query) { return false; }
function IsExcellaAlive(query) { return false; }
function IsExcellaFar400(query) { return false; }
function IsExcellaNear400(query) { return false; }
function IsNotExcella(query) { return false; }
function IsNotSaidExcellaPounced(query) { return false; }
function SubjectIsExcella(query) { return false; }

// rusty ============================================================================================================================

function isRusty(query) { return query.who == "Rusty"; }
function RustyNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidRustyWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidRustyWitchAttacking(query) { return query.saidwitchattacking == 1; }

// sheva ============================================================================================================================

function isSheva(query) { return query.who == "Sheva"; }
function ShevaNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidShevaWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidShevaWitchAttacking(query) { return query.saidwitchattacking == 1; }

// ethan ============================================================================================================================

function isEthan(query) { return query.who == "Ethan"; }
function EthanNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidEthanWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidEthanWitchAttacking(query) { return query.saidwitchattacking == 1; }

// robin ============================================================================================================================

function isRobin(query) { return query.who == "Robin"; }
function IsSmalltownBarricadeRobin(query) { return query.worldsmalltownbarricaderobin != 1; }
function ConceptC7M2CrowsFlySpeakRobin(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakRobin(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakRobin(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakRobin(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

// trevor ============================================================================================================================

function isTrevor(query) { return query.who == "Trevor"; }
function TrevorNotPickedUpItem(query) { return query.pickedupitem != 1; }
function IsNotSaidTrevorWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidTrevorWitchAttacking(query) { return query.saidwitchattacking == 1; }

// betazoey ============================================================================================================================

function isBetazoey(query) { return query.who == "BetaZoey"; }
function IsSmalltownBarricadeBetazoey(query) { return query.worldsmalltownbarricadebetazoey != 1; }
function ConceptC7M2CrowsFlySpeakBetazoey(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakBetazoey(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakBetazoey(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakBetazoey(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

function BetazoeyGroup1(query) { return false; }
function BetazoeyGroup2(query) { return false; }

// betazoeymrv ============================================================================================================================

function isBetazoeymrv(query) { return query.who == "BetaZoeyMRV"; }
function IsSmalltownBarricadeBetazoeymrv(query) { return query.worldsmalltownbarricadebetazoeymrv != 1; }
function ConceptC7M2CrowsFlySpeakBetazoeymrv(query) { return query.concept == "C7M2CrowsFlySpeak"; }
function ConceptC7M3BridgeLeapSpeakBetazoeymrv(query) { return query.concept == "C7M3BridgeLeapSpeak"; }
function ConceptC7M3GeneratorSpeakBetazoeymrv(query) { return query.concept == "C7M3GeneratorSpeak"; }
function Conceptc7m1opentankdoorspeakBetazoeymrv(query) { return query.concept == "C7M1OpenTankDoorSpeak"; }

function BetazoeymrvGroup1(query) { return false; }
function BetazoeymrvGroup2(query) { return false; }

// ============================================================================================================================



