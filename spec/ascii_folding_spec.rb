# frozen_string_literal: true

RSpec.describe AsciiFolding do
  it "has a version number" do
    expect(AsciiFolding::VERSION).not_to be nil
  end

  describe ".fold" do
    it "returns a string" do
      expect(AsciiFolding.fold("")).to be_a(String)
    end

    it "returns a string with only ASCII characters" do
      expect(AsciiFolding.fold("Café À la carte ⒢")).to eq("Cafe A la carte (g)")
    end

    describe "replacement" do
      before do
        stub_const("AsciiFolding::APPROXIMATIONS", { "á" => "a" })
      end

      it "replaces unknown characters with ? by default" do
        expect(AsciiFolding.fold("áí")).to eq("a?")
      end

      it "replaces unknown characters with the specified replacement" do
        expect(AsciiFolding.fold("áí", replacement: "x")).to eq("ax")
      end
    end
  end
end
