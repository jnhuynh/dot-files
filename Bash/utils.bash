# set_rails_project
# Usage: set_rails_project <project_name_relative_to_documents_directory>
function set_rails_project {
  export PROJECT="$1"
  reload
}
