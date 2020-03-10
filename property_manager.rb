require 'tty/font'
require 'tty-table'

module Font
    def font
    @font = TTY::Font.new(:standard)
    end
end

class Homepage

def initialize
@optiona
@font
@write
end

def homepage_welcome

    while true
        @font = TTY::Font.new(:standard)
        puts @font.write("Property Manager")
        puts "Welcome to the Property Manager Terminal App"
        puts "Are you a Tenant or Landlord?"
        @optiona = gets.chomp.capitalize
            if @optiona == "Tenant"
                puts font.write("PM Tenant")
            elsif @optiona == "Landlord"
                puts @font.write("PM Landlord")
            else
                system('clear')
                puts "Not an option, please enter 'Tenant' or 'Landlord"
            end  
        
    end
end

# def tenanthome
#     if @optiona == "Tenant"
#         puts font.write("PM Tenant")
#     elsif @optiona == "Landlord"
#         puts font.write("PM Landlord")
#     else
#         puts "Not an option, please enter 'Tenant' or 'Landlord"
#     end  
# end
end

test_home_page = Homepage.new
puts test_home_page.homepage_welcome













# table = TTY::Table.new ['column header 1',"column header 2"], [['a1','a2'],['b1','b2']]
# puts table.render(:ascii)


