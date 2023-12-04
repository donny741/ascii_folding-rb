# frozen_string_literal: true

require_relative "lib/ascii_folding/version"

Gem::Specification.new do |spec|
  spec.name = "ascii_folding"
  spec.version = AsciiFolding::VERSION
  spec.authors = ["Donatas Povilaitis"]
  spec.email = ["ddonatasjar@gmail.com"]

  spec.summary = "Ruby port of Lucene's ASCIIFoldingFilter."
  spec.description = "Folds non-ASCII characters into approximate ASCII equivalents, using character " \
                     "mapping tables that are the same as those used by Lucene's ASCIIFoldingFilter."
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = "https://github.com/donny741/ascii_folding"
  spec.metadata["source_code_uri"] = "https://github.com/donny741/ascii_folding"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
