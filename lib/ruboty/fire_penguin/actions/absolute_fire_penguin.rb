module Ruboty
  module FirePenguin
    module Actions
      class AbsoluteFirePenguin < Ruboty::Actions::Base
        def call
          message.reply(absolute_fire_penguin)
        end

        private

        def absolute_fire_penguin
          "ﾃｯﾃｯﾃｰ↑ﾃｯﾃｯﾃｰ↓ﾃｯﾃｯﾃｰ↑ﾃｯﾃｯﾃｰ↓\n\n" +
          "  🔥🔥🔥\n  🔥🐧🔥\n  🔥🔥🔥\n" +
          "\n🐧＜そんなあたり方で満足なのか？\n"
        end
      end
    end
  end
end
