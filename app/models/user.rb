class User < ApplicationRecord

    has_secure_password  # reforçar a segurança, vai criar um hash da senha

    # algumas validações

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    # pra ver se o email é válido ou não


    validates :name, presence: true, length: { maximum: 50 }  # o usuário não pode passar sem adicionar um nome
    validates :password, length: { minimum: 6 }
    validates :email, presence: true, length: { maximum: 255 },
                                      format: { with: VALID_EMAIL_REGEX },
                                      uniqueness: { case_sensitive: true }  # verificar se a string está em caixa alta ou cx baixa
                                      
end
