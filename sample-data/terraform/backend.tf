terraform {
  backend "gcs" {
    bucket = "aef-aef-demo-4-tfe"
    prefix = "sample-data/environments/dev"
  }
}