require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        title: "Title",
        description: "MyText",
        url: "Url",
        category: "Category",
        location: "Location",
        job_author: "Job Author",
        author_email: "Author Email"
      ),
      Job.create!(
        title: "Title",
        description: "MyText",
        url: "Url",
        category: "Category",
        location: "Location",
        job_author: "Job Author",
        author_email: "Author Email"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Url".to_s, count: 2
    assert_select "tr>td", text: "Category".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Job Author".to_s, count: 2
    assert_select "tr>td", text: "Author Email".to_s, count: 2
  end
end
