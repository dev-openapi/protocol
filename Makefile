.PHONY: wx-miniprogram douyin-miniapp douyin-webapp bilibili-webapp

douyin-miniapp:
	# go_out指定生成目录, go_opt去掉github.com/dev-openapi前缀
	protoc --go_out=.. --go_opt=paths=source_relative --go_api_out=out=..:.  douyin-miniapp/*.proto

douyin-webapp:
	# go_out指定生成目录, go_opt去掉github.com/dev-openapi前缀
	protoc --go_out=.. --go_opt=paths=source_relative --go_api_out=out=..:.  douyin-webapp/*.proto

wx-miniprogram:
	# go_out指定生成目录, go_opt去掉github.com/dev-openapi前缀
	protoc --go_out=.. --go_opt=paths=source_relative --go_api_out=out=..:.  wx-miniprogram/*.proto

bilibili-webapp:
	protoc --go_out=.. --go_opt=paths=source_relative --go_api_out=out=..:.  bilibili-webapp/*.proto

