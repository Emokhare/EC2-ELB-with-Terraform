#!/bin/bash
ips=$(terraform output public_ips)
echo "$ips" > host-inventory