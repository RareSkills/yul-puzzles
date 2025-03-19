.PHONY: test

test:
	@if [ -z "$(file)" ]; then echo "Usage: make test file=<TestFile>"; exit 1; fi
	forge test --mp test/$(file).t.sol