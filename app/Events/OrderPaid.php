<?php

namespace App\Events;

use App\Models\Order;
use App\Notifications\OrderPaidNotification;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class OrderPaid
{
    use Dispatchable, InteractsWithSockets, SerializesModels;


    protected $order;

    public function __construct(Order $order)
    {
        $this->order = $order;
        $order->user->notify(new OrderPaidNotification($order));
    }

    public function getOrder()
    {
        return $this->order;
    }
}
