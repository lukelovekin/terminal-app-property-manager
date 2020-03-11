
def landlord_home
   system('clear')
    puts font.write("PM, Landlord")
    puts "Welcome Landlord"
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
    puts font.write("PM, Landlord") # DRY THIS
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
        option_nm = gets.chomp
        case option_nm
        when "1"
            admin
        when "2"
            advertising
        when "3"
            finances
        when "4"
            maintenance_request
        else 
           puts @exit
        end 
    end       
end

def admin
    include Admin
    
        puts "What would you like to view?"
        puts "1. House Details, Entry/Exit Report, Tenancy Agreement"
        puts "2. New Tenant Checklist"
        puts "3. Email Templates"
        puts "4. Quarterly Inspections/ Checklists"
        puts "Exit"
    while true
        option_a = gets.chomp
        case option_a
        when "1"
            ten_house_options
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
    puts "What would you like to do, enter the number?"
    puts "1. Upload to internet checklist"
    puts "2. Inspections Planner"
    puts "3. Inspections Day Form" #ttytable, showed, interested,applying,comments
end

def advertising
    while true

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
        puts "What would you like to do, enter the number?"
        puts  #-----if i get time
        puts "1. Maintenance requests" #link to tenant page
        puts "2. Rent Due Date"        # "   "    "     "
        puts "3. Balances"             # "   "    "     "
        puts "4. Income Statements"    # "   "    "     "
        option_f = gets.chomp
        case option_f
        when "1"
                #Read tenants request doc
        when "2"
                #
        when "3"

        when "4"

        else
            puts @exit
            gets.chomp   
        end
        house_page
    end
end


# def maintenance_request
#     puts "What would you like to do, enter the number?"
#     option_mr = gets.chomp
#     case option_mr
#     when

# end
