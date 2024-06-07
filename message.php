<?php
// connecting to database
$conn = mysqli_connect("localhost", "root", "", "testbot") or die("Database Error");

// getting user message through ajax
$getMesg = mysqli_real_escape_string($conn, $_POST['text']);

// Handle product search by category
$query = strtolower($getMesg);
$category_keywords = ['shoe', 'clothing', 'perfume', 'jacket', 'belt', 'watch', 'cap', 'heels', 'jewellery'];

$found = false;
foreach ($category_keywords as $keyword) {
    if (strpos($query, $keyword) !== false) {
        $found = true;
        $sql = "SELECT name, description, price, image_path FROM products WHERE category='$keyword'";
        $result = mysqli_query($conn, $sql) or die("Error in query");

        if (mysqli_num_rows($result) > 0) {
            $response = "<h3>Available " . ucfirst($keyword) . "s:</h3><ul>";
            while ($row = mysqli_fetch_assoc($result)) {
                $response .= "<li><img src='" . $row['image_path'] . "' alt='" . $row['name'] . "' style='width:50px;height:50px;'> <b>" . $row['name'] . "</b> - " . $row['description'] . " ($" . $row['price'] . ")</li>";
            }
            $response .= "</ul>";
        } else {
            $response = "No products found in the " . $keyword . " category.";
        }

        echo $response;
        break;
    }
}

if (!$found) {
    //checking user query to chatbot table
    $check_data = "SELECT replies FROM chatbot WHERE queries LIKE '%$getMesg%'";
    $run_query = mysqli_query($conn, $check_data) or die("Error");

    // if user query matched to database query we'll show the reply otherwise it go to else statement
    if (mysqli_num_rows($run_query) > 0) {
        //fetching replay from the database according to the user query
        $fetch_data = mysqli_fetch_assoc($run_query);
        //storing replay to a variable which we'll send to ajax
        $replay = $fetch_data['replies'];
        echo $replay;
    } else {
        echo "I'm sorry, but I couldn't find any information related to your question. Please feel free to ask anything about our shop eg. our products, and I'll be happy to assist you!";
    }
}
?>
