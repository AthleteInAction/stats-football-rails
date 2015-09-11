class ApiGenerator < Rails::Generators::Base

  source_root File.expand_path('../templates', __FILE__)

  argument :controller_name,type: :string,required: true
  argument :api_version,type: :string,default: '1'

  def generate

  	template 'controller.rb',"app/controllers/api/v#{version}/#{name}_controller.rb"

  	routes_path = 'config/routes.rb'

  	api = "\n\t\t\tresources :#{name},path: '#{name}s'"
  	insert_into_file routes_path,api,after: "# API INSERT"

  end

  private

  def name

  	controller_name

  end

  def version

  	api_version

  end

end