Rails.application.routes.draw do
  get("/", {:controller => "game", :action => "home_method"})

  get("/rock", {:controller => "game", :action => "rock_method"})

  get("/paper", {:controller => "game", :action => "paper_method"})

  get("/scissors", {:controller => "game", :action => "scissors_method"})
    # Controller is the name of a "class" and action a method
      # Controller: app -> controllers
    # Note: in app > controllers, the file must be named name_controller
    # In other words, if your controller is test, your file must be test_controller
    # When I tried to name it to test_controller, it looked for test_controller_controller
end
