require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      title: "MyString",
      description: "MyText",
      url: "MyString",
      category: "MyString",
      location: "MyString",
      job_author: "MyString",
      author_email: "MyString"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

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
