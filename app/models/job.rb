class Job < ApplicationRecord
  validates_presence_of :title, :wage_lower_bound, :wage_upper_bound
  validates :wage_lower_bound, numericality: { greater_than: 0}

  def hide!
    self.is_hidden = true
    self.save
  end

  def publish!
    self.is_hidden = false
    self.save 
  end

end
