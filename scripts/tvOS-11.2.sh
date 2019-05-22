#!/bin/sh
# Any arguments passed are passed to xcodebuild

set -o pipefail && \
  xcodebuild clean build test \
  -project BonMot.xcodeproj \
  -scheme BonMot-tvOS \
  -sdk appletvsimulator \
  -destination "platform=tvOS Simulator,name=Apple TV,OS=11.2" \
  CODE_SIGNING_REQUIRED=NO \
  CODE_SIGN_IDENTITY= $@\
  | bundle exec xcpretty
