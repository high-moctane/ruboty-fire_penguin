require "ruboty/fire_penguin/actions/fire_penguin"
require "ruboty/fire_penguin/actions/absolute_fire_penguin"

module Ruboty
  module Handlers
    class FirePenguin < Base
      on(
        /(moyasu|(燃|も)やす)/i,
        name: "fire_penguin",
        description: "1/10 の確率であたりが出る(｀･ω･´)"
      )

      on(
        /(zettaimoyasu|(絶対|ぜったい|ゼッタイ)(燃|も)やす)/i,
        name: "absolute_fire_penguin",
        description: "絶対燃える(｀･ω･´)"
      )

      def fire_penguin(message)
        Ruboty::FirePenguin::Actions::FirePenguin.new(message).call
      end

      def absolute_fire_penguin(message)
        Ruboty::FirePenguin::Actions::AbsoluteFirePenguin.new(message).call
      end
    end
  end
end
