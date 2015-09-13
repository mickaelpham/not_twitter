class TweetsController < ApplicationController
  before_action :authorize

  before_action :set_tweet, only: [:destroy]

  # POST /tweets
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

  # DELETE /tweets/1
  def destroy
    @tweet.destroy
    redirect_to timeline_url, notice: 'Tweet was successfully deleted.'
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
