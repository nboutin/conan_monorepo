
#include <gtest/gtest.h>

#include "MyLibrary/lib_header.h"

TEST(MyLibraryTest, add_001)
{
    EXPECT_EQ(add(1), 11);
}
