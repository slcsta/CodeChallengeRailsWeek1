class Party < ApplicationRecord
    validates :name, presence: true
    def self.list_by_date
        self.order(:date)
    end

    def to_s
    "#{self.name} - #{self.date} - #{self.category} - #{self.supplies} - #{self.budget} - Private?: #{self.private}"
    end
end
