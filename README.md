## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/BasePassDeploy.s.sol:CounterScript --rpc-url $BASE_MAINNET_RPC --private-key $PRIVATE_KEY --etherscan-api-key $BASESCAN_API_KEY --verifier-url $BASE_MAINNET_VERIFIER_URL --broadcast --verify 

forge script script/BasePassDeploy.s.sol:CounterScript --rpc-url $BASE_SEPOLIA_RPC --private-key $PRIVATE_KEY --etherscan-api-key $BASESCAN_API_KEY --verifier-url $BASE_SEPOLIA_VERIFIER_URL --broadcast --verify
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
