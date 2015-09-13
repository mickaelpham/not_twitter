class PagesController < ApplicationController
  before_filter :authorize, except: [:home, :no_bullshit, :no_monetizing, :no_surveillance]

  def home
    redirect_to timeline_url if current_user
  end

  def no_bullshit
  end

  def no_monetizing
  end

  def no_surveillance
  end

  def timeline
    # Initialize a tweet for the "What's happening?" form
    @tweet = Tweet.new

    # Retrieve the list of tweets (posted, retweeted, followed)
    @timeline_tweets = Tweet.all.order(created_at: :desc)
  end
end
