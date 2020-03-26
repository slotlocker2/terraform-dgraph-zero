output "zero_address" {
  value = kubernetes_service.dgraph_zero.metadata[0].self_link
}
