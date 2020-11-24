#!/bin/bash
 
###########################################
# the number of messages to send
###########################################
message_count=25
 
###########################################
# the topic to send the messages to
###########################################
topic_name=newsfeed-topic
 
###########################################
# for loop in bash
###########################################
for (( c=0; c<$message_count; c++ ))
do
        gcloud pubsub subscriptions pull newsfeed-sub-inorder --auto-ack
done
