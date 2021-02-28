# Rocketpay

## Routes

_No Authorization_

Dashboard

- GET `http://localhost:4000/dashboard`

Create user

- POST `http://localhost:4000/api/users`

_With Authorization_

Add header authorization with `Basic YmFuYW5hOm5hbmljYTEyMw==`

Deposit amount

- POST `http://localhost:4000/api/accounts/:id/deposit`

Withdraw amount

- POST `http://localhost:4000/api/accounts/:id/withdraw`

Transaction amount between two accounts

- POST `http://localhost:4000/api/accounts/transaction`

## Commands

### install dependencies

- Install dependencies

```bash
docker-compose exec app mix deps.get
```

- Create and migrate your database

```bash
docker-compose exec app mix ecto.setup
```

Now you can visit [`dashboard`](http://localhost:4000/dashboard) from your browser.

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

open `./cover/excoveralls.html`

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

- Install phoenix local

```bash
docker-compose exec app mix phx.new rocketpay --no-webpack --no-html
```

- Install dependencies

```bash
docker-compose exec app mix deps.get
```

- Create and migrate your database

```bash
docker-compose exec app mix ecto.setup
```

- Start Phoenix endpoint with `mix phx.server`

---

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: <https://www.phoenixframework.org/>
- Guides: <https://hexdocs.pm/phoenix/overview.html>
- Docs: <https://hexdocs.pm/phoenix>
- Forum: <https://elixirforum.com/c/phoenix-forum>
- Source: <https://github.com/phoenixframework/phoenix>
