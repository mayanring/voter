class VotesController < ApplicationController
  before_filter :ensure_logged_in

  def index
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    @vote.user = current_user

    if @vote.save
      respond_to do |format|
        format.html { redirect_to votes_url }
        format.json do
          render :json => @vote.to_json
        end
      end

    else
      render :index
    end
  end

  private
  def vote_params
    params.require(:vote).permit(:response)
  end

  def ensure_logged_in
    redirect_to root_url unless current_user
  end
end
