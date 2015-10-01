#!/bin/bash


grep 'has_been_set' ~/.bashrc || cat system_config/bashrc_setting >> ~/.bashrc 
