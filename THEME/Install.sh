######## Install ########
cp -r ./themes/ ~/.config/falkon/
notify-send --icon=applications-internet --expire-time=0 --app-name="Internet" "
Preferences - Appearance | Themes
"


cp ./Page_Transparent_*.css ~/Falkon_Glass/
notify-send --icon=applications-internet --expire-time=0 --app-name="Internet" "
Preferences - Other | User Style Sheet
"


~/.local/bin/falkon


# notify-send --icon=falkon --expire-time=0 --app-name="Falkon Glass" "
# ReLaunch
# "
# Generate Default Config
#~/Falkon_Glass/Falkon_Glass.AppImage
# sed -i "/userStyleSheet=/c\userStyleSheet=/home/$USER/Falkon_Glass/Page_Transparent_White.css" ~/.config/falkon/profiles/default/settings.ini



