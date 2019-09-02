#!/bin/bash

IFS=$'\n'
for f in $(find docs -type f -name meta.yaml); do
	yq r $f synonyms > tmp.s
	yq r $f term > tmp.t

	yq p -i  tmp.s custom.synonyms
	yq p -i  tmp.t custom.term

	yq d -i $f synonyms
	yq d -i $f term

	yq merge -i $f tmp.s
	yq merge -i $f tmp.t

	rm tmp.*

	prettier --write $f
done

