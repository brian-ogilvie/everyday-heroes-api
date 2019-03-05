class UserAnnouncementsController < ApplicationController
  def new_announcements
    begin
      announcements = UserAnnouncement.where({user_id: current_user[:id], delivered: false})
      render json: {announcements: announcements}
    rescue ActiveRecord::RecordNotFound
      render json: {error: "Record Not Found"}, status: 404
    rescue Exception
      render json: {error: "Internal Server Error"}, status: 500
    end
  end
end
