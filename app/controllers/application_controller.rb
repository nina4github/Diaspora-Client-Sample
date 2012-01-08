class ApplicationController < ActionController::Base
  protect_from_forgery
  $activities = { 
                 #"activity1"=>{"name"=>"petanque","value"=>"petanque"}, 
                 "activity2"=>{"name"=>"laundry","value"=>"vaskemaskiner"},
                 "activity3"=>{"name"=>"gym","value"=>"gymnastik"},
                 "activity4"=>{"name"=>"coffee","value"=>"kafeen"},
                 #"activity5"=>{"name"=>"walking","value"=>"gang"},
                 "activity6"=>{"name"=>"shopping","value"=>"indk&oslash;b"}
                 }
end
