class SongsController < ApplicationController
    def index
        @songs = Songs.all
    end

end