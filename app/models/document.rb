class Document < ApplicationRecord
    has_one_attached :attachment, dependent: :destroy
    belongs_to :user
    validates :name, presence: true
    validates :description, presence: true
    validates :attachment, attached: true, size: { less_than: 1024.megabytes , message: 'is larger than 1 GB.' }

    
end
  