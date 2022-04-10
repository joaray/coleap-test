# README

I assumed we want to have an API that responds with the provided structure.

I created teh endpoints:
1. `api/v1/cars` to retrieve all the records with the given structure.
2. `api/v1/cars:id` to retrieve a single record with the given structure.
3. `api/v1/cars?price=asc` to retrieve the records sorted by price ascending, and `api/v1/cars?price=desc` to retrieve the records sorted by price descending.
4. `api/v1/cars?make=Tesla,Audi` etc to retrieve the records searched by make.

I have no time to test it.
