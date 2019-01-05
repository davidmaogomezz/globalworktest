class Apply < ApplicationRecord
  belongs_to :vacancy
  validates :name_candidate, :presence => true
  validates :last_name_candidate, :presence => true
  validates :number_document, :presence => true
  validates :vacancy_id, :presence => true
  validates :birthdate, :presence => true
  validates :phone, :presence => true
end





