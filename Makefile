.PHONY: test

test:
	@if [ -z "$(file)" ]; then echo "Usage: make test file=<TestFile>"; exit 1; fi
	@if [ -n "$(log)" ]; then \
		forge test --mp test/$(file).t.sol -vvv; \
	else \
		forge test --mp test/$(file).t.sol; \
	fi

# Create a new branch
new:
	git checkout -b new

# Push PR
push:
	git add . && git commit -m "push" && git push
	gh pr create --title new --body new
	gh pr merge new --delete-branch --merge