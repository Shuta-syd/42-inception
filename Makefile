NAME=inception

all: $(NAME)


$(NAME):
	@printf "Inception Project Started...\n"
	@mkdir -p /home/shogura/data
	@mkdir -p /home/shogura/data/mariadb
	@mkdir -p /home/shogura/data/wordpress
	@docker-compose -f srcs/docker-compose.yml up -d --build

clean:
	@docker-compose -f srcs/docker-compose.yml down

fclean: clean
	@rm -rf /home/shogura/data/
	@docker-compose -f srcs/docker-compose.yml down --rmi all --volumes --remove-orphans

.PHONY: all clean fclean
