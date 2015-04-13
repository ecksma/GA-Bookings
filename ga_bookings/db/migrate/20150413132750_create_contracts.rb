class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :user_id
      t.integer :cohort_id

      t.timestamps null: false
    end
  end
end
