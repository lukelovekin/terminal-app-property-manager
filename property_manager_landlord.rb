require 'csv'

#Alter at least one method so that it takes arguments, for e.gadd_new_sub for example

#Make class if time

def landlord_home         #Landlord options menu, could split into two
    system('clear')
    puts font.write("PM, Landlord").colorize(:green)
    puts "Welcome Landlord"
    puts
    puts "Select House"
    puts "1. #{@house_details}"        #is this scope necessary? default class?
    puts 
    puts "2. Add New Property"
    puts                               # Put option to delete property here too if time
    while true
        go_to = gets.chomp
        case go_to
        when "1"
            house_page
        when "2"
            add_new_prop
        else 
            puts @exit
        end  
    end
end

def add_new_prop          #Add new house option from property selection page                           #Fix so that new house gets added and stored to page
    puts "Enter new Address"
    new_house_details = gets.chomp                                      #Validate later if time
    puts "Is this Address correct: #{new_house_details} (Y/N)"
    y_n = gets.chomp.capitalize
    @house_details = (y_n == "Y" ? new_house_details : @house_details)
    landlord_home
end

def house_page            #Landlord homepaage out put
    system('clear')
    puts font.write("PM, Landlord").colorize(:green)                    # DRY these font.writes if time
    puts "Welcome Landlord"
    puts
    puts "32 Belleview Parade, Paddington, 4064, $630p/w"
    puts
    puts "What would you like to do, enter the number?"
    puts "1. Administraion ( Entry/Exit reports, Lease (New/Existing), Quarterly Inspections"
    puts "2. Advertising #{@exit}" 
    puts "3. Finances"
    puts "4. Maintenance Requests"
    puts 
    puts "Press Ctrl C to exit the Terminal App at any time"
    next_menu
end

def next_menu             # Next menu options output direction
    while true
        option_nm = gets.chomp.capitalize
        case option_nm
        when "1"
            admin
        when "2"
            advertising
        when "3"
            finances
        when "4"
            maintenance_request
        when "Exit"
            house_page
        else 
           puts @exit
        end 
    end       
end

def admin                 #Administration options menu, could split into two
    include Admin
    while true
        system('clear')
        puts font.write("PM, Landlord").colorize(:green)             # DRY these font.writes if time
        puts "What would you like to view?"
        puts "1. House Details, Entry/Exit Report, Tenancy Agreement"
        puts "2. New Tenant Checklist"
        puts "3. Email Templates"
        puts "4. Quarterly Inspections/ Checklists"
        puts "Exit"
        option_a = gets.chomp
        case option_a
        when "1"
            ten_house_options
            gets.chomp
        when "2"
            admin  #admin temporary    # Make Tenant Checklist for here if time
        when "3"
            admin  #admin temporary    # Make email template for here if time
        when "4"
            admin  #admin temporary    # Make checklist for her
        when "Exit"
            house_page
        else
            puts @exit
        end
        house_page 
    end
end

def advertising_words     #Advertising options input
    puts
    puts "What would you like to do, enter the number?"
    puts "1. Upload to internet checklist"
    puts "2. Inspections Planner"
    puts "3. Inspections Day Form" 
    puts "Exit"         
end

def advertising           #Advertising options output 
    while true                            
        system('clear')                                           # DRY these font.writes if time
        puts font.write("PM, Landlord").colorize(:green)
        advertising_words
        option_ad = gets.chomp.capitalize
        case option_ad
        when "1."
            advertising
        when "2."
            advertising              #Make tty-tables for all 3 options here if time
        when "3"
            advertising
        when "Exit"
            house_page
        else
            puts @exit
            gets.chomp               #DRY these else outputs if time   
        end
        house_page           #this is broken <<<< but good for now
    end
end

def finances              #Finances options menu, could split into two                                #Make Tables docs for here if time
    while true                                     
        system('clear')                                       # DRY these font.writes if time
        puts font.write("PM, Landlord").colorize(:green)
        puts "What would you like to do, enter the number?"
        puts                                                
        puts "1. Maintenance Requests Amounts/Quotes"        #Link to tenant page to refernce back to maintenance requestS??
        puts "2. Rent Due Date"                              # "            "           "              "
        puts "3. Balances (Rent income - Bills)"             # "            "           "              "   
        option_f = gets.chomp
        case option_f
        when "1"
                #Read tenants request doc
        when "2"
                # same as tenant due date checklist
        when "3"
                # if time put balance from tenant checklist - maintenece expenses
        else
            puts @exit
            gets.chomp   
        end
        house_page
    end
end

def maintenance_request   #Maintenance request options menu, could split into two, read csv file included
    while true
        system('clear')                  
        puts font.write("PM, Landlord").colorize(:green)       # DRY these font.writes if time
        puts
        puts "What would you like to do, enter the number?"
        puts "1. Maintenance Requests"
        puts "2. Subcontractor contact details"
        puts "Exit"
        option_mr = gets.chomp
        case option_mr
        when "1"
            CSV.foreach ('maintenance.csv') do |row|
                puts row.inspect
            end
        puts
        puts "Press Enter to Exit"
        gets.chomp                                        
        when "2"
            subcontractors
        else
            puts @exit
            gets.chomp
        end   
        house_page
    end
end

def subcontractors        # Maintenance request subby contact list, could split into two methods     #Fix thiss to store trades as array and add new contacts to that array
    system('clear')                   
    puts font.write("PM, Landlord").colorize(:green)               # DRY these font.writes if time
    puts "Handy Man: Tim Unsted 0432345434; tunsted@gmail.com"
    puts   
    puts "Carpenter: Tom Undone 0478787877; tundone@gmail.com"
    puts 
    puts "Plumber: Tony Mcmahon 043234345; mcmahon@gmail.com"
    puts
    puts "Electrician: Shane Firgart 0412345678; figart@gmail.com"
    puts
    new_sub_to_sub                         #Will only work once at the moment for now, store these as and array and add new contacts to that array
    puts
    puts add = "1. To Add"  
    puts
    puts "Exit"
    option_s = gets.chomp
    option_s == "1" ? add_new_sub : house_page  # puts an invalid here instead of directing to homepage later
end

def add_new_sub           #Getting new subby from input
    puts "Enter Trade Name:"
    trade_name = gets.chomp
    puts "Enter Name of Tradesmens:"
    name = gets.chomp
    puts "Enter Their Phone Number:"
    phone = gets.chomp
    puts "Enter Their Email:"
    email = gets.chomp
    add_sent = "Would you like to add #{trade_name}: #{name} #{phone}; #{email} to your Subcontractor Details?"
    puts "Enter 'y' for yes, any other key to Exit)"
    @n_y = gets.chomp
    @n_y == "y" ? @n_y = "#{trade_name}: #{name} #{phone}; #{email}" : house_page   
    subcontractors
end

def new_sub_to_sub        #Creates new subby contact with add_new_sub, put more of add_new_sub into this method
    puts @n_y
end