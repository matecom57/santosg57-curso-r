#!/bin/bash

rm Rplots.pdf

Rscript $1".R" $2

open Rplots.pdf

