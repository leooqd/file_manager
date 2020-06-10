class Directory < ApplicationRecord
  validates_presence_of :name, :slug
  validates_uniqueness_of :slug
end
