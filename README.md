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
|---|---|---|
| polygon | MemberrCollectible | [0x00000](https://polygonscan.com/address/0x00000) | [OpenSea](https://testnets.opensea.io/collection/memberr) |

## License

MIT
