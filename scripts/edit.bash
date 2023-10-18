#!/bin/bash

editor='nvim'

readme='./README.md'
sources=('./first_test/top.v' './first_test/vga.v' './first_test/s3astarter.ucf')

${editor} "${readme}" "${sources[@]}"
