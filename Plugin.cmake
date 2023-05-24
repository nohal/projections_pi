# ~~~
# Summary:      Local, non-generic plugin setup
# Copyright (c) 2020-2021 Mike Rossiter
# Copyright (c) 2022 Pavel Kalian
# License:      GPLv3+
# ~~~

# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 3 of the License, or (at your option) any later
# version.

# -------- Options ----------

set(OCPN_TEST_REPO
    "nohal/opencpn-plugins"
    CACHE STRING "Default repository for untagged builds")
set(OCPN_BETA_REPO
    "nohal/projections_pi-beta"
    CACHE STRING "Default repository for tagged builds matching 'beta'")
set(OCPN_RELEASE_REPO
    "nohal/projections_pi-stable"
    CACHE STRING "Default repository for tagged builds not matching 'beta'")

#
# -------  Plugin setup --------
#
set(PKG_NAME projections_pi)
set(PKG_VERSION "0.3.0")
set(PKG_PRERELEASE "") # Empty, or a tag like 'beta'

set(DISPLAY_NAME projections) # Dialogs, installer artifacts, ...
set(PLUGIN_API_NAME projections) # As of GetCommonName() in plugin API
set(PKG_SUMMARY "NMEA0183 to SignalK converter")
set(PKG_DESCRIPTION
    [=[
  NMEA0183 to SignalK converter
]=])

set(PKG_AUTHOR "Sean D'Epagnier")
set(PKG_IS_OPEN_SOURCE "yes")
set(PKG_HOMEPAGE https://github.com/nohal/projections_pi)
set(PKG_INFO_URL https://opencpn.org/OpenCPN/plugins/projections.html)

option(WITH_TESTS "Whether or not to build the tests" OFF)
option(SANITIZE "What sanitizers to use" "")

if(NOT "${SANITIZE}" STREQUAL "OFF" AND NOT "${SANITIZE}" STREQUAL "")
  add_compile_options(-fsanitize=${SANITIZE} -fno-omit-frame-pointer)
  add_link_options(-fsanitize=${SANITIZE} -fno-omit-frame-pointer)
endif()

add_definitions(-Dprojections_USE_SVG)
add_definitions(-DocpnUSE_GL)

set(SRC
    ${CMAKE_SOURCE_DIR}/src/projections_pi.cpp
    ${CMAKE_SOURCE_DIR}/src/PreferencesDialog.cpp
    ${CMAKE_SOURCE_DIR}/src/ProjectionsUI.cpp ${CMAKE_SOURCE_DIR}/src/icons.cpp)

set(PKG_API_LIB api-18) # A dir in opencpn-libs/ e. g., api-17 or api-16

macro(late_init)
  # Perform initialization after the PACKAGE_NAME library, compilers and
  # ocpn::api is available.
endmacro()

macro(add_plugin_libraries)

endmacro()
