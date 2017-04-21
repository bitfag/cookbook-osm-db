include_recipe "postgresql::server"
include_recipe "postgresql::config_pgtune"


include_recipe "database::postgresql"
include_recipe "postgis"

postgresql_connection_info = {
    :host     => '127.0.0.1',
    :port     => node['postgresql']['config']['port'],
    :username => 'postgres',
    :password => node['postgresql']['password']['postgres']
}

postgresql_database_user node['osm']['user'] do
    connection postgresql_connection_info
    password node['osm']['pass']
    superuser true
    action :create
end
