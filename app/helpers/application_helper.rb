module ApplicationHelper
  # Contact details, in one place so the footer, home page and about page agree.
  CONTACT = {
    name: "Tom Garrett",
    role: "Lead / Principal Developer",
    strapline: "Platform architecture, integrations & AI",
    linkedin: "https://linkedin.com/in/thomasgarrett-digital",
    linkedin_label: "linkedin.com/in/thomasgarrett-digital",
    github: "https://github.com/TomG926",
    github_label: "github.com/TomG926",
    location: "Dublin, Ireland",
    cv: "/tom-garrett-cv.pdf"
  }.freeze

  def contact = CONTACT
end
