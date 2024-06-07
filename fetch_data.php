<?php
// Function to fetch webpage content
function fetchWebpage($filename) {
    // Use file_get_contents() to read the contents of the file
    $content = file_get_contents($filename);
    return $content;
}

// Example usage: fetching data from a webpage in the same folder
$filename = "index.html"; // Replace with the filename of your webpage
$webpageContent = fetchWebpage($filename);

// Output the retrieved webpage content
echo $webpageContent;

?>
