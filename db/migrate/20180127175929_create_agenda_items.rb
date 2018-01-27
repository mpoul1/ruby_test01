class CreateAgendaItems < ActiveRecord::Migration[5.1]
  def change
    create_table :agenda_items do |t|
      t.string :title
      t.text :description
      t.integer :meeting_id #this links to a meeting
      t.integer :user_ud #the user who made it

      t.timestamps
    end

    add_index :agenda_items, :meeting_id #dont forget this
    add_index :agenda_items, :user_id
  end
end
