## Install utilities
package 'wget'
package 'openssh-server'
package 'vim'
package 'silversearcher-ag'
package 'git'
package 'curl'
package 'libjpeg-dev'

execute 'update_packages' do
  command 'apt-get update'
end

## Install pip3, pip and pexpect

package 'python3-pip'
package 'python-pip'

execute 'pip_install_pexpect' do
  command 'pip install pexpect'
end

## Install Django

execute 'install_Django' do
  command 'pip3 install Django'
end

## Install Django Rest
execute 'install_djangorestframework' do
  command 'pip3 install djangorestframework'
end

## Markdown support for the browsable API
execute 'install_markdown' do
  command 'pip3 install markdown'
end

## Filtering support
execute 'install_django-filter' do
  command 'pip3 install django-filter'
end

# execute 'clone backend repository' do
#   command 'git clone https://github.com/fga-gpp-mds/2017.1-PlataformaJogosUnB.git'
#   cwd 'home/vagrant'
#   ignore_failure true
# end
#
# execute "change project's owner" do
#   command 'chown -R vagrant:vagrant 2017.1-PlataformaJogosUnB'
#   cwd 'home/vagrant'
# end
