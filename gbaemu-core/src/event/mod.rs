use sdl2::{keyboard::Keycode, EventPump};

pub trait EventPoller {
    type Event: EventType;
    type EventIter: IntoIterator<Item = Self::Event>;

    fn poll_event(&mut self) -> Self::EventIter;
}

impl EventPoller for EventPump {
    type Event = sdl2::event::Event;
    type EventIter = Vec<Self::Event>;

    fn poll_event(&mut self) -> Self::EventIter {
        self.poll_iter().collect()
    }
}

pub trait EventType {
    fn quit(&self) -> bool;
    fn escape(&self) -> bool;
}

impl EventType for sdl2::event::Event {
    fn quit(&self) -> bool {
        self.is_same_kind_as(&sdl2::event::Event::Quit { timestamp: 0 })
    }

    fn escape(&self) -> bool {
        matches!(
            self,
            sdl2::event::Event::KeyDown {
                keycode: Some(Keycode::Escape),
                ..
            }
        )
    }
}
