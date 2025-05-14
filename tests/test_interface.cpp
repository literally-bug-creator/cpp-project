#include <catch2/catch_test_macros.hpp>

#include "../include/interface.hpp"

TEST_CASE( "123", "[error]" ) {
    REQUIRE( is_true() );
}
