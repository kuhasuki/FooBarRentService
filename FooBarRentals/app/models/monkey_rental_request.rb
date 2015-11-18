class MonkeyRentalRequest < ActiveRecord::Base
  validates :monkey_id, :start_date, :end_date, :status, presence: true

  belongs_to :monkey

  def same_monkey_requests
    self.monkey.monkey_rental_requests.where("id != ?", self.id)
  end

  def overlapping?(start, finish)
    (self.start_date < finish) && (start < self.end_date)
  end

  def overlapping_requests
    same_monkey_requests.select do |request|
      self.overlapping?(request.start_date, request.end_date)
    end
  end

  def overlapping_approved_requests
    overlapping_requests.select { |request| request.status == "APPROVED" }
  end

  # def overlapping_pending_requests
  # end

end
