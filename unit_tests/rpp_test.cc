/*
 * rpp.cpp
 */

#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE const_string test
#include <boost/test/unit_test.hpp>

#include "rpp.h"

BOOST_AUTO_TEST_SUITE(rpp_test_suite)

BOOST_AUTO_TEST_CASE(defaults)
{
	RPP anRpp;
	BOOST_REQUIRE_EQUAL(anRpp.GetTempo(), 120);
}

BOOST_AUTO_TEST_SUITE_END()

// EOF

