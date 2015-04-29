class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.references :project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.float :value

      t.timestamps null: false
    end
  end
end
