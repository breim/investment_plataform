class Project < ActiveRecord::Base
	include Bootsy::Container

	belongs_to :user
  belongs_to :category
  has_many :investments

  def self.from_param(param)
    find_by_slug!(param)
  end

  def to_param
    slug
  end
end
