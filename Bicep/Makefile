LOCATION := australiaeast

DATA_TEMPLATE_NAME := Azure-Demo-Bicep-Storage
DATA_TEMPLATE_FILE := deployStorage.bicep
STORAGE_ACCOUNT_NAME := kewazuredemobic
RESOURCE_GROUP := bicep

.PHONY: deploy-storage-container-solution
deploy-storage-container-solution:
	@echo "Deploying storage Solution"
	az group deployment create --resource-group $(RESOURCE_GROUP) --name $(DATA_TEMPLATE_NAME) --template-file $(DATA_TEMPLATE_FILE) --mode Incremental --parameters \
	location=$(LOCATION) \
	containerName=$(STORAGE_ACCOUNT_NAME) \
	storageName=$(STORAGE_ACCOUNT_NAME)

.PHONY: deploy
deploy: deploy-storage-container-solution
	@echo "Deployment Complete"
