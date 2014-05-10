<?php

function fourtwothree_distro_install_tasks($install_state) {
  $tasks = array (
    'fourtwothree_distro_configure' => array(),
  );
  return $tasks;
}

/**
 * Set up base config
 */
function fourtwothree_distro_configure() {
  // Set default Pantheon variables
  variable_set('cache', 1);
  variable_set('block_cache', 1);
  variable_set('cache_lifetime', '0');
  variable_set('page_cache_maximum_age', '900');
  variable_set('page_compression', 0);
  variable_set('preprocess_css', 1);
  variable_set('preprocess_js', 1);
  $search_active_modules = array(
    'apachesolr_search' => 'apachesolr_search',
    'user' => 'user',
    'node' => 0
  );
  variable_set('search_active_modules', $search_active_modules);
  variable_set('search_default_module', 'apachesolr_search');
  drupal_set_message(t('Pantheon defaults configured.'));
}

    


/**
 * Implements hook_form_FORM_ID_alter()
 */
function fourtwothree_distro_form_install_configure_form_alter(&$form, $form_state) {

  // Hide some messages from various modules that are just too chatty.
  drupal_get_messages('status');
  drupal_get_messages('warning');

  // Set reasonable defaults for site configuration form
  $form['site_information']['site_name']['#default_value'] = '423 Distribution';
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['server_settings']['site_default_country']['#default_value'] = 'US';
  $form['server_settings']['date_default_timezone']['#default_value'] = 'America/New_York'; // Eastcoast ROCKS!

  // Define a default email address if we can guess a valid one
  if (valid_email_address('thomas@energycircle.com')) {
    $form['site_information']['site_mail']['#default_value'] = 'admin@423interactive.com';
    $form['admin_account']['account']['mail']['#default_value'] = 'tscola@423interactive.com';
  }
}

