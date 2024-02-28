#!/bin/bash -l
if [ "$platform" = "Android" ]; then
  /Applications/Unity/Hub/Editor/2019.4.36f1/Unity.app/Contents/MacOS/Unity -quit -batchmode -logFile - -projectPath $WORKSPACE -executeMethod GenerateBuild.GenerateLibraries $platform  /Users/devops/unityresults/
  cd /Users/devops/unityresults/Libraries/Android/unityLibrary/src/main/java/com/unity3d/player
  files=("UnityBaseClass.java" "DataReceiverForUnityGames.Java")
  source_dir="/Users/devops"
  for file in "${files[@]}"; do
    if [ ! -f "$file" ]; then
        echo "Copying $file to current location..."
        cp "$source_dir/$file" .
    fi
  done
  cfname="$compressed_file_name"_"$platform"
  cd /Users/devops/unityresults/Libraries/Android/
  #tar -cvzf "$cfname".tgz unityLibrary
  zip -r "$cfname" unityLibrary
  wait $!
  cd /Users/devops/unityresults/Libraries/Android/
  /usr/local/bin/aws s3 cp "$cfname".zip s3://$bucket_path --profile $env
  object_url="https://$bucket_path$cfname.zip"
  echo "OBJECT-URL >>>> $object_url"
elif [ "$platform" = "IOS" ]; then
  /Applications/Unity/Hub/Editor/2019.4.36f1/Unity.app/Contents/MacOS/Unity -quit -batchmode -logFile - -projectPath $WORKSPACE -executeMethod GenerateBuild.GenerateLibraries $platform  /Users/devops/unityresults/
  #cd /Users/devops/unityresults/Libraries/
  cfname="$compressed_file_name"_"$platform"
  cd /Users/devops/unityresults/Libraries/
  #tar -cvzf "$cfname".tgz unityLibrary
  zip -r "$cfname" IOS
  wait $!
  cd /Users/devops/unityresults/Libraries/
  /usr/local/bin/aws s3 cp "$cfname".zip s3://$bucket_path --profile $env
  object_url="https://$bucket_path$cfname.zip"
  echo "OBJECT-URL >>>> $object_url"
fi
  
  
  
  
  

