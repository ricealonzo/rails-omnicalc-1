Rails.application.routes.draw do
  get("/",{ :controller => "calculations", :action => "home"}) 
  get("/square/new",{ :controller => "calculations", :action => "home"}) 
  get("/square/results",{ :controller => "calculations", :action => "square_results"}) 
  get("/square_root/new",{ :controller => "calculations", :action => "square_root"}) 
  get("/square_root/results",{ :controller => "calculations", :action => "square_root_results"}) 
  get("/payment/new",{ :controller => "calculations", :action => "payment"}) 
  get("/payment/results",{ :controller => "calculations", :action => "payment_results"}) 
  get("/random/new",{ :controller => "calculations", :action => "random"}) 
  get("/random/results",{ :controller => "calculations", :action => "random_results"}) 
  
# get("/random/new") do
#   erb(:random)
# end

# get("/random/results") do
#   @min_num = params.fetch("min").to_i
#   @max_num = params.fetch("max").to_i
#   @random_num = rand(@min..@max)
#   erb(:random_results)
# end
end
