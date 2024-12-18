{...}: {
    plugins = {
        telescope = {
            enable = true;
            extensions = {
                fzf-native = {
                    enable = true;
                    settings = {
                        case_mode = "ignore_case";
                    };
                };
            };
        };
    };
}
