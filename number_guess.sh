#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

MAIN_MENU() {
	echo "Enter your username:"
	read USERNAME

	USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
	if [[ -z $USER_ID ]]
	then
		echo Welcome, $USERNAME! It looks like this is your first time here.
		INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
		USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
	else
		GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id=$USER_ID")
		MIN_TIME_GUESS=$($PSQL "SELECT MIN(times_guess) FROM games WHERE user_id='$USER_ID'")
		echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $MIN_TIME_GUESS guesses."
	fi
		
	echo "Guess the secret number between 1 and 1000:"
	NUMBER_TO_BE_GUESS=$(( (RANDOM % 1001) ))

	read NUMBER
	while [[ ! $NUMBER =~ ^[0-9]+$ ]]
	do
    echo "That is not an integer, guess again:"
		read NUMBER
	done

  TIMES_GUESS=1
	until [[ $NUMBER -eq $NUMBER_TO_BE_GUESS ]]
	do
	  TIMES_GUESS=$(( $TIMES_GUESS + 1 ))
	  if [[ $NUMBER -gt $NUMBER_TO_BE_GUESS ]]
	  then
	  	echo "It's higher than that, guess again:"
	  else
	  	echo "It's lower than that, guess again:"
	  fi

    read NUMBER
    while [[ ! $NUMBER =~ ^[0-9]+$ ]]
    do
      echo "That is not an integer, guess again:"
      read NUMBER
    done
	done

	echo "You guessed it in $TIMES_GUESS tries. The secret number was $NUMBER_TO_BE_GUESS. Nice job!"
	INSERT_NUMBER_RESULT=$($PSQL "INSERT INTO games(number_guess,times_guess,user_id) VALUES($NUMBER_TO_BE_GUESS,$TIMES_GUESS,$USER_ID)")
}

MAIN_MENU