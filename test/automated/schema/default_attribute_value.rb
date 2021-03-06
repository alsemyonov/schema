require_relative '../automated_init'

context "Default Attribute Value" do
  context "Attribute With Default Value Declaration" do
    context do
      example = Schema::Controls::Schema::DefaultValue::Example.new

      test "Has a default value" do
        assert(example.some_attribute == 'some default value')
      end
    end

    context "Default Value Is Proc" do
      example = Schema::Controls::Schema::DefaultValue::Proc::Example.new

      test "Has a default value set by executing proc" do
        assert(example.some_attribute == 'some default value')
      end
    end
  end

  context "Attribute Without Default Value Declaration" do
    example = Schema::Controls::Schema::Example.new

    test "Has a default value" do
      assert(example.some_attribute.nil?)
    end
  end
end
