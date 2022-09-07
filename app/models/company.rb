class Company < ActiveRecord::Base

    has_many :freebies
    has_many :devs, through: :freebies

    # def self.freebies(company)
    #     c1 = Company.find_by(name: company)
    #     c1.freebies
    # end

    # def self.devs(company)
    #     c2 = Company.find_by(name: company)
    #     c1.devs
    # end

    def give_freebie(company, dev, item_name, value)
        d1 = Dev.find_by(name: dev)
        c4 = Company.find_by(name: comapny)
        Freebie.create(item_name: item_name, value: value, company_id: c4.id, dev_id: d1.id)
    end

    def self.oldest_company
        self.order(:founding_year).limit(1)
    end


end
