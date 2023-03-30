# README

# Super Heroes

Super Heroes is a basic API.

#### link deployed using render

    https://super-heroes-sylk.onrender.com

The application has been built with the MVC design pattern.

## Pre-Requisites
In order to use this repository you will need the following:

Operating System (Windows 10+, Linux 3.8+, or MacOS X 10.7+)
RAM >= 4GB
Free Space >= 2GB
Built With
This application has been built with the following tools:

### Gem-files used

ruby "3.0.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"

gem 'active_model_serializers'

gem "sqlite3", "~> 1.4"

gem "puma", "~> 5.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "debug", platforms: %i[ mri mingw x64_mingw ]


## Setup
You can setup this repository by following this manual

#### Clone the repository
    git clone git@github.com:zaiky09/Superheroes.git
#### Ensure the ruby gems are setup in your machine
    bundle install
#### Perform any pending database migrations
    rake db:migrate db:seed
#### Start the server
    rails s
### Alterante method to access backend
##### Open postman using 
                        : https://web.postman.co/workspace/My-Workspace~b779a210-dd50-4577-8e7f-6c36948203ef/request/create?requestId=a231f6da-3e8b-4e75-976b-39999244380d

                        make sure to include in the header section of your request:

                                            Content-Type: application/json

Copy the link http://127.0.0.1:3000 & paste it in required section on postman
run the deliverables in the routes section by adding the required paths

### Project deliverables    
Project conforms to the following set of guidelines:

#### Models
Created the following relationships:

- A `Hero` has many `Power`s through `HeroPower`
- A `Power` has many `Hero`s through `HeroPower`
- A `HeroPower` belongs to a `Hero` and belongs to a `Power`

Started by creating the models and migrations for the following database tables:

Added any code needed in the model files to establish the relationships. Then, run the migrations.

Generated my own seed data to test the application.

#### Validations
Added validations to the `HeroPower` model:

- strength` must be one of the following values: 'Strong', 'Weak', 'Average'

Add validations to the `Power` model:

- `description` must be present and at least 20 characters long

#### Routes
Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb.

#### GET /heroes
Return JSON data in the format below:

[  

{ "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },  

{ "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },  

{ "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }

]


#### GET /heroes/:id
If the `Hero` exists, return JSON data in the format below:


{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}


If the `Hero` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

{   "error": "Hero not found" }

#### GET /powers
Return JSON data in the format below:


[
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  },
  {
    "id": 1,
    "name": "flight",
    "description": "gives the wielder the ability to fly through the skies at supersonic speed"
  }
]


#### GET /powers/:id
If the `Power` exists, return JSON data in the format below:

```
{
  "id": 1,
  "name": "super strength",
  "description": "gives the wielder super-human strengths"
}
```

If the `Power` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Power not found"
}
```

#### PATCH /powers/:id
This route should update an existing `Power`. It should accept an object with
the following properties in the body of the request:

```
{
  "description": "Updated description"
}
```

If the `Power` exists and is updated successfully (passes validations), update
its description and return JSON data in the format below:

```
{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}
```

If the `Power` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Power not found"
}
```

If the `Power` is **not** updated successfully (does not pass validations),
return the following JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}
```

#### POST /hero_powers
This route should create a new `HeroPower` that is associated with an
existing `Power` and `Hero`. It should accept an object with the following
properties in the body of the request:

```
{
  "strength": "Average",
  "power_id": 1,
  "hero_id": 3
}
```

If the `HeroPower` is created successfully, send back a response with the data
related to the `Hero`:

```
{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
```

If the `HeroPower` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}
```

## LICENSE
This repository is distributed under the MIT License

## Author
This repository is maintained by:

Zamil Sheikh
