ActiveAdmin.register Offer do

  config.filters = false
  # config.batch_actions = false

  permit_params :name, :advertiser, :payout
  actions :all, :except => [:update, :edit]

  member_action :save, method: [:post] do
    render ActiveAdmin::DynamicFields::update( resource, params )
  end

  index do
    selectable_column
    id_column
    column :name do |row|
      div row.name, ActiveAdmin::DynamicFields::edit_string( :name, save_admin_offer_path( row.id ) )
    end
    column :advertiser do |row|
      div row.advertiser, ActiveAdmin::DynamicFields::edit_string( :advertiser, save_admin_offer_path( row.id ) )
    end
    column :name do |row|
      div row.payout, ActiveAdmin::DynamicFields::edit_string( :payout, save_admin_offer_path( row.id ) )
    end
    actions
  end
end
