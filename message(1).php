<?php
// connecting to database
$conn = mysqli_connect("localhost", "root", "", "testbot") or die("Database Error");

// getting user message through ajax
$getMesg = mysqli_real_escape_string($conn, $_POST['text']);

//checking user query to database query
$check_data = "SELECT replies FROM chatbot WHERE queries LIKE '%$getMesg%'";
$run_query = mysqli_query($conn, $check_data) or die("Error");

// if user query matched to database query we'll show the reply otherwise it go to else statement
if(mysqli_num_rows($run_query) > 0){
    //fetching replay from the database according to the user query
    $fetch_data = mysqli_fetch_assoc($run_query);
    //storing replay to a variable which we'll send to ajax
    $replay = $fetch_data['replies'];
    echo $replay;
} else {
    // Check if the local HTML file exists
    if (file_exists('index.html')) {
        // Load the HTML content
        $html_content = file_get_contents('index.html');
        
        // Create a new DOMDocument to parse the HTML
        $dom = new DOMDocument;
        @$dom->loadHTML($html_content);
        
        // Create an XPath to query the DOM
        $xpath = new DOMXPath($dom);
        
        // Search for sections matching the query
        $query = strtolower($getMesg);
        $result = "Sorry, I can't find any information related to your question. You can ask about our products.";

        // Iterate through each section in the HTML
        foreach ($xpath->query('//div') as $section) {
            $section_text = strtolower($section->textContent);
            if (strpos($section_text, $query) !== false) {
                $result = $dom->saveHTML($section);
                break;
            }
        }
        
        echo $result;
    } else {
        echo "Requested page not found!";
    }
}
?>
