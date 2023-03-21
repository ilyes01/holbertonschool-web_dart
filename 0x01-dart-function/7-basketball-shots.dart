int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAPoints = 0;
  int teamBPoints = 0;

  teamAPoints += teamA['Free throws'] ?? 0;
  teamAPoints += (teamA['2 pointer'] ?? 0) * 2;
  teamAPoints += (teamA['3 pointer'] ?? 0) * 3;

  teamBPoints += teamB['Free throws'] ?? 0;
  teamBPoints += (teamB['2 pointer'] ?? 0) * 2;
  teamBPoints += (teamB['3 pointer'] ?? 0) * 3;

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}

