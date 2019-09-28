# About

This repository contains Docker images with Java JRE.

# Java8

Enable the detection of container-limited amount of RAM using the following options:

    $ java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap
