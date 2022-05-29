class Subject < ApplicationRecord
  has_many :subject_data, dependent: :destroy
  has_many :subject_user, dependent: :destroy
  has_many :user, through: :subject_user
end
