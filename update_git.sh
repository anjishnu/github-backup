./sample_cmd.sh
CALLING_DIR=`pwd`
#DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
DIR=`dirname "$0"`
cd $DIR
./sample_cmd.sh
git add *
git commit -m "latest update"
git push origin master
cd $CALLING_DIR

#Remember to change your git to not require a username and password
#Do crontab -e and add this script
# 00, 11,23, * * * /path/to/this/script
# This will push to github twice a day (11 and 23) without doing any checks 
