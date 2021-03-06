# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  private
    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

    def default_url_options(options = {})
      { locale: I18n.locale }.merge options
    end

    def after_sign_up_path_for(resource)
      new_user_path
    end

    def after_sign_in_path_for(resource)
      current_user
    end
end
