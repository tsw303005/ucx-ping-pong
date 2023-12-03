cmake_minimum_required(VERSION 2.8)

project(ucp_ping_pong)

find_package(UCX REQUIRED COMPONENTS ucp uct ucs)

add_executable(ucp_ping_pong ucp_ping_pong.c)
target_link_libraries(ucp_ping_pong ucx::ucp ucx::uct ucx::ucs)
