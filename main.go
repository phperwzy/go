package main

import (
	"github.com/gin-gonic/gin"
	log "github.com/sirupsen/logrus"
)

func main() {
	r := gin.Default()
	r.GET("/ok", func(c *gin.Context) {
		c.JSON(200, 1111)
	})
	r.Run(":8888")

	log.Info("Server End ...")
}
