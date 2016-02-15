module Ruboty
  module FirePenguin
    module Actions
      class FirePenguin < Ruboty::Actions::Base
        def call
          message.reply(fire_penguin)
        end

        private

        def element
          if Random.rand(1..100).between?(1, 75) then "🔥" else "❄️" end
        end

        def penguin
          "🐧"
        end

        def generate_fire_penguin
          <<-"EOS"
  #{element}#{element}#{element}
  #{element}#{penguin}#{element}
  #{element}#{element}#{element}
          EOS
        end

        def message_win
          "🎉🎊🎯あたり🎯🎊🎉\n\n🐧＜燃やすな💢💢💢"
        end

        def message_lose
          "🐧＜ハズレペンペン"
        end

        def fire_penguin
          "ﾃｯﾃｯﾃｰ↑ﾃｯﾃｯﾃｰ↓ﾃｯﾃｯﾃｰ↑ﾃｯﾃｯﾃｰ↓\n\n" +
          (result = generate_fire_penguin) +
          "\n" +
          if result == "  🔥🔥🔥\n  🔥🐧🔥\n  🔥🔥🔥\n"
            message_win
          else
            message_lose
          end
        end
      end
    end
  end
end
