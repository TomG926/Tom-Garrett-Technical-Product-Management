class WorkController < ApplicationController
  def index
    @case_studies = CaseStudy.all
  end

  # Case studies render in their own layout: each HTML study carries its own
  # typography and palette, so the page gets the site's chrome and nothing else.
  def show
    @case_study = CaseStudy.find!(params[:slug])
    @next_case_study = next_after(@case_study)
    render layout: "document"
  end

  private

  def next_after(study)
    all = CaseStudy.all
    all[(all.index(study) + 1) % all.size]
  end
end
