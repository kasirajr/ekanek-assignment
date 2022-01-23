class AddIsPublicToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_column :documents, :is_public, :boolean, default: false
  end
end
