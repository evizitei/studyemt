class SortingChallengesController < ApplicationController
  def index
    @sorting_challenges = SortingChallenge.all
  end
  
  def show
    @sorting_challenge = SortingChallenge.find(params[:id])
  end
  
end