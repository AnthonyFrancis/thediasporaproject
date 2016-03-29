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

end