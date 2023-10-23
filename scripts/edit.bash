#!/bin/bash

editor='nvim'

readme='./README.md'
sources=('./first_test/top.v')

${editor} "${readme}" "${sources[@]}"
