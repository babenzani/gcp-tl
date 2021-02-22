terraform {
  backend "gcs" {
    bucket  = "test-jkt-123"
    prefix  = "compute_engine/state"
  }
}
