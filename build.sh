#!/bin/sh
# Usage: ./build.sh [SYSTEM_MB] [VENDOR_MB] [PRODUCT_MB]
# Example: ./build.sh 5120 1024 1024  ->  Mi439_rdp_S5120_V1024_P1024.zip
S=${1:-5120}; V=${2:-1024}; P=${3:-1024}
OUT="Mi439_rdp_S${S}_V${V}_P${P}.zip"
rm -f "$OUT"
zip -r9 "$OUT" META-INF
echo "Built $OUT"
