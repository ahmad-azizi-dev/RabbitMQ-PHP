run:
	docker-compose up -d
	docker-compose run --rm app composer install

send:
	docker exec app php send.php

receive:
	docker exec app php receive.php

ssh_container:
	docker-compose run --rm app /bin/bash

prune:
	docker system prune -a
	docker volume prune
down:
	docker-compose down