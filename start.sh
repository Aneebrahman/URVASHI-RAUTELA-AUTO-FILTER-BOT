if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TGxLegion/Zoro-autofilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Zoro-autofilter
fi
cd /Zoro-autofilter
pip3 install -U -r requirements.txt
echo "Starting Zoro-autofilter🍁...."
python3 bot.py
