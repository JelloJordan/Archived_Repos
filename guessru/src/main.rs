use yew::prelude::*;
use wasm_bindgen::prelude::*;
use rand::thread_rng;
use rand::seq::SliceRandom;

use wasm_bindgen_futures::JsFuture;
use web_sys::{Request, RequestInit, RequestMode, Response};

pub struct Puzzle 
{
    pub answer: String,
    pub translation: String,
}

pub struct Pair 
{
    pub english: String,
    pub russian: String,
}

#[wasm_bindgen]
extern "C" 
{
    type Buffer;
    
    #[wasm_bindgen(js_namespace = console)]
    fn log(s: &str);
}

#[wasm_bindgen]
pub async fn run() -> Result<JsValue, JsValue> {
    let mut opts = RequestInit::new();
    opts.method("GET");
    opts.mode(RequestMode::Cors);

    let url = "https://api.github.com/repos/guessru/branches/master";

    let request = Request::new_with_str_and_init(&url, &opts)?;

    request
        .headers()
        .set("Accept", "application/vnd.github.v3+json")?;

    let window = web_sys::window().unwrap();
    let resp_value = JsFuture::from(window.fetch_with_request(&request)).await?;

    // `resp_value` is a `Response` object.
    assert!(resp_value.is_instance_of::<Response>());
    let resp: Response = resp_value.dyn_into().unwrap();

    // Convert this other `Promise` into a rust `Future`.
    let json = JsFuture::from(resp.json()?).await?;

    // Send the JSON response back to JS.
    Ok(json)
}

#[function_component(App)]
fn app() -> Html 
{
    fn get_pairs() -> Vec<Pair>
    {
        log("Loading Files");
        
        let mut pairs = Vec::<Pair>::new();
        
        //log(run());
        
        /* 
        let en: Buffer = read_file("en.txt").unwrap();
        let ru: Buffer = read_file("ru.txt").unwrap();
        -
        //let en: String = fs::read_to_string("en.txt").unwrap().parse().unwrap();
        //let ru: String = fs::read_to_string("ru.txt").unwrap().parse().unwrap();
    
        let en_lines: Vec<String> = en.split("\n").map(str::to_string).collect();
        let ru_lines: Vec<String> = ru.split("\n").map(str::to_string).collect();
        
        for (i, _) in en_lines.iter().enumerate()
        {
            pairs.push(Pair{english:en_lines[i].clone(), russian:ru_lines[i].clone()});
        }
        */
        
        pairs.push(Pair{english:"home".to_string(), russian:"дом".to_string()});
        
        return pairs;
        
    }
    
    let pairs = get_pairs();
    
    let mut rng = thread_rng();
    let random = pairs.choose(&mut rng).unwrap();
    
    let active = Puzzle 
    {
        answer: random.russian.clone(),
        translation: random.english.clone(),
    };
    
    /* 
    #[function_component(MakeLetter)]
    pub fn make_letter(props: &RenderedAtProps) -> Html
    {
        html! {
            <div class={classes!("mx-1", "w-fit", "h-fit", "rounded-lg", "bg-slate-800", "shadow-md", "duration-300", "hover:scale-105", "hover:shadow-lg")}>
                <p class={classes!("scale-125", "px-5", "pb-6", "select-none", "font-medium", "text-5xl", "text-gray-300")}>{format!("{}", &props.data)}</p>
            </div>
        }
    }*/
    /* 
    #[function_component(MakeLetters)]
    pub fn make_letters(props: &What) -> Html
    {
        /* 
        for props.data.chars().map(|letter|
        {
            make_letter(letter);
        })
        */
    }*/

    html! 
    {
        <>
            <div class={classes!("mx-auto", "my-5", "w-80", "rounded-lg", "bg-slate-800")}>
                <img class={classes!("h-full", "w-full", "object-fill", "object-center")} src={format!("https://img.icons8.com/color/128/{}", active.translation)}/>
            </div>
            <div class={classes!("mx-auto", "w-fit", "flex")}>
                //<MakeLetters data="bruh"/>
                 //<MakeLetters data='д' /> 
            </div>
        </>
    }
}

fn main() 
{   
    yew::Renderer::<App>::new().render();
}