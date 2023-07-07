use yew::prelude::*;

enum Msg
{
    Toggle
}

#[derive(PartialEq, Copy, Clone)]
enum RoomTypes
{
    Empty,
    Normal//,
    //Functional,
    //Spawn,
    //Escape
}

impl std::fmt::Display for RoomTypes 
{
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match self {
            RoomTypes::Empty => write!(f, "Empty"),
            RoomTypes::Normal => write!(f, "Normal"),
            //RoomTypes::Functional => write!(f, "Functional"),
            //RoomTypes::Spawn => write!(f, "Spawn"),
            //RoomTypes::Escape => write!(f, "Escape"),
        }
    }
}

struct Room
{
    room_type: RoomTypes,
}

impl Component for Room
{
    type Message = Msg;
    type Properties = ();
    
    fn create(_ctx: &Context<Self>) -> Self
    {
        Self {room_type : RoomTypes::Empty}
    }
    
    fn update(&mut self, _ctx: &Context<Self>, msg: Self::Message) -> bool
    {
        match msg 
        {
            Msg::Toggle =>
            {
                self.room_type = if self.room_type == RoomTypes::Empty { RoomTypes::Normal} else { RoomTypes::Empty };
                true //re-render component
            }
        }
    }
    
    fn view(&self, ctx: &Context<Self>) -> Html
    {
        let link = ctx.link();
        html!
        {
            <div class={classes!("room", self.room_type.to_string().to_lowercase())}>
                <button class="roombtn" onclick={link.callback(|_| Msg::Toggle)}></button>
            </div>
        }
    }
}

fn main() 
{
    for x in 1..15
    {
        yew::Renderer::<Room>::new().render();
    }
}

//trunk serve
//trunk build --release --public-url modtools