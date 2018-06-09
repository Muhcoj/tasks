class Project < ApplicationRecord
  # What to place in models:
  # Custom scopes
  # Add defaults
  # Intergrate validations
  # Integrate callbacks
  # Integrating database relationships
  has_many :tasks

  after_initialize :set_defaults

  validates_presence_of :title, :description, :percent_complete

  scope :almost_completed, -> { where('percent_complete > 75.0') }
  scope :just_started, -> { where('percent_complete < 75.0') }

  def set_defaults
    self.percent_complete ||= 0.0
  end
end
