#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

backgroundToUse="file:///$DIR/images/06-Late-Afternoon.png"

background01="file:///$DIR/images/01-Early-Morning.png"
background02="file:///$DIR/images/02-Mid-Morning.png"
background03="file:///$DIR/images/03-Late-Morning.png"
background04="file:///$DIR/images/04-Early-Afternoon.png"
background05="file:///$DIR/images/05-Mid-Afternoon.png"
background06="file:///$DIR/images/06-Late-Afternoon.png"
background07="file:///$DIR/images/07-Early-Evening.png"
background08="file:///$DIR/images/08-Mid-Evening.png"
background09="file:///$DIR/images/09-Late-Evening.png"
background10="file:///$DIR/images/10-Early-Night.png"
background11="file:///$DIR/images/11-Mid-Night.png"
background12="file:///$DIR/images/12-Late-Night.png"

month=`date +"%m"`
hour=`date +"%H"`

summer() {

	case "$hour" in
		05|06 )
			backgroundToUse="$background01"
		;;
		07|08 )
			backgroundToUse="$background02"
		;;
		09|10 )
			backgroundToUse="$background03"
		;;
		11|12 )
			backgroundToUse="$background04"
		;;
		13|14 )
			backgroundToUse="$background05"
		;;
		15|16 )
			backgroundToUse="$background06"
		;;
		17|18 )
			backgroundToUse="$background07"
		;;
		19|20 )
			backgroundToUse="$background08"
		;;
		21|22 )
			backgroundToUse="$background09"
		;;
		23|00 )
			backgroundToUse="$background10"
		;;
		01|02 )
			backgroundToUse="$background11"
		;;
		03|04 )
			backgroundToUse="$background12"
		;;
	esac

}

winter() {

	case "$hour" in
		05|06 )
			backgroundToUse="$background01"
		;;
		07|08 )
			backgroundToUse="$background02"
		;;
		09|10 )
			backgroundToUse="$background03"
		;;
		11 )
			backgroundToUse="$background04"
		;;
		12 )
			backgroundToUse="$background05"
		;;
		13 )
			backgroundToUse="$background06"
		;;
		14 )
			backgroundToUse="$background07"
		;;
		15 )
			backgroundToUse="$background08"
		;;
		16 )
			backgroundToUse="$background09"
		;;
		17|18|19|20 )
			backgroundToUse="$background10"
		;;
		21|22|23|00 )
			backgroundToUse="$background11"
		;;
		01|02|03|04 )
			backgroundToUse="$background12"
		;;
	esac

}

case "$month" in

	0[1-3]|1[0-2] )
		winter
	;;

	0[4-9] )
		summer
	;;

esac

DISPLAY=:0 gsettings set org.cinnamon.desktop.background picture-uri "$backgroundToUse"
