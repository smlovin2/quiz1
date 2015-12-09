class Stuff < ActiveRecord::Base
  validates :name, :presence => true
  validates :quest, :presence => true
  validates :favorite_color, :presence => true
end
