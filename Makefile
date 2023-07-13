.PHONY: *

speakeasy:
	speakeasy generate sdk -l terraform -o . -s ./openapi.yaml