require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      title: "Title",
      description: "MyText",
      url: "Url",
      category: "Category",
      location: "Location",
      job_author: "Job Author",
      author_email: "Author Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Job Author/)
    expect(rendered).to match(/Author Email/)
  end
end
