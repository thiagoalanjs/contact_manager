class ContactsController < ApplicationController
  def index
    @contacts = Contact.page
  end
end
