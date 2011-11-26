class ApplicationController < ActionController::Base
  protect_from_forgery
  $activities = {"activity1"=>{"name"=>"petanque"}, 
                 "activity2"=>{"name"=>"vaskemaskiner"},
                 "activity3"=>{"name"=>"gymnastik"},
                 #"activity4"=>{"name"=>"coffee"},
                 #"activity5"=>{"name"=>"walking"},
                 "activity6"=>{"name"=>"indkøb"}
                 }
end
