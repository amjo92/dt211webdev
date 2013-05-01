class CreateAdventures < ActiveRecord::Migration
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :Adate
      t.string :desc
      t.string :time
      t.string :location
      t.string :created_by

      t.timestamps
    end
  end
end
