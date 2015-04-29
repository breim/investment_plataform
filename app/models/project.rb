class Project < ActiveRecord::Base
	include Bootsy::Container

  belongs_to :category
  belongs_to :user

  def self.from_param(param)
    find_by_slug!(param)
  end

  def to_param
    slug
  end
end
