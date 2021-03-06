require_relative '../../automated_init'

context "Case Equality" do
  context "Whole Object" do
    context "Equal" do
      context "Classes are equal and attributes and values are equal" do
        example_1 = Schema::Controls::Schema.example
        example_2 = Schema::Controls::Schema.example

        test "Schemas are equal" do
          assert(example_1 === example_2)
        end
      end

      context "Classes are not equal and attributes and values are equal" do
        example_1 = Schema::Controls::Schema.example
        example_2 = Schema::Controls::Schema.other_example

        test "Schemas are equal" do
          assert(example_1 === example_2)
        end
      end
    end

    context "Not Equal" do
      context "Attributes and values are not equal" do
        example_1 = Schema::Controls::Schema.example
        example_2 = Schema::Controls::Schema.example

        example_2.some_attribute = 'some other value'

        test "Schemas are not equal" do
          refute(example_1 == example_2)
        end
      end
    end
  end
end
