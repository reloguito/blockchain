## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

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
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
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


## INDICACIONES - PROYECTO FINAL


### 1- Inicialización de un nuevo proyecto con foundry

### 2- Configuración necesaria del archivo foundry.toml y variables de entorno

### 3- Instalación de contratos de Open Zeppelin

```shell
$ forge install OpenZeppelin/openzeppelin-contracts@v4.5.0 --no-commit
```

### 4- Desarrollo del contrato CCNFT

### 5- Desarrollo del contrato de testeo y scripts de despliegue

### 6- Compilación del proyecto.

### 7- Configuración de archivo Makefile

### 7- Despliegue y verificación de contratos mediante scripts de despliegue/verificación

forge script script/DeployBUSD.s.sol:DeployBUSD --broadcast --rpc-url https://eth-sepolia.g.alchemy.com/v2/jHG0aQOQjA3uRU-MyXMxttWTzHob2HF9 --verify -vvvv --etherscan-api-key CF7CY6QZI6KH5AK56F2CG5QQ74W2BI8UUT

BUSD deployed at: 0xf0A97267C523c530d3a4FD9efF096C078CD93F24

forge script script/DeployCCNFT.s.sol:DeployCCNFT --broadcast --rpc-url https://eth-sepolia.g.alchemy.com/v2/jHG0aQOQjA3uRU-MyXMxttWTzHob2HF9 --verify -vvvv --etherscan-api-key CF7CY6QZI6KH5AK56F2CG5QQ74W2BI8UUT

CCNFT deployed at: 0x90DD8E7Ca8f67499647D7C3B8Eee02d07c6e4F3a


### 8- Importación de Tokens BUSD (ERC20) en billetera de Metamask mediante dirección del contrato BUSD desplegado.

## 9- Interacción con la funcion "buy"
### Set de todas las funciones que condicionan a la funcion buy

### 10- Aprobacion del contrato CCNFT

```shell
###  Opción posible: Utilizar remix para compilar el contrato BUSD. Una vez compilado, en la pestañña de Despliegue:
$ Agregar direccion del contrato "BUSD" para poder interactuar con él: At Address "Direcciṕn del contrato BUSD"
$ approve el contrato CCNFT: spender: "Dirección del contrato CCNFT"      value: 10000000000000000000000000 ( el total de _mint(msg.sender, 10000000 * 10 ** 18))
```

### 11- Dentro del contrato CCNFT en Etherscan

```shell
###  seteamos las funciones necesarias (condicionantes) para poder relizar el "buy"
$ SetFeesCollector
$ SetFundsCollector
```

### 12- Ejecución de la funcion buy

forge script scripts/BuyNFTs.s.sol:BuyNFTs --broadcast --rpc-url https://eth-sepolia.g.alchemy.com/v2/jHG0aQOQjA3uRU-MyXMxttWTzHob2HF9 -vvvv

## ADJUNTAR EL ENLACE DE SEPOLIA ETHERSCAN DE LA DIRECCION DEL CONTRATO DESPLEGADO JUNTO A TODAS LAS INTERACCIONES REALIZADAS INCLUIDA LA COMPRA DEL NFT (BUY).
## ADJUNTAR UNA CAPTURA DE PANTALLA DEL NFT "CCNFT" Y LOS TOKENS ERC20 "BUSD" IMPORTADOS A METAMASK. 
## COMPARTIR EL ENLACE DE GITHUB QUE CONTIENE EL PROYECTO COMPLETO.


