# For iOS devices
xcodebuild archive -scheme IGListKit \
  -destination 'generic/platform=iOS' \
  -archivePath './build/IGListKit.framework-iphoneos.xcarchive' \
  SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# For iOS Simulator
xcodebuild archive -scheme IGListKit \
  -destination 'generic/platform=iOS Simulator' \
  -archivePath './build/IGListKit.framework-iphonesimulator.xcarchive' \
  SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
  -framework './build/IGListKit.framework-iphoneos.xcarchive/Products/Library/Frameworks/IGListKit.framework' \
  -framework './build/IGListKit.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/IGListKit.framework' \
  -output './build/IGListKit.xcframework'
