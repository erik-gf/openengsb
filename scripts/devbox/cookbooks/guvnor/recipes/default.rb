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

include_recipe 'unzip'
include_recipe 'java'

unless FileTest.exists?(node[:guvnor][:install_path])
  remote_file '/tmp/guvnor.zip' do
    source node[:guvnor][:install_file]
  end

  bash 'unzip-guvnor' do
    code "cd /tmp; unzip /tmp/guvnor.zip; mv jboss-#{node[:guvnor][:jboss_version]} #{node[:guvnor][:install_path]}"
  end

  template "#{node[:guvnor][:install_path]}/server/default/deploy/jboss-web.deployer/server.xml" do
    source 'server.xml.erb'
    variables(
      :web_port => node[:guvnor][:web_port]
    )
  end

  template "#{node[:guvnor][:install_path]}/server/default/conf/jboss-service.xml" do
    source 'jboss-service.xml.erb'
    variables(
      :jmx_port => node[:guvnor][:jmx_port]
    )
  end

  template "#{node[:guvnor][:install_path]}/server/default/conf/jboss-minimal.xml" do
    source 'jboss-minimal.xml.erb'
    variables(
      :jmx_port => node[:guvnor][:jmx_port]
    )
  end

  template "#{node[:guvnor][:install_path]}/server/default/deploy/jms/uil2-service.xml" do
    source 'uil2-service.xml.erb'
    variables(
      :jms_port => node[:guvnor][:jms_port]
    )
  end
end
