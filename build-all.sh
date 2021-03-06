#!/usr/bin/env bash

echo '================================================================================'
echo ' DEFAULT'
echo '================================================================================'

dub build -q

echo '================================================================================'
echo ' SIL LIBRARY'
echo '================================================================================'

dub build -q -c sil-library

echo '================================================================================'
echo ' SIL PLUGIN'
echo '================================================================================'

dub build -q -c plugin

echo '================================================================================'
echo ' TEST'
echo '================================================================================'

dub build -q --root=test

echo '================================================================================'
echo ' EXAMPLE'
echo '================================================================================'

dub build -q --root=example

