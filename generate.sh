#!/usr/bin/env bash
MENU_NAME="menu-admin-guide-v6-enterprise"
CWD=$PWD
EDBIN=cells-enterprise

echo "# Generating Flows Templates - check 1_preset_jobs/additions and create new entries if necessary"
${EDBIN} admin jobs tpl-docs --menu-folder ${CWD}/1_preset_jobs
${EDBIN} admin jobs tpl-screens --menu-folder ${CWD}/images/1_preset_jobs

echo "# Generating Actions, Filters and Queries"
${EDBIN} doc flows actions --menu-folder ${CWD}/2_actions
${EDBIN} doc flows selectors --menu-folder ${CWD}/3_filter-queries

echo "# Generating GoTemplate Functions docs"
${EDBIN} doc flows --generate cells --menu-folder ${CWD}/4_template-functions
