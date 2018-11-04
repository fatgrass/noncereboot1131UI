TARGET= noncereboot1131UI

.PHONY: all mp vfs clean

all:
	$(MAKE) mp

mp:
	xcodebuild -arch arm64 -sdk iphoneos CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=YES OTHER_CFLAGS="" OTHER_CPLUSPLUSFLAGS="" PRODUCT_BUNDLE_IDENTIFIER=""
	strip ./build/Release-iphoneos/noncereboot1131UI.app/noncereboot1131UI

vfs:
	xcodebuild -arch arm64 -sdk iphoneos CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO OTHER_CFLAGS="-DWANT_VFS" OTHER_CPLUSPLUSFLAGS="-DWANT_VFS" PRODUCT_BUNDLE_IDENTIFIER=""
	strip ./build/Release-iphoneos/noncereboot1131UI.app/noncereboot1131UI

clean:
	rm -rf build/


