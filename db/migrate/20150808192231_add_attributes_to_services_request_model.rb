class AddAttributesToServicesRequestModel < ActiveRecord::Migration
  def change
    add_column :services_requests, :name, :string
    add_column :services_requests, :lastname, :string
    add_column :services_requests, :phone, :string
    add_column :services_requests, :email, :string
    add_column :services_requests, :details, :text
  end
end
