// We are writing an app for a restaurant,
// but take_order functions are not being called correctly.
// Can you fix this?



mod restaurant {
    pub fn take_order() -> felt252 {
        'order_taken'
    }
}

#[test]
fn test_mod_fn() {
    // Fix this line to call take_order function from module
    let order_result = restaurant :: take_order();

    assert(order_result == 'order_taken', 'Order not taken');
}

#[cfg(test)]
mod tests {
    #[test]
    use super ::restaurant;
    fn test_super_fn() {
        // Fix this line to call take_order function
        let order_result = restaurant :: take_order();

        assert(order_result == 'order_taken', 'Order not taken');
    }
}
