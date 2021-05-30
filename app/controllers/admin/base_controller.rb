module Admin
  class BaseController < ApplicationController
    before_action :check_if_admin

    private

    def check_if_admin
      redirect_to root_path unless current_user.admin?
    end
  end
end
