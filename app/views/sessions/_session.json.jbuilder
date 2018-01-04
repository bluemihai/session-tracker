json.extract! session, :id, :facilitator, :starting, :kind, :created_at, :updated_at
json.url session_url(session, format: :json)
