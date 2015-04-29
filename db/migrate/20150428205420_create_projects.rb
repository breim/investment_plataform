class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :slogan
      t.text :description
      t.float :value,:scale => 15, :precision => 2
      t.integer :term
      t.string :video_link
      t.belongs_to :category, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
