.PHONY: clean-pyc

TEST_PATH=./test.sh

clean-pyc:
    find . -name '*.pyc' -exec rm --force {} +
    find . -name '*.pyo' -exec rm --force {} +
   name '*~' -exec rm --force  {} 

test: clean-pyc
    py.test --verbose --color=yes $(TEST_PATH)

run:
     python ./arith.py