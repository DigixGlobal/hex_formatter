# IpfsFormatter

Convert IPFS addresses to hexadecimal and back

## Installation

```
gem install ipfs_formatter
```

## Gemfile

```
gem 'ipfs_formatter'
```

## Usage

```
require 'ipfs_formatter'
IpfsFormatter::Hash.encode('0x275406a99ea1b7ac819064670c34a2cbebab79c46c85b7c0e9f3feb4b6364dc5')
# => Qme79xMyGG3QTL2X9rvj5pqQu3KjTUJboN5xLDwTnoFv8C
IpfsFormatter::Hash.decode('Qme79xMyGG3QTL2X9rvj5pqQu3KjTUJboN5xLDwTnoFv8C')
# => "0x275406a99ea1b7ac819064670c34a2cbebab79c46c85b7c0e9f3feb4b6364dc5"
```
