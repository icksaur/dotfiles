HOUR=$(date +%H)
if [ $HOUR -lt 6 ]; then HEARTS=0;
elif [ $HOUR -lt 22 ]; then HEARTS=3;
elif [ $HOUR -lt 23 ]; then HEARTS=2;
elif [ $HOUR -lt 24 ]; then HEARTS=1;
fi
REDH=$'\033[91m\u2665\033[0m'
BLACKH=$'\033[30m\u2665\033[0m'
if [ $HEARTS = 0 ]; then echo $BLACKH $BLACKH $BLACKH;
elif [ $HEARTS = 1 ]; then echo $BLACKH $BLACKH $REDH;
elif [ $HEARTS = 2 ]; then echo $BLACKH $REDH $REDH;
else echo $REDH $REDH $REDH;
fi
