class Event < ApplicationRecord
  validates :start_date, 
    presence: true
  validates :duration, 
    presence: true
    :numericality => {:greater_than => 0}
  validates :title, 
    presence: true
    length: { in: 5..140 }
  validates :description, 
    presence: true
    length: { in: 20..1000 }
  validates :price, 
    presence: true
    :numericality => {:less_than => 1000}
  validates :location, presence: true
  has_many :users, :through => :attendance

end
