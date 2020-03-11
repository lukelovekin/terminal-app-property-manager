# require 'tty-table'
require 'tty/font'
require_relative './property_manager_tenant'
require_relative './property_manager_landlord'

@house_details = "32 Belleview Parade, Paddington, 4064"
@exit = "Invalid Option, Please enter a number or Enter to Exit"
@entry_report = "entry report here"
@exit_report = "exit report here"                            #variables not needed for this one house scenario but if a landlord had a portfolio?
@tenancy_agreement = "tenancy agreement here"

module Font
    def font 
        TTY::Font.new(:standard)
    end
end

module Admin           
def ten_house_options
     
        puts "What would you like to view?"
        puts " #{@house_details}"
        puts "1 #{@entry_report}"
        puts "2 #{@exit_report}"
        puts "3 #{@tenancy_agreement}"
        puts "Exit"
#open up ^^^^ documents through here the terminal
# any point exit to main
end
end

def homepage_welcome
  include Font
        
        system('clear')
        font1 = font.write("Property Manager")
        puts font1
        puts 
        puts"Press Ctrl C to exit the Terminal App at any time"
        puts
        puts"Welcome to the Property Manager Terminal App"
        puts              #make this better
        puts"Are you a Tenant or Landlord?"
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

puts homepage_welcome

# Update Bundler
#
# returns anywhere
#
# def tenant_options
#     case option
# end

#-----------------------------------

# commont all code!

# table = TTY::Table.new ['column header 1',"column header 2"], [['a1','a2'],['b1','b2']]
# puts table.render(:ascii)


