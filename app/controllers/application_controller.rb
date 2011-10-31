class ApplicationController < ActionController::Base
  protect_from_forgery
  $activities = {"activity1"=>{"name"=>"petanque"}, 
                 "activity2"=>{"name"=>"laundry"},
                 "activity3"=>{"name"=>"gym"},
                 "activity4"=>{"name"=>"coffee"},
                 "activity5"=>{"name"=>"walking"},
                 "activity6"=>{"name"=>"shopping"}
                 }
end
