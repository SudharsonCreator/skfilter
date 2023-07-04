if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SudharsonCreator/skfilter.git /skfilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /skfilter
fi
cd /skfilter
pip3 install -U -r requirements.txt
echo "Starting skfilter...."
python3 bot.py
