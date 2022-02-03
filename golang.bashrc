#!/bin/bash

function setup-golang() {
	export GOPATH="${HOME}/.go"
	export PATH="${GOPATH}/bin:${PATH}"
}
