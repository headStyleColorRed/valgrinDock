ZSHRCFILE=~/.zshrc
ALIAS="\n# ValgrinDock\nalias valgrindock='sh /Users/naranjito/.valgrindock/valgrindock.sh'"

# I N S T A L L   V A L G R I N D O C K
mkdir ~/.valgrinDock
cp -r . ~/.valgrinDock

# C R E A T E   A L I A S
if [ -f "$ZSHRCFILE" ]; then
	if ! grep  "valgrindock" $ZSHRCFILE; then
    	echo "alias was added, restart the terminal!"
    	echo "$ALIAS" >> ~/.zshrc
	fi
else
    echo "$FILE was created, restart the terminal!"
	echo "$ALIAS" >> ~/.zshrc
fi

# rm ~/.valgrinDock/installValgrindock.sh    uncomment
