Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index"})
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:username", { :controller => "users", :action => "show"})
  post("/add_user", { :controller => "users", :action => "create"})
  post("/update_user/:username", { :controller => "users", :action => "update"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_id", { :controller => "photos", :action => "show"})
  get("/delete_photo/:toast_id", { :controller => "photos", :action => "baii"})
  post("/insert_photo", { :controller => "photos", :action => "create"})
  post("/update_photo/:modify_id", { :controller => "photos", :action => "update"})
  post("/insert_comment", { :controller => "photos", :action => "add_comment" })

  
end
