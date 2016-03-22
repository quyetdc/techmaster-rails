class SubscribesController < ApplicationController
  def create
    subscriber = Subscriber.new(email: params[:email])

    if subscriber.valid? && subscriber.save
      Notifier.subscribe(subscriber).deliver
      render :json => { :result => "success" }
    else
      render :json => { :result => "not-success", :massage => subscriber.errors.full_messages }
    end
  end

end
