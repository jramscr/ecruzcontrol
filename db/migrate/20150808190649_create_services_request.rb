class CreateServicesRequest < ActiveRecord::Migration
  def change
    create_table :services_requests do |t|

      t.timestamps null: false
    end
  end
end
