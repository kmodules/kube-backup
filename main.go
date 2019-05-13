package main

import (
	"github.com/tamalsaha/go-oneliners"
	_ "k8s.io/client-go/plugin/pkg/client/auth"
	"k8s.io/client-go/tools/clientcmd"
	"k8s.io/client-go/util/homedir"
	"kmodules.xyz/client-go/tools/backup"
	"log"
	"path/filepath"
)

func main() {
	masterURL := ""
	kubeconfigPath := filepath.Join(homedir.HomeDir(), ".kube", "config")

	config, err := clientcmd.BuildConfigFromFlags(masterURL, kubeconfigPath)
	if err != nil {
		log.Fatalf("Could not get Kubernetes config: %s", err)
	}

	mgr := backup.NewBackupManager("", config, false)
	filename, err := mgr.BackupToTar("/tmp")
	if err != nil {
		log.Fatalln(err)
	}
	oneliners.FILE(filename)
}
