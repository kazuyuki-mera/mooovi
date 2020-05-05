class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # deviseコントローラのアクションが動いた時のみ対応
  before_action :configure_permitted_parameters, if: :devise_controller?

  # サインアウト後にサインイン画面に遷移
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  # サインアップ時にnicknameとavatarを許可する
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
  end

end
