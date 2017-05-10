### Section 1 - Environment Customization
- setting up ruby, rvm, gems and installing rails was painless compared to other technologies set up to be as fully featured as rails is
- structure & detail of course is good so far, no "magic" explanations. the only downside is that it requires more time.

### Section 2 - App Creation & Project Planning
- organizing course through pivotal feels organized and objectives are clearer
- `rails g scaffold` feels like magic. the development experience is smooth, however and I can see how Meteor was originally being compared as rails for javascript, or as a direct competitor to rails. although, i feel at ease learning rails as its maturity has been proven.
- reserved keywords for resources from a scaffold
  - index - _list of multiple items from a model_
  - new - _instantiates model_
  - create - _communicates with model_
  - update - _communicates with model_
  - edit - _instantiates update of model_
  - destroy - _DESTRUCTION_
- resource routing === less boilerplate

### Section 4 - Rails Generators
- generators are great to ensure adhering to the "rails way", but it is probably awesome for quick prototyping and focusing on the purpose of the application vs. how it is built
- controller generator good for using existing models, or static pages, or use in combination with model generator. creates:
  - routes
  - views
  - assets
- model generator creates:
  - migration script + actual model (ApplicationRecord)
- resource generator is a barebones scaffold generator thats sets up necessary things
- `rails c` useful for protoyping seeds or checking that model fields are correct
- customization of generators very powerful, but simple enough to understand quickly. gulp on steroids for rb. documentation & examples for customization/templates is readily available on official rails site or github

### Section 5 - Data Flow in Rails - In Progress
- flow between creating seeds in seeds.rb or mocking them out with the rails console `rails c` is very useful for development and I wish there was something more standardized for Javascript like this.
- Rails feels like the epitomy of MVC, its folder structure is literally named after it and embraces it fully. its familiar, which is nice.
- destroy freezes instances and provides a safe alternative to delete for resources
- can omit .id when passing a model in html.erb files (good practice)
- rake routes to determine prefix for resources (path = relative, url = full path)
