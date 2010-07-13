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

default[:guvnor][:install_path]  = '/srv/guvnor'
default[:guvnor][:major_version] = '5.0'
default[:guvnor][:full_version]  = '5.0.1.26597.FINAL'
default[:guvnor][:jboss_version] = '4.2.3.GA'
default[:guvnor][:install_file]  = "http://download.jboss.org/drools/release/#{default[:guvnor][:full_version]}/drools-#{default[:guvnor][:major_version]}-guvnor-standalone.zip"
default[:guvnor][:web_port]      = '8081'
default[:guvnor][:jmx_port]      = '10099'
default[:guvnor][:jms_port]      = '8094'
