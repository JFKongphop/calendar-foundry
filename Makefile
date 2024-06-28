# tc:
# 	forge test -vv --match-path test/Counter.t.sol

tc:
	forge test -vv --match-path test/Calendar.t.sol

ifeq (,$(wildcard .env))
  $(error .env file not found)
endif
include .env

deploy:
	forge create --rpc-url $(HOLESKY) --private-key $(PRIVATE_KEY) src/Counter.sol:Counter --verify --verifier etherscan --etherscan-api-key $(ETHERSCAN_API_KEY)