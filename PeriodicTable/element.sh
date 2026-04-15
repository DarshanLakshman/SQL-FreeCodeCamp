#!/bin/bash

chmod u+x element.sh

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"


id=$($PSQL "SELECT atomic_number FROM elements WHERE symbol = '$1' OR name = '$1' OR atomic_number::text = '$1'")

if [[ -z $1 ]]
then 
  echo "Please provide an element as an argument."
else
  if [[ -z $id ]]
  then
    echo "I could not find that element in the database."
  else
    symb=$($PSQL "SELECT symbol FROM elements WHERE atomic_number = $id")
    type=$($PSQL "SELECT types.type FROM properties INNER JOIN types USING(type_id) WHERE atomic_number = $id")
    atomic_mass=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number = $id")
    name=$($PSQL "SELECT name FROM elements WHERE atomic_number = $id")
    melting_pt=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number = $id")
    boiling_pt=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number = $id")

    echo "The element with atomic number $id is $name ($symb). It's a $type, with a mass of $atomic_mass amu. $name has a melting point of $melting_pt celsius and a boiling point of $boiling_pt celsius."
  fi
fi
