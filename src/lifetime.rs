fn longest<'a>(s1: &'a str, s2: &'a str) -> &'a str {
    if s1.len() > s2.len() {
        return s1;
    } else {
        return s2;
    }
}

fn main() {
    let string1 = String::from("Hello");
    let string2 = String::from("Rustaceans");

    let result = longest(&string1, &string2);
    println!("The longest string is: {}", result);
}
