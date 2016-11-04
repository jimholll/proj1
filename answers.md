# Q0: Why is this error being thrown?

Because we haven't yet created the pokemon controller. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They're coming from the seeds.rb file, where they're given one of four names and a level between 1 and 20. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Okay, so from what I understand, the button_to method is basically a POST method that 1) displays the text "Throw a Pokeball!" 
2) submits the id of the pokemon currently show in the homepage to the capture method of the pokemon controller designated by the capture_path, which I assume is followed via routes.rb and 3) is medium sized. Then finally, 4) we override the basic POST default button function and change it to a PATCH function instead, so we can actually alter the pokemon and assign it to its trainer.  

# Question 3: What would you name your own Pokemon?
Digimongo. 

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to the trainer_path, which is basically the url extension '/trainers/' and then I appended the trainer id, so that the website would know which trainer's profile to display. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The application.html.erb file renders messages. We're passing an error message that then gets rendered. 

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
