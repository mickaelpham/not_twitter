class TweetsController < ApplicationController
  before_action :authorize

  def create
    @tweet = Tweet.new(tweet_params).tap do |t|
      t.author = current_user
    end

    if @tweet.save
      redirect_to timeline_url
    else
      redirect_to timeline_url, alert: @tweet.errors.full_messages
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
