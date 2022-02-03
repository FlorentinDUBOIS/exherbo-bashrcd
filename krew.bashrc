#!/bin/bash

function setup-krew() {
	export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
}
