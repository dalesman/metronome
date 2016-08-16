/*
 * rpp.cpp
 */

#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE const_string test
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(test_suite_name)

BOOST_AUTO_TEST_CASE( test_case1 )
{
    BOOST_WARN( sizeof(int) < 4 );
}

BOOST_AUTO_TEST_SUITE_END()

// EOF

