class Task < ActiveRecord::Base
  
  after_initialize :init

  def init
    self.status ||= "todo"
  end


  belongs_to :project
  validates :name, presence: true
  validates :status, inclusion: { in: %w(todo doing done),
    message: "%{value} is not a valid status"}
end
