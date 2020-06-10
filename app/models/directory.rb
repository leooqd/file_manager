# frozen_string_literal: true

class Directory < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :slug

  belongs_to :directory, optional: true
  has_many :directories, dependent: :destroy
  
  has_many_attached :files, dependent: :destroy

  before_validation :set_slug

  scope :tree, -> { where(directory_id: nil) }

  def set_slug
    self.slug = to_slug(name)
  end

  def to_param
    slug
  end

  private

  def to_slug(string)
    string.parameterize.truncate(80, omission: '')
  end
end
