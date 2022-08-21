class Company < ActiveRecord::Base
   has_many :freebies
   has_many :devs, through: :freebies

   def give_freebie(dev_instance, new_item_name, new_value)
      Freebie.create(dev_id:dev_instance.id, item_name:new_item_name, value:new_value, company_id:self.id)

      # ORRRRRR (because we are already inside of company)
      # self.freebies.create(item_name:new_item_name, value:new_value, dev_id:dev_instance.id)
   end

   def self.oldest_company
      # Arctive Record style
      Company.order(:founding_year).first

      # Ruby Style
      # Company.all.sort_by { |company| company.founding_year }.first
   end
end
