module Peatio
  module Xgamecoin
    module Hooks
      BLOCKCHAIN_VERSION_REQUIREMENT = "~> 1.0.0"
      WALLET_VERSION_REQUIREMENT = "~> 1.0.0"

      class << self
        def check_compatibility
          unless Gem::Requirement.new(BLOCKCHAIN_VERSION_REQUIREMENT)
                                 .satisfied_by?(Gem::Version.new(Peatio::Blockchain::VERSION))
            [
              "Xgamecoin blockchain version requirement was not satisfied by Peatio::Blockchain.",
              "Xgamecoin blockchain requires #{BLOCKCHAIN_VERSION_REQUIREMENT}.",
              "Peatio::Blockchain version is #{Peatio::Blockchain::VERSION}"
            ].join('\n').tap { |s| Kernel.abort s }
          end

          unless Gem::Requirement.new(WALLET_VERSION_REQUIREMENT)
                                 .satisfied_by?(Gem::Version.new(Peatio::Wallet::VERSION))
            [
              "Xgamecoin wallet version requirement was not satisfied by Peatio::Wallet.",
              "Xgamecoin wallet requires #{WALLET_VERSION_REQUIREMENT}.",
              "Peatio::Wallet version is #{Peatio::Wallet::VERSION}"
            ].join('\n').tap { |s| Kernel.abort s }
          end
        end

        def register
          Peatio::Blockchain.registry[:Xgamecoin] = Xgamecoin::Blockchain
          Peatio::Wallet.registry[:Xgamecoind] = Xgamecoin::Wallet
        end
      end

      if defined?(Rails::Railtie)
        require "peatio/Xgamecoin/railtie"
      else
        check_compatibility
        register
      end
    end
  end
end
