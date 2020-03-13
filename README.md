

# Property Manager Terminal App

Github page:
https://github.com/lukelovekin/terminal-app-property-manager

## Statement of purpose and scope

The "Propery Manager Terminal App" will allow both Landlords and Tenants to manage their rentals without the use of a property manager therefor saving the Landlord management fees between 6-9% of thier weekly rent income. Using this app the Tenant will be able moneouvre their way through their terminal, following the options and prompts to store and access infomation such as entry and exit reports, tenancy agreements, when rent is due and how much, send maintanence requests and other things a typical property manager would do.

The property manager app will help Landlords organise, manage and store their property/ies and there details such as new and existing entry/exit reports, tenancy agreements, quartely inspections, admin checklists, advertising functions such as advertising checklist on getting on the market, inspectons calender, and inspections feedback. The Landlord can also access their ingoing and outgoing expenses, maintenence requests and net balances and more.

I am developing this app try replace the job of a property manager and manage my own property because as a Landlord myself, I would like an easier way to manage my property/ies without havign to pay $58 weekly, thats over $3000 a year for something I can manage through my terminal

Target audience for this app definitley be all home owners looking to save on management fees and even tenants alike who would rather not deal with property managers 

## Applications features and how they work

- Easy to use/follow organization. 
With the use of helpful output prompts and case statements that allow for all intputs to be handled, whether valid input was entered or not, to either direct them to their next page or give them another prompt on what to do.

- Store and Read text to and from a csv file.
Using the appropriate gem with its required methods and  block of code to execute, the user is able to make maintenance requests and store text into a csv

- Landlord and seperate Tenant side of the application.
Using loops and conditional control structures and with input from the user they can be directed to their side of the application and directed to where they want to go with the loops implemented to keep them from entering anything other than valid input

- The use of Ruby gems.
With the use of imported gems and calling them in with their functions I was able to change the colour of font, make big block letters/words, puts and read text in a csv file and create tables and blocks to wrap around text.


## User interaction and experience

After following the installation guide and running the app in the terminal the user will greeted with the app logo and a home screen choose whether they are a tenant or a landlord, they will be then directed to their next home screen where there will be options and helpful information and prompts displayed of which they can input using their keyboard to go to where they wouldlike to go. The user will not be left without options and the chance to input any given time, making interaction and navigation clear and easy to use. at any stage when the user is finished they can exit the application. Most of the users interaction will be entering options displayed on screen otherwise further input instructions will be explain where they need to be. If at any point the users input is invalid, a correcting prompt/error message will appear and the application will show its most recent options menu until correct input is entered or until user exits.

## Control Flow diagram

The application's flowchart is on the following link 

https://github.com/lukelovekin/terminal-app-property-manager/blob/master/docs/Flowchart.PNG

## Implementation plan. 
https://trello.com/b/eP9uoFaY/property-manager-terminal-app

Using a Trello, an online trello board web tool, to outline the features and how each feature will be implemented along with checklists and due date and times included.

## Help / How to install

- Make sure you have ruby and a suitable ruby interperater downloaded.

- Install bundler(if you haven't already) 

- From the "src" folder in "LukeLovekin_T1A2" using the terminal run the following command

./pmanager.sh

