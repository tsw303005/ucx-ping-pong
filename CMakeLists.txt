#
# Copyright (c) NVIDIA CORPORATION & AFFILIATES, 2021. ALL RIGHTS RESERVED.
#
# See file LICENSE for terms.
#

cmake_minimum_required(VERSION 2.8)

project(ucx_hello_world)

find_package(UCX REQUIRED COMPONENTS ucp uct ucs)

add_executable(ucp_hello_world ucp_hello_world.c)
target_link_libraries(ucp_hello_world ucx::ucp ucx::uct ucx::ucs)

# add_executable(test_uct test_uct.c)
# target_link_libraries(test_uct ucx::uct ucx::ucs)
