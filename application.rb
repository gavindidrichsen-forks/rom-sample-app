require_relative 'boot'

configuration = ROM::Configuration.new(:sql, "mysql2:///#{CONFIG['db']['name']}", CONFIG['db'])
configuration.register_relation(Companies, Posts)
configuration.register_command(CreateCompany, DeleteCompany)
configuration.register_command(CreatePost, UpdatePost, DeletePost)

MAIN_CONTAINER = ROM.container(configuration)