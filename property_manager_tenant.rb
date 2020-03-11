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
            puts @exit
        end
        # Add an at any point exit command to homepage_welcome?
    end
end

def ten_house_admin
 include Admin
    while true

        ten_house_options
        
        option_ha = gets.chomp.capitalize
        
        case option_ha
        when "1"
            puts #open doc
        when "2"
            puts #open doc
        when "3"
            puts #open doc
        when "Exit" 
            homepage_welcome
        else 
            puts @exit #not needed
            gets.chomp
        end
            homepage_welcome #redirect somewhere else?
    end
end 

def rent_amount_due
    puts                    #yearly calender with due dates and amounts
    tenant_home
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
    puts "Exit"

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
    when "Exit" 
        homepage_welcome
    else
        puts @exit
    end
end 

def landlord_details
    puts "Name: John West"
    puts "Email: Johnwest@thebest.com.au"
    puts "Mobile: 3892 1111"
    back_to_hp
end 

