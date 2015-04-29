class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.float :value,:scale => 15, :precision => 2

      t.timestamps null: false
    end
  end
end
