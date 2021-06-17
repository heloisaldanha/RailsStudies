class UsersController < ApplicationController

    def new  # vai mostrar o formulário de cadastro
        @user = User.new
    end

    def create # vai receber o post pra fazer a criação dessa rota
        @user = User.new(user_params)  # 
        if @user.save
            flash[:success] = 'Usuário cadastrado com sucesso'
            redirect_to root_url
        else
            render 'new'
        end           
    end


    private

    def user_params
        params.require(:user).permit(:email, :name, :password, :password_digest)
    end
end
