variable "prefix" {
  type = string
  default = "ha"
}

variable "namespace" {
  type = string
  default = "dgraph"
}

variable image {
  type = string
  default = "dgraph/dgraph"
}

variable image_version {
  type = string
  default = "latest"
}

variable image_pull_policy { 
  type = string
  default = "IfNotPresent"
}

variable http_port {
  type = number
  default = 6080
}

variable grpc_port {
  type = number
  default = 5080
}

variable command {
  type = list
  default = ["bash", "/cmd/dgraph_zero.sh"]
}

variable persistence_mount_path {
  type = string
  default = "/dgraph"
}


# Probes
variable "liveness_probe_path" {
  type = string
  default = "/health"
}

variable "liveness_probe_initial_delay_seconds" {
  type = number
  default = 15
}

variable "liveness_probe_timeout_seconds" {
  type = number
  default = 5
}

variable "liveness_period_seconds" {
  type = number
  default = 10
}

variable "liveness_probe_success_threshold" {
  type = number
  default = 1
}

variable "liveness_probe_failure_threshold" {
  type = number
  default = 6
}

variable "readiness_probe_path" {
  type = string
  default = "/state"
}

variable "readiness_probe_initial_delay_seconds" {
  type = number
  default = 15
}

variable "readiness_probe_timeout_seconds" {
  type = number
  default = 5
}

variable "readiness_period_seconds" {
  type = number
  default = 10
}

variable "readiness_probe_success_threshold" {
  type = number
  default = 1
}

variable "readiness_probe_failure_threshold" {
  type = number
  default = 6
}


variable termination_grace_period_seconds {
  type = number
  default = 60
}

variable "persistence" {
  type = bool
  default = true
}

variable "pod_anti_affinity" {
  type = bool
  default = false
}

variable "storage_size" {
  type = number
  default = "5"
  description = "The size in GiB"
}

variable "replicas" {
  type = number
  default = 3
  description = "The count of Aplha pods to run"
}
