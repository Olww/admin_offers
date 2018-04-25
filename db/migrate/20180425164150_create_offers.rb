class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :advertiser
      t.integer :payout

      t.timestamps
    end
  end
end
