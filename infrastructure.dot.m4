digraph G {
    concentrate=true;

    oscilloscope;

    # define(`style_audio',`style=dashed')

    pc -> usb [style=dashed, color=red];
    usb -> pc [style=dashed, color=red];

    pc -> snd [style=dashed, color=green];
    snd -> pc [style=dashed, color=green];

    pc -> keys [style=dashed, color=red];
    keys -> pc [style=dashed, color=red];

    tablet -> midi [style=dashed, color=blue];
    midi -> tablet [style=dashed, color=blue];

    midi -> usb [style=dashed, color=red];
    usb -> midi [style=dashed, color=red];

    mic -> usb [style=dashed, color=red];

    keys -> midi [style=dashed, color=blue];
    midi -> keys [style=dashed, color=blue];

    # Moog
    midi -> moog [style=dashed, color=blue];

    tb03 -> midi [style=dashed, color=blue];
    midi -> tb03 [style=dashed, color=blue];

    tr08 -> midi [style=dashed, color=blue];
    midi -> tr08 [style=dashed, color=blue];

    sh01 -> midi [style=dashed, color=blue];
    midi -> sh01 [style=dashed, color=blue];

    mix -> snd [style=dashed, color=green];

    # Synths to mix
    moog -> mix [style=dashed, color=green];
    tb03 -> mix [style=dashed, color=green];
    tr08 -> mix [style=dashed, color=green];
    sh01 -> mix [style=dashed, color=green];

    pc -> launchpad [style=dashed, color=red];
    launchpad -> pc [style=dashed, color=red];

    # Sound outputs
    node [shape=box];
    snd -> pa [style=dashed, color=green];
    snd -> guitar_combo [style=dashed, color=green];
    snd -> monitor [style=dashed, color=green];
    snd -> headphones [style=dashed, color=green];
    snd -> keys_combo [style=dashed, color=green];

    tablet -> keys_combo [style=dashed, color=green];
}
