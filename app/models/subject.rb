class Subject < ApplicationRecord
  validates_presence_of :name, :code, :class_code, :teacher_email
end
