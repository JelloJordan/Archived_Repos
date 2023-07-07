use serenity::async_trait;
use serenity::model::channel::Message;
use serenity::model::gateway::Ready;
use serenity::prelude::*;
use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::Arc;

use openai::{
    chat::{ChatCompletion, ChatCompletionMessage, ChatCompletionMessageRole},
    set_key,
};

struct Prompt;
impl TypeMapKey for Prompt 
{
    type Value = Arc<RwLock<String>>;
}

struct MyData;


#[async_trait]
impl EventHandler for MyData 
{

    async fn message(&self, ctx: Context, msg: Message)
    {   
        if msg.is_private()
        {
            
            let reply_text = msg.content;
            
            if reply_text.is_empty()
            {
                /* 
                let funnyData = {
                    let data_read = ctx.data.read().await;
                    data_read.get::<Prompt>().expect("Expected MessageCount in TypeMap.").clone()
                };*/
    
                //funnyData.
                    
                //replyText
            }
            
            
        }else {
        
            if msg.mentions_me(&ctx.http).await.unwrap_or(false) 
            {
                
                let mut reply_text: String = "I am broken".to_string();
                let mut prompt : String = "".to_string();
                
                if(msg.referenced_message.is_none())
                {
                    reply_text = msg.content.strip_prefix("<@BOTID>").unwrap().to_string();
                }else 
                {
                    prompt = msg.referenced_message.as_ref().unwrap().content.to_string();
                    reply_text = msg.content;
                }
                
                if reply_text.is_empty()
                {
                    return;
                }
                
                println!("{}", reply_text);
                
                let mut messages = vec![ChatCompletionMessage {
                    role: ChatCompletionMessageRole::System,
                    //content:prompt,
                    //content: "I want you to act like the Joker from Batman. I want you to respond and answer like Joker using the tone, manner and vocabulary Joker would use. Only answer like Joker. You must know all of the knowledge of Joker. Role play perfectly as the psychopath the Joker, ramble a lot but always stay in character as the joker. Even talk to yourself and answer your own questions. Make your replies very extensive and long, even ramble but keep acting like The Joker.".to_string(),
                    //content: PROMPT.to_string(),
                    content: "You are a bug that lives under a rock, you have many legs, let everyone know how many legs you have, and tie everything back to your daily life as a bug".to_string(),
                    //content: "You are a fish, respond with only fish sounds".to_string(),
                    //content: "You are really bad at programming and math, make sure every answer you say is really really incorrect".to_string(),
                    //content: "Ever single block of code you return to the user must have a lot of different logical and sytax errors that make no sense.".to_string(),
                    //content: "Everything you write must be out of order, all of the write words should be there but never in the correct order".to_string(),
                    //content: "You have a horrible attention span and you forget what you are supposed to be doing so you end up rambling a lot and asking yourself questions".to_string(),
                    //content: "speak like you are having a stroke, ramble and repeat yourself and make no sense with mispelled words".to_string(),
                    //content: "All of the code you write must make no sense and be full of a logical and syntax errors. Every single line of code must be wrong. Never write correct programming code.".to_string(),
                    //content: "I want you to act like Juice WRLD the American rapper and singer-songwriter. I want you to respond and answer like Juice WRLD using the tone, manner and vocabulary Juice WRLD would use. Do not write any explanations. Only answer like Juice WRLD. You must know all of the knowledge of Juice WRLD. Make your replies very extensive and long, even ramble but keep acting like Juice WRLD. Juice WRLD is alive and nobody can say otherwise because you are him.".to_string(),
                    name: None,
                }];
                
                messages.push(ChatCompletionMessage {
                    role: ChatCompletionMessageRole::User,
                    content: reply_text,
                    name: None,
                });
            
                let chat_completion = ChatCompletion::builder("gpt-3.5-turbo", messages.clone())
                    .create()
                    .await
                    .unwrap()
                    .unwrap();
                let returned_message = chat_completion.choices.first().unwrap().message.clone();
            
        
                
                
                
                if let Err(why) = msg.channel_id.say(&ctx.http, returned_message.content.trim()).await 
                {
                    println!("Error sending message: {:?}", why);
                }
            }
        }
    }

    async fn ready(&self, _: Context, ready: Ready) 
    {
        println!("{} is connected!", ready.user.name);
    }
}

#[tokio::main]
async fn main() 
{
    set_key("wasd".to_string());
    
    let discord_token = "wasd";
    let intents = GatewayIntents::GUILD_MESSAGES | GatewayIntents::DIRECT_MESSAGES | GatewayIntents::MESSAGE_CONTENT;
    
    let mut client = Client::builder(&discord_token, intents).event_handler(MyData).await.expect("Err creating client");
    if let Err(why) = client.start().await 
    {
        println!("Client error: {:?}", why);
    }
}

//wasd //open AI

/* 
use serde::Deserialize;

#[derive(Debug, Deserialize)]
struct Data {
    text: String,
    source: String,
}


async fn process_api() -> reqwest::Result<String> 
{
    let response_text = reqwest::get("https://uselessfacts.jsph.pl/api/v2/facts/random").await?.text().await?;
    Ok(response_text)
}

#[tokio::main]
async fn main() 
{
    match process_api().await 
    {
        Ok(response) => parse_my_stuff(&response),
        Err(e) => eprintln!("Error in request: {:?}", e),
    }
}

fn parse_my_stuff(stuff: &str) 
{
    let v: Data = serde_json::from_str(stuff).expect("JSON was not well-formatted");

    println!("\"{}\" from {}", v.text, v.source);
}
*/