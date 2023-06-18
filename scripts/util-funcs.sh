#!/bin/bash

function print-path() {
  echo -e ${PATH//:/\\n}
}

