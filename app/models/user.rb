class User < ApplicationRecord
    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: 'only letters are accepted'}
    validates :email, presence: true, uniqueness: true
    validates :age, presence: true, length: {minimum:1, maximum:2}, numericality: true

    validate :CheckNamePresence

    private

    def CheckNamePresence
        return if name == name.upcase

        errors.add(:name, 'must be in caps')
    end
end
