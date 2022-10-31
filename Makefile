all:
	@printf "Inception Project Started...\n"
	@make -p /home/shogura/data
	@make -p /home/shogura/data/mariadb
	@make -p /home/shogura/data/wordpress
	@docker-compose -f ./srcs/docker-compose up -d --build

clean:
	@docker-compose -f ./srcs/docker-compose down

fclean: clean
	@rm -rf /home/shogura/data/
	@docker volume rm srcs_db-vol srcs_wp-vol

.PHONY: all clean fclean
