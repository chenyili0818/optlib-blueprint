import Lake
open Lake DSL

package «Convex» where
  -- add package configuration options here

@[default_target]
lean_lib «Convex» where
  -- add library configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "master"


meta if get_config? env = some "dev" then -- dev is so not everyone has to build it
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"
