class Contact < ApplicationRecord
  belongs_to :group 

  paginates_per 2
  
  def gravatar
    hash = Digest::MD5.hexdigest(email.downcase)
    "https://www.gravatar.com/avatar/#{hash}"
  end
  
end
