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

include_recipe 'servicemix'

bash 'deploy-openengsb' do
  cwd "#{node[:openengsb][:repo_path]}/org/openengsb"
  code <<-EOB
    mkdir -p #{node[:openengsb][:deploy_path]}
    find . -iname '*-#{node[:openengsb][:version]}-installer.zip' | grep -v package-embedded | xargs -I '{}' cp '{}' #{node[:openengsb][:deploy_path]}
    cp openengsb-package-all/#{node[:openengsb][:version]}/openengsb-package-all-#{node[:openengsb][:version]}.zip #{node[:openengsb][:deploy_path]}
    cp openengsb-features-edb-core/#{node[:openengsb][:version]}/openengsb-features-edb-core-#{node[:openengsb][:version]}-installer.zip #{node[:openengsb][:deploy_path]}
    cp ../../org/apache/servicemix/servicemix-shared/#{node[:openengsb][:smx_comp_version]}/servicemix-shared-#{node[:openengsb][:smx_comp_version]}-installer.zip #{node[:openengsb][:deploy_path]}
  EOB
end

