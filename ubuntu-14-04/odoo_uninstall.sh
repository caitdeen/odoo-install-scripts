#!/bin/bash
################################################################################
# Script for Uninstall: ODOO Community server on Ubuntu 14.04 LTS
# Author: Aandrees Rodriguez, CEI 2016
#-------------------------------------------------------------------------------
#  
# This script will install ODOO Server on
# clean Ubuntu 14.04 Server
#-------------------------------------------------------------------------------
# USAGE:
#
# odoo-uninstall
#
# EXAMPLE:
# ./odoo-uninstall 
#
################################################################################
#
#
	
#--------------------------------------------------
# Stop Service
#--------------------------------------------------
echo -e "\n---- Stop service ----"
service odoo-server stop
#--------------------------------------------------
# Remove config files
#--------------------------------------------------
echo -e "\n---- Remove config files ----"
rm -f /etc/odoo-server.conf
rm -f /etc/odoo.conf
#--------------------------------------------------
# Deletoe code
#--------------------------------------------------
echo -e "\n---- delete code ----"
rm -R /opt/odoo
#--------------------------------------------------
# Remove init.d services
#--------------------------------------------------
echo -e "\n---- init.d services ----"
update-rc.d -f odoo-server remove
rm -f /etc/init.d/odoo-server
#--------------------------------------------------
# Remove logs
#--------------------------------------------------
echo -e "\n---- Remove logs ----"
rm -R /var/log/odoo