#!/usr/bin/env go

out=$(go ./main.go)

# we should check out == hello
if [ "${out}" == "hello" ];then
  echo "GOOD: test pass"
else
  echo "BAD: test fail"
  exit 1
fi
