class Purchase < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: {case_sensitive: false, message: ": An item with this name has already been entered into the database"}
  validates :cost, numericality: {greater_than: 0}
end
