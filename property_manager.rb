# require 'tty-table'
require 'tty/font'
require_relative './property_manager_tenant'
require_relative './property_manager_landlord'

include Tenant

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


