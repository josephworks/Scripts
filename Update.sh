echo starting
sudo apt-get update -y
echo updated
sudo apt-get upgrade -y
echo upgraded
sudo apt-get install -y
echo part 1 done
echo Enabling auto updates
echo setting up auto updates.
sudo auto-apt run sudo apt-get update -y
echo setting up auto updates..
sudo auto-apt run sudo apt-get upgrade -y
echo setting up auto updates...
sudo auto-apt run sudo apt-get install -y
echo COMPLETE!!!
