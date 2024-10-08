// Code generated by jtd-codegen for Rust v0.2.1

use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
pub enum RootFooBar {
    #[serde(rename = "x")]
    X,

    #[serde(rename = "y")]
    Y,
}

#[derive(Serialize, Deserialize)]
pub struct RootFoo {
    #[serde(rename = "bar")]
    pub bar: RootFooBar,
}

#[derive(Serialize, Deserialize)]
pub enum RootFooBar0 {
    #[serde(rename = "x")]
    X,

    #[serde(rename = "y")]
    Y,
}

#[derive(Serialize, Deserialize)]
pub struct Root {
    #[serde(rename = "foo")]
    pub foo: RootFoo,

    #[serde(rename = "foo_bar")]
    pub foo_bar: RootFooBar0,
}
