#!/bin/bash

wget 

[Unit]
Description=ws-epro

[Service]
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/ws-epro -salome -listen :443 -ssh 127.0.0.1:22 -vpn 127.0.0.1:442 -ssl 127.0.0.1:777 -default 127.0.0.1:9999 -f config.yml
Restart=on-failure

[Install]
WantedBy=multi-user.target
