# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{collapsed_routes}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kyle Maxwell"]
  s.date = %q{2009-07-01}
  s.email = %q{kyle@kylemaxwell.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "collapsed_routes.gemspec",
     "lib/collapsed_routes.rb",
     "spec/app/README",
     "spec/app/Rakefile",
     "spec/app/app/controllers/application_controller.rb",
     "spec/app/app/controllers/comments_controller.rb",
     "spec/app/app/controllers/posts_controller.rb",
     "spec/app/app/controllers/users_controller.rb",
     "spec/app/app/helpers/application_helper.rb",
     "spec/app/app/helpers/comments_helper.rb",
     "spec/app/app/helpers/posts_helper.rb",
     "spec/app/app/helpers/users_helper.rb",
     "spec/app/app/models/comment.rb",
     "spec/app/app/models/post.rb",
     "spec/app/app/models/user.rb",
     "spec/app/app/views/comments/edit.html.erb",
     "spec/app/app/views/comments/index.html.erb",
     "spec/app/app/views/comments/new.html.erb",
     "spec/app/app/views/comments/show.html.erb",
     "spec/app/app/views/layouts/comments.html.erb",
     "spec/app/app/views/layouts/posts.html.erb",
     "spec/app/app/views/layouts/users.html.erb",
     "spec/app/app/views/posts/edit.html.erb",
     "spec/app/app/views/posts/index.html.erb",
     "spec/app/app/views/posts/new.html.erb",
     "spec/app/app/views/posts/show.html.erb",
     "spec/app/app/views/users/edit.html.erb",
     "spec/app/app/views/users/index.html.erb",
     "spec/app/app/views/users/new.html.erb",
     "spec/app/app/views/users/show.html.erb",
     "spec/app/config/boot.rb",
     "spec/app/config/database.yml",
     "spec/app/config/environment.rb",
     "spec/app/config/environments/development.rb",
     "spec/app/config/environments/production.rb",
     "spec/app/config/environments/test.rb",
     "spec/app/config/initializers/backtrace_silencers.rb",
     "spec/app/config/initializers/inflections.rb",
     "spec/app/config/initializers/mime_types.rb",
     "spec/app/config/initializers/new_rails_defaults.rb",
     "spec/app/config/initializers/session_store.rb",
     "spec/app/config/locales/en.yml",
     "spec/app/config/routes.rb",
     "spec/app/db/migrate/20090623181503_create_users.rb",
     "spec/app/db/migrate/20090623181555_create_posts.rb",
     "spec/app/db/migrate/20090623181609_create_comments.rb",
     "spec/app/db/schema.rb",
     "spec/app/db/test.sqlite3",
     "spec/app/doc/README_FOR_APP",
     "spec/app/lib/tasks/rspec.rake",
     "spec/app/log/.gitignore",
     "spec/app/script/about",
     "spec/app/script/autospec",
     "spec/app/script/console",
     "spec/app/script/dbconsole",
     "spec/app/script/destroy",
     "spec/app/script/generate",
     "spec/app/script/performance/benchmarker",
     "spec/app/script/performance/profiler",
     "spec/app/script/plugin",
     "spec/app/script/runner",
     "spec/app/script/server",
     "spec/app/script/spec",
     "spec/app/script/spec_server",
     "spec/app/tmp/.gitignore",
     "spec/collapsed_routes_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/fizx/collapsed_routes}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Simpler routes for nested resources}
  s.test_files = [
    "spec/app/app/controllers/application_controller.rb",
     "spec/app/app/controllers/comments_controller.rb",
     "spec/app/app/controllers/posts_controller.rb",
     "spec/app/app/controllers/users_controller.rb",
     "spec/app/app/helpers/application_helper.rb",
     "spec/app/app/helpers/comments_helper.rb",
     "spec/app/app/helpers/posts_helper.rb",
     "spec/app/app/helpers/users_helper.rb",
     "spec/app/app/models/comment.rb",
     "spec/app/app/models/post.rb",
     "spec/app/app/models/user.rb",
     "spec/app/config/boot.rb",
     "spec/app/config/environment.rb",
     "spec/app/config/environments/development.rb",
     "spec/app/config/environments/production.rb",
     "spec/app/config/environments/test.rb",
     "spec/app/config/initializers/backtrace_silencers.rb",
     "spec/app/config/initializers/inflections.rb",
     "spec/app/config/initializers/mime_types.rb",
     "spec/app/config/initializers/new_rails_defaults.rb",
     "spec/app/config/initializers/session_store.rb",
     "spec/app/config/routes.rb",
     "spec/app/db/migrate/20090623181503_create_users.rb",
     "spec/app/db/migrate/20090623181555_create_posts.rb",
     "spec/app/db/migrate/20090623181609_create_comments.rb",
     "spec/app/db/schema.rb",
     "spec/collapsed_routes_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
