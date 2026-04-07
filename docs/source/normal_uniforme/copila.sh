#!/bin/bash

rm Rplots.pdf

pkill "PDF Expert"

Rscript $1".R"

open Rplots.pdf

