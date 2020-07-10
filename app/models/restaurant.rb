class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

end


# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
