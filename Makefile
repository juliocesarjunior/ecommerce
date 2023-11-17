ARG=
run:
	mkdir -p tmp/pids; touch log/development.log; touch log/sidekiq.log; foreman start -f Procfile.dev

start:
	bin/dev

install:
	bundle install; yarn install

create:
	bin/rails db:create:all

migrate:
	bin/rails db:migrate

seed:
	bin/rails db:seed

console:
	bin/rails console

clean:
	rails tmp:clear assets:clean log:clear

test:
	echo "Executa todos os testes. Você pode usar parametros como tags para testar apenas os testes marcados. Ex: ARG='spec/models/contact_spec.rb', ARG='--tag type:model', ARG='--tag ~type:resquest', ARG='--tag slow', ARG='--tag ~slow'"
	bin/rspec $(ARG);

reset:
	bin/rails db:drop db:create db:migrate db:seed

rollback:
	rails db:rollback

