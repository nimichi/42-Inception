NAME = inception
all: inception
inception:
	docker-compose -f srcs/docker-compose.yml down
	docker-compose -f srcs/docker-compose.yml up --build
clean:
	docker-compose -f srcs/docker-compose.yml down
fclean: clean
	docker container prune -f
	docker volume prune -f
	rm -rf /home/mnies/data/db/*
	rm -rf /home/mnies/data/wordpress/*
re: fclean
	docker-compose -f srcs/docker-compose.yml up --build

.PHONY: all clean fclean re