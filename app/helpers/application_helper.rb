module ApplicationHelper
  # Contact details, in one place so the footer, home page and about page agree.
  CONTACT = {
    name: "Tom Garrett",
    role: "Technical Product Management",
    email: "tgarrett.92@icloud.com",
    linkedin: "https://linkedin.com/in/thomasgarrett-digital",
    linkedin_label: "linkedin.com/in/thomasgarrett-digital",
    location: "Dublin, Ireland",
    cv: "/tom-garrett-cv.pdf"
  }.freeze

  def contact = CONTACT
end
