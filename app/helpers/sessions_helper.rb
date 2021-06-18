module SessionsHelper

    def sign_in(user)
        session[:user_id] = user.id
    end 


    def sign_out
        session.delete(:user_id)
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
        # se essa variável já foi setada, não vai criar um novo no banco
    end

    def user_signed_in?
        !current_user.nil?
        # para saber se o usuário está logado ou não
    end
end
