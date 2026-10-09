#!/usr/bin/env bash
# Calculate simple interest: principal × annual rate (%) × time (years) / 100.
set -euo pipefail

usage() {
  printf 'Usage: %s [principal rate_percent time_years]\n' "${0##*/}" >&2
  printf 'Or run without arguments to enter the values interactively.\n' >&2
}

read_value() {
  local prompt="$1" value
  while true; do
    read -r -p "$prompt" value || { printf '\nInput cancelled.\n' >&2; return 1; }
    value=${value%$'\r'}
    if valid_number "$value"; then
      REPLY="$value"
      return 0
    fi
    printf 'Please enter a nonnegative finite number.\n' >&2
  done
}

valid_number() {
  [[ "$1" =~ ^([0-9]+([.][0-9]*)?|[.][0-9]+)$ ]] || return 1
  awk -v n="$1" 'BEGIN { if (n+0 == n+0 && (n+0) < 1e308) exit 0; exit 1 }'
}

if (( $# == 0 )); then
  read_value 'Enter the principal amount: ' || exit 1; principal=$REPLY
  read_value 'Enter the annual interest rate (%): ' || exit 1; rate=$REPLY
  read_value 'Enter the time (years): ' || exit 1; time=$REPLY
elif (( $# == 3 )); then
  principal=$1; rate=$2; time=$3
  for value in "$principal" "$rate" "$time"; do
    if ! valid_number "$value"; then
      printf 'Error: principal, rate, and time must be nonnegative finite numbers.\n' >&2
      usage
      exit 2
    fi
  done
else
  usage
  exit 2
fi

if ! interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN {
  result = (p * r * t) / 100
  if (result != result || result < 0 || result >= 1.7976931348623157e308) exit 1
  printf "%.2f", result
}'); then
  printf 'Error: calculated simple interest is not a finite representable number.\n' >&2
  exit 2
fi
printf 'Simple interest: %s\n' "$interest"
