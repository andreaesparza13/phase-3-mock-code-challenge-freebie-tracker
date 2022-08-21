class Dev < ActiveRecord::Base
   has_many :freebies
   has_many :companies, through: :freebies

   def received_one?(check_item)
      # Double bang (!!) turns "truthy" values into true and "falsey" values into false
      !!self.freebies.find_by(item_name: check_item) 
   end

   def give_away(dev_inst, freebie_inst)
      if self.received_one?(freebie_inst.item_name)
         freebie_inst.update(dev: dev_inst)
      else 
         puts "nice try..."
      end
   end
end
