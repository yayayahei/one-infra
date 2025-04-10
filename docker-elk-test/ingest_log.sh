#!/bin/bash
cat logfile.log | nc -c localhost 50000
