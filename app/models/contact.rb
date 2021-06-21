class Contact < ApplicationRecord

    # validações dos atributos do contato
    validates :name, presence: true, length: { maximum: 50 }
    validates :phone, presence: true

    
    # a classe contato pertence ao user. logo, todo contato tem que ter um usuário.
    belongs_to :user
end
