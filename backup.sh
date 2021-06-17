#!/bin/bash
date1=$(date +%Y%m%d-%H%M)
file_name="pg-backup-"${date1}".tar"
PGPASSWORD=$PASS pg_dumpall -h $HOST -p $PORT -U $USER > /tmp/pg-backup-"${date1}".tar
aws s3 cp /tmp/$file_name $S3_BUCKET
