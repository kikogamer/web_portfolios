class AdditionalInformation < ApplicationRecord
  belongs_to :block
  belongs_to :portfolio
  
  validates :block_id, uniqueness: true
  validates :title, :description, presence: true
end
