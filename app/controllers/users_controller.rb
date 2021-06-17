class UsersController < ApplicationController

    def new  # vai mostrar o formulário de cadastro
        @user = User.new
    end

    def create # vai receber o post pra fazer a criação dessa rota
    end
end
