class Volunteer < ApplicationRecord
  validates :email, presence: true, format: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  validates :phone, presence: true, format: /\A\+?[\d\(\)\-\ ]{7,}\z/
  validates :name, :about, presence: true
  validates :email, uniqueness: true
end
