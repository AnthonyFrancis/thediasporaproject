class RegistrationsController < Devise::RegistrationsController

def new
	super
end

def update
  super
end

def update_resource(resource, params)
 	resource.update_without_password(params)
end


def resource_name
	:user
end

def devise_mapping
	@devise_mapping ||= Devise.mappings[:user]
end

def after_update_path_for(resource)
  root_path
end

def index
	@users = User.all
end

def show
	@user = User.find_by_username(params[:id])
end

end