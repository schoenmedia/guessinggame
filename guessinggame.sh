# files in current directory
countFilesInCurrentDir(){
     ls -1 | wc -l
}

# advice guess was to high 
guessToHigh(){
    echo 'Too high! Try again:'
    read guess
}

# advice guess was to low
guessToLow(){
    echo 'Too low! Try again:'
    read guess    
}

# correct answer congrat and exit
congratToUser(){
    echo Congratulation!! Your guess was right! Bye!
    exit 0
}

# program logic starts
echo Hello, $USER. This is a guessing game! How many files are in the current directory?
read guess

num_files=$(countFilesInCurrentDir $1)

while [ $num_files != $guess ]
    do
        if [ $guess -gt $num_files ]
            then
                guessToHigh
        else
                guessToLow
        fi
done

if [ $num_files -eq $guess ]
    then
        congratToUser 
fi 
