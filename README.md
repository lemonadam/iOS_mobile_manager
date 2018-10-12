# iOS_mobile_manager

codebuild -project IesPush.xcodeproj -target IesPush -configuration Release -sdk iphoneos build -PROVIONING_PROFILE=$PROVISIONING_PROFILE -CODE_SIGN_IDENTITY="$CODE_SIGN_IDENTITY"

xcrun -sdk iphoneos PackageApplication -v $path/IesPush.app -o $WORKSPACE/IesPush/build/Release-iphoneos/IesPush.ipa
