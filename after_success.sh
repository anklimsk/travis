#!/bin/bash

# Move to Plugin
if [ -d "../cakephp/app/Plugin/$PLUGIN_NAME" ]; then
	cd ../cakephp/app/Plugin/$PLUGIN_NAME
fi

if [ "$CODECOVERAGE" == '1' ]; then
	wget -O codecov.sh https://codecov.io/bash
	bash codecov.sh
fi
