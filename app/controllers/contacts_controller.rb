class ContactsController < ApplicationController
  before_action :find_contact,  only: [:edit, :update, :destroy]

  def index
    if params[:group_id] && !params[:group_id].empty?
       #@contacts = Contact.where(group_id: params[:group_id]).page(params[:page])
       @contacts = Group.find(params[:group_id]).contacts.page(params[:page])   
    else
       @contacts = Contact.order(created_at: :desc).page(params[:page])
    end
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Contact was successfully created"
      redirect_to contacts_path
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @contact.update(contact_params)
      flash[:success] = "Contact was successfully updated."
      redirect_to contacts_path
    else 
      render 'edit'
    end
  end
  
  def destroy 
    @contact.destroy 
      flash[:success] = "Contact was successfully deleted."
      redirect_to contacts_path
  end


  private

  def contact_params  
    params.require(:contact).permit(:name, :email, :company, :address, :phone, :group_id, :avatar)
  end

  def find_contact
    @contact = Contact.find(params[:id])
  end

end
