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

default[:exist][:install_path]   = '/srv/exist'
default[:exist][:major_version]  = '1.4'
default[:exist][:full_version]   = '1.4.0-rev10440'
default[:exist][:install_file]   = "http://sourceforge.net/projects/exist/files/Stable/#{default[:exist][:major_version]}/eXist-setup-#{default[:exist][:full_version]}.jar/download"
default[:exist][:jetty_port]     = '8093'
