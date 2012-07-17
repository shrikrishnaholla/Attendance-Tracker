class InteractionController < ApplicationController
  def interact_page
    # @usnFound = nil#User_db.new
  end

  def show
     @usnFound = User_db.find(params[:usn])
     rescue ActiveRecord::RecordNotFound    
     if !@usnFound
        render "not_found"
     end
  end
end
