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
function IsNotSaidCliffeWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidCliffeWitchAttacking(query) { return query.saidwitchattacking == 1; }
function CliffeNotPickedUpItem(query) { return query.pickedupitem != 1; }

// replica ============================================================================================================================

function IsNotSaidReplicaWitchChasing(query) { return query.saidwitchchasing != 1; }
function IsSaidReplicaWitchAttacking(query) { return query.saidwitchattacking == 1; }
function ReplicaNotPickedUpItem(query) { return query.pickedupitem != 1; }
function isReplica(query) { return query.who == "Replica"; }


// ============================================================================================================================
