package main

import (
	"fmt"
	"math"
	"time"
)

type Funding struct {
	userID      int
	campaignID  int
	price       float64
	investment  float64
	priceFactor float64
	timestamp   time.Time
}

func (f Funding) RealSharePerMil() float64 {
	return (f.investment / f.price) / 1000.00
}

func (f Funding) NextPrice() float64 {
	return f.price * math.Exp(math.Log(f.priceFactor)*f.RealSharePerMil())
}

func (f Funding) GetInvestment() float64 {
	return f.investment
}

func New(userID int, campaignID int, price float64, investment float64, priceFactor float64) Funding {
	return Funding{userID, campaignID, price, investment, priceFactor, time.Now()}
}

func totalInvestment(fundings []Funding) float64 {
	total := 0.00
	for _, f := range fundings {
		total += f.GetInvestment()
	}
	return total
}

func totalShare(fundings []Funding) float64 {
	total := 0.00
	for _, f := range fundings {
		total += f.RealSharePerMil()
	}
	return total
}

func main() {
	funding0 := New(1, 1, 10.00, 5.00, 37.00)
	funding1 := New(2, 1, funding0.NextPrice(), 100.00, 37.00)
	funding2 := New(3, 1, funding1.NextPrice(), 105.00, 37.00)
	funding3 := New(4, 1, funding2.NextPrice(), 200.00, 37.00)
	funding4 := New(5, 1, funding3.NextPrice(), 5.00, 37.00)

	var fundings []Funding
	fundings = append(fundings, funding0, funding1, funding2, funding3, funding4)

	fmt.Printf("Total Investment: %.2f\n", totalInvestment(fundings))
	fmt.Printf("Total Share: %.4f\n", totalShare(fundings)*100)
}
