"""Defines a test rule providing ZSelfProfileEventsInfo"""

load("@rules_rust//rust:rust_common.bzl", "ZSelfProfileEventsInfo")

def _get_self_profiling_flag_impl(_ctx):
    return ZSelfProfileEventsInfo(
        events = [("//:sample_binary", "all")],
    )

self_profiling_flags = rule(
    attrs = {},
    provides = [ZSelfProfileEventsInfo],
    implementation = _get_self_profiling_flag_impl,
)
