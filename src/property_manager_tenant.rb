require 'csv'

#Make a class if time

def tenant_home                  #Tenant homepage options menu, could split into two
    system("clear")
    puts font.write("PM, Tenant").colorize(:red)
    puts "Welcome Tenant!"
    # puts house details and a place to change it
    puts "What would you like to do, enter the number?"
    puts "1. House Details, Entry/Exit Report, Tenancy Agreement"
    puts "2. Rent Amount and Due Dates"
    puts "3. Maintenance Requests" 
    puts "4. Landlord Contact Details"
    puts "Exit"
 
    while true
        option_th = gets.chomp.capitalize #############???
        case option_th
        when "1"
            ten_house_admin
        when "2"
            rent_amount_due
        when "3"
            maintenance_requests
        when "4"
            landlord_details
        when "Exit"
            homepage_welcome
        else 
            puts @exit
        end
        # Add an at any point exit command to homepage_welcome?
    end
end

def ten_house_admin              #Tenant homepage options output, could split into two
    include Admin
    while true
        ten_house_options        
        option_ha = gets.chomp.capitalize    
        case option_ha
        when "1"
            ten_house_options
        when "2"
            ten_house_options  #ten_house_options is temporary  #Make makeshift templates for all three of these options with tty-tables if time
        when "3"
            ten_house_options
        when "Exit" 
            homepage_welcome
        else 
            puts @exit #not needed
            gets.chomp
        end
            homepage_welcome #redirect somewhere else?
    end
end 

def rent_amount_due              #Rent options output            
    tenant_home           #Make yearly calender with due dates and amounts
end 

def back_to_hp                   #Back to homepage method, noticed last mintues its very pointless, will delete if time
    puts "Press 'Enter' to go back to Tenant Homepage"         
    gets.chomp
    tenant_home
end

def maintenance_requests        #Maintenance options menu, could split into two
    puts "Choose a number"
    puts "1. New Request"
    puts "2. Request Status"
    puts "Exit"

    option_mr = gets.chomp
    case option_mr
    when "1"
        puts "Please enter you request with as much detail as possible"
        to_csv
        puts "Awesome, your request has been stored in text for landlord to read"
    when "2"
        puts "Check Maintenance Notes to check Request status"
        back_to_hp
    when "Exit" 
        homepage_welcome
    else
        puts @exit
    end
end 

def to_csv                      #Convert maintenance request input into csv file, viewable in landlords maintenance section
    a = []
    b = gets.chomp
    a << b
    CSV.open("maintenance.csv", "a") do |csv|
        puts csv
        csv << a
    end
end

def landlord_details            #Landlord details
    puts "Name: John West"
    puts "Email: Johnwest@thebest.com.au"
    puts "Mobile: 3892 1111"
    back_to_hp
end 