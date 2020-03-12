require 'tty-table'
require 'tty-font'
require 'colorize'
require_relative './property_manager_tenant'
require_relative './property_manager_landlord'

@house_details = "32 Belleview Parade, Paddington, 4064"
@exit = "Invalid Option, Please enter a number or Enter to Exit"
@entry_report = "entry report here"                                       # Make makeshift entry/exit reportss for hereif time
@exit_report = "exit report here"                           
@tenancy_agreement = "tenancy agreement here"                             #"Instance variables of ruby do not need declaration" https://ruby-doc.org/docs/

module Font
    def font 
        TTY::Font.new(:standard)                  #Gives a big font, used in the titles
    end
end

module Admin           
    def ten_house_options
        puts "What would you like to view?"
        puts " #{@house_details}"
        puts "1 #{@entry_report}"
        puts "2 #{@exit_report}"              #Used for both Tenant and Landlord Admin Detials Options
        puts "3 #{@tenancy_agreement}"
        puts "Exit"
                           #Open up ^^^^ documents through here in the terminal if time
    end
end

def homepage_welcome
    include Font
    system('clear')
    font1 = font.write("Property Manager")
    puts font1.colorize(:blue)
    puts 
    puts"Press Ctrl C to exit the Terminal App at any time"
    puts
    puts"Welcome to the Property Manager Terminal App"             
    puts                                                          # First homepage for the app with input option for next menu      
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
    end                  # Add username and pin number for tenant and landlord if time
end

puts homepage_welcome