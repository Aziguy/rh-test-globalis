<?php

require_once __DIR__ . '/src/schema.php';
require_once __DIR__ . '/src/registrations.php';



// Define a function for redirecting single posts of registrations post type.
function redirect_registration_single() {

    // Check if the current page is a single post and the post type is 'registrations'.
    if( is_single() && get_post_type() == 'registrations' ) {
  
      // Access the global $wp_query object.
      global $wp_query;
  
      // Set a 404 (Page Not Found) status for the query.
      $wp_query->set_404();
  
      // Set the header status to 404.
      status_header( 404 );
  
      // Load the template part for 404 error page.
      get_template_part( 404 );
  
      // Exit to prevent further execution.
      exit();
  
    }
  }

// We hook our function
add_action('template_redirect', 'redirect_registration_single');
  