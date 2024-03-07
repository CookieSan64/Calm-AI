fx_version 'bodacious'
games { 'gta5' }

-- Define the resource metadata
name 'Calm-AI'
description 'A simple reboot that also includes an AI density manager'
author 'ChouCookieSan'
version '1.0.0'


-- Client Scripts
client_script "config.lua"
client_script "client.lua"

-- Server Scripts
server_script "config.lua"

-- Calling Files For The Script
files {
	'events.meta',
	'relationships.dat'
}

-- Defining the data file
data_file 'EVENTS_OVERRIDE_FILE' 'events.meta'
