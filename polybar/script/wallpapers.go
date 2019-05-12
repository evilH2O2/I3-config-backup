package main

import (
	"fmt"
	"log"
	"os"
	"os/exec"
	"path/filepath"
	"time"
)

// 相比其 Go, shell更容易实现，这里只是为了练习一下 Go而已

//feh --bg-fill ~/Photos/wallpaper/69047709_p0.jpg

func wallPaper(wallpaperPath string, wallpaperList []string) int {
	for i := 0; i < len(wallpaperList); i++ {
		wallpaper := wallpaperList[i]
		backgroundImg := wallpaperPath + "/" + wallpaper
		cmd := exec.Command("feh", "--bg-fill", backgroundImg)
		cmdErr := cmd.Run()
		//fmt.Println(cmd)
		if cmdErr == nil {
			fmt.Println("Run Ok")
		} else {
			log.Println("Error:")
			log.Println(cmdErr)
			break
		}
		fmt.Println("User wallpaper: ", backgroundImg)
		time.Sleep(20 * time.Second)
		if i == len(wallpaperList) - 1 {
			i = -1
		}

	}
	return 0
}


func main()  {
	var wallpaperPath string = "/root/Photos/Wallpaper-Go"
	chdirErr := os.Chdir(wallpaperPath)
	if chdirErr != nil {
		log.Println("Error")
		log.Println(chdirErr)
		os.Exit(1)
	}

	wallpaperList, _ := filepath.Glob("*")
	wallPaper(wallpaperPath, wallpaperList)
}
