class AddDescriptionToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :description, :text,  :default => "Default event description. Please, change."
  end
end
