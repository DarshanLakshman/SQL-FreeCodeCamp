#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

chmod +x insert_data.sh

$PSQL "TRUNCATE TABLE games, teams;"

$PSQL "INSERT INTO teams(name) VALUES
('Algeria'),
('Argentina'),
('Belgium'),
('Brazil'),
('Chile'),
('Colombia'),
('Costa Rica'),
('Croatia'),
('Denmark'),
('England'),
('France'),
('Germany'),
('Greece'),
('Japan'),
('Mexico'),
('Netherlands'),
('Nigeria'),
('Portugal'),
('Russia'),
('Spain'),
('Sweden'),
('Switzerland'),
('United States'),
('Uruguay');"

while read line
do
  IFS="," read -r year round winner opponent winner_goals opponent_goals <<< "$line"
  if [[ $year == "year" ]]
  then
    continue
  fi

  opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent';")
  winner_id=$($PSQL "SELECT team_id FROM teams WHERE name = '$winner';")

    
  $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals);"

done < games.csv
