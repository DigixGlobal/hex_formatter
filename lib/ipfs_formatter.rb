require "ipfs_formatter/version"

require 'base58'

module IpfsFormatter
  class Hash
    class << self
      def encode(data)
        payload = data.gsub("0x", "").scan(/../).map(&:hex)
        raise ArgumentError if payload.length != 32
        if payload[0] > 60
          new_payload = "01" + data.gsub("0x", "")
        else
          new_payload = "02" + data.gsub("0x", "")
        end
        return "Qm#{::Base58.int_to_base58(new_payload.hex, :bitcoin)}"
      end

      def decode(data)
        payload = data.gsub("Qm", "")
        return "0x#{::Eth::Utils.bin_to_hex(::Base58.base58_to_binary(payload, :bitcoin))[2..-1]}"
      end

    end
  end
end
