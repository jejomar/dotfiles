#!/bin/bash

if pgrep -x wf-recorder >/dev/null; then
    printf '{"text":" "}';
else
    printf '{"text":""}';
fi
