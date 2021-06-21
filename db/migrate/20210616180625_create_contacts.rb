class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end


=begin
  para fazer a junção do banco de dados dos contatos com o usuário, dá o seguinte comando no terminal:
    rails g migration add_user_to_contacts user:references
      ---> sempre indo da classe maior que engloba a menor (no caso aqui, adicionar usuário (has many) a contatos (belong to))
      ---> esse references significa que vai ser adicionado uma referência - uma chave estrangeira - para essa tabela

    dado esse comando, surgirá um novo migrate chamado AddUserToContacts com as devidas referências adicionadas
=end
