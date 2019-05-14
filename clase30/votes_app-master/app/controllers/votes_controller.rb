class VotesController < ApplicationController
  def create
    p params
    language = Language.find(params[:language_id])
    language.votes.create(user: current_user)
    redirect_to root_path
  end
end
