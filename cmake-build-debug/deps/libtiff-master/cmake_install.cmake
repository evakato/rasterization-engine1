# Install script for directory: /Users/evakato/CLionProjects/cs334_beginner/deps/libtiff-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/lib/pkgconfig/libtiff-4.pc")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/local/lib/pkgconfig" TYPE FILE FILES "/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff-4.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/port/cmake_install.cmake")
  include("/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/libtiff/cmake_install.cmake")
  include("/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/tools/cmake_install.cmake")
  include("/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/test/cmake_install.cmake")
  include("/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/contrib/cmake_install.cmake")
  include("/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/build/cmake_install.cmake")
  include("/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/man/cmake_install.cmake")
  include("/Users/evakato/CLionProjects/cs334_beginner/cmake-build-debug/deps/libtiff-master/html/cmake_install.cmake")

endif()

