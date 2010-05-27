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

unless FileTest.exists?(node[:servicemix][:install_path])
  remote_file '/tmp/smx.tar.gz' do
    source node[:servicemix][:install_file]
  end

  bash 'install-smx' do
    cwd '/tmp'
    code <<-EOB
      tar xzf smx.tar.gz
      mv apache-servicemix-#{node[:servicemix][:version]} #{node[:servicemix][:install_path]}
      EOB
  end

  remote_file "#{node[:servicemix][:install_path]}/bin/servicemix" do
    source "servicemix"
    mode 0755
  end
end
