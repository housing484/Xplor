class PagesController < ApplicationController
    def about
        @title = 'About Us'
        @content = 'Our mission is to help student get cheap and better housing preferably any time of year '
    end
    
    def signin_signup
        @title = 'Sign In to Xplor!'
    end
    
    def signup
        @title = 'Welcome To Xplor!'
    end
end
