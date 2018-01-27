class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest #for storing crypted passwords
      t.timestamps
    end

    #adding a join table for our
    # has_belongs_to_many relationship
    # model order needs to be alphabetical
    create_table :meetings_users do |t|
      t.integer :meeting_id
      t.integer :user_id
    end

    #add an index to speed queries
    add_index(:users, [:meeting_id, :user_id])
  end
end
