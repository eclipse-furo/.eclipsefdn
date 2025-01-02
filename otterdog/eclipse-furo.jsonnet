local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.furo', 'eclipse-furo') {
  settings+: {
    description: "",
    name: "Eclipse Furo",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "read",
    },
  },
  teams+: [
  ],
  _repositories+:: [
    orgs.newRepo('eclipsefuro') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "go"
      ],
      code_scanning_default_setup_enabled: true,
      delete_branch_on_merge: false,
      description: "Eclipse Furo offers simple, enterprise-tailored, language-independent API development. It comes with multiple sources of truth and generates border-crossing type and service definitions.",
      homepage: "https://furo.pro",
      topics+: [
        "api",
        "api-design",
        "furo",
        "grpc",
        "grpc-gateway",
        "homebrew",
        "rest",
        "swagger",
        "webstack"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('eclipsefuro-web') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "javascript",
        "javascript-typescript",
        "typescript"
      ],
      code_scanning_default_setup_enabled: true,
      delete_branch_on_merge: false,
      description: "Enterprise ready set of web components which work best with Eclipse Furo. Comes with minimal footprint. Based on web standards. Future proved. Compliant with any technology of choice.",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "main",
      gh_pages_source_path: "/docs",
      homepage: "https://web-components.furo.pro/",
      topics+: [
        "custom-elements",
        "furo",
        "web",
        "webcomponents",
        "webstack"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}