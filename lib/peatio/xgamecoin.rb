require "active_support/core_ext/object/blank"
require "active_support/core_ext/enumerable"
require "active_support/core_ext/string/inquiry"
require "peatio"

module Peatio
  module Xgamecoin
    require "bigdecimal"
    require "bigdecimal/util"
    require "cash_addr"

    require "peatio/xgamecoin/concerns/cash_address_format"

    require "peatio/xgamecoin/blockchain"
    require "peatio/xgamecoin/client"
    require "peatio/xgamecoin/wallet"

    require "peatio/xgamecoin/hooks"

    require "peatio/xgamecoin/version"
  end
end
