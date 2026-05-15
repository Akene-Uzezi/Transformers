set -e

echo "Staging Changes..."
git add .

read -p "Enter commit message: " message
echo "Commiting changes ..."
git commit -m "$message"

read -p "Do you want to push changes? (y/n)" choice

if [ "$choice" = "y" ];then
	echo "Pulling changes from remote..."
	git pull
	echo "Pushing changes..."
	git push
else
	echo "Changes commited but not pushed"
fi
