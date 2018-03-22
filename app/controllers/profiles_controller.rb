class ProfilesController < ApplicationController
  def show
    @profiles = User.find(params[:id])
  end
end
