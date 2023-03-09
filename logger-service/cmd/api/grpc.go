package main

import (
	"context"
	"log-service/data"
	"log-service/logs"
)

type LogServer struct {
	logs.UnimplementedLogServiceServer
	Models data.Models
}

func (l *LogServer) WriteLog(ctx context.Context, req *logs.LogRequest) (*logs.LogResponse, error) {
	input := req.GetLogEntry()

	// Write the log
	logEntry := data.LogEntry{
		Name: input.Name,
		Data: input.Data,
	}

	err := l.Models.LogEntry.Insert(logEntry)
	if err != nil {
		res := &logs.LogResponse{Result: "failed"}
		return res, nil
	}

	res := &logs.LogResponse{
		Result: "logged via gRPC",
	}

	// Return response
	return res, nil
}
