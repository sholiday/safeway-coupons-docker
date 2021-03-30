#!/bin/sh
while :
do
  python /safeway-coupons -c /safeway-coupons.config -d
  echo "Sleeping..."
  sleep 5m
done
