#!/bin/bash

set -e

#module de réécriture d'URL
a2enmod rewrite

exec '$@'