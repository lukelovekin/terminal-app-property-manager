require 'csv'

def landlord_home
   system('clear')
    puts font.write("PM, Landlord").colorize(:green)
    puts "Welcome Landlord"
    puts
    puts "Select House"
    puts "1. #{@house_details}"        #is this scope necessary? default class?
    puts 
    puts "2. Add New Property"
    puts 
    # option to delete property here too
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

def add_new_prop
    puts "Enter new Address"
    new_house_details = gets.chomp
    #validation, maybe later
    puts "Is this Address correct: #{new_house_details} (Y/N)"
    y_n = gets.chomp.capitalize
    @house_details = (y_n == "Y" ? new_house_details : @house_details)
    landlord_home
end

def house_page
    system('clear')
    puts font.write("PM, Landlord").colorize(:green) # DRY THIS
    puts "Welcome Landlord"
    puts
    puts "32 Belleview Parade, Paddington, 4064, $630p/w"
    puts
    puts "What would you like to do, enter the number?"
    puts " 1. Administraion ( Entry/Exit reports, Lease (New/Existing), Quarterly Inspections"
    puts " 2. Advertising #{@exit}" 
    puts " 3. Finances"
    puts " 4. Maintenance Requests"
    puts 
    puts"Press Ctrl C to exit the Terminal App at any time"
    next_menu
end

def next_menu
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

def admin
    include Admin
     while true
                              #DRY THIS
        system('clear')
        puts font.write("PM, Landlord").colorize(:green)
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
            ############ puts 
        when "3"
            ########### puts email template
        when "4"
            ######### put checklist
        when "Exit"
        house_page
        else
        end
        house_page # redirect somewhere else?
    end
end

def advertising_words
    puts
    puts "What would you like to do, enter the number?"
    puts "1. Upload to internet checklist"
    puts "2. Inspections Planner"
    puts "3. Inspections Day Form" #ttytable, showed, interested,applying,comments
end

def advertising
    while true
                                #DRY this
        system('clear')
        puts font.write("PM, Landlord").colorize(:green)
        advertising_words

        option_ad = gets.chomp

        case option_ad
        when "1."
            # make internet checklis (sprinkle)
        when "2."
            # make inspections planner
        when "3"
            # make ins day form
        else
            puts @exit
            gets.chomp                #DRY this    
        end
        house_page           #this is broken <<<< but good for now
    end
end

def finances
    while true
                                      
        system('clear')                   #DRY THIS
        puts font.write("PM, Landlord").colorize(:green)
        puts "What would you like to do, enter the number?"
        puts                                                 #-----if i get time
        puts "1. Maintenance Requests Amounts/Quotes"        #link to tenant page refernce back to maintenance requestS??
        puts "2. Rent Due Date"                              # "   "    "     "
        puts "3. Balances (Rent income - Bills)"             # "   "    "     "   
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

def maintenance_request
    while true

        system('clear')                   #DRY THIS
        puts font.write("PM, Landlord").colorize(:green)     #Dry these
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
            gets.chomp                           #DRY THIS NONSENSE
        when "2"
            subcontractors
        else
            puts @exit
            gets.chomp
        end   
         house_page
    end
end

def subcontractors

    system('clear')                   #DRY THIS
    puts font.write("PM, Landlord").colorize(:green)
    puts "Handy Man: Tim Unsted 0432345434; tunsted@gmail.com"
    puts   
    puts "Carpenter: Tom Undone 0478787877; tundone@gmail.com"
    puts 
    puts "Plumber: Tony Mcmahon 043234345; mcmahon@gmail.com"
    puts
    puts "Electrician: Shane Firgart 0412345678; figart@gmail.com"
    puts
    new_sub_to_sub                                                 #will only work once at the moment, will fix if time
    puts
    puts add = "1. To Add"  
    puts
    puts "Exit"

    option_s = gets.chomp
    option_s == "1" ? add_new_sub : house_page  # puts an invalid here instead of directing to homepage later
end

def add_new_sub

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

def new_sub_to_sub
    puts @n_y
end