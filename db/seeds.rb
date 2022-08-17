puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "sunglasses", value: 3, company_id: nil, dev_id: nil)
Freebie.create(item_name: "tote", value: 6, dev_id: nil, company_id: nil)
Freebie.create(item_name: "pint glass", value: 1, dev_id: nil, company_id: nil)
Freebie.create(item_name: "sticker", value: 1, dev_id: nil, company_id: nil)

puts "Seeding done!"
