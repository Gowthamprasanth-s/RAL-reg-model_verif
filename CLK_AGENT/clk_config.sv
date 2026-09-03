class clk_config extends uvm_object;
    `uvm_object_utils(clk_config)

    typedef enum{  
            freq_256,
            freq_512,
            freq_1G
    }freq;
    freq freq_sel;

    function new(string name="clk_config");
        super.new(name);
        freq_sel = freq_256;
    endfunction

    function real get_freq();
        case(freq_sel)
            freq_256   :   return  1.953ns;
            freq_512   :   return  0.976ns;
            freq_1G    :   return  0.5ns;
            default    :   return  1.953ns;
        endcase
    endfunction
endclass

