----------------------------------------------------------------------------------
-- MiSTer2MEGA65 Framework
--
-- Wrapper for the MiSTer core that runs exclusively in the core's clock domanin
--
-- MiSTer2MEGA65 done by sy2002 and MJoergen in 2022 and licensed under GPL v3
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.video_modes_pkg.all;

entity main is
   generic (
      G_VDNUM                 : natural                     -- amount of virtual drives
   );
   port (
      clk_main_i              : in  std_logic;
      reset_soft_i            : in  std_logic;
      reset_hard_i            : in  std_logic;
      pause_i                 : in  std_logic;

      -- MiSTer core main clock speed:
      -- Make sure you pass very exact numbers here, because they are used for avoiding clock drift at derived clocks
      clk_main_speed_i        : in  natural;

      -- Video output
      video_ce_o              : out std_logic;
      video_ce_ovl_o          : out std_logic;
      video_red_o             : out std_logic_vector(7 downto 0);
      video_green_o           : out std_logic_vector(7 downto 0);
      video_blue_o            : out std_logic_vector(7 downto 0);
      video_vs_o              : out std_logic;
      video_hs_o              : out std_logic;
      video_hblank_o          : out std_logic;
      video_vblank_o          : out std_logic;

      -- Audio output (Signed PCM)
      audio_left_o            : out signed(15 downto 0);
      audio_right_o           : out signed(15 downto 0);

      -- M2M Keyboard interface
      kb_key_num_i            : in  integer range 0 to 79;    -- cycles through all MEGA65 keys
      kb_key_pressed_n_i      : in  std_logic;                -- low active: debounced feedback: is kb_key_num_i pressed right now?

      -- MEGA65 joysticks and paddles/mouse/potentiometers
      joy_1_up_n_i            : in  std_logic;
      joy_1_down_n_i          : in  std_logic;
      joy_1_left_n_i          : in  std_logic;
      joy_1_right_n_i         : in  std_logic;
      joy_1_fire_n_i          : in  std_logic;

      joy_2_up_n_i            : in  std_logic;
      joy_2_down_n_i          : in  std_logic;
      joy_2_left_n_i          : in  std_logic;
      joy_2_right_n_i         : in  std_logic;
      joy_2_fire_n_i          : in  std_logic;

      pot1_x_i                : in  std_logic_vector(7 downto 0);
      pot1_y_i                : in  std_logic_vector(7 downto 0);
      pot2_x_i                : in  std_logic_vector(7 downto 0);
      pot2_y_i                : in  std_logic_vector(7 downto 0);
      
      
            -- Paddle speed
      paddle_speed_i          : in std_logic_vector(3 downto 0);
      
     -- Pll Audio      
      pllaudio_outclk_0       : out std_logic
      
      
      
   );
end entity main;

architecture synthesis of main is


-- Forcing a signal so that it will Synthesis and run Implementation.
-- Will need to be connected properly at some stage.
signal HPS_BUS          : std_logic_vector(48 downto 0) := (others => '0');
signal fb_pal_din       : std_logic_vector(23 downto 0) := (others => '0');
signal adc_bus          : std_logic_vector(3 downto 0) := (others => '0');




-- @TODO: Remove these demo core signals
signal keyboard_n          : std_logic_vector(79 downto 0);
-- Signal that contains currently used color constant
--signal ball_color           : std_logic_vector(23 downto 0);

-- Placeholder Ports for the port mapping of emu
-- No idead for now as to what they should be connectede to!!!!
-- Likely more ports need to be defined for main.
signal emu_ddram_busy_i       : std_logic;
signal emu_ddram_dout_i       : std_logic_vector(63 downto 0) := (others => '0');
signal emu_ddram_dout_ready_i   : std_logic := '0';
signal emu_fb_ll_i              : std_logic;
signal emu_fb_pal_din_i         : std_logic_vector(23 downto 0);
signal emu_fb_vbl_i             : std_logic;
signal emu_hdmi_height_i        : std_logic_vector(11 downto 0) := (others => '0');
signal emu_hdmi_width_i         : std_logic_vector(11 downto 0) := (others => '0');
signal emu_osd_status_i         : std_logic := '0';
signal emu_sdram2_en_i          : std_logic; 
signal emu_sd_cd_i              : std_logic; 
signal emu_sd_miso_i            : std_logic; 
signal emu_uart_cts_i           : std_logic; 
signal emu_uart_dsr_i           : std_logic; 
signal emu_uart_rxd_i           : std_logic; 
signal emu_user_in_i            : std_logic_vector(6 downto 0) := (others => '0');          




