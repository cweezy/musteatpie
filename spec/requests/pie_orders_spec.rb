require 'spec_helper'

describe "PieOrders" do
  describe "GET /pie_orders" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get pie_orders_path
      response.status.should be(200)
    end
  end
end
