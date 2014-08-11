class Task < ActiveRecord::Base
  belongs_to :project  
  after_initialize :init

  def init
    self.status ||= "todo"
  end

  validates :name, presence: true
  validates :status, inclusion: { in: %w(todo doing done),
    message: "%{value} is not a valid status"}
end
