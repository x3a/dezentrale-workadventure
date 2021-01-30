ADMIN_API_TOKEN = ""
DEBUG_MODE = "false"
JITSI_URL = ""
JITSI_ISS = ""
JITSI_PRIVATE_MODE = ""
SECRET_JITSI_KEY = ""

.PHONY: start
start:
	ADMIN_API_TOKEN=$(ADMIN_API_TOKEN) \
	DEBUG_MODE=$(DEBUG_MODE) \
	JITSI_URL=$(JITSI_URL) \
	JITSI_ISS=$(JITSI_ISS) \
	JITSI_PRIVATE_MODE=$(JITSI_PRIVATE_MODE) \
	SECRET_JITSI_KEY=$(SECRET_JITSI_KEY) \
	docker-compose up -d

.PHONY: stop
stop:
	ADMIN_API_TOKEN=$(ADMIN_API_TOKEN) \
	DEBUG_MODE=$(DEBUG_MODE) \
	JITSI_URL=$(JITSI_URL) \
	JITSI_ISS=$(JITSI_ISS) \
	JITSI_PRIVATE_MODE=$(JITSI_PRIVATE_MODE) \
	SECRET_JITSI_KEY=$(SECRET_JITSI_KEY) \
	docker-compose down

.PHONY:
restart: stop start

.PHONY: clean
clean:
	rm -rf back/node_modules
	rm -rf front/node_modules
	rm -rf messages/node_modules
	rm -rf pusher/node_modules
	rm -rf uploader/node_modules
