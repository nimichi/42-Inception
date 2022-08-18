NAME = inception
all:
	docker-compose -f srcs/docker-compose.yml up --build
clean:
	docker-compose -f srcs/docker-compose.yml stop
fclean: clean
	docker-compose -f srcs/docker-compose.yml down
re: fclean all

.PHONY: all clean fclean re