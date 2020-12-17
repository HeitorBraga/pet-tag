class PetRegistration < ApplicationRecord
  CHARS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  
  belongs_to :person
  has_one_attached :photografy

  validates :name, :kind, :breed, :birthdate, :photografy, :person, presence: true

  enum kind: { dog: "Cachorro", cat: "Gato", rabbit: "rabbit" }

  before_save do
    if code.blank?
      begin
        _code = (0...6).collect { CHARS[Kernel.rand(CHARS.length)] }.join
      end while PetRegistration.find_by_code(_code)

      self.code = _code.gsub(/(\w{3})(\w{3})/, '\1-\2')
    end
  end
end
