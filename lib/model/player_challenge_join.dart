import '../ladder_api.dart';
import '../model/player.dart';
import '../model/challenge.dart';

class PlayerChallengeJoin extends ManagedObject<_PlayerChallengeJoin> implements _PlayerChallengeJoin {}

class _PlayerChallengeJoin {
  @managedPrimaryKey
  int id;

  @ManagedRelationship(#playerChallenge, isRequired: false)
  Player player;

  @ManagedRelationship(#playerChallenge, isRequired: true)
  Challenge challenge;

  bool isChallenger;
  bool isDefender;
  bool isWinner;
  bool isLoser;
}