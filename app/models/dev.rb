class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    # def self.freebies(name)
    #     d1 = Dev.find_by(name: name)
    #     d1.freebies
    # end

    # def self.companies(name)
    #     d2 = Dev.find_by(name: name)
    #     d1.freebies
    # end

    def recieved_one?(item_name) 
        f1 = Freebie.find_by(item_name: item_name)
        if f1[:dev_id] == self[:id]
            true
        else
            false
        end
    end

    # def give_away(dev, freebie)

    # end

end
