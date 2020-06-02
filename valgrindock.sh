MYPATH=~/.valgrinDock/
CONTAINER="server"
USER_PATH=$(pwd)


# Create Makefile
mkdir $MYPATH/executables/
sh $MYPATH/autoMakefile.sh
mv Makefile $MYPATH/executables


# Copy files in current folder
cp -r . $MYPATH/executables


# Change directory to current folder
cd $MYPATH


# Start container
docker ps -q --filter "name=$CONTAINER" > temp.txt
CONTAINER_SEARCH=$(<temp.txt)
rm temp.txt
LENGTH=2

if ! [ ${#CONTAINER_SEARCH} -gt $LENGTH ]; then
	docker ps -a | grep -w server | awk '{print $1;}'  > temp.txt;
	CONTAINER_LENGTH=$(<temp.txt)
	rm temp.txt
	if [ ${#CONTAINER_LENGTH} -gt $LENGTH ]; then
		docker start $CONTAINER_LENGTH
	else
		docker-compose up --build -d ;
	fi
fi 


# Copy files to container
docker cp $MYPATH/executables/. $CONTAINER:/app/executables
rm -rf $MYPATH/executables/

# Compile and debug :)
read -p "Press enter to compile"
curl  http://localhost:8050/compile