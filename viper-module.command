#!/bin/bash

cd "$(dirname "$0")"
source viper.conf

echo "Type your module name:"
read module_name

user_name=`id -F`

rm -rf ~/Desktop/$module_name"View"
cp -rf Module ~/Desktop/$module_name"View"

cd ~/Desktop/$module_name"View"

Files=("Protocols.swift" "ViewController.swift" "Presenter.swift" "Interactor.swift" "Wireframe.swift" "Entities.swift" "NetworkManager.swift")
DATE=`date +'%d\/%m\/%Y'`

for File in "${Files[@]}" 
    do
        mv 🤓$File $module_name"$File"
    done

for File in "${Files[@]}" 
    do
        sed -i '' -e 's/'"🤓"'/'"$module_name"'/g' ./$module_name"$File"
        sed -i '' -e 's/'"%name%"'/'"$user_name"'/g' ./$module_name"$File"
        sed -i '' -e 's/'"%copyright%"'/'"$user_copyright"'/g' ./$module_name"$File"
        sed -i '' -e 's/'"%appname%"'/'"$app_name"'/g' ./$module_name"$File"
        sed -i '' -e 's/'"%date%"'/'"$DATE"'/g' ./$module_name"$File"
    done

echo "Created at ~/Desktop/$module_name"
open ~/Desktop/$module_name"View"
osascript -e 'tell application "Terminal" to close first window' & exit