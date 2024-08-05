#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# generate random secret number between 1 and 1000
  SECRET_NUMBER=$((1 + RANDOM % 1000))
  # ask for username
  echo -e "\nEnter your username:\n"
  read USERNAME
USER_ID=$($PSQL "SELECT user_id FROM leaderboards WHERE username = '$USERNAME'")
  # if there is not the username in the database
  if [[ -z $USER_ID ]]
  then
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER_RESULT=$($PSQL "INSERT INTO leaderboards(username) VALUES ('$USERNAME')")
  else
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM leaderboards WHERE user_id = $USER_ID")
    BEST_GAME=$($PSQL "SELECT best_game FROM leaderboards WHERE user_id = $USER_ID")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi

PLAY() {


  if [[ ! $NUMBER_GUESSED =~ ^[0-9]+$ ]]
then
  echo -e "\nThat is not an integer, guess again:\n"
  read NUMBER_GUESSED
  PLAY
else
  # if number guessed > secret number
  if [[ $NUMBER_GUESSED -gt $SECRET_NUMBER ]]
  then
    # increment number of guesses
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))
    echo "It's lower than that, guess again:"
    read NUMBER_GUESSED
    PLAY
  # if number guessed < secret number
  elif [[ $NUMBER_GUESSED -lt $SECRET_NUMBER ]]
  then
    # increment number of guesses
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))
    echo "It's higher than that, guess again:"
    read NUMBER_GUESSED
    PLAY
  # if number guessed = secret number
  elif [[ $NUMBER_GUESSED -eq $SECRET_NUMBER ]]
  then
    # increment number of guesses
    NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))
    # increment number of games played
    GAMES_PLAYED=$((GAMES_PLAYED + 1))
    # insert games played in leaderboards
    INSERT_GAMES_PLAYED_RESULT=$($PSQL "UPDATE leaderboards SET games_played = $GAMES_PLAYED WHERE username = '$USERNAME'")
    # if this is your first game and there is no best game yet
    if [[ -z $BEST_GAME ]]
    then
      BEST_GAME=$NUMBER_OF_GUESSES
      INSERT_BEST_GAME_RESULT=$($PSQL "UPDATE leaderboards SET best_game = $BEST_GAME WHERE username = '$USERNAME'")
    # if there is already a best game for this username
    elif [[ $NUMBER_OF_GUESSES < $BEST_GAME ]]
    then
      BEST_GAME=$NUMBER_OF_GUESSES
      INSERT_BEST_GAME_RESULT=$($PSQL "UPDATE leaderboards SET best_game = $BEST_GAME WHERE username = '$USERNAME'")
    fi
    echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!\n"
    break
  fi
fi
}
# ask user to input a guess number 
echo -e "\nGuess the secret number between 1 and 1000:\n"
read NUMBER_GUESSED
PLAY