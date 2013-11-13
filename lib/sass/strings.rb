require "sass/strings/version"
require "sass"

module Sass::Script::Functions
    def change_extension(url, new_extension)

        url = url.value
        no_ext = File.dirname(url) + '/' + File.basename(url, File.extname(url))

        new_extension = new_extension.value
        new_extension.sub!(/^\./, "")

        Sass::Script::String.new(no_ext + '.' + new_extension)
    end

    def replace(str, search, replace)
        Sass::Script::String.new(str.value.gsub(search.value, replace.value))
    end

    def extension(url)
        File.extname(url.value)
    end
end

