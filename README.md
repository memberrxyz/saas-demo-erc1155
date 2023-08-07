# SAAS demo erc1155

ERC1155 demo token used to demo our saas product.

## Setup

```bash
# install dependencies
yarn install

# start chain
yarn chain

# deploy contracts
yarn deploy

# deploy to a specific chain
yarn deploy --network goerli
yarn deploy --network polygonMumbai
yarn deploy --network polygon
```

## Verify contracts

```bash
yarn verify --network goerli
yarn verify --network polygonMumbai
yarn verify --network polygon
```

## Deployments

| Network | Contract Name | Address | OpenSea |
|---|---|---|---|
| goerli | MemberrSaasDemoToken | [0x96a88c3c087a97992007e151e337b1862abc51d8](https://goerli.etherscan.io/address/0x96a88c3c087a97992007e151e337b1862abc51d8) | [OpenSea](https://testnets.opensea.io/collection/memberr-saas-demo-collectibles) |
| mumbai | MemberrSaasDemoToken | [0xdc29fc5a92263806cbf245ce4ec73cf79003fc16](https://mumbai.polygonscan.com/address/0xdc29fc5a92263806cbf245ce4ec73cf79003fc16) | [OpenSea](https://...) |
| polygon | MemberrSaasDemoToken | [0x9e3109dEB1d6158CdA0db7b2f196aD4E443918f4](https://polygonscan.com/address/0x9e3109deb1d6158cda0db7b2f196ad4e443918f4) | [OpenSea](https://opensea.io/collection/memberr-saas-demo-collectibles) |

## License

MIT
