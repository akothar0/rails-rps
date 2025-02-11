Rails.application.routes.draw do

  get("/", {:controller => "zebra", :action => "walnut"}) do
  end

  get("/rock", {:controller => "zebra", :action => "giraffe"}) do
  end

  get("/paper", {:controller => "zebra", :action => "lion"}) do
  end

  get("/scissors", {:controller => "zebra", :action => "tiger"}) do
  end

end
