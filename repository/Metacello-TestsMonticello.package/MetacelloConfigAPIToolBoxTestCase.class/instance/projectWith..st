accessing
projectWith: projectAttributes
  | project |
  "Construct Metacello project"
  project := MetacelloMCProject new.
  project projectAttributes: projectAttributes.
  MetacelloVersionConstructor
    on:
      (MetacelloPlatform current
        globalNamed: #'MetacelloTestConfigurationOfProjectToolBox') new
    project: project.
  project loader: MetacelloNullRecordingMCSpecLoader new.
  project loader evalDoits: true.
  ^ project