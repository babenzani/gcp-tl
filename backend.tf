terraform {
  backend "gcs" {
    credentials = "1706a367bad4.json"
    bucket  = "test-jkt-123"
    prefix  = "compute_engine/state"
  }
}
