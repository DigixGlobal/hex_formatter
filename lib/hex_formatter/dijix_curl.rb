module HexFormatter

  class DijixCurl

    def get(hex)
      formatter = HexFormatter::Ipfs.new
      ipfs_address = formatter.encode(hex)
      data = JSON.parse(Typhoeus::Request.get("https://ipfs.digix.global/ipfs/#{ipfs_address}").response_body)
      return data
    end
  end

end
