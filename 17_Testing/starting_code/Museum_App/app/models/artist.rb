class Artist < ActiveRecord::Base
	has_many :paintings
	has_many :museums, through: :paintings
  validates :name, presence: true

  def first_name
    name.split.first
  end

end
