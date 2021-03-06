#
# Copyright 2010, OpenEngSB Division, Vienna University of Technology
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

maintainer       "OpenEngSB Division, Vienna University of Technology"
maintainer_email "openengsb-dev@googlegroups.com"
license          "Apache 2.0"
description      "Installs/Configures Drools 5.0 Guvnor"
version          "0.1"

%w{ debian ubuntu }.each do |os|
  supports os
end

%w{ java }.each do |d|
  depends d
end
