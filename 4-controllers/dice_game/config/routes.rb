DiceGame::Application.routes.draw do
  #When I go to the root, go to the dice controller and get the roll action
  get '/' => 'dice#roll'
end
