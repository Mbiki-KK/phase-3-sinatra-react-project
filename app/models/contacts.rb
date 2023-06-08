class Contact < ActiveRecord::Base
  has_and_belongs_to_many :relations

  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true
end
