class VotesController < ApplicationController
  before_filter :ensure_logged_in

  def index
    @vote = Vote.new
  end

  def create

  end

  def show

  end

  private
  def ensure_logged_in
    redirect_to root_url unless current_user
  end
end
