<?php
// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Connecting to the database
$conn = mysqli_connect("localhost", "root", "", "ecommerce") or die("Database Connection Error");

// Getting user message through AJAX
if (isset($_POST['text'])) {
    $getMesg = mysqli_real_escape_string($conn, $_POST['text']);
    $category = '';

    // Check if the message contains the word "shoe"
    if (stripos($getMesg, 'shoe') !== false) {
        $category = 'shoe';
    }

    // Add more categories as needed
    elseif (stripos($getMesg, 'clothing') !== false) {
        $category = 'clothing';
    }

    if ($category != '') {
        // Fetch products from the database based on the category
        $query = "SELECT name, description, price FROM products WHERE category = '$category'";
        $result = mysqli_query($conn, $query) or die("Query Error");

        if (mysqli_num_rows($result) > 0) {
            $response = "Available $category:\n";
            while ($row = mysqli_fetch_assoc($result)) {
                $response .= "{$row['name']} - {$row['description']} - \${$row['price']}\n";
            }
            echo nl2br($response);
        } else {
            echo "Sorry, no products found in the $category category.";
        }
    } else {
        echo "Please specify a product category.";
    }
} else {
    echo "No input received!";
}
?>
