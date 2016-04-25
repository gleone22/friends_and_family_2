class Comment < ActiveRecord::Base
  belongs_to :photo

  def new
  end
  
end
