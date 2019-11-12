define(`EDGE_AUDIO',`style=dashed, color=green')
define(`EDGE_DATA',`style=dashed, color=red')
define(`EDGE_MIDI',`style=dashed, color=blue')

define(`NODE_AUDIO_OUT',`shape=box')

digraph G {
    concentrate=true;

    # Root nodes
    pc [label=<PC <br/> Apple <br/> Macbook Pro>];
    usb [label=<USB 3.0 Switch <br/> I-TEC <br/> Charging HUB 16port>];

    # Root connections
    pc -> usb [EDGE_DATA];
    usb -> pc [EDGE_DATA];

    snd [label=<Sound Card <br/> Yamaha <br/> AGO6>];
    pc -> snd [EDGE_AUDIO];
    snd -> pc [EDGE_AUDIO];

    keys [label=<Keyboards <br/> Novation <br/> Impulse 61>]
    pc -> keys [EDGE_DATA];
    keys -> pc [EDGE_DATA];

    # Midi
    midi [label=<MIDI Switch <br/> Midi­tech <br/> MIDI­face 8x8>]
    midi -> usb [EDGE_DATA];
    usb -> midi [EDGE_DATA];

    mic [label=<Studio Microphone <br/> Samson <br/> G-Track>]
    mic -> usb [EDGE_DATA];

    keys -> midi [EDGE_MIDI];
    midi -> keys [EDGE_MIDI];

    tablet [label=<Tablet <br/> Apple <br/> iPad>]
    tablet -> midi [EDGE_MIDI];
    midi -> tablet [EDGE_MIDI];

    # Moog
    moog [label=<Modular Synth <br/> Moog <br/> Mother 32>];
    midi -> moog [EDGE_MIDI];

    # TB-03
    tb03 [label=<Bass Line <br/> Roland <br/> TB-03>];
    tb03 -> midi [EDGE_MIDI];
    midi -> tb03 [EDGE_MIDI];

    tr08 [label=<Rhythm Composer <br/> Roland <br/> TR-08>];
    tr08 -> midi [EDGE_MIDI];
    midi -> tr08 [EDGE_MIDI];

    sh01 [label=<Classic Synth <br/> Roland <br/> SH-01A>];
    sh01 -> midi [EDGE_MIDI];
    midi -> sh01 [EDGE_MIDI];

    mix [label=<Audio Mixer <br/> Mackie <br/> ProFX 8v2>]
    mix -> snd [EDGE_AUDIO];

    # Synths to mix
    moog -> mix [EDGE_AUDIO];
    tb03 -> mix [EDGE_AUDIO];
    tr08 -> mix [EDGE_AUDIO];
    sh01 -> mix [EDGE_AUDIO];

    launchpad [label=<Launchpad / Drumpad <br/> Novation <br/> Launchpad>]
    pc -> launchpad [EDGE_DATA];
    launchpad -> pc [EDGE_DATA];

    # Sound outputs

    ## Output - Definitions
    node [NODE_AUDIO_OUT];

    guitar_combo [label = <Guitar Modeling Combo <br/> Fender <br/> Mustang V2>];
    keys_combo [label = <Keyboard Combo / Audiohub <br/> LANEY <br/> AH150>];
    headphones [label =<Headphones <br/> Marshall <br/> Major>];
    monitors [label=<Monitor Speakers <br/> Kurzweil <br/> KS-40A>];
    pa [label=<Active PA <br/> Mackie Thump <br/> 15A>];

    ## Output - Connections
    snd -> pa [EDGE_AUDIO];
    snd -> guitar_combo [EDGE_AUDIO];
    snd -> monitors [EDGE_AUDIO];
    snd -> headphones [EDGE_AUDIO];
    snd -> keys_combo [EDGE_AUDIO];

    tablet -> keys_combo [EDGE_AUDIO];

    # Extra stuff
    oscilloscope [label=<Oscilloscope <br/> Owon <br/> MSO8202T>, shape="ellipse"];
    moog -> oscilloscope [EDGE_AUDIO];
}

