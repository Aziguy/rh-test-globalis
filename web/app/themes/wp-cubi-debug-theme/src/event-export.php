<?php
  
// Add column header
function add_export_list_column($columns) {
    $columns['export_list'] = 'Export List';
    return $columns;
}
add_filter('manage_events_posts_columns', 'add_export_list_column');

// Populate column with content
function display_export_list_column($column, $post_id) {
    if ($column === 'export_list') {
        echo '<a class="button button-primary" href="' . esc_url(admin_url('admin-ajax.php?action=export_event_registrants&event_id=' . $post_id)) . '">Export</a>';
    }
}
add_action('manage_events_posts_custom_column', 'display_export_list_column', 10, 2);

// AJAX action for exporting event registrants
function export_event_registrants() {
    if (isset($_GET['event_id'])) {
        $event_id = intval($_GET['event_id']);

        // Function to get registrants for an event
        $registrants = get_registrants_for_event($event_id);

        // Generate CSV file
        $filename = 'event_' . $event_id . '_registrants.csv';
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename=' . $filename);
        $output = fopen('php://output', 'w');
        fputcsv($output, array('ID', 'Nom', 'Prénom', 'Email', 'Téléphone'));

        foreach ($registrants as $registrant) {
            fputcsv($output, $registrant);
        }

        fclose($output);
        exit();
    }
}
add_action('wp_ajax_export_event_registrants', 'export_event_registrants');
add_action('wp_ajax_nopriv_export_event_registrants', 'export_event_registrants');

// Function to retrieve registrants for an event
function get_registrants_for_event($event_id) {
    // Initialize an empty array to store registrant data
    $registrants = array();

    // Query to retrieve registrants enrolled in the specified event
    $args = array(
        'post_type' => 'registrations',
        'meta_key' => 'registration_event_id',
        'meta_value' => $event_id
    );

    

    $registrant_query = new WP_Query($args);

    // Check if there are registrants found
    if ($registrant_query->have_posts()) {
        while ($registrant_query->have_posts()) {
            $registrant_query->the_post();
            // Get registrant data
            $registrant_id = get_the_ID();
            $registrant_name = get_field('registration_last_name');
            $registrant_firstname = get_field('registration_first_name');
            $registrant_email = get_field('registration_email');
            $registrant_phone = get_field('registration_phone');

            // Store registrant data in an array
            $registrants[] = array(
                'Registrant ID' => $registrant_id,
                'Nom' => $registrant_name,
                'Prénom' => $registrant_firstname,
                'Email' => $registrant_email,
                'Téléphone' => $registrant_phone
            );
        }
        wp_reset_postdata();
    }

    return $registrants;
}