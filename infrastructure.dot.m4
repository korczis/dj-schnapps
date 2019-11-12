define(`EDGE_AUDIO',`style=dashed, color=green')
define(`EDGE_DATA',`style=dashed, color=red')
define(`EDGE_MIDI',`style=dashed, color=blue')

digraph G {
    concentrate=true;

    pc -> usb [EDGE_DATA];
    usb -> pc [EDGE_DATA];

    pc -> snd [EDGE_AUDIO];
    snd -> pc [EDGE_AUDIO];

    pc -> keys [EDGE_DATA];
    keys -> pc [EDGE_DATA];

    tablet -> midi [EDGE_MIDI];
    midi -> tablet [EDGE_MIDI];

    midi -> usb [EDGE_DATA];
    usb -> midi [EDGE_DATA];

    mic -> usb [EDGE_DATA];

    keys -> midi [EDGE_MIDI];
    midi -> keys [EDGE_MIDI];

    # Moog
    midi -> moog [EDGE_MIDI];

    tb03 -> midi [EDGE_MIDI];
    midi -> tb03 [EDGE_MIDI];

    tr08 -> midi [EDGE_MIDI];
    midi -> tr08 [EDGE_MIDI];

    sh01 -> midi [EDGE_MIDI];
    midi -> sh01 [EDGE_MIDI];

    mix -> snd [EDGE_AUDIO];

    # Synths to mix
    moog -> mix [EDGE_AUDIO];
    tb03 -> mix [EDGE_AUDIO];
    tr08 -> mix [EDGE_AUDIO];
    sh01 -> mix [EDGE_AUDIO];

    pc -> launchpad [EDGE_DATA];
    launchpad -> pc [EDGE_DATA];

    # Sound outputs
    node [shape=box];
    snd -> pa [EDGE_AUDIO];
    snd -> guitar_combo [EDGE_AUDIO];
    snd -> monitor [EDGE_AUDIO];
    snd -> headphones [EDGE_AUDIO];
    snd -> keys_combo [EDGE_AUDIO];

    tablet -> keys_combo [EDGE_AUDIO];

    # Extra stuff
    node [shape=ellipse];
    moog -> oscilloscope [EDGE_AUDIO];
}
