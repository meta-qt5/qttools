
# This is an automatic test for the CMake configuration files.
# To run it,
# 1) mkdir build   # Create a build directory
# 2) cd build
# 3) cmake ..      # Run cmake on this directory.
# 4) ctest         # Run ctest
#
# The expected output is something like:
#
#     Start 1: test_translation_macros
# 1/2 Test #1: test_translation_macros ..........   Passed    0.98 sec
#     Start 2: test_modules
# 2/2 Test #2: test_modules .....................   Passed    1.41 sec
#
# Note that if Qt is not installed, or if it is installed to a
# non-standard prefix, the environment variable CMAKE_PREFIX_PATH
# needs to be set to the installation prefix or build prefix of Qt
# before running these tests.


cmake_minimum_required(VERSION 2.8)

project(qmake_cmake_files)

enable_testing()

find_package(Qt5Core REQUIRED)

include("${_Qt5CTestMacros}")

if(NOT CMAKE_CROSSCOMPILING)
    expect_pass(test_translation_macros)
endif()

find_package(Qt5Widgets)
if (Qt5Widgets_FOUND)
    set(Qt5_MODULE_TEST_DEPENDS Xml Widgets)

    test_module_includes(
      Designer QFormBuilder
      Help QHelpSearchQuery
      UiTools QUiLoader
    )

endif()
