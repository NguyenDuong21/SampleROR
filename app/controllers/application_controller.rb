class ApplicationController < ActionController::Base
    include SessionsHelper
    before_action :set_locale

    private

    # Confirms a logged-in user.
    def logged_in_user
        unless logged_in?
            store_location
            flash[:danger] = "Please log in."
            redirect_to login_url
        end
    end

    def set_locale
        I18n.locale = params[:locale] || I18n.default_locale
    end
    
    def default_url_options
        {locale: I18n.locale}
    end
end
