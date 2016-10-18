Pet Link API

A place where you can store all your pets information in one place. Right now
it is at the beginning statges. A user can create a login and create a pet.
That user can view either all their pets or just one pet. A user can also
update a pet if they get vaccinated, if they stop being feral, and if they become
declawed. The goal of this site will be to have a join table which will allow
vets to see all their pets and upload revelant information to the pet owners.
An example of such information would be medical documents, and when their pet
wpould need their next shot or other appointment
API Repo:
https://github.com/natGalynker/Pets-rails-project-server

Client Repo:
https://github.com/natGalynker/vets-client-project


# Install instructions

Fork and clone

Install with `bundle install`.
## Installation
1.  Create a `.env` for sensitive settings (`touch .env`).
1.  Generate new `development` and `test` secrets (`bundle exec rake secret`).
1.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>`
    respectively.
1.  In order to make requests from your deployed client application, you will
    need to set `CLIENT_ORIGIN` in the environment of the production API (e.g.
    `https://<github-username>.github.io`).
1.  Setup your database with `bin/rake db:nuke_pave` or `bundle exec rake
    db:nuke_pave`.
1.  Run the API server with `bin/rails server` or `bundle exec rails server`.

## Structure


`curl` command scripts are stored in [`scripts`](scripts) with names that
correspond to API actions.

## Tasks

Developers should run these often!

-   `rake routes` lists the endpoints available in your API.
-   `rake test` runs automated tests.
-   `rails console` opens a REPL that pre-loads the API.
-   `rails db` opens your database client and loads the correct database.
-   `rails server` starts the API.
-   `scripts/*.sh` run various `curl` commands to test the API. See below.

<!-- TODO -   `rake nag` checks your code style. -->
<!-- TODO -   `rake lint` checks your code for syntax errors. -->

## API

Scripts are included in [`scripts`](scripts) to test built-in actions. Add your
own scripts to test your custom API. As an alternative, you can write automated
tests in RSpec to test your API.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
```

```sh
scripts/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "an@example.email"
  }
}
```

#### POST /sign-in

Request:

```sh
curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'
```

```sh
scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "an@example.email",
    "token": "33ad6372f795694b333ec5f329ebeaaa"
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH http://localhost:3000/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'
```

```sh
ID=1 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### GET /users

Request:

```sh
curl --include --request GET http://localhost:3000/users \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "another@example.email"
    },
    {
      "id": 1,
      "email": "an@example.email"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:3000/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "another@example.email"
  }
}
```

##### Pets
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/pets`           |`pets#create` |
| GET    | `/pets`           |`pets#index`  |
| GET    | `/pets/:id`       |`pets#show`   |
| PATCH  | `/pets/:id`       |`pets#update` |
| DELETE | `/pets/:id`       |`pets#destroy`|

#### POST /pets

Request:

```sh
curl --include --request POST http://localhost:3000/pets \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "pet": {
      "name": "An Example Name",
      "owner_name": "an example owner",
      "breed": "an example breed",
      "gender": "an example gender",
      "born_on": "an example date"
    }
  }'
```


Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "pet": {
    "id": 1,
      "owner_name": "an example owner",
      "name": "an example name",
      "breed": "an example breed",
      "born_on": "an example date",
      "gender": "an example gender"
  }
}
```

#### GET /pets

Request:

```sh
curl --include --request GET http://localhost:3000/pets \
  --header "Authorization: Token token=$TOKEN"
```


```
#### GET /pets/:id

Request:

```sh
curl --include --request GET http://localhost:3000/pets/$ID \
  --header "Authorization: Token token=$TOKEN"
```


#### PATCH /pets/:id

Request:

```sh
curl --include --request PATCH http://localhost:3000/pets/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "pet": {
      "neutered": "true"
    }
  }'
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /pets/:id

Request:

```sh
curl --include --request DELETE http://localhost:3000/pets/$ID \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```md
HTTP/1.1 204 No Content
```

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
a


<!--  Future plans:
to add a level to the relationships to pets by creating a vets table. The vets table will have a one to many relationship with both the pets and the owners. There will then be a joint table for appointments, on that table the appointments will have many pets, owners and vets. It will enable the vets to get access to the pets information, and the vets to create pet records which the owners can access
-->
