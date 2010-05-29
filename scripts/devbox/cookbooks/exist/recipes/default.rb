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

include_recipe 'java'

unless FileTest.exists?(node[:exist][:install_path])
  remote_file '/tmp/exist.jar' do
    source node[:exist][:install_file]
  end

  bash 'install-exist' do
    cwd '/tmp'
    code "java -jar exist.jar -p #{node[:exist][:install_path]}"
  end

  template "#{node[:exist][:install_path]}/bin/functions.d/eXist-settings.sh" do
    source 'eXist-settings.sh.erb'
    backup false
    mode 0755
    variables(
      :jetty_port => node[:exist][:jetty_port]
    )
  end
end
