class UsersController < ApplicationController
  before_action :set_vacancy, only: [:show, :edit, :update, :destroy]

  # GET /vacancies
  # GET /vacancies.json
  def index
    @users = User.all
  end

end
