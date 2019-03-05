class AnnouncementsController < ApplicationController
  def new_announcements
    begin
      announcements = current_user.announcements.where({user_announcements: {delivered: false}})
      json_announcements = announcements.map do |a|
        a.as_json()
      end
      render json: {announcements: json_announcements}
    rescue ActiveRecord::RecordNotFound
      render json: {error: "Record Not Found"}, status: 404
    rescue Exception
      render json: {error: "Internal Server Error"}, status: 500
    end
  end
end
