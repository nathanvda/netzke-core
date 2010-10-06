# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{netzke-core}
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sergei Kozlov"]
  s.date = %q{2010-10-06}
  s.description = %q{Allows building ExtJS/Rails reusable code in a DRY way}
  s.email = %q{sergei@playcode.nl}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc",
     "TODO"
  ]
  s.files = [
    ".autotest",
     ".gitignore",
     "CHANGELOG.rdoc",
     "LICENSE",
     "Manifest",
     "README.rdoc",
     "Rakefile",
     "TODO",
     "app/controllers/netzke_controller.rb",
     "app/models/netzke_preference.rb",
     "autotest/discover.rb",
     "features/actions.feature",
     "features/basic.feature",
     "features/client-server.feature",
     "features/complex_component.feature",
     "features/component.feature",
     "features/component_loader.feature",
     "features/composition.feature",
     "features/custom_css.feature",
     "features/inheritance.feature",
     "features/persistence.feature",
     "features/scopes.feature",
     "features/step_definitions/custom_css_steps.rb",
     "features/step_definitions/generic_steps.rb",
     "features/step_definitions/web_steps.rb",
     "features/support/env.rb",
     "features/support/paths.rb",
     "generators/netzke_core/USAGE",
     "generators/netzke_core/netzke_core_generator.rb",
     "init.rb",
     "install.rb",
     "javascripts/core.js",
     "lib/generators/migration_helper.rb",
     "lib/generators/netzke/USAGE",
     "lib/generators/netzke/core_generator.rb",
     "lib/netzke-core.rb",
     "lib/netzke/actions.rb",
     "lib/netzke/base.rb",
     "lib/netzke/composition.rb",
     "lib/netzke/configuration.rb",
     "lib/netzke/context.rb",
     "lib/netzke/context/masquerading.rb",
     "lib/netzke/context/session.rb",
     "lib/netzke/core_ext.rb",
     "lib/netzke/core_ext/array.rb",
     "lib/netzke/core_ext/hash.rb",
     "lib/netzke/core_ext/string.rb",
     "lib/netzke/core_ext/symbol.rb",
     "lib/netzke/core_ext/time_with_zone.rb",
     "lib/netzke/embedding.rb",
     "lib/netzke/ext_component.rb",
     "lib/netzke/javascript.rb",
     "lib/netzke/persistence.rb",
     "lib/netzke/rails/action_view_ext.rb",
     "lib/netzke/rails/controller_extensions.rb",
     "lib/netzke/rails/routes.rb",
     "lib/netzke/services.rb",
     "lib/netzke/session.rb",
     "lib/netzke/stylesheets.rb",
     "lib/tasks/netzke_core_tasks.rake",
     "spec/component/base_spec.rb",
     "spec/component/composition_spec.rb",
     "spec/component/javascript_spec.rb",
     "spec/spec.opt",
     "spec/spec_helper.rb",
     "stylesheets/core.css",
     "templates/core/create_netzke_preferences.rb",
     "test/fixtures/roles.yml",
     "test/fixtures/users.yml",
     "test/rails_app/.gitignore",
     "test/rails_app/Gemfile",
     "test/rails_app/Gemfile.lock",
     "test/rails_app/README",
     "test/rails_app/Rakefile",
     "test/rails_app/app/controllers/application_controller.rb",
     "test/rails_app/app/controllers/components_controller.rb",
     "test/rails_app/app/controllers/welcome_controller.rb",
     "test/rails_app/app/helpers/application_helper.rb",
     "test/rails_app/app/views/layouts/application.html.erb",
     "test/rails_app/config.ru",
     "test/rails_app/config/application.rb",
     "test/rails_app/config/boot.rb",
     "test/rails_app/config/database.yml",
     "test/rails_app/config/environment.rb",
     "test/rails_app/config/environments/development.rb",
     "test/rails_app/config/environments/production.rb",
     "test/rails_app/config/environments/test.rb",
     "test/rails_app/config/initializers/backtrace_silencers.rb",
     "test/rails_app/config/initializers/inflections.rb",
     "test/rails_app/config/initializers/mime_types.rb",
     "test/rails_app/config/initializers/secret_token.rb",
     "test/rails_app/config/initializers/session_store.rb",
     "test/rails_app/config/locales/en.yml",
     "test/rails_app/config/routes.rb",
     "test/rails_app/db/development_structure.sql",
     "test/rails_app/db/migrate/20100905214933_create_netzke_preferences.rb",
     "test/rails_app/db/schema.rb",
     "test/rails_app/db/seeds.rb",
     "test/rails_app/lib/netzke/border_layout_panel.rb",
     "test/rails_app/lib/netzke/component_loader.rb",
     "test/rails_app/lib/netzke/component_that_has_actions.rb",
     "test/rails_app/lib/netzke/component_with_custom_css.rb",
     "test/rails_app/lib/netzke/component_with_session_persistence.rb",
     "test/rails_app/lib/netzke/composite_two.rb",
     "test/rails_app/lib/netzke/custom.css",
     "test/rails_app/lib/netzke/custom_styles.rb",
     "test/rails_app/lib/netzke/deprecated/server_caller.rb",
     "test/rails_app/lib/netzke/extended_server_caller.rb",
     "test/rails_app/lib/netzke/kinda_complex_component.rb",
     "test/rails_app/lib/netzke/kinda_complex_component/basic_stuff.rb",
     "test/rails_app/lib/netzke/kinda_complex_component/extra_stuff.rb",
     "test/rails_app/lib/netzke/loader_of_component_with_custom_css.rb",
     "test/rails_app/lib/netzke/scoped_components/deep_scoped_components/some_deep_scoped_component.rb",
     "test/rails_app/lib/netzke/scoped_components/extended_scoped_component.rb",
     "test/rails_app/lib/netzke/scoped_components/some_scoped_component.rb",
     "test/rails_app/lib/netzke/server_caller.rb",
     "test/rails_app/lib/netzke/simple_component.rb",
     "test/rails_app/lib/netzke/simple_panel.rb",
     "test/rails_app/lib/netzke/some_composite.rb",
     "test/rails_app/lib/netzke/some_ext_component.rb",
     "test/rails_app/lib/netzke/tab_panel.rb",
     "test/rails_app/lib/tasks/.gitkeep",
     "test/rails_app/public/404.html",
     "test/rails_app/public/422.html",
     "test/rails_app/public/500.html",
     "test/rails_app/public/favicon.ico",
     "test/rails_app/public/images/rails.png",
     "test/rails_app/public/javascripts/application.js",
     "test/rails_app/public/javascripts/controls.js",
     "test/rails_app/public/javascripts/dragdrop.js",
     "test/rails_app/public/javascripts/effects.js",
     "test/rails_app/public/javascripts/prototype.js",
     "test/rails_app/public/javascripts/rails.js",
     "test/rails_app/public/robots.txt",
     "test/rails_app/public/stylesheets/.gitkeep",
     "test/rails_app/script/rails",
     "test/rails_app/test/performance/browsing_test.rb",
     "test/rails_app/test/test_helper.rb",
     "test/rails_app/vendor/plugins/.gitkeep",
     "test/test_helper.rb",
     "test/unit/core_ext_test.rb",
     "test/unit/netzke_core_test.rb",
     "test/unit/netzke_preference_test.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/skozlov/netzke-core}
  s.post_install_message = %q{
========================================================================

           Thanks for installing Netzke Core!
           
  Netzke home page:     http://netzke.org
  Netzke Google Groups: http://groups.google.com/group/netzke
  Netzke tutorials:     http://blog.writelesscode.com

========================================================================

}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{netzke-core}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Build ExtJS/Rails components with minimum effort}
  s.test_files = [
    "spec/component/base_spec.rb",
     "spec/component/composition_spec.rb",
     "spec/component/javascript_spec.rb",
     "spec/spec_helper.rb",
     "test/rails_app/app/controllers/application_controller.rb",
     "test/rails_app/app/controllers/components_controller.rb",
     "test/rails_app/app/controllers/welcome_controller.rb",
     "test/rails_app/app/helpers/application_helper.rb",
     "test/rails_app/config/application.rb",
     "test/rails_app/config/boot.rb",
     "test/rails_app/config/environment.rb",
     "test/rails_app/config/environments/development.rb",
     "test/rails_app/config/environments/production.rb",
     "test/rails_app/config/environments/test.rb",
     "test/rails_app/config/initializers/backtrace_silencers.rb",
     "test/rails_app/config/initializers/inflections.rb",
     "test/rails_app/config/initializers/mime_types.rb",
     "test/rails_app/config/initializers/secret_token.rb",
     "test/rails_app/config/initializers/session_store.rb",
     "test/rails_app/config/routes.rb",
     "test/rails_app/db/migrate/20100905214933_create_netzke_preferences.rb",
     "test/rails_app/db/schema.rb",
     "test/rails_app/db/seeds.rb",
     "test/rails_app/lib/netzke/border_layout_panel.rb",
     "test/rails_app/lib/netzke/component_loader.rb",
     "test/rails_app/lib/netzke/component_that_has_actions.rb",
     "test/rails_app/lib/netzke/component_with_custom_css.rb",
     "test/rails_app/lib/netzke/component_with_session_persistence.rb",
     "test/rails_app/lib/netzke/composite_two.rb",
     "test/rails_app/lib/netzke/custom_styles.rb",
     "test/rails_app/lib/netzke/deprecated/server_caller.rb",
     "test/rails_app/lib/netzke/extended_server_caller.rb",
     "test/rails_app/lib/netzke/kinda_complex_component/basic_stuff.rb",
     "test/rails_app/lib/netzke/kinda_complex_component/extra_stuff.rb",
     "test/rails_app/lib/netzke/kinda_complex_component.rb",
     "test/rails_app/lib/netzke/loader_of_component_with_custom_css.rb",
     "test/rails_app/lib/netzke/scoped_components/deep_scoped_components/some_deep_scoped_component.rb",
     "test/rails_app/lib/netzke/scoped_components/extended_scoped_component.rb",
     "test/rails_app/lib/netzke/scoped_components/some_scoped_component.rb",
     "test/rails_app/lib/netzke/server_caller.rb",
     "test/rails_app/lib/netzke/simple_component.rb",
     "test/rails_app/lib/netzke/simple_panel.rb",
     "test/rails_app/lib/netzke/some_composite.rb",
     "test/rails_app/lib/netzke/some_ext_component.rb",
     "test/rails_app/lib/netzke/tab_panel.rb",
     "test/rails_app/test/performance/browsing_test.rb",
     "test/rails_app/test/test_helper.rb",
     "test/test_helper.rb",
     "test/unit/core_ext_test.rb",
     "test/unit/netzke_core_test.rb",
     "test/unit/netzke_preference_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
  end
end
