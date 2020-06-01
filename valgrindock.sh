MYPATH=~/.valgrinDock/
CONTAINER="server"

# Create Makefile
sh $MYPATH/autoMakefile.sh
mv Makefile $MYPATH/executables

# Copy files in current folder
cp -r . $MYPATH/executables

# Change directory to current folder
cd $MYPATH

# Create container
# docker-compose up --build -d ;
docker ps -q --filter "name=$CONTAINER" > temp.txt
CONTAINER_SEARCH=$(<temp.txt)
rm temp.txt
LENGTH=2

if [ ${#CONTAINER_SEARCH} -gt $LENGTH ]; then
	echo "is running"
else
	docker container inspect $CONTAINER  > temp.txt;
	CONTAINER_LENGTH=$(<temp.txt)
	rm temp.txt
	if [ ${#CONTAINER_LENGTH} -gt $LENGTH ]; then
		echo "run it up"
	else
		docker-compose up --build -d ;
	fi
fi
