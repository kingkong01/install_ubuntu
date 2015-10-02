#!/bin/bash
cat system_config_path | xargs -n1 -I {} cp -i {} ./config
