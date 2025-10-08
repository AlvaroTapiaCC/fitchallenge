# Web Technologies Project

Integrants: Alvaro Tapia Cruz

## Assignment 1

The folder 'assignment1' contains a picture of the relational model of the database the app will use, and a mark down file with the user stories for the assignment.

The folder 'fitChallenge' contains the actual app for the rest of the assignments 

## Assignment 2

The folder 'assignment2' contains the modified database model with a few changes done to it. The timestamp columns were changed to match the default columns added by rails. Also added a `username` column for `User`, and separated the name in `first_name` and `last_name`.

# App Implementations

All necessary models were properly created, adding the ssociations and validations needed so the models work without errors. Controllers were also set up accordingly for each model, adding views for index and show actions only for now.

The styling of the views was done using Bootstrap, ensuring responsiveness and a basic aestethic design. Aditionaly, a home page and a navigation bar were added, both with minimal functions, but preparing the road for the future assignments.

Finally, some adjustments to the views were done to try and provide a good UX. For this, some views show formated information to improve the presentation of the data. For example, the boolean fields were adapted to show a string more readable, or show the username associated to an id, to show meaningful information.