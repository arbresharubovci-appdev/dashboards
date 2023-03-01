Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/dashboard" , {:controller => "currencies", :action => "dashboards"})
  get("/forex", { :controller => "currencies", :action => "first_currency"})
  get("/forex/:from_currency", { :controller => "currencies", :action => "second_currency"})
  get("/symbols", { :controller => "currencies", :action => "symbols_currency"})
  
  get("/forex/:from_currency/:next_currencie", { :controller => "currencies", :action => "money"})

end
