#!/usr/bin/env bash

# Copyright 2015 Red Hat Inc., Durham, North Carolina.
# All Rights Reserved.
#
# OpenScap Test Suite
#
# Authors:
#      Jan Černý <jcerny@redhat.com>

. $builddir/tests/test_common.sh

# Test cases.

function test_oscap_string {
    ./test_oscap_string
}

# Testing.

test_init

if [ -z ${CUSTOM_OSCAP+x} ] ; then
    test_run "test_oscap_string" test_oscap_string
fi

test_exit
