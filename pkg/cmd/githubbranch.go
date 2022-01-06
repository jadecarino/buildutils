//
// Copyright contributors to the Galasa project 
//

package cmd

import (
	"github.com/spf13/cobra"
)

var (
    githubBranchCmd = &cobra.Command{
		Use:   "branch",
		Short: "branch related build commands",
		Long:  "Various commands to interact with GitHub Branches to help the build pipeline along",
	}

)

func init() {
	githubCmd.AddCommand(githubBranchCmd)
}
