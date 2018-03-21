# HexFormatter

Convert IPFS addresses and Digix Asset addresses to hexadecimal and back

## Installation

```
gem install hex_formatter
```

## Gemfile

```
gem 'hex_formatter'
```

## Usage

```
require 'hex_formatter'
hf = HexFormatter::Ipfs.new
hf.encode('0x275406a99ea1b7ac819064670c34a2cbebab79c46c85b7c0e9f3feb4b6364dc5')
# => Qme79xMyGG3QTL2X9rvj5pqQu3KjTUJboN5xLDwTnoFv8C
hf = HexFormatter::Ipfs.new 
hf.decode('Qme79xMyGG3QTL2X9rvj5pqQu3KjTUJboN5xLDwTnoFv8C')
# => "0x275406a99ea1b7ac819064670c34a2cbebab79c46c85b7c0e9f3feb4b6364dc5"
```
