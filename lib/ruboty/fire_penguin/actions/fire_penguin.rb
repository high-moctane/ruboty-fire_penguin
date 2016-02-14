module Ruboty
  module FirePenguin
    module Actions
      class FirePenguin < Ruboty::Actions::Base
        def call
          message.reply(fire_penguin)
        end

        private

        def element
          if Random.rand(1..100).between?(1, 69) then "🔥" else "❄️" end
        end

        def penguin
          "🐧"
        end

        def fire_penguin
          <<-"EOS"
#{element}#{element}#{element}
#{element}#{penguin}#{element}
#{element}#{element}#{element}
          EOS
        end
      end
    end
  end
end
