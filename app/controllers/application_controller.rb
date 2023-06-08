require 'json'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/contacts" do
    contacts=Contact.all
    contacts.to_json
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


  put "contacts/:id" do
    contacts=Contact.find(params[:id])
    contacts.update(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      location: params[:location],
      status: params[:status],
      relation: params[:relation],
    )

    contacts.to_json
  end

  delete "/contacts/:id" do
    contacts=Contact.find(params[:id])
    contacts.destroy
  end
end
