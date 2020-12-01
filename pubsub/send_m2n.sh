#!/bin/bash
 
###########################################
# the number of messages to send
###########################################
message_count=25
 
###########################################
# the topic to send the messages to
###########################################
topic_name=PROD
 
###########################################
# for loop in bash
###########################################
for (( c=0; c<$message_count; c++ ))
do
        gcloud pubsub topics publish $topic_name --message="Message number: $c from Pub 1"
        gcloud pubsub topics publish $topic_name --message="Message number: $c from pub 2"
done

