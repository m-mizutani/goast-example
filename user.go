package main

import (
	"encoding/json"
	"net/http"
)

type User struct {
	Name string
}

func GetUser(userID string) (*User, error) {
	req, err := http.NewRequest("GET", "https://example.com/user/"+userID, nil)
	if err != nil {
		return nil, err
	}

	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		return nil, err
	}

	var user User
	if err := json.NewDecoder(resp.Body).Decode(&user); err != nil {
		return nil, err
	}
	return &user, nil
}
