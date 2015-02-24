#!/usr/bin/awk -f
#
# @(#) assert.awk - An assertion library for awk
#
# * Licensed under the MIT License.
# * Copyright (c) 2015 Ryosuke Ito <rito.0305@gmail.com>
#

function assert_equals(actual, expected, message) {
    if (BLOCK_ASSERTIONS) {
        return
    }
    if (!length(message)) {
        message = "An assertion failed."
    }
    if (actual != expected) {
        printf "%s (expected: \"%s\", got \"%s\")\n", message, expected, actual > "/dev/stderr"
        close("/dev/stderr")
        exit 1
    }
}

function assert_true(actual, message) {
    if (BLOCK_ASSERTIONS) {
        return
    }
    if (!length(message)) {
        message = "An assertion failed."
    }
    if (!actual) {
        printf "%s (expected: \"%s\", got \"%s\")\n", message, "true", actual > "/dev/stderr"
        close("/dev/stderr")
        exit 1
    }
}

function assert_false(actual, message) {
    if (BLOCK_ASSERTIONS) {
        return
    }
    if (!length(message)) {
        message = "An assertion failed."
    }
    if (actual) {
        printf "%s (expected: \"%s\", got \"%s\")\n", message, "false", actual > "/dev/stderr"
        close("/dev/stderr")
        exit 1
    }
}

function assert_fail(message) {
    if (BLOCK_ASSERTIONS) {
        return
    }
    if (!length(message)) {
        message = "An assertion failed."
    }
    printf "%s\n", message > "/dev/stderr"
    close("/dev/stderr")
    exit 1
}

