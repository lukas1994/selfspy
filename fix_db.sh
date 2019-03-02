#!/bin/bash

cd ~/.selfspy
echo '.dump' | sqlite3 selfspy.sqlite | sqlite3 selfspy_repaired.sqlite
mv selfspy.sqlite selfspy_corrupted.sqlite
mv selfspy_repaired.sqlite selfspy.sqlite
