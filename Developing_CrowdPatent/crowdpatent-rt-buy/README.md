#Investment Process

```
-> A enters empty queue

Q: [A]

//A is getting processed immediatly, but blocks for (max.) 3 minutes

-> B enteres the queue

Q: [B,A]

-> C enteres the queue

Q: [C,B,A]

-> A has finished

Q: [C,B]

-> B exists

Q: [C]

// now C is getting processed, blocks (max.) 3 minutes
```

Dummy Code

```ruby
// CrowdPatent Platform
ch.queue("funding_queue")
q.subscribe(:block => true) do |delivery_info, properties, body|
  puts " [x] Received #{body}"
  currently_authorized_users.unauthorize_for_investments
  current_user.authorize_for_investments
end

# GET /investment/:campaignId
def new
  
  client     = InvestmentClient.new(ch, "rpc_funding_queue")
  response   = client.call({userId: current_user.id, campaignId: @campaignId, ...})

  if response == 'in_queue'
    render :waiting_queue 
  else
    render :new_investment
  end
end

# POST /investment/:campaignId
def create
  @pundit_authorization

  investment = Investment.new(permitted_params)
  if investment.save
    redirect_to investment.paypal_url(investment_path(investment))
  else
    render :start_investment
  end
end
```

```golang

go handle(deliveries, c.done)

// ...

func handle(deliveries <-chan amqp.Delivery, done chan error) {
  for d := range deliveries {
    appendQueue(d.Body)
    d.Ack(false) //?
  }
  log.Printf("handle: deliveries channel closed")
  done <- nil
}

func appendQueue(payload STH) {
  queue <- payload
}

// ...

func main() {
  for item := range queue {
    // consume/process
    time.Sleep(3 * time.Minute)
    messages <- message({userId: 1, type: 'processed', item: item})
  }
  main()
}

```
