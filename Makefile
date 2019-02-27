DB_ID=mysql-tutorial-db
DB_CLASS=db.t2.micro
DB_USER=<USER>
DB_PASS=<PASS>
DB_NAME=aws_lamp_tutorial

.PHONY: db-create
db-create:
	aws rds create-db-instance \
		--db-name $(DB_NAME) \
		--db-instance-identifier $(DB_ID) \
		--db-instance-class $(DB_CLASS) \
		--engine MySQL \
		--allocated-storage 20 \
		--master-username $(DB_USER) \
		--master-user-password $(DB_PASS)
	sleep 15
	# $(MAKE) db-info
	aws rds describe-db-instances --db-instance-identifier $(DB_ID) | grep Address
	# "Address": "mysql-tutorial-db.HASH.us-east-1.rds.amazonaws.com",

DB_ADDRESS=mysql-tutorial-db.HASH.us-east-1.rds.amazonaws.com

.PHONY: db-info
db-info:
	aws rds describe-db-instances --db-instance-identifier $(DB_ID) | grep Address
	# "Address": "mysql-tutorial-db.HASH.us-east-1.rds.amazonaws.com",
	aws rds describe-db-instances --db-instance-identifier $(DB_ID) | grep DBInstanceStatus
	# "DBInstanceStatus": "deleting",
	aws rds describe-db-instances --db-instance-identifier $(DB_ID)


.PHONY: db-delete
db-delete:
	aws rds delete-db-instance --db-instance-identifier $(DB_ID) --skip-final-snapshot
