require 'json'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/contacts" do
    contacts=Contact.all
    contacts.to_json
  end

  post "/contacts" do
    Contact.create(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      location: params[:location],
      status: params[:status],
      relation: params[:relation],
    )
  end

  delete "/contacts/:id" do
    contacts=Contact.find(params[:id])
    contacts.destroy
  end
end
