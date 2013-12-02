require 'sinatra/base'

module Creel
  class UI < Sinatra::Base
    include Creel::Helpers

    configure do
      Creel::DB = Mongo::Connection.new.db( 'creel' )
    end

    ### GET /any/url => generic text response
    get '*' do
      "nothing to see here"
    end

    ### POST /any/url => post to mongo
    post '*' do
      coll = self.translate_path( params[:splat] )
      p coll
      self.db.collection( coll ).insert( params )
    end

  end # class UI
end # module Creel
