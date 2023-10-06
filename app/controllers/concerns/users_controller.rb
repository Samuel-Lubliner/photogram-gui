class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index" })
  end

  def show
    url_username = params.fetch("username")
    matching_usernames = User.where({ :username => url_username })
    @the_user = matching_usernames.at(0)
    render({ :template => "user_templates/show" })
  end

  def create
    input_username = params.fetch("input_username")
    user = User.new
    user.username = input_username
    user.save
    redirect_to("/users/#{user.username}")
  end

  def update
    url_username = params.fetch("username")
    new_username = params.fetch("input_username")
    matching_usernames = User.where({ :username => url_username })
    the_user = matching_usernames.at(0)
    the_user.username = new_username
    the_user.save
    redirect_to("/users/#{the_user.username}")
  end
end
