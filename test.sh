#!/usr/bin/env bash 

go build hello.go
out=$(./hello)

# we should check out == hello
if [ "${out}" == "hello" ];then
  echo "GOOD: test pass"
else
  echo "BAD: test fail"
  exit 1
fi
