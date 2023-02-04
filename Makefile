make lldb_command:
	python3 set-file-path.py

test:
	xcodebuild \
	  -project constraint-error-ci-example.xcodeproj \
	  -scheme constraint-error-ci-example \
	  -sdk iphonesimulator \
	  -destination 'platform=iOS Simulator,name=iPhone 14' \
	  test
