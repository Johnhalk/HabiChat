class UsersController < ApplicationController
  def calendar
    @events = Event.all
  end
end
