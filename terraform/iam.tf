resource "google_project_iam_member" "firestore_owner_binding" {
  project = var.project
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.SA.email}"
}
resource "google_project_iam_member" "firestore_owner_binding1" {
  project = var.project
  role    = "projects/mustafa-375013/roles/mustafa123456789"
  member  = "serviceAccount:${google_service_account.SA.email}"
}
resource "google_project_iam_member" "firestore_owner_binding2" {
  project = var.project
  role    = "roles/storage.objectCreator"
  member  = "serviceAccount:${google_service_account.SA.email}"
}
resource "google_project_iam_member" "firestore_owner_binding4" {
  project = var.project
  role    = "roles/storage.objectViewer"
  member  = "serviceAccount:${google_service_account.SA.email}"
}
resource "google_project_iam_member" "firestore_owner_binding3" {
  project = var.project
  role    = "roles/artifactregistry.writer"
  member  = "serviceAccount:${google_service_account.SA.email}"
}
resource "google_project_iam_member" "project" {
  project = var.project
  role    = "roles/iap.tunnelResourceAccessor"
  member  = "serviceAccount:${google_service_account.SA.email}"
}