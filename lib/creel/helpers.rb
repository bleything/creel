module Creel
  module Helpers

    ### translates a path into a collection name
    def translate_path( path )
      path = [path].flatten.join('_')

      return "root" if path.empty? or path == "/"
      return path.gsub( %r(/), '_' )
    end

  end
end
