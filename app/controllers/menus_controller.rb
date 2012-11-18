class MenusController < AdminController
  before_filter :sanitize_params, :only => [:update, :create]

  def sanitize_params
    params[:menu][:is_current] = params[:menu][:is_current] == "true"
    params[:menu][:is_sweet] = params[:menu][:is_sweet] == "true"
  end

  
end
