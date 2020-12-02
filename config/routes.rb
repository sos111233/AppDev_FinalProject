Rails.application.routes.draw do

get("/home", {:controller=> "application", :action=>"index"})
get("/home/date=:date", {:controller=> "application", :action=>"show"})
post("/home/date=:date", {:controller=> "application", :action=>"holiday"})
get("/",{:controller=> "application", :action=>"home"})
get("/result", {:controller=> "application", :action=>"flatpickr"})

  # ======= Add Your Routes Above These =============
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
