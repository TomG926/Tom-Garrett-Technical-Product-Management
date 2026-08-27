class PagesController < ApplicationController
  def home
    @case_studies = CaseStudy.all
  end

  def about; end
end
