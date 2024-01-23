if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Jot43/Uniqueautofilter.git /Uniqueautofilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Uniqueautofilter
fi
cd /Uniqueautofilter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
