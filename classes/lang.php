<?php


/**
 * Lang class loads language files etc.
 */
class Lang {
    /**
     * Loads language file requested, on error returns english language
     * @param   String      $language       Language
     * @return  Object      The language file requested as an object
     */
    static function Load($language) {
        $languages = scandir("./lang/");
        if (in_array($language . ".php", $languages)) {
            require_once "./lang/$language.php";
        } else {
            require_once "./lang/en.php";
        }
        return json_decode(json_encode($lang));
    }
}
