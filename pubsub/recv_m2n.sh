#!/bin/bash
 
###########################################
# the number of messages to send
###########################################
message_count=50
 
###########################################
# the topic to send the messages to
####################################
###########################################
# for loop in bash
###########################################
for (( c=0; c<$message_count; c++ ))
do
        gcloud pubsub subscriptions pull PROD-subs-A --auto-ack
	gcloud pubsub subscriptions pull PROD-subs-B --auto-ack
done
