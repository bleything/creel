require 'sinatra/base'

module Creel
  class UI < Sinatra::Base

    ### GET /any/url => generic text response
    get '*' do
      "nothing to see here"
    end

  end
end
