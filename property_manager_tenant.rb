module Tenant
def tenant_home
    system("clear")
    puts font.write("PM, Tenant")
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
            puts "Invalid Option, Please enter 1, 2, 3, 4 or Exit"
        end
        # Add an at any point exit command to homepage_welcome?
    end
end

@house_details = "32 Belleview Parade, Paddington, 4064"
@entry_report = "entry report here"
@exit_report = "exit report here"                            #variables not needed for this one house scenario but if a landlord had a portfolio?
@tenancy_agreement = "tenancy agreement here"


def ten_house_admin
 
    while true

        ten_house_options
        
        option_ha = gets.chomp.capitalize
        
        case option_ha
        when "1"
            puts "Enter new Address"
            new_house_details = gets.chomp
            #validation, maybe later
            puts "Are you sure you want to change your Address to #{new_house_details} (Y/N)"
            y_n = gets.chomp.capitalize
            @house_details = (y_n == "Y" ? new_house_details : @house_details)
        when "2"
            puts #open doc
            homepage_welcome
        when "3"
            puts #open doc
            homepage_welcome
        when "4"
            puts #open doc
            homepage_welcome
        when "Exit" 
            homepage_welcome
        end
            homepage_welcome
    end
end 

def ten_house_options
   
    puts "What would you like to view?"
    puts "1 (change?) #{@house_details}"
    puts "2 #{@entry_report}"
    puts "3 #{@exit_report}"
    puts "4 #{@tenancy_agreement}"
    puts "Exit"
#open up ^^^^ documents through here the terminal
# any point exit to main
end

def rent_amount_due
    puts                    #yearly calender with due dates and amounts
end 

def back_to_hp
    puts "Press 'Enter' to go back to Tenant Homepage"         
    gets.chomp
    tenant_home
end

def maintenance_requests
    puts "Choose a number"
    puts "1. New Request"
    puts "2. Request Status"

    option_mr = gets.chomp
    case option_mr
    when "1"
        puts "Please enter you request with as much detail as possible"
        tenant_maint_req = gets.chomp
        puts "Awesome, your request has been stored in text for landlord to read"
        back_to_hp   #method to get back to homepage

    when "2"
        puts "Check Maintenance Notes to check Request status"
        back_to_hp
    else
    end
end 

def landlord_details
    puts "Name: John West"
    puts "Email: Johnwest@thebest.com.au"
    puts "Mobile: 3892 1111"
    back_to_hp
end 
end
