#!/bin/sh
while :
do
  python /safeway-coupons -c /safeway-coupons.config -d
  echo "Sleeping for 25 hours..."
  sleep 25h
done
