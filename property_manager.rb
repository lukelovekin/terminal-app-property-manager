require 'tty/font'
require 'tty-table'

# module Font
#     def font
#     @font = TTY::Font.new(:standard)
#     end
# end

# class Homepage
# attr_accessor

# def initialize
# @optiona
# @font
# end
module Font
    def font 
        TTY::Font.new(:standard)
    end
end



def homepage_welcome
  include Font
        # font = TTY::Font.new(:standard)
        system('clear')
        font1 = font.write("Property Manager")
        puts font1
        puts "Welcome to the Property Manager Terminal App"
        puts "Are you a Tenant or Landlord?"
    while true  
        optiona = gets.chomp.capitalize
        system('clear')
            if optiona == "Tenant"
                puts tenant_home    
            elsif optiona == "Landlord"
                puts landlord_home
            else
                puts font1
                puts "Not an option, please enter 'Tenant' or 'Landlord"
            end  
    end
        # Add an at any point exit command?
        # Add username and pin number for tenant and landlord
    
end



def tenant_home
    puts font.write("PM, Tenant")
    puts "Welcome Peasant!"
    # puts house details and a place to change it
    puts "What would you like to do, enter the number?"
    puts "1. House Details, Entry/Exit Report, Tenancy Agreement"
    puts "2. Rent Amount and Due Dates"
    puts "3. Maintenance Requests" 
    puts "4. Landlord Contact Details"
   
    while true
        option_th = gets.chomp.capitalize #############???
        case option_th
        when "1"
            puts house_admin
        when "2"
            puts rent_amount_due
        when "3"
            puts maintenance_requests
        when "4"
            puts landlord_details
        when "Exit"
            
        else 
            puts "Invalid Option, Please enter 1, 2, 3, or 4,"
        end
        # Add an at any point exit command to homepage_welcome?
    end
end



def house_admin
    house_details = "32 Belleview Parade, Paddington, 4064"
    entry_report = "entry report here"
    exit_report = "exit report here"                            #variables not needed for this one house scenario but if a landlord had a portfolio?
    tenancy_agreement = "tenancy agreement here"

    puts "What would you like to view?"
    puts "1 (change?) #{house_details}" #should tenant be able to change this
    puts "2 #{entry_report}"
    puts "3 #{exit_report}"
    puts "4 #{tenancy_agreement}"
    puts "Exit"
#open up ^^^^ documents through here the terminal
# any point exit to main
    option_ha = gets.chomp.capitalize
    
    case option_ha
    when "1"
        puts "Enter new Address"
        new_house_details = gets.chomp.titleize
        #validation, maybe later
        puts "Are you sure you want to change your Address to #{new_house_details} (Y/N)"
        y_n = gets.chomp.capitalize
        y_n == "Y" ? house_details = new_house_details, tenant_home : tenant_home
    when "2"
        puts #open doc
        puts homepage_welcome
    when "3"
        puts #open doc
        puts homepage_welcome
    when "4"
        puts #open doc
        puts homepage_welcome
    when "Exit" 
        puts homepage_welcome
    end
end 



def rent_amount_due
end 



def maintenance_requests
end 



def landlord_details
end 



def landlord_home
    puts font.write("PM, Landlord")
    puts "Welcome Landlord"
end

puts homepage_welcome

# returns anywhere
#
# def tenant_options
#     case option
# end













# commont all code!

# table = TTY::Table.new ['column header 1',"column header 2"], [['a1','a2'],['b1','b2']]
# puts table.render(:ascii)


