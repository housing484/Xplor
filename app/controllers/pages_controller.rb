class PagesController < ApplicationController
    def about
        @title = 'About Us'
        @content = 'Our mission is to help student get cheap and better housing preferably any time of year '
    end
end
