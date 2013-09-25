require "sass/strings/version"
require "sass"

module Sass::Script::Functions
    def change_extension(url, new_extension)

        url = url.value
        no_ext = File.dirname(url) + '/' + File.basename(url, File.extname(url))

        new_extension.sub!(/^\./, "")

        Sass::Script::String.new(no_ext + '.' + new_extension)
    end
end

