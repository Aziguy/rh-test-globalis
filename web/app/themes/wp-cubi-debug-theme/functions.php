<?php

require_once __DIR__ . '/src/schema.php';
require_once __DIR__ . '/src/registrations.php';


/**
 * Sends an email with a PDF ticket attached when a new 'registrations' post is created.
 *
 * @param int     $post_ID ID of the post being saved.
 * @param WP_Post $post    Post object.
 * @param bool    $update  Whether this is an existing post being updated.
 */
function send_registration_email($post_ID, $post, $update) {
    // To avoid confusion ensure this is a new 'registrations' post being created
    if ($post->post_type !== 'registrations' || $update) {
        return;
    }
    
    // Retrieve the email of the registrant
    $recipient_email = get_post_meta($post_ID, 'registration_email', true);
    
    // Retrieve the information of the event associated with the registration
    $event_id = get_post_meta($post_ID, 'registration_event_id', true);
    $event_title = $event_id ? get_the_title($event_id) : '';

    // Ensure the recipient email exists and is not empty, and the event title is available
    if ($recipient_email && $event_title) {
        // Generate the content of the email
        $subject = 'Registration Confirmation for event: ' . $event_title;
        $message = 'Hello, You are registered for the event: ' . $event_title . '. Please find your entry ticket attached.';
        
        // Path to the PDF file of the entry ticket
        $ticket_pdf = 'web/media/2023/05/test.pdf';
        
        // Check if the PDF file exists
        if (file_exists($ticket_pdf)) {
        
            $attachments = [$ticket_pdf];

            $headers = [
                'Content-Type: text/html; charset=UTF-8',
                'From: Globalis <globalis@domain.ts>',
            ];
            
            // Send the email
            wp_mail($recipient_email, $subject, $message, $headers, $attachments);
        }
    }
}

// We hook our function to detect the creation of a new 'registrations' post
add_action('save_post_registrations', 'send_registration_email', 10, 3);