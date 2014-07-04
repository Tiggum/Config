#!/bin/bash
while true
do
        FULL="_NET_WM_STATE(ATOM) = _NET_WM_STATE_FULLSCREEN, _OB_WM_STATE_UNDE$
        SAS="_NET_WM_STATE(ATOM) = _NET_WM_STATE_MODAL, _NET_WM_STATE_SKIP_TASK$
        STATE=$(xprop -name "VMware Horizon View Client" _NET_WM_STATE)
        if [ "$STATE" != "$FULL" -a "$STATE" != "$SAS" ]; then
                echo 'Resizing'
                wmctrl -r 'VMware Horizon View Client' -b toggle,fullscreen
        fi
done
