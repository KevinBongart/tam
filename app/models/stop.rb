class Stop < ApplicationRecord
  belongs_to :parent_stop, required: false, class_name: Stop.name

  scope :parents, -> { where(parent_stop: nil) }
  scope :children, -> { where.not(parent_stop: nil) }

  def to_s
    name
  end

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
