<?php

$router->get('/en/', function () use ($smarty, $config) {
    $smarty->assign("config", $config);                 // Add configs to smarty variables
    $smarty->assign("games", $config->games->en);       // Add games
    $lang = Lang::Load("en");                           // Load English language
    $smarty->assign("lang", $lang);                     // Assign language to smarty variable
    $smarty->display('includes/header.tpl');            // Add header include
    $smarty->display('index.tpl');                      // Display index template
    $smarty->display('includes/footer.tpl');            // Display footer template
});


$router->set404(function() use ($smarty, $config) {
    header('HTTP/2.0 404 Not Found');                   // Set 404 HTTP header
    $smarty->assign("config", $config);                 // Add configs to smarty variables
    $lang = Lang::Load("en");                           // Load English language
    $smarty->assign("lang", $lang);                     // Assign language to smarty variable
    $smarty->display('includes/header.tpl');            // Add header include
    $smarty->display('error.tpl');                      // Display index template
    $smarty->display('includes/footer.tpl');            // Display footer template
});