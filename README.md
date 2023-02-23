# README

## Project Overview
Tea Subscription Service is a small project designed to mock an online tea business. With this particular project, a Backend portion of a SOA (Service Oritented Architecture), it would be able to receive requests, store data or send responses, in JSON format to the Front-end to implement and design the visual view page of the application. 

## Learning Goals

- Build a small Back-End project to expose 3 RESTful API endpoints for a Tea subscription service as a basic MVP (Minimum Viable Product).
- Timebox project to a limit of 8 hours
- Implement proper Happypath and Sadpath testing for all endpoints. 
- Create easily comprehendable Readme for documentation.
- Have fun and explore.


## Planning Documents

[Project document prompt](https://mod4.turing.edu/projects/take_home/take_home_be)


## Technologies and Tools

#### Built With: 
- [Rails v5.2.8](https://guides.rubyonrails.org/v5.2/)
- [Ruby 2.7.2](https://www.ruby-lang.org/en/news/2021/07/07/ruby-2-7-4-released/)

#### Tested With:
- [RSpec](https://github.com/rspec/rspec-rails)
- [PostMan](https://www.postman.com/)
- [SimplCov](https://github.com/simplecov-ruby/simplecov)
- [Pry](https://github.com/pry/pry)



#### Other Gems Used: 
- [Faker](https://github.com/faker-ruby/faker)
- [Factorybot](https://github.com/thoughtbot/factory_bot)
- [jsonapi-serializer](https://github.com/codecutout/JsonApiSerializer)


## Setup

1. Fork and clone this repository.
2. Cd into the root directory and run `code .`(for Visual Studio).
3. `bundle` to install necessary gems
4. create and seed database `rails db:{create,migrate,seed}`
5. To run this server, run `rails s` in the terminal and rails will start the development server. To stop the local server, use command `Control + C`.
6. Please use Postman to view endpoint information. url: http://localhost:3000<'END POINT HERE> 

## End Points 

Post subscribe a customer to a tea subscription
  * Note: Please include mock data in post in  tab `body` with attributes of a subscription and select `raw` and `JSON`  option. 
  Example :
  
  ![example for mock data](https://user-images.githubusercontent.com/36166420/220968488-f1ff26b0-44cf-4e9c-a9f7-8afe5f1b366f.png)
  
- `Post /api/v1/customers/#{customer.id}/subscriptions`
![POST New customer subscription](https://user-images.githubusercontent.com/36166420/220966874-382ff6ba-3aa1-4448-af31-a3d2efb0d84e.png)

Get Learning Resources for a Particular Country
- `Patch /api/v1/customers#{customer.id}/subscriptions`


Get all of a customer's subscriptions
- `GET /api/v1/customers/#{customer.id}/subscriptions`

![Get all customer subscriptions](https://user-images.githubusercontent.com/36166420/220965606-fdaac66b-dcdc-47f0-9f31-7610885f7ab3.png)


<table>
  <tr>
    <td>Kevin Ta</td>
  </tr>
  <tr>
     <td>
      <a href="https://www.linkedin.com/in/kevin-ta-b1a36723b/">LinkedIn</a>
    </td>
  </tr>
</table>
