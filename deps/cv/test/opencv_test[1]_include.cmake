if(EXISTS "/home/liyuan/code/work/andorid/MNN/build/tools/cv/test/opencv_test[1]_tests.cmake")
  include("/home/liyuan/code/work/andorid/MNN/build/tools/cv/test/opencv_test[1]_tests.cmake")
else()
  add_test(opencv_test_NOT_BUILT opencv_test_NOT_BUILT)
endif()
