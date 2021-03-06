Rails.application.routes.draw do
  SiteController.action_methods.each do |action|
    get "/#{action}", to: "site##{action}", as: "#{action}"
  end

  root to: "site#home"
end
