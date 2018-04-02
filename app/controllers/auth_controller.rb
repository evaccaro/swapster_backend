class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create, :show]

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      render json: {
        name: user.name,
        email: user.email,
        id: user.id,
        admin: user.admin,
        jwt: issue_token({id: user.id}),
        events:
          user.user_events.map do |user_event|
            EventSerializer.new(user_event.event)
          end
      }
    else
      render({json: {error: 'User is invalid'}, status: 401})
    end
  end

  def show
    if current_user
      render json: {
        name: @user.name,
        email: @user.email,
        id: @user.id,
        admin: @user.admin,
        jwt: issue_token({id: @user.id}),
        events:
          @user.user_events.map do |user_event|
            EventSerializer.new(user_event.event)
          end
      }
    else
      render json: {error: 'Invalid token'}, status: 401
    end
  end


end
