output "openai_accounts" {
  description = "Azure OpenAI endpoints and account information."
  value       = module.ai_services.openai_accounts
}

output "openai_primary_keys" {
  description = "Azure OpenAI primary access keys."
  value       = module.ai_services.openai_primary_keys
  sensitive   = true
}

output "search_services" {
  description = "Azure AI Search endpoint details for Agent vector RAG."
  value       = module.ai_services.search_services
}

output "agent_identities" {
  description = "User-Assigned Managed Identity details for AI Agent workloads."
  value       = module.ai_services.agent_identities
}
