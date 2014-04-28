.PHONY: all clean

all: repo

clean:
	@rm -Rf ${CURDIR}/repo

repo:
	@mvn deploy:deploy-file -DpomFile=youtube/YouTubeAndroidPlayerApi.pom.xml -Dfile=youtube/YouTubeAndroidPlayerApi.jar -Durl=file://${CURDIR}/repo -DcreateChecksum=true
