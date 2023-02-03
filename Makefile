lldbinit:
	cp .lldbinit-Xcode ~

test:
	xcodebuild \
	  -project constraint-error-ci-example.xcodeproj \
	  -scheme constraint-error-ci-example \
	  -sdk iphonesimulator \
	  -destination 'platform=iOS Simulator,name=iPhone 14' \
	  test
