.PHONY: init
init:
	flutter packages global activate protoc_plugin
	dart pub global activate protoc_plugin

.PHONY: proto
proto:
	rm -rf lib/generated/grpc
	mkdir -p lib/generated/grpc/skllzz
	protoc -I proto --dart_out=disable_constructor_args,grpc:lib/generated/grpc/skllzz \
		club/trainers.proto common/common.proto common/artifact.proto common/geo.proto common/stat.proto
		