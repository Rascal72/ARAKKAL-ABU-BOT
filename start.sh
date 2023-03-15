if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone Rascal72/ARAKKAL-ABU-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ARAKKAL-ABU-BOT
fi
cd /ARAKKAL-ABU-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
