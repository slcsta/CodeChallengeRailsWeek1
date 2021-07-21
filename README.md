# README

## Make a Party model with the following attributes:
   - name
   - date
   - category
   - supplies
   - budget
   - private (boolean)
- Make an index view to display all party names and dates(make sure to add your route)
- Add Party seed data
- Order this list by date
- Make a show view to show one particular party
- Add links to the index view to see 1 party
- Add a link to the layout to view all parties



Part 2 Instructions
Add routes for the new and create actions
Create a form for making new Parties. There should be fields for the following attributes:
name
date
budget
private (boolean)
Use strong params in the controller and create a new Party when the form is submitted.
Redirect users to the party show page after a new party is created
Add a form to edit and update a party.

## PART 4
Create a Category model that just has a name attribute. Each party should belong to a category
Create a Supply model - each supply will have a name attribute. A party can have many supplies and each supply should be able to be used by many parties.
Turn the Party new form into a nested form so that you can choose from an existing category or create a new one when you create a party.
Add fields for supplies so that you can create new supplies when you create a party.
Display the associations on the Party show page.
BONUS IF WE HAVE TIME:
use a different layout for your category model
use a different layout for a category’s show page
use partials to clean up your code
use helpers to clean up your code