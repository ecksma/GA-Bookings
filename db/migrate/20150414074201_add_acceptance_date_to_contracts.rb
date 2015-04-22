class AddAcceptanceDateToContracts < ActiveRecord::Migration
  def change
    add_column :contracts, :acceptance_date, :integer
  end
end
