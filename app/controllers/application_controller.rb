require 'json'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/contacts" do
    contacts=Contact.all
    contacts.to_json
  end

  get "/contacts/:id" do
    contacts=Contact.find(params[:id])

    contacts.to_json
  end
  post "/contacts" do
    Contact.create(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      location: params[:location],
      status: params[:status],
      relation: params[:relation]
    )
  end
  put '/contacts/:id' do
    contact = Contact.find(params[:id])

    if contact
      contact.update(
        name: params[:name],
        email: params[:email],
        phone: params[:phone],
        location: params[:location],
        status: params[:status],
        relation: params[:relation]
      )
      # Optionally, you can return the updated contact as JSON
      contact.to_json
    else
      status 404
      'Contact not found'
    end
  end

  delete '/contacts/:id' do
    contact = Contact.find(params[:id])
     contact.destroy
  end

end
