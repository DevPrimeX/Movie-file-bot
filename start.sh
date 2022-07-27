if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ps705112/potter-by-me.git /potter-by-me
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /potter-by-me
fi
cd /potter-by-me
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