begin

   
Amiga : entity emu
    port map (
        -- In Ports
         CLK_50M         => clk_main_i           
        ,RESET           => reset_hard_i
        ,CLK_AUDIO       => pllaudio_outclk_0
        ,DDRAM_BUSY      => emu_ddram_busy_i
        ,DDRAM_DOUT      => emu_ddram_dout_i
        ,DDRAM_DOUT_READY => emu_ddram_dout_ready_i
        ,FB_LL            => emu_fb_ll_i
        ,FB_PAL_DIN      => emu_fb_pal_din_i
        ,FB_VBL          => emu_fb_vbl_i
        ,HDMI_HEIGHT     => emu_hdmi_height_i
        ,HDMI_WIDTH      => emu_hdmi_width_i
        ,OSD_STATUS      => emu_osd_status_i
        ,SDRAM2_EN       => emu_sdram2_en_i
        ,SD_CD           => emu_sd_cd_i
        ,SD_MISO         => emu_sd_miso_i
        ,UART_CTS        => emu_uart_cts_i
        ,UART_DSR        => emu_uart_dsr_i
        ,UART_RXD        => emu_uart_rxd_i
        ,USER_IN         => emu_user_in_i                                
        
        -- Out Ports
        ,AUDIO_L         => audio_left_o
        ,AUDIO_R         => audio_right_o
        ,VGA_B           => video_blue_o
        ,VGA_G           => video_green_o
        ,VGA_R           => video_red_o
        ,VGA_VS          => video_vs_o
        
--        ,HPS_BUS         => HPS_BUS
        ,ADC_BUS         => adc_bus
    );

-- Audio clock. outclk_0 = 24.576000 MHz
pll_audio : entity pll_audio_0002
        port map (
                 refclk      => clk_main_i
                ,rst         => reset_hard_i
                ,outclk_0    => pllaudio_outclk_0    
        );
        
   
   

   -- On video_ce_o and video_ce_ovl_o: You have an important @TODO when porting a core:
   -- video_ce_o: You need to make sure that video_ce_o divides clk_main_i such that it transforms clk_main_i
   --             into the pixelclock of the core (means: the core's native output resolution pre-scandoubler)
   -- video_ce_ovl_o: Clock enable for the OSM overlay and for sampling the core's (retro) output in a way that
   --             it is displayed correctly on a "modern" analog input device: Make sure that video_ce_ovl_o
   --             transforms clk_main_o into the post-scandoubler pixelclock that is valid for the target
   --             resolution specified by VGA_DX/VGA_DY (globals.vhd)
   -- video_retro15kHz_o: '1', if the output from the core (post-scandoubler) in the retro 15 kHz analog RGB mode.
   --             Hint: Scandoubler off does not automatically mean retro 15 kHz on.
   video_ce_ovl_o <= video_ce_o;

   -- @TODO: Keyboard mapping and keyboard behavior
   -- Each core is treating the keyboard in a different way: Some need low-active "matrices", some
   -- might need small high-active keyboard memories, etc. This is why the MiSTer2MEGA65 framework
   -- lets you define literally everything and only provides a minimal abstraction layer to the keyboard.
   -- You need to adjust keyboard.vhd to your needs
   i_keyboard : entity work.keyboard
      port map (
          clk_main_i           => clk_main_i

         -- Interface to the MEGA65 keyboard
         ,key_num_i            => kb_key_num_i
         ,key_pressed_n_i      => kb_key_pressed_n_i

         -- @TODO: Create the kind of keyboard output that your core needs
         -- "example_n_o" is a low active register and used by the demo core:
         --    bit 0: Space
         --    bit 1: Return
         --    bit 2: Run/Stop
         ,example_n_o          => keyboard_n
      ); -- i_keyboard

end architecture synthesis;

