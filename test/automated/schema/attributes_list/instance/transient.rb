require_relative '../../../automated_init'

context "Attributes List" do
  context "Instance" do
    context "Transient" do
      example = Schema::Controls::Schema::TransientAttributes.example
      attributes = example.attributes

      test "List of attribute names and values" do
        assert(attributes == { some_attribute: 'some value', some_other_attribute: 'some other value' })
      end

      test "Hash of object is the same as its attributes list" do
        assert(example.to_h == attributes)
      end
    end
  end
end
