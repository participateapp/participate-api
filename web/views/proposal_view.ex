defmodule ParticipateApi.ProposalView do
  use ParticipateApi.Web, :view
  use JaSerializer.PhoenixView

  attributes [:title, :body]
  
  has_one :author,
    field: :author_id,
    type: "participants",
    links: [
      related: "/proposals/:id/author",
      self: "/proposals/:id/relationships/author"
    ]
  has_one :previous_proposal,
    field: :previous_proposal_id,
    type: "proposals",
    links: [
      related: "/proposals/:id/previous-proposal",
      self: "/proposals/:id/relationships/previous-proposal"
    ]
  has_many :counter_proposals,
    links: [
      related: "/proposals/:id/counter-proposals",
      self: "/proposals/:id/relationships/counter-proposals"
    ]
  has_many :supports,
    links: [
      related: "/proposals/:id/supports",
      self: "/proposals/:id/relationships/supports"
    ]
  has_many :delegates,
    links: [
      related: "/proposals/:id/delegates",
      self: "/proposals/:id/relationships/delegates"
    ]
  has_many :delegations,
    links: [
      related: "/proposals/:id/delegations",
      self: "/proposals/:id/relationships/delegations"
    ]
  has_many :suggestions,
    links: [
      related: "/proposals/:id/suggestions",
      self: "/proposals/:id/relationships/suggestions"
    ]
end