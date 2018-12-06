class RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :username, :signature, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :username, :signature, :password_confirmation, :current_password)
  end
end
