<?php

// Require composer packages
require_once "./vendor/autoload.php";

// Scan through classes directory and require them
foreach (glob("./classes/*.php") as $file) {
    require_once($file);
}

// Scan through configs directory and require them
foreach (glob("./configs/*.php") as $file) {
    require_once($file);
}

// Array to object (lazy recursive objectify with a help of json)
$config = json_decode(json_encode($config));

// Initialize Smarty
$smarty = new Smarty();

// Set default Smarty paths
$smarty->setTemplateDir($config->srvpath . "/templates/{$config->smarty->template_dir}");
$smarty->setCompileDir($config->srvpath . "/temp/templates_c");
$smarty->setCacheDir($config->srvpath . "/temp/cache");
$smarty->setConfigDir($config->srvpath . "/configs");

// Initialize Router
$router = new \Bramus\Router\Router();


// Enable HTML minifying
function minify_html($tpl_output, Smarty_Internal_Template $template) {
    $tpl_output = preg_replace('![\t ]*[\r\n]+[\t ]*!', '', $tpl_output);
    return $tpl_output;
}
$smarty->registerFilter("output", "minify_html");


// Scan through routes directory and require them
foreach (glob("./routes/*.php") as $file) {
    require_once($file);
}

// Run router
$router->run();