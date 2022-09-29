NAME = inception
all:
	docker-compose -f srcs/docker-compose.yml down
	docker-compose -f srcs/docker-compose.yml up --build
clean:
	docker-compose -f srcs/docker-compose.yml down
fclean: clean
	docker system prune -a -f
	docker volume prune -f
re: fclean
	docker-compose -f srcs/docker-compose.yml up --build

.PHONY: all clean fclean re