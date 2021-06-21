class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    include SessionsHelper

    private

    def require_logged_in_user
        unless user_signed_in?  # a não ser que ele esteja logado, redirecione
            flash[:danger] = 'Área restrita. Por favor, realize o login.'  # se não estiver logado, não consegue acessar a página de contato
            redirect_to entrar_path
        end
    end
end
