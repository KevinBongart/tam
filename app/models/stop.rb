class Stop < ApplicationRecord
  belongs_to :parent_stop, required: false, class_name: Stop.name
end
