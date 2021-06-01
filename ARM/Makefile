LOCATION := australiaeast

RESOURCE_GROUP_TEMPLATE_NAME := deploy_resource_group
RESOURCE_GROUP_TEMPLATE_FILE := deployResourceGroup.json
RESOURCE_GROUP := kewazuredemoarm

DATA_TEMPLATE_NAME := Azure-Demo-ARM-Storage
DATA_TEMPLATE_FILE := deployStorage.json
STORAGE_ACCOUNT_NAME := kewazuredemoarm

.PHONY: deploy-resource-group
deploy-resource-group:
	@echo "Deploying Resource Group"
	az deployment create --name $(RESOURCE_GROUP_TEMPLATE_NAME) --template-file $(RESOURCE_GROUP_TEMPLATE_FILE) --location $(LOCATION) --parameters \
	location=$(LOCATION) \
	resourceGroup=$(RESOURCE_GROUP)

.PHONY: deploy-storage-container-solution
deploy-storage-container-solution:
	@echo "Deploying storage container"
	az group deployment create --resource-group $(RESOURCE_GROUP) --name $(DATA_TEMPLATE_NAME) --template-file $(DATA_TEMPLATE_FILE) --mode Incremental --parameters \
	location=$(LOCATION) \
	storageAccountName=$(STORAGE_ACCOUNT_NAME)

.PHONY: deploy
deploy: deploy-resource-group deploy-storage-container-solution
	@echo "Deployment Complete"
