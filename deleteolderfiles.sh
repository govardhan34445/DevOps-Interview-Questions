#!/bin/bash
find /path/to/files* -mtime +5 -exec rm {} \;
