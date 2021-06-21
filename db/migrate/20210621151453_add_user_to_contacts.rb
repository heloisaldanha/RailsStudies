class AddUserToContacts < ActiveRecord::Migration[6.1]
  def change
    add_reference :contacts, :user, null: false, foreign_key: true
  end
end


# tinha aparecido no add_reference "null: false" mas não era necessário