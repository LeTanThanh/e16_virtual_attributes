class User < ApplicationRecord
  validates :first_name, :last_name, :full_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def full_name=(name)
    parts = name.split(" ", 2)
    self.first_name = parts[0]
    self.last_name = parts[1]
  end
end
