class Purchase < ApplicationRecord
  belongs_to :purchaseable, polymorphic: true
end
