# frozen_string_literal: true

require_relative "ascii_folding/version"
require_relative "ascii_folding/approximations"

module AsciiFolding
  def self.fold(string, replacement: "?")
    string.gsub(/[^\x00-\x7f]/u) do |char|
      AsciiFolding::APPROXIMATIONS[char] || replacement
    end
  end
end
