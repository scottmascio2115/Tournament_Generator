class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :replier
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
