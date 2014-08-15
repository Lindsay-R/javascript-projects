# JS 1

## Nested Tasks
- Change default task list to hide all tasks.
- Let users click an 'open' icon to expand a given task list.
- When the task list is expanded, change the icon to a 'close' icon.
- Close all other tasks lists when one task list is opened.
- Include a CSS transition to animate opening and closeing task lists.

# Flash Message
- Hide the default flash message after 5 seconds
- Add a 'close button' to the flash message, so users can remove it before the default 5 seconds

## Date Picker
- Include a date picker for time fields.

## Late Tasks
- Give today's tasks a light orange background.
- Give late tasks a light red background.
- Update task color if the date is changed.

## Plugin fun
- Include any plugin from unheap.com.


#---------------------------
##Client Side Form Validation
Add client side form validation to Taskly Create, Edit, etc. pages.

##Simple Validtion

-Submit button should be disabled if fields are blank  X
  1)create an alert that notifies for every character entered in the field  X
  2)create a statement that says if there are no characters then submit can't be clicked  X
  3)make sure that the page doesn't go to the red box page  X
-If any required fields are blanks, prevent the form from posting and add an error message to the top of the form.  
-If the form has errors, add and style an error class to append to all invalid fields.
-Disable button when the form submit button is first clicked (to avoid the form being submitted twice)
   *useful info that Levi recommended
   *http://learn.jquery.com/events/introduction-to-events/
   *under "The event object"... form on submit
-Turn date selects into single date picker, use a plug in  X
-Add a 'Clear' button to let users start over on the form. It should clear all errors & field data and disable the submit button.
-Limit task list title to 20 characters
-Validate when focus is taken off of a field

##Reach Goals

-Don't duplicate validation logic (how can you submit a form with AJAX and re-render it all with JavaScript)?
-If a user manually clears the form fields, without using the Clear button, the submit button becomes disabled.



rails ajax jQuery form submit

#-------------------------------------
##Filtering
You're task is to add task filtering to Taskly, purely in JavaScript. Go in order, don't try to do everything all at once! Here's the steps:

example: http://spring.io/guides

Provide a filter that filters out tasks based on name.
If a task list has all tasks filtered out, that task list is hidden
If I clear out the filter input manually, everything is shown
I can click "Clear" to clear out my filter and everything is shown
The filter matches sub-strings on a task. So a task named "This is my awesome task" would be matched by a filter named "awesome".