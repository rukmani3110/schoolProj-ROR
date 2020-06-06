class Section < ApplicationRecord
  validates_presence_of :class_name,:section, :code
end
