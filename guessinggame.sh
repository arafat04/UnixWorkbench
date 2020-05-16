#!/usr/bin/env bash
# File: guessinggame.sh

function game {
echo "Hello!!!!!!!!! Please guess the number of files in this DIRECTORY!!!!!!"
read NUM
word=$(ls -l $DIR | grep -c ^-)
dr=$(ls -l $DIR |grep -c ^d)
sym=$(ls -l $DIR | grep -c ^l)
fifo=$(ls -l $DIR | grep -c ^p)
soc=$(ls -l $DIR | grep -c ^s)
blo=$(ls -l $DIR | grep -c ^c)
char=$(ls -l $DIR | grep -c ^b)
((numfiles = word + dr + sym + fifo + soc + blo + char))
if [[ $NUM -gt $numfiles ]]
then
        while [[ $NUM -ne $numfiles ]]
        do
                echo "Soryy!!!!!!!! You entered MORE!!!!!!!!!"

                game
        done
elif [[ $NUM -lt $numfiles ]]
then
        while [[ $NUM -ne $numfiles ]]
        do
                echo "Come ON!!!!!! Increase your number!!!!!!!!"

                game
        done

else
        echo "Congratulations! You are legend at guessing! "
fi

}
game

