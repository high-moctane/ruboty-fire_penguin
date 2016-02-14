require "ruboty/fire_penguin/actions/fire_penguin"

module Ruboty
  module Handlers
    class FirePenguin < Base
      on(
        /(moyasu|(燃|も)やす)/,
        name: "fire_penguin",
        description: "generate burning penguin"
      )

      def fire_penguin(message)
        Ruboty::FirePenguin::Actions::FirePenguin.new(message).call
      end
    end
  end
end
