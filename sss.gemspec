## This is the rakegem gemspec template. Make sure you read and understand
## all of the comments. Some sections require modification, and others can
## be deleted if you don't need them. Once you understand the contents of
## this file, feel free to delete any comments that begin with two hash marks.
## You can find comprehensive Gem::Specification documentation, at
## http://docs.rubygems.org/read/chapter/20

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'sss'
  s.version           = '0.1.0'
  s.date              = '2010-08-05'
  s.rubyforge_project = 'sss'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "Client library for Amazon's Simple Storage Service's REST API."
  s.description = "#{s.summary} Heavily based on aws-s3 by Marcel Molina."

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors  = ["Michael Dwan"]
  s.email    = 'mpdwan@gmail.com'
  s.homepage = 'http://github.com/michaeldwan/aws-s3'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## If your gem includes any executables, list them here.
  s.executables = ["s3sh", "setup.rb"]
  s.default_executable = 's3sh'

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options  = ['--title', "SSS -- Support for Amazon S3's REST api",
                     '--main',  'README',
                     '--line-numbers', '--inline-source']
  s.extra_rdoc_files = %w(README COPYING INSTALL)

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.
  s.add_dependency 'xml-simple'
  s.add_dependency 'builder'
  s.add_dependency 'mime-types'

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    CHANGELOG
    COPYING
    INSTALL
    README
    README.erb
    Rakefile
    TODO
    bin/s3sh
    bin/setup.rb
    lib/sss.rb
    lib/sss/acl.rb
    lib/sss/authentication.rb
    lib/sss/base.rb
    lib/sss/bittorrent.rb
    lib/sss/bucket.rb
    lib/sss/connection.rb
    lib/sss/error.rb
    lib/sss/exceptions.rb
    lib/sss/extensions.rb
    lib/sss/logging.rb
    lib/sss/object.rb
    lib/sss/owner.rb
    lib/sss/parsing.rb
    lib/sss/response.rb
    lib/sss/service.rb
    site/index.erb
    site/public/images/box-and-gem.gif
    site/public/images/favicon.ico
    site/public/ruby.css
    site/public/screen.css
    sss.gemspec
    support/faster-xml-simple/COPYING
    support/faster-xml-simple/README
    support/faster-xml-simple/Rakefile
    support/faster-xml-simple/lib/faster_xml_simple.rb
    support/faster-xml-simple/test/fixtures/test-1.rails.yml
    support/faster-xml-simple/test/fixtures/test-1.xml
    support/faster-xml-simple/test/fixtures/test-1.yml
    support/faster-xml-simple/test/fixtures/test-2.rails.yml
    support/faster-xml-simple/test/fixtures/test-2.xml
    support/faster-xml-simple/test/fixtures/test-2.yml
    support/faster-xml-simple/test/fixtures/test-3.rails.yml
    support/faster-xml-simple/test/fixtures/test-3.xml
    support/faster-xml-simple/test/fixtures/test-3.yml
    support/faster-xml-simple/test/fixtures/test-4.rails.yml
    support/faster-xml-simple/test/fixtures/test-4.xml
    support/faster-xml-simple/test/fixtures/test-4.yml
    support/faster-xml-simple/test/fixtures/test-5.rails.yml
    support/faster-xml-simple/test/fixtures/test-5.xml
    support/faster-xml-simple/test/fixtures/test-5.yml
    support/faster-xml-simple/test/fixtures/test-6.rails.yml
    support/faster-xml-simple/test/fixtures/test-6.xml
    support/faster-xml-simple/test/fixtures/test-6.yml
    support/faster-xml-simple/test/fixtures/test-7.rails.yml
    support/faster-xml-simple/test/fixtures/test-7.xml
    support/faster-xml-simple/test/fixtures/test-7.yml
    support/faster-xml-simple/test/fixtures/test-8.rails.yml
    support/faster-xml-simple/test/fixtures/test-8.xml
    support/faster-xml-simple/test/fixtures/test-8.yml
    support/faster-xml-simple/test/regression_test.rb
    support/faster-xml-simple/test/test_helper.rb
    support/faster-xml-simple/test/xml_simple_comparison_test.rb
    support/rdoc/code_info.rb
    test/acl_test.rb
    test/authentication_test.rb
    test/base_test.rb
    test/bucket_test.rb
    test/connection_test.rb
    test/error_test.rb
    test/extensions_test.rb
    test/fixtures.rb
    test/fixtures/buckets.yml
    test/fixtures/errors.yml
    test/fixtures/headers.yml
    test/fixtures/logging.yml
    test/fixtures/loglines.yml
    test/fixtures/logs.yml
    test/fixtures/policies.yml
    test/logging_test.rb
    test/mocks/fake_response.rb
    test/object_test.rb
    test/parsing_test.rb
    test/remote/acl_test.rb
    test/remote/bittorrent_test.rb
    test/remote/bucket_test.rb
    test/remote/logging_test.rb
    test/remote/object_test.rb
    test/remote/test_file.data
    test/remote/test_helper.rb
    test/response_test.rb
    test/service_test.rb
    test/test_helper.rb
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end