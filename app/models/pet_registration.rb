class PetRegistration < ApplicationRecord
  
  belongs_to :person

  has_one_attached :photografy

  validates :name, :kind, :breed, :birthdate, :photografy, :person, presence: true

  enum kind: { dog: "Cachorro", cat: "Gato", rabbit: "rabbit" }

  before_create :set_code, :set_uid
  
  private

  def set_code
    begin
      self.code = SecureRandom.alphanumeric(6).gsub(/(\w{3})(\w{3})/, '\1-\2').upcase
    end while PetRegistration.find_by_code(self.code)
  end

  def set_uid
    self.uid = SecureRandom.uuid
  end

  def first_name
    name.split(' ').first
  end
end
