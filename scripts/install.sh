#!/bin/bash

###
# File     : install.sh
# License  :
#   Copyright (c) 2016 Citadel Technology Solutions Pte Ltd
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
###

echo $JAVA_HOME
./gradlew clean
./gradlew assemble \
  -Dorg.gradle.java.home=$JAVA_HOME \
  -Dorg.gradle.jvmargs=-Xmx2048m -XX:MaxPermSize=512m -XX:+HeapDumpOnOutOfMemoryError \
  --info