class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string   :name
      t.text     :description
      t.date     :start_date
      t.date     :end_date
      t.string   :style
      t.string   :champion
      t.timestamps
    end
  end
end
