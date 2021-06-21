# esse controller foi criado com rails g controller sessions new create

class SessionsController < ApplicationController

  def new
    redirect_to user_path(current_user) if user_signed_in?
  end

  def create
      user = User.find_by(email: params[:session][:email].downcase)  # procurar o usuário no banco
      if user && user.authenticate(params[:session][:password])
        sign_in(user)
        redirect_to contacts_path
      else
        flash.now[:danger] = 'Email ou senha inválidos'
        render 'new'

      end
  end


  def destroy
    sign_out
    flash[:success] = 'Logout com sucesso'
    redirect_to entrar_path
  end	

end
