class Freebie < ActiveRecord::Base

    belongs_to :company
    belongs_to :dev 

    # def self.dev(item)
    #     f1 = Freebie.find_by(item_name: item)
    #     f1.dev
    # end

    # def self.company(item)
    #     f2 = Freebie.find_by(item_name: item)
    #     f1.company
    # end

    def print_details
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

end
