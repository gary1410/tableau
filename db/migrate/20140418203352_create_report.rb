class CreateReport < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.string :view
      t.string :workbook
      t.string :url
      t.string :description
      t.string :category
      t.string :audience
      t.string :view_rate
      t.string :when_to_view
      t.string :detail
      t.string :report_owner
      t.string :business_owner
      t.string :updated_at
    end
  end
end
