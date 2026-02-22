#!/bin/bash

demo_local() {
  local var="Inside Function"
  echo $var
}

demo_global() {
  var2="Global Variable"
}

demo_local
echo "Outside local var: ${var:-not available}"

demo_global
echo "Outside global var: $var2"

