#!/bin/bash

cd "$(dirname "$0")"
source viper.conf

#module_name=$1
echo "Type your module name:"
read module_name
echo "Created at ~/Desktop/$module_name"

rm -rf ~/Desktop/$module_name"View"
cp -rf Module ~/Desktop/$module_name"View"

cd ~/Desktop/$module_name"View"

Files=("Interfaces.swift" "ViewController.swift" "Presenter.swift" "Interactor.swift" "Wireframe.swift" Entities.swift)
DATE=`date +'%m\/%d\/%Y'`

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
#sed -i -e 's/'"%appname%"'/'"$1"'/g' ./index.js
#sed -i -e 's/'"%project_name%"'/'"$1"'/g' ./package.json
#rm index.js-e
#rm package.json-e
