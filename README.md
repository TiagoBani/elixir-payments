# Rocketpay

To start your Phoenix server:

* Install dependencies with `mix deps.get`
* Create and migrate your database with `mix ecto.setup`
* Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

* Official website: <https://www.phoenixframework.org/>
* Guides: <https://hexdocs.pm/phoenix/overview.html>
* Docs: <https://hexdocs.pm/phoenix>
* Forum: <https://elixirforum.com/c/phoenix-forum>
* Source: <https://github.com/phoenixframework/phoenix>

---

## Commands

### install dependencies

```bash
docker-compose exec app mix ecto.setup
```

### create config

```bash
docker-compose exec app mix credo gen.config 
```

### start server

```bash
docker-compose exec app mix phx.server
```

show logs

```bash
docker-compose logs -tf
```

### start tests

exec tests

```bash
docker-compose exec app mix test
```

report coverage

open `./cover/exccoveralls.html`

```
docker-compose exec app mix coveralls.html
```

### interactive terminal

```bash
docker-compose exec app iex -S mix
```

---

## Install

### dependencies

```bash
docker-compose exec app mix phx.new rocketpay --no-webpack --no-html
```
