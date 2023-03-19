#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

GUESS_EVENT() {
  echo -e $1
  read GUESS_NUMBER
}

GUESS_GAME() {
  RANDOM_NUMBER=$[$RANDOM % 1000 + 1 ]
  NUMBER_GUESSES=1
  GUESS_EVENT "Guess the secret number between 1 and 1000:"

  while [[ $GUESS_NUMBER != $RANDOM_NUMBER ]]
  do
    if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
    then
      GUESS_EVENT "That is not an integer, guess again:"
    else
      if [[ $GUESS_NUMBER > $RANDOM_NUMBER ]]
      then 
        GUESS_EVENT "It's lower than that, guess again:"
      else
        GUESS_EVENT "It's higher than that, guess again:"
      fi
      ((++NUMBER_GUESSES))
    fi
  done

  echo -e "You guessed it in $NUMBER_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"
  USER_ID=$($PSQL "SELECT user_id FROM game_user WHERE username = '$USERNAME'")
  ADD_GAME_STATS=$($PSQL "INSERT INTO games(user_id, date_time, number_guesses) VALUES($USER_ID, NOW(), $NUMBER_GUESSES)")
}

MAIN_MENU(){
  echo -e "Enter your username:"
  read USERNAME

  USER_ID=$($PSQL "SELECT user_id FROM game_user WHERE username = '$USERNAME'")
  if [[ -z $USER_ID ]]
  then 
    echo -e "Welcome, $USERNAME! It looks like this is your first time here."
    ADD_USER=$($PSQL "INSERT INTO game_user(username) VALUES('$USERNAME')")
    echo -e "$ADD_USER"
  else
    # get games played
    GAMES_PLAYED=$(($($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")))
    # get best game result
    BEST_GAME=$(($($PSQL "SELECT MIN(number_guesses) FROM games WHERE user_id = $USER_ID")))
    # show message with username, games_played and best number_guesses
    echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi

  GUESS_GAME
}

MAIN_MENU
