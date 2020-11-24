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
        echo "sending message ID: $c"
	gcloud pubsub topics publish $topic_name --message="Message number: $c" --attribute="origin=epa-decoupling-lab, username=ryandeering1" --ordering-key=test1
done

