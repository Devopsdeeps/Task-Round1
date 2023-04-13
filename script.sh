git clone https://github.com/Devopsdeeps/Task-round1
cd Task-round1/
# Identify the error in the script
set -e
# creating the multiple files using the touch command
touch file{1..10}.txt
# Use the for loop for printing welcome in all files created
echo "Enter your name"
read name
for FILE in *.txt
do
 echo "welcome $name" > $FILE
done
#read the variable from the user
echo "enter the value1"
read var1
echo "enter the value2"
read var2
#Use the if loop to compare the values
if [ $var1 == $var2 ]
then
  tar -zcvf file.tar.gz *.txt
  git init
  git add file.tar.gz
  git commit -m "Pushing the tar file to Git with name $name"
  git push origin master
else
  echo "Enter Branch Name"
  read branchName
  git checkout -b $branchName
  git add .
  git commit -m "Pushing the files to the git repo $name"
  git push origin $branchName
fi

echo "Should Remove folder [y/N]"
read deleteFolder
if [ $deleteFolder == 'y' ]
then 
 rm -rf Task-round1
else 
 echo "Ok, Did not remove the folder"
fi

# Note : For FILE( used to access the files) in *( all files in present directory) .txt( only txt file)
