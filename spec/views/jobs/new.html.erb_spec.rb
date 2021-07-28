require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      title: "MyString",
      description: "MyText",
      url: "MyString",
      category: "MyString",
      location: "MyString",
      job_author: "MyString",
      author_email: "MyString"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input[name=?]", "job[title]"

      assert_select "textarea[name=?]", "job[description]"

      assert_select "input[name=?]", "job[url]"

      assert_select "input[name=?]", "job[category]"

      assert_select "input[name=?]", "job[location]"

      assert_select "input[name=?]", "job[job_author]"

      assert_select "input[name=?]", "job[author_email]"
    end
  end
end
