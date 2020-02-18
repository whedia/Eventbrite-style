class Event < ApplicationRecord
  validates :start_date,  presence: true
  validate :start_date_cannot_be_in_the_past

  validates :duration, presence: true, numericality: {:greater_than => 0}
  validate :check_multiple_5

  validates :title, presence: true, length: { in: 5..140 }

  validates :description, presence: true, length: { in: 20..1000 }

  validates :price, presence: true, numericality: {:less_than => 1000}

  validates :location, presence: true

  has_many :users, through: :attendances

  has_many :attendances

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end 

  def check_multiple_5
    if duration % 5 != 0
      errors.add(:duration, "duration must be a multiple of 5") 
    end
  end

end
