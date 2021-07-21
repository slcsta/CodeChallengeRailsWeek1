class Party < ApplicationRecord
    belongs_to :category
    has_many :party_supplies
    has_many :supplies, through: :party_supplies

    accepts_nested_attributes_for :category
    validates :name, presence: true
    def self.list_by_date
        self.order(:date)
    end

    def to_s
    "#{self.name} - #{self.date} - #{self.category} - #{self.supplies} - #{self.budget} - Private?: #{self.private}"
    end
end
