# TO check the error in the scritpt
set -e
# Creating 10 folders & files
mkdir folder{1..10}
touch data_file{1..10}.txt
# creating 2 users
sudo useradd guviuser
sudo useradd zenuser 
echo "Have created with 2 users"
#change ownership for files & foljders
sudo chown guviuser data_file{1..5}.txt
sudo chown guviuser folder{1..5}
sudo chown zenuser  data_file{6..10}.txt
sudo chown zenuser  folder{6..10}
#change the premssion for files & folders
sudo chmod u=rwx,g=rwx,o=rwx data_file{1..5}.txt
sudo chmod u=rwx,g=rwx,o=rwx folder{1..5}
sudo chmod 400 data_file{6..10}.txt
sudo chmod 400 folder{6..10}
echo " Premssionsons and Owernship for files & folders have been changed"
