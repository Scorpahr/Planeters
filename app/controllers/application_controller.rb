class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_in_path_for(resource)
    # vérifie si notre user est connecté. S'il l'est, l'url est engeristrée. Sinon, on redirige vers la page d'accueil.
    stored_location_for(resource) || root_path
  end

  def after_sign_out_path_for(resource_or_scope)
    # Redirige l'utilisateur vers la page d'accueil après la déconnexion.
    root_path
  end
end
