class Monkey < ActiveRecord::Base
include ActionView::Helpers::DateHelper
  validates :name, :birth_date, :color, :sex, :description, presence: true
  validates :sex, length:{ is: 1}

  has_many :monkey_rental_requests, dependent: :destroy

  def age
      start_date = self.birth_date
    finish_date = Date.today

    distance_of_time_in_words(start_date, finish_date)
  end
end
