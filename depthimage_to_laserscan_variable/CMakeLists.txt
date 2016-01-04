# http://ros.org/doc/groovy/api/catkin/html/user_guide/supposed.html
cmake_minimum_required(VERSION 2.8)
project(depthimage_to_laserscan_variable)

# Load catkin and all dependencies required for this package
find_package(catkin REQUIRED dynamic_reconfigure image_geometry image_transport nodelet roscpp sensor_msgs)
#find_package(OpenCV REQUIRED)

# Dynamic reconfigure support
generate_dynamic_reconfigure_options(cfg/Depth.cfg)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES DepthImageToLaserScanVariable DepthImageToLaserScanROSVariable DepthImageToLaserScanNodeletVariable
  CATKIN_DEPENDS dynamic_reconfigure image_geometry image_transport nodelet roscpp sensor_msgs
)

include_directories(include ${catkin_INCLUDE_DIRS})

add_library(DepthImageToLaserScanVariable src/DepthImageToLaserScanVariable.cpp)
target_link_libraries(DepthImageToLaserScanVariable ${catkin_LIBRARIES})

add_library(DepthImageToLaserScanROSVariable src/DepthImageToLaserScanROSVariable.cpp)
add_dependencies(DepthImageToLaserScanROSVariable ${PROJECT_NAME}_gencfg)
target_link_libraries(DepthImageToLaserScanROSVariable DepthImageToLaserScanVariable ${catkin_LIBRARIES})

add_library(DepthImageToLaserScanNodeletVariable src/DepthImageToLaserScanNodeletVariable.cpp)
target_link_libraries(DepthImageToLaserScanNodeletVariable DepthImageToLaserScanROSVariable ${catkin_LIBRARIES})

add_executable(depthimage_to_laserscan_variable src/depthimage_to_laserscan_variable.cpp)
target_link_libraries(depthimage_to_laserscan_variable DepthImageToLaserScanROSVariable ${catkin_LIBRARIES})

if(CATKIN_ENABLE_TESTING)
  # Test the library
  catkin_add_gtest(libtest_variable test/DepthImageToLaserScanTestVariable.cpp)
  target_link_libraries(libtest_variable DepthImageToLaserScanVariable ${catkin_LIBRARIES})
endif()

# add the test executable, keep it from being built by "make all"
add_executable(test_dtl_variable EXCLUDE_FROM_ALL test/depthimage_to_laserscan_rostestVariable.cpp)

# Install targets
install(TARGETS DepthImageToLaserScanVariable DepthImageToLaserScanROSVariable DepthImageToLaserScanNodeletVariable depthimage_to_laserscan_variable
	RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
	LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
	ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION})

install(DIRECTORY include/${PROJECT_NAME}/
        DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
install(FILES nodelets.xml
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
