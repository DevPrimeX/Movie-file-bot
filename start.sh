if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Lucifer86790/Movie-file-bot.git /Movie-file-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-file-bot
fi
cd /Movie-file-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
