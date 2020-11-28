#!/bin/bash



echo "============================"
sleep 0.04
echo "=user Sosmed BY Wong Biasa ="
sleep 0.05
echo "============================"
sleep 0.09
echo
echo "@@@  @@@   @@@@@@   @@@@@@@@  @@@@@@@    @@@@@@    @@@@@@    @@@@@@  ::::    ::::+   @@@@@@@@  @@@@@@@ "
echo "@@@  @@@  @@@@@@@   @@@@@@@@  @@@@@@@@  @@@@@@@   @@@@@@@@  @@@@@@@  +:+:+: :+:+:+   @@@@@@@@  @@@@@@@@"
echo "@@!  @@@  !@@       @@!       @@!  @@@  !@@       @@!  @@@  !@@      +:+ +:+:+ +:+   @@!       @@!  @@@"
echo "!@!  @!@  !@!       !@!       !@!  @!@  !@!       !@!  @!@  !@!      +:+ +:+:+ +:+   !@!       !@!  @!@" 
echo "@!@  !@!  !!@@!!    @!!!:!    @!@!!@!   !!@@!!    @!@  !@!  !!@@!!   +#+  +:+  +#+   @!!!:!    @!@  !@!"
echo "!@!  !!!   !!@!!!   !!!!!:    !!@!@!     !!@!!!   !@!  !!!   !!@!!! +#+       +#+   !!!!!:    !@!  !!!"
echo "!!:  !!!       !:!  !!:       !!: :!!        !:!  !!:  !!!       !:! #+#       #+#   !!:       !!:  !!!" 
echo ":!:  !:!      !:!   :!:       :!:  !:!      !:!   :!:  !:!      !:!  #+#       #+#   :!:       :!:  !:!" 
echo "::::: ::  :::: ::    :: ::::  ::   :::  :::: ::   ::::: ::  :::: ::  #+#       #+#   :: ::::   :::: ::"
echo " : :  :   :: : :    : :: ::    :   : :  :: : :     : :  :   :: : :   ###       ###   :::::::   :::::::"
echo
print 0.06
echo "subscribe youtubme https://youtube.com/c/Catatannewbie"
sleep 0.08
echo "MASUKKAN NAMA YANG INGIN KAMU CARI:"
echo 0.07
read username
echo "nama : $username"
if [[ -e $username.txt ]]; then
rm -rf $user.txt
fi
#instagram
check_insta=$(curl -s -H "Accept-Language: en" "https://www.instagram.com/$username" -L | grep -o 'The link you followed may be broken'; echo $?)
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Instagram: \e[0m"

if [[ $check_insta == *'1'* ]]; then
printf "\e[1;92m Ada cok/Found!\e[0m https://www.instagram.com/%s\n" $username
printf "https://www.instagram.com/%s\n" $username > $username.txt
elif [[ $check_insta == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi
#facebook
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Facebook: \e[0m"
check_face=$(curl -s "https://www.facebook.com/$username" -L -H "Accept-Language: en" | grep -o 'not found'; echo $?)


if [[ $check_face == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.facebook.com/%s\n" $username
printf "https://www.facebook.com/%s\n" $username >> $username.txt
elif [[ $check_face == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi
#Twiter
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Twitter: \e[0m"
check_twitter=$(curl -s "https://www.twitter.com/$username" -L -H "Accept-Language: en" | grep -o 'page doesn’t exist'; echo $?)


if [[ $check_twitter == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.twitter.com/%s\n" $username
printf "https://www.twitter.com/%s\n" $username >> $username.txt
elif [[ $check_twitter == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi
#youtube
printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] YouTube: \e[0m"
check_youtube=$(curl -s "https://www.youtube.com/$username" -L -H "Accept-Language: en" | grep -o 'Not Found'; echo $?)


if [[ $check_youtube == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://www.youtube.com/%s\n" $username
printf "https://www.youtube.com/%s\n" $username >> $username.txt
elif [[ $check_youtube == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi

## BLOGGER

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Blogger: \e[0m"
check=$(curl -s "https://$username.blogspot.com" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404'; echo $?)


if [[ $check == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://%s.blogspot.com\n" $username
printf "https://%s.blogspot.com\n" $username >> $username.txt
elif [[ $check == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi

## GLOOGLE PLUS

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] GooglePlus: \e[0m"
check=$(curl -s "https://plus.google.com/+$username/posts" -L -H "Accept-Language: en" -i | grep -o 'HTTP/2 404' ; echo $?)


if [[ $check == *'1'* ]]; then
printf "\e[1;92m Found!\e[0m https://plus.google.com/+%s/posts\n" $username
printf "https://plus.google.com/+%s/posts\n" $username >> $username
elif [[ $check == *'0'* ]]; then
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
fi

## REDDIT

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Reddit: \e[0m"
check1=$(curl -s -i "https://www.reddit.com/user/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | head -n1 | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.reddit.com/user/%s\n" $username
printf "https://www.reddit.com/user/%s\n" $username >> $username.txt
fi

## WORDPRESS

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Wordpress: \e[0m"
check1=$(curl -s -i "https://$username.wordpress.com" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o 'Do you want to register' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://%s.wordpress.com\n" $username
printf "https://%s.wordpress.com\n" $username >> $username.txt
fi

## PINTEREST

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Pinterest: \e[0m"
check1=$(curl -s -i "https://www.pinterest.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '?show_error' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.pinterest.com/%s\n" $username
printf "https://www.pinterest.com/%s\n" $username >> $username.txt
fi

## GITHUB

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] Github: \e[0m"
check1=$(curl -s -i "https://www.github.com/$username" -H "Accept-Language: en" -L --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' | grep -o '404 Not Found' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Found!\e[0m https://www.github.com/%s\n" $username
printf "https://www.github.com/%s\n" $username >> $username.txt
fi

## VK

printf "\e[1;77m[\e[0m\e[1;92m+\e[0m\e[1;77m] VK: \e[0m"
check1=$(curl -s -i "https://vk.com/$username" -H "Accept-Language: en" -L | grep -o 'HTTP/2 404' ; echo $?)

if [[ $check1 == *'0'* ]] ; then 
printf "\e[1;93mTidak Ada/Not Found!\e[0m\n"
elif [[ $check1 == *'1'* ]]; then 

printf "\e[1;92m Ada COK!\e[0m https://vk.com/%s\n" $username
printf "https://vk.com/%s\n" $username >> $username.txt
fi
echo "================================"
sleep 1
echo "Tool ini tidak 100% work        "
echo "ini hanyalah tool gabut         "
sleep 1
echo "salam dari saya Wong biasa  :)     "
echo "tool ini hanya untuk akun sosmed yang dibutuhkan"
echo "================================"
