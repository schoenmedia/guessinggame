all: README.md

README.md: guessinggame.sh
	echo '# Guessing Game' > README.md
	echo '## Coursera Peer-graded Assignment: Bash, Make, Git, and GitHub' >> README.md
	date >> README.md 
	printf 'Lines of code: ' >> README.md
	wc -l guessinggame.sh  | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md  
