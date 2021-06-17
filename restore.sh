#!/bin/bash

aws s3 cp $S3_BUCKET/$BUCKET_FILE /tmp
PGPASSWORD=$PASS psql -h $HOST -p $PORT -U $USER -f /tmp/$BUCKET_FILE
