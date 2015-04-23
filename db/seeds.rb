# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Check.delete_all
Deposit.delete_all
Account.delete_all


Account.create!(name: "Checking",
                id: 1,
                balance: 100.00)
                
Account.create!(name: "Savings",
                id: 2,
                balance: 0.00)
                
Deposit.create!(from: "Daddy Warbucks",
                amount: 500,
                date: "4/10/15",
                account_id: 2)
                
Deposit.create!(from: "Rich E. Rich",
                amount: 550,
                date: "4/1/15",
                account_id: 1)


Check.create!(to: "Rick Grimes", 
              amount: 50.00,  
              date: "4/15/15",
              account_id: 1)
              
              
Check.create!(to: "Shane Walsh", 
              amount: 25.00,  
              date: "4/15/15",
              account_id: 1)
              
Check.create!(to: "J.R. Bob Dobbs", 
              amount: 50.00,  
              date: "4/15/15",
              account_id: 2)
              
Check.create!(to: "J.R.R. Tolkien", 
              amount: 25.00,  
              date: "4/15/55",
              account_id: 2)
              