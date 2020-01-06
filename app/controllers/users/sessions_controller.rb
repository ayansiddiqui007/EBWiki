# frozen_string_literal: true

# Login/logout
class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super do |_resource|
      Rails.logger.info("CREATE RESPONSE HEADERS: #{response.headers}")
    end
  end

  # DELETE /resource/sign_out
  def destroy
    super do |_resource|
      Rails.logger.info("DESTROY RESPONSE HEADERS: #{response.headers}")
    end
  end
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end