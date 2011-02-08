require 'sinatra/base'

module Creel
  class UI < Sinatra::Base
    include Creel::Helpers

    ### GET /any/url => generic text response
    get '*' do
      "nothing to see here"
    end

  end
end
