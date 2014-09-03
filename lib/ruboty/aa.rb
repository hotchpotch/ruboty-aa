require "ruboty/aa/version"
require "artii"

module Ruboty
  module Handlers
    class Aa < Base
      on(
        /aa(?:\s+(.*))?/,
        name: 'aa',
        description: 'Ascii Art'
      )

      def prefix
        ENV['AA_PREFIX'] ||= "```\n"
      end

      def suffix
        ENV['AA_SUFFIX'] ||= "\n```"
      end


      def artii
        @artii ||= Artii::Base.new(font: (ENV['AA_FONT'] || 'big'))
      end

      def aa(message)
        word = message.match_data[1]
        if word && !word.empty?
          message.reply prefix + artii.asciify(word).chomp + suffix
        end
      end
    end
  end
end
