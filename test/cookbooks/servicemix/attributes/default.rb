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

default[:servicemix][:install_path]   = '/srv/servicemix'
default[:servicemix][:version]        = '4.2.0'
default[:servicemix][:install_file]   = "http://mirror.deri.at/apache/servicemix/servicemix-4/#{default[:servicemix][:version]}/apache-servicemix-#{default[:servicemix][:version]}.tar.gz"

