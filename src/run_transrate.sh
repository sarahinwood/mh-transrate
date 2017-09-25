#!/usr/bin/env bash
set -eu

bin/transrate/transrate \
--assembly data/Trinity.fasta \
--left data/abdo_r1.fq.gz, data/thorax_r1.fq.gz \
--right data/abdo_r2.fq.gz, data/thorax_r2.fq.gz \
--output output \
--loglevel error