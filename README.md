## Compilar nuestro Smart Contrat
> `npx truffle compile`

## Deploy local

> `npx ganache-cli --deterministic`

## teniendo nuestra blockchain publicada localmente ejecutamos

#### esto es para subit nuestro contrato o migrarlo a la blockchain local

> `npx truffle migrate --network development`

## con el siguiente comando ejecutaras un terminal para el contrato

> `npx truffle console --network development`

###

> `my_contract = await MyContract.deployed()`

###

> `await my_contract.hello()`

###

> `await my_contract.setHello("Probando...")`

###

> `await my_contract.hello()`
