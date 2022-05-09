; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_mac.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }

@igc_disable_pcie_master.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"igc_disable_pcie_master\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/igc/igc_mac.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Master requests are pending.\0A\00", [34 x i8] zeroinitializer }, align 32
@igc_init_rx_addrs.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"igc_init_rx_addrs\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Programming MAC Address into RAR[0]\0A\00", [59 x i8] zeroinitializer }, align 32
@igc_init_rx_addrs.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Clearing RAR[1-%u]\0A\00", [44 x i8] zeroinitializer }, align 32
@igc_setup_link.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"igc_setup_link\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"After fix-ups FlowControl is now = %x\0A\00", [57 x i8] zeroinitializer }, align 32
@igc_setup_link.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Initializing the Flow Control address, type and timer regs\0A\00", [36 x i8] zeroinitializer }, align 32
@igc_force_mac_fc.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"igc_force_mac_fc\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hw->fc.current_mode = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@igc_force_mac_fc.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Flow control param set incorrectly\0A\00", [60 x i8] zeroinitializer }, align 32
@igc_check_for_copper_link.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igc_check_for_copper_link\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error configuring flow control\0A\00", [32 x i8] zeroinitializer }, align 32
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"igc_config_fc_after_link_up\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error forcing flow control settings\0A\00", [59 x i8] zeroinitializer }, align 32
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", [52 x i8] zeroinitializer }, align 32
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control = FULL.\0A\00", [42 x i8] zeroinitializer }, align 32
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = RX PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.20, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Flow Control = TX PAUSE frames only.\0A\00", [58 x i8] zeroinitializer }, align 32
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.21, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control = NONE.\0A\00", [42 x i8] zeroinitializer }, align 32
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.22, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error getting link speed and duplex\0A\00", [59 x i8] zeroinitializer }, align 32
@igc_config_fc_after_link_up.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@igc_get_auto_rd_done.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"igc_get_auto_rd_done\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Auto read by HW from NVM has not completed.\0A\00", [51 x i8] zeroinitializer }, align 32
@igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"igc_get_speed_and_duplex_copper\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500 Mbs, \00", [21 x i8] zeroinitializer }, align 32
@igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000 Mbs, \00", [21 x i8] zeroinitializer }, align 32
@igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100 Mbs, \00", [22 x i8] zeroinitializer }, align 32
@igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.29, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"10 Mbs, \00", [23 x i8] zeroinitializer }, align 32
@igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.30, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Full Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.31, i8 0, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Half Duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 12, i64 2048, i64 3072]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 40, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 64, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 69, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 141, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 153, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 200, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 218, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 410, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 467, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 491, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 552, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 555, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 571, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 611, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 623, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 663, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 695, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 698, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 702, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 705, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 710, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [44 x i8] c"../drivers/net/ethernet/intel/igc/igc_mac.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 713, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_disable_pcie_master(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 0) #4
  %or = or i32 %call, 4
  %hw_addr2 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #4, !srcloc !92
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %timeout.034 = phi i32 [ 800, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %call8 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #4
  %and = and i32 %call8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %while.body.out_crit_edge, label %if.end

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #4
  %dec = add nsw i32 %timeout.034, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body13.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body13.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_disable_pcie_master.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_disable_pcie_master, %if.then19)) #4
          to label %out [label %if.then19], !srcloc !93

if.then19:                                        ; preds = %do.body13.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_disable_pcie_master.__UNIQUE_ID_ddebug340, ptr noundef %call20, ptr noundef nonnull @.str.3) #4
  br label %out

out:                                              ; preds = %if.then19, %do.body13.critedge, %while.body.out_crit_edge
  %ret_val.0 = phi i32 [ -10, %if.then19 ], [ -10, %do.body13.critedge ], [ 0, %while.body.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igc_get_hw_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_init_rx_addrs(ptr noundef %hw, i16 noundef zeroext %rar_count) local_unnamed_addr #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #4
  %0 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_init_rx_addrs.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_init_rx_addrs, %if.then)) #4
          to label %do.end6 [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_init_rx_addrs.__UNIQUE_ID_ddebug341, ptr noundef %call4, ptr noundef nonnull @.str.5) #4
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %rar_set = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 4
  %1 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rar_set, align 4
  %addr = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 1
  tail call void %2(ptr noundef %hw, ptr noundef %addr, i32 noundef 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_init_rx_addrs.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_init_rx_addrs, %if.then21)) #4
          to label %do.end27 [label %if.then21], !srcloc !93

if.then21:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  %conv = zext i16 %rar_count to i32
  %sub = add nsw i32 %conv, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_init_rx_addrs.__UNIQUE_ID_ddebug342, ptr noundef %call22, ptr noundef nonnull @.str.6, i32 noundef %sub) #4
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.end6
  %conv28 = zext i16 %rar_count to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %rar_count)
  %cmp48 = icmp ugt i16 %rar_count, 1
  br i1 %cmp48, label %do.end27.for.body_crit_edge, label %do.end27.for.end_crit_edge

do.end27.for.end_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end27.for.body_crit_edge:                      ; preds = %do.end27
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end27.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %do.end27.for.body_crit_edge ]
  %3 = ptrtoint ptr %rar_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rar_set, align 4
  call void %4(ptr noundef %hw, ptr noundef nonnull %mac_addr, i32 noundef %i.049) #4
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %conv28
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end27.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_setup_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_check_reset_block(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %requested_mode = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp eq i32 %1, 255
  br i1 %cmp, label %if.then1, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %requested_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %requested_mode, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %3 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %requested_mode, align 4
  %current_mode = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %5 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_setup_link.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_setup_link, %if.then13)) #4
          to label %do.end19 [label %if.then13], !srcloc !93

if.then13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  %6 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %current_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_setup_link.__UNIQUE_ID_ddebug345, ptr noundef %call14, ptr noundef nonnull @.str.8, i32 noundef %7) #4
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %if.end4
  %setup_physical_interface = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 3
  %8 = ptrtoint ptr %setup_physical_interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup_physical_interface, align 4
  %call20 = tail call i32 %9(ptr noundef %hw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body25, label %do.end19.out_crit_edge

do.end19.out_crit_edge:                           ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body25:                                        ; preds = %do.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_setup_link.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_setup_link, %if.then37)) #4
          to label %do.body44 [label %if.then37], !srcloc !93

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_setup_link.__UNIQUE_ID_ddebug346, ptr noundef %call38, ptr noundef nonnull @.str.9) #4
  br label %do.body44

do.body44:                                        ; preds = %if.then37, %do.body25
  %hw_addr49 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %hw_addr49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  tail call void @arm_heavy_mb() #4
  %arrayidx = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 143130624) #4, !srcloc !92
  %12 = ptrtoint ptr %hw_addr49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw_addr49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %arrayidx65 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx65, i32 65536) #4, !srcloc !92
  %14 = ptrtoint ptr %hw_addr49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %arrayidx78 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx78, i32 25215488) #4, !srcloc !92
  %16 = ptrtoint ptr %hw_addr49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw_addr49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void @arm_heavy_mb() #4
  %pause_time = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %pause_time to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pause_time, align 4
  %conv = zext i16 %19 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %arrayidx92 = getelementptr i8, ptr %17, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx92, i32 %20) #4, !srcloc !92
  %21 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %current_mode, align 4
  %and.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body44.igc_set_fc_watermarks.exit_crit_edge, label %if.then.i

do.body44.igc_set_fc_watermarks.exit_crit_edge:   ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_set_fc_watermarks.exit

if.then.i:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  %fc.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4
  %low_water.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %low_water.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %low_water.i, align 4
  %send_xon.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %send_xon.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %send_xon.i, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool3.not.i = icmp eq i8 %26, 0
  %or.i = or i32 %24, -2147483648
  %spec.select.i = select i1 %tobool3.not.i, i32 %24, i32 %or.i
  %27 = ptrtoint ptr %fc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fc.i, align 4
  br label %igc_set_fc_watermarks.exit

igc_set_fc_watermarks.exit:                       ; preds = %if.then.i, %do.body44.igc_set_fc_watermarks.exit_crit_edge
  %fcrth.0.i = phi i32 [ %28, %if.then.i ], [ 0, %do.body44.igc_set_fc_watermarks.exit_crit_edge ]
  %fcrtl.1.i = phi i32 [ %spec.select.i, %if.then.i ], [ 0, %do.body44.igc_set_fc_watermarks.exit_crit_edge ]
  %29 = ptrtoint ptr %hw_addr49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw_addr49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %fcrtl.1.i) #4
  %arrayidx.i = getelementptr i8, ptr %30, i32 8544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %31) #4, !srcloc !92
  %32 = ptrtoint ptr %hw_addr49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw_addr49, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %fcrth.0.i) #4
  %arrayidx24.i = getelementptr i8, ptr %33, i32 8552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx24.i, i32 %34) #4, !srcloc !92
  br label %out

out:                                              ; preds = %igc_set_fc_watermarks.exit, %do.end19.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %call20, %do.end19.out_crit_edge ], [ 0, %igc_set_fc_watermarks.exit ]
  ret i32 %ret_val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_check_reset_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_force_mac_fc(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_force_mac_fc.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_force_mac_fc, %if.then)) #4
          to label %do.end7 [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  %current_mode = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %0 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_force_mac_fc.__UNIQUE_ID_ddebug351, ptr noundef %call5, ptr noundef nonnull @.str.11, i32 noundef %1) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %current_mode9 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %current_mode9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_mode9, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body18 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb12
    i32 3, label %sw.bb15
  ]

sw.bb:                                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, -402653185
  br label %do.body37

sw.bb10:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %and11 = and i32 %call, -402653185
  %or = or i32 %and11, 134217728
  br label %do.body37

sw.bb12:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %and13 = and i32 %call, -402653185
  %or14 = or i32 %and13, 268435456
  br label %do.body37

sw.bb15:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %or16 = or i32 %call, 402653184
  br label %do.body37

do.body18:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_force_mac_fc.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_force_mac_fc, %if.then30)) #4
          to label %out [label %if.then30], !srcloc !93

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_force_mac_fc.__UNIQUE_ID_ddebug352, ptr noundef %call31, ptr noundef nonnull @.str.12) #4
  br label %out

do.body37:                                        ; preds = %sw.bb15, %sw.bb12, %sw.bb10, %sw.bb
  %ctrl.0 = phi i32 [ %or16, %sw.bb15 ], [ %or14, %sw.bb12 ], [ %or, %sw.bb10 ], [ %and, %sw.bb ]
  %hw_addr42 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %hw_addr42 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr42, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %7) #4, !srcloc !92
  br label %out

out:                                              ; preds = %do.body37, %if.then30, %do.body18
  %ret_val.0 = phi i32 [ 0, %do.body37 ], [ -3, %if.then30 ], [ -3, %do.body18 ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_clear_hw_cntrs_base(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16384) #4
  %call1 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16400) #4
  %call2 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16404) #4
  %call3 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16408) #4
  %call4 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16412) #4
  %call5 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16416) #4
  %call6 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16424) #4
  %call7 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16428) #4
  %call8 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16432) #4
  %call9 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16448) #4
  %call10 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16456) #4
  %call11 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16460) #4
  %call12 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16464) #4
  %call13 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16468) #4
  %call14 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16472) #4
  %call15 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16500) #4
  %call16 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16504) #4
  %call17 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16508) #4
  %call18 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16512) #4
  %call19 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16520) #4
  %call20 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16524) #4
  %call21 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16528) #4
  %call22 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16532) #4
  %call23 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16544) #4
  %call24 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16548) #4
  %call25 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16552) #4
  %call26 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16556) #4
  %call27 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16560) #4
  %call28 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16576) #4
  %call29 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16580) #4
  %call30 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16584) #4
  %call31 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16588) #4
  %call32 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16592) #4
  %call33 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16596) #4
  %call34 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16624) #4
  %call35 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16628) #4
  %call36 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16476) #4
  %call37 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16480) #4
  %call38 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16484) #4
  %call39 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16488) #4
  %call40 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16492) #4
  %call41 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16496) #4
  %call42 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16600) #4
  %call43 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16604) #4
  %call44 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16608) #4
  %call45 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16612) #4
  %call46 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16616) #4
  %call47 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16620) #4
  %call48 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16388) #4
  %call49 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16396) #4
  %call50 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16436) #4
  %call51 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16444) #4
  %call52 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16632) #4
  %call53 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16564) #4
  %call54 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16568) #4
  %call55 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16572) #4
  %call56 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16640) #4
  %call57 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16644) #4
  %call58 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16712) #4
  %call59 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16716) #4
  %call60 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16664) #4
  %call61 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16672) #4
  %call62 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16680) #4
  %call63 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16684) #4
  %call64 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16688) #4
  %call65 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16692) #4
  %call66 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16696) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_rar_set(ptr noundef %hw, ptr nocapture noundef readonly %addr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %arrayidx3 = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %arrayidx7 = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %arrayidx11 = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %arrayidx13 = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or10)
  %tobool.not = icmp eq i32 %or10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16)
  %tobool17.not = icmp eq i32 %or16, 0
  %or.cond = select i1 %tobool.not, i1 %tobool17.not, i1 false
  %or18 = or i32 %or16, -2147483648
  %rar_high.0 = select i1 %or.cond, i32 0, i32 %or18
  %hw_addr20 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %12 = ptrtoint ptr %hw_addr20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw_addr20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %mul = shl i32 %index, 3
  %add = add i32 %mul, 21504
  %arrayidx24 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx24, i32 %14) #4, !srcloc !92
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #4
  %15 = ptrtoint ptr %hw_addr20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %rar_high.0)
  %add38 = add i32 %mul, 21508
  %arrayidx39 = getelementptr i8, ptr %16, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx39, i32 %17) #4, !srcloc !92
  %call42 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_check_for_copper_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %link = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %link) #4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %link, align 1
  %get_link_status = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 14
  %1 = ptrtoint ptr %get_link_status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %get_link_status, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = call i32 @igc_phy_has_link(ptr noundef %hw, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %link) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %link, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end7:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %get_link_status, align 1
  %call9 = call i32 @igc_check_downshift(ptr noundef %hw) #4
  %autoneg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.end7.out_crit_edge, label %if.end12

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %if.end7
  %call.i = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 1024) #4
  %and.i = and i32 %call.i, -4190209
  %or.i = or i32 %and.i, 258048
  %hw_addr2.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw_addr2.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  call void @arm_heavy_mb() #4
  %10 = call i32 @llvm.bswap.i32(i32 %or.i) #4
  %arrayidx.i = getelementptr i8, ptr %9, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %10) #4, !srcloc !92
  %call8.i = call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #4
  %call13 = call i32 @igc_config_fc_after_link_up(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.out_crit_edge, label %do.body16

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_check_for_copper_link.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_check_for_copper_link, %if.then21)) #4
          to label %out [label %if.then21], !srcloc !93

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_check_for_copper_link.__UNIQUE_ID_ddebug356, ptr noundef %call22, ptr noundef nonnull @.str.14) #4
  br label %out

out:                                              ; preds = %if.then21, %do.body16, %if.end12.out_crit_edge, %if.end7.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool27 = icmp ne i8 %12, 0
  %call28 = call i32 @igc_set_ltr_i225(ptr noundef %hw, i1 noundef zeroext %tobool27) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %link) #4
  ret i32 %call28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_phy_has_link(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_check_downshift(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_config_collision_dist(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 1024) #4
  %and = and i32 %call, -4190209
  %or = or i32 %and, 258048
  %hw_addr2 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !92
  %call8 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_config_fc_after_link_up(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mii_status_reg = alloca i16, align 2
  %mii_nway_adv_reg = alloca i16, align 2
  %mii_nway_lp_ability_reg = alloca i16, align 2
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_status_reg) #4
  %0 = ptrtoint ptr %mii_status_reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %mii_status_reg, align 2, !annotation !105
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_nway_adv_reg) #4
  %1 = ptrtoint ptr %mii_nway_adv_reg to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %mii_nway_adv_reg, align 2, !annotation !105
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_nway_lp_ability_reg) #4
  %2 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %mii_nway_lp_ability_reg, align 2, !annotation !105
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #4
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %speed, align 2, !annotation !105
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #4
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %duplex, align 2, !annotation !105
  %autoneg_failed = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 13
  %5 = ptrtoint ptr %autoneg_failed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autoneg_failed, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end:                                           ; preds = %entry
  %call = tail call i32 @igc_force_mac_fc(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %do.body4

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then9)) #4
          to label %out [label %if.then9], !srcloc !93

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug358, ptr noundef %call10, ptr noundef nonnull @.str.16) #4
  br label %out

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %autoneg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autoneg, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %if.end14.out_crit_edge, label %if.then16

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then16:                                        ; preds = %if.end14
  %read_reg = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 6, i32 0, i32 4
  %9 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg, align 4
  %call17 = call i32 %10(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %mii_status_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then16.out_crit_edge

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end20:                                         ; preds = %if.then16
  %11 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_reg, align 4
  %call24 = call i32 %12(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %mii_status_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end27:                                         ; preds = %if.end20
  %13 = ptrtoint ptr %mii_status_reg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mii_status_reg, align 2
  %15 = and i16 %14, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool28.not = icmp eq i16 %15, 0
  br i1 %tobool28.not, label %do.body31, label %if.end50

do.body31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then43)) #4
          to label %out [label %if.then43], !srcloc !93

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  %call44 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug359, ptr noundef %call44, ptr noundef nonnull @.str.17) #4
  br label %out

if.end50:                                         ; preds = %if.end27
  %16 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_reg, align 4
  %call54 = call i32 %17(ptr noundef %hw, i32 noundef 4, ptr noundef nonnull %mii_nway_adv_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end50.out_crit_edge

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end57:                                         ; preds = %if.end50
  %18 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_reg, align 4
  %call61 = call i32 %19(ptr noundef %hw, i32 noundef 5, ptr noundef nonnull %mii_nway_lp_ability_reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end57.out_crit_edge

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end64:                                         ; preds = %if.end57
  %20 = ptrtoint ptr %mii_nway_adv_reg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mii_nway_adv_reg, align 2
  %22 = and i16 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool67.not = icmp eq i16 %22, 0
  br i1 %tobool67.not, label %if.end64.if.else118_crit_edge, label %land.lhs.true

if.end64.if.else118_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else118

land.lhs.true:                                    ; preds = %if.end64
  %23 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %25 = and i16 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool70.not = icmp eq i16 %25, 0
  br i1 %tobool70.not, label %land.lhs.true.if.else118_crit_edge, label %if.then71

land.lhs.true.if.else118_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else118

if.then71:                                        ; preds = %land.lhs.true
  %requested_mode = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 6
  %26 = ptrtoint ptr %requested_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %requested_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp = icmp eq i32 %27, 3
  %current_mode = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  br i1 %cmp, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then88)) #4
          to label %if.end258 [label %if.then88], !srcloc !93

if.then88:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #6
  %call89 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug360, ptr noundef %call89, ptr noundef nonnull @.str.18) #4
  br label %if.end258

if.else:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %current_mode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %current_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then110)) #4
          to label %if.end258 [label %if.then110], !srcloc !93

if.then110:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call111 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug361, ptr noundef %call111, ptr noundef nonnull @.str.19) #4
  br label %if.end258

if.else118:                                       ; preds = %land.lhs.true.if.else118_crit_edge, %if.end64.if.else118_crit_edge
  %30 = trunc i16 %21 to i12
  %trunc = and i12 %30, -1024
  %31 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.32)
  switch i12 %trunc, label %if.else118.if.else196_crit_edge [
    i12 -2048, label %land.lhs.true126
    i12 -1024, label %land.lhs.true165
  ]

if.else118.if.else196_crit_edge:                  ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else196

land.lhs.true126:                                 ; preds = %if.else118
  %32 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %34 = and i16 %33, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %34)
  %.not402 = icmp eq i16 %34, 3072
  br i1 %.not402, label %if.then134, label %land.lhs.true126.if.else196_crit_edge

land.lhs.true126.if.else196_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else196

if.then134:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode136 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %35 = ptrtoint ptr %current_mode136 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %current_mode136, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then150)) #4
          to label %if.end258 [label %if.then150], !srcloc !93

if.then150:                                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #6
  %call151 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug362, ptr noundef %call151, ptr noundef nonnull @.str.20) #4
  br label %if.end258

land.lhs.true165:                                 ; preds = %if.else118
  %36 = ptrtoint ptr %mii_nway_lp_ability_reg to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mii_nway_lp_ability_reg, align 2
  %38 = and i16 %37, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %38)
  %.not404 = icmp eq i16 %38, 2048
  br i1 %.not404, label %if.then173, label %land.lhs.true165.if.else196_crit_edge

land.lhs.true165.if.else196_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else196

if.then173:                                       ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode175 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %39 = ptrtoint ptr %current_mode175 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %current_mode175, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then189)) #4
          to label %if.end258 [label %if.then189], !srcloc !93

if.then189:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #6
  %call190 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug363, ptr noundef %call190, ptr noundef nonnull @.str.19) #4
  br label %if.end258

if.else196:                                       ; preds = %land.lhs.true165.if.else196_crit_edge, %land.lhs.true126.if.else196_crit_edge, %if.else118.if.else196_crit_edge
  %requested_mode198 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 6
  %40 = ptrtoint ptr %requested_mode198 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %requested_mode198, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %41, label %lor.lhs.false205 [
    i32 0, label %if.else196.if.then209_crit_edge
    i32 2, label %if.else196.if.then209_crit_edge405
  ]

if.else196.if.then209_crit_edge405:               ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then209

if.else196.if.then209_crit_edge:                  ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then209

lor.lhs.false205:                                 ; preds = %if.else196
  %strict_ieee = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %strict_ieee to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %strict_ieee, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool207.not = icmp eq i8 %44, 0
  br i1 %tobool207.not, label %if.else232, label %lor.lhs.false205.if.then209_crit_edge

lor.lhs.false205.if.then209_crit_edge:            ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then209

if.then209:                                       ; preds = %lor.lhs.false205.if.then209_crit_edge, %if.else196.if.then209_crit_edge, %if.else196.if.then209_crit_edge405
  %current_mode211 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %45 = ptrtoint ptr %current_mode211 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %current_mode211, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then225)) #4
          to label %if.end258 [label %if.then225], !srcloc !93

if.then225:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #6
  %call226 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug364, ptr noundef %call226, ptr noundef nonnull @.str.21) #4
  br label %if.end258

if.else232:                                       ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode234 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %46 = ptrtoint ptr %current_mode234 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %current_mode234, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then248)) #4
          to label %if.end258 [label %if.then248], !srcloc !93

if.then248:                                       ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #6
  %call249 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug365, ptr noundef %call249, ptr noundef nonnull @.str.19) #4
  br label %if.end258

if.end258:                                        ; preds = %if.then248, %if.else232, %if.then225, %if.then209, %if.then189, %if.then173, %if.then150, %if.then134, %if.then110, %if.else, %if.then88, %if.then73
  %get_speed_and_duplex = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 0, i32 6
  %47 = ptrtoint ptr %get_speed_and_duplex to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %get_speed_and_duplex, align 4
  %call261 = call i32 %48(ptr noundef %hw, ptr noundef nonnull %speed, ptr noundef nonnull %duplex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end284, label %do.body265

do.body265:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then277)) #4
          to label %out [label %if.then277], !srcloc !93

if.then277:                                       ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #6
  %call278 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug366, ptr noundef %call278, ptr noundef nonnull @.str.22) #4
  br label %out

if.end284:                                        ; preds = %if.end258
  %49 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %50)
  %cmp286 = icmp eq i16 %50, 1
  br i1 %cmp286, label %if.then288, label %if.end284.if.end291_crit_edge

if.end284.if.end291_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end291

if.then288:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #6
  %current_mode290 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 4, i32 5
  %51 = ptrtoint ptr %current_mode290 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %current_mode290, align 4
  br label %if.end291

if.end291:                                        ; preds = %if.then288, %if.end284.if.end291_crit_edge
  %call292 = call i32 @igc_force_mac_fc(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %if.end291.out_crit_edge, label %do.body296

if.end291.out_crit_edge:                          ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body296:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_config_fc_after_link_up, %if.then308)) #4
          to label %out [label %if.then308], !srcloc !93

if.then308:                                       ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #6
  %call309 = call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug367, ptr noundef %call309, ptr noundef nonnull @.str.16) #4
  br label %out

out:                                              ; preds = %if.then308, %do.body296, %if.end291.out_crit_edge, %if.then277, %do.body265, %if.end57.out_crit_edge, %if.end50.out_crit_edge, %if.then43, %do.body31, %if.end20.out_crit_edge, %if.then16.out_crit_edge, %if.end14.out_crit_edge, %if.then9, %do.body4
  %ret_val.1 = phi i32 [ %call, %if.then9 ], [ %call17, %if.then16.out_crit_edge ], [ %call24, %if.end20.out_crit_edge ], [ %call54, %if.end50.out_crit_edge ], [ %call61, %if.end57.out_crit_edge ], [ %call261, %if.then277 ], [ %call292, %if.then308 ], [ 0, %if.end291.out_crit_edge ], [ 0, %if.then43 ], [ 0, %if.end14.out_crit_edge ], [ %call, %do.body4 ], [ 0, %do.body31 ], [ %call261, %do.body265 ], [ %call292, %do.body296 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_nway_lp_ability_reg) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_nway_adv_reg) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_status_reg) #4
  ret i32 %ret_val.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_set_ltr_i225(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_get_auto_rd_done(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.1 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.1 = and i32 %call.1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.2 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.2 = and i32 %call.2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.out_crit_edge

if.end.1.out_crit_edge:                           ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.3 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.3 = and i32 %call.3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.out_crit_edge

if.end.2.out_crit_edge:                           ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.4 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.4 = and i32 %call.4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.out_crit_edge

if.end.3.out_crit_edge:                           ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.5 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.5 = and i32 %call.5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.out_crit_edge

if.end.4.out_crit_edge:                           ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.6 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.6 = and i32 %call.6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.out_crit_edge

if.end.5.out_crit_edge:                           ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.7 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.7 = and i32 %call.7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.out_crit_edge

if.end.6.out_crit_edge:                           ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.8 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.8 = and i32 %call.8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %if.end.8, label %if.end.7.out_crit_edge

if.end.7.out_crit_edge:                           ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %call.9 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 16) #4
  %and.9 = and i32 %call.9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %do.body3, label %if.end.8.out_crit_edge

if.end.8.out_crit_edge:                           ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.body3:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_auto_rd_done.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_auto_rd_done, %if.then8)) #4
          to label %out [label %if.then8], !srcloc !93

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_auto_rd_done.__UNIQUE_ID_ddebug368, ptr noundef %call9, ptr noundef nonnull @.str.24) #4
  br label %out

out:                                              ; preds = %if.then8, %do.body3, %if.end.8.out_crit_edge, %if.end.7.out_crit_edge, %if.end.6.out_crit_edge, %if.end.5.out_crit_edge, %if.end.4.out_crit_edge, %if.end.3.out_crit_edge, %if.end.2.out_crit_edge, %if.end.1.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0 = phi i32 [ -9, %if.then8 ], [ -9, %do.body3 ], [ 0, %if.end.8.out_crit_edge ], [ 0, %if.end.7.out_crit_edge ], [ 0, %if.end.6.out_crit_edge ], [ 0, %if.end.5.out_crit_edge ], [ 0, %if.end.4.out_crit_edge ], [ 0, %if.end.3.out_crit_edge ], [ 0, %if.end.2.out_crit_edge ], [ 0, %if.end.1.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_get_speed_and_duplex_copper(ptr noundef %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #4
  %and = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else34, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ne i32 %1, 1
  %and1 = and i32 %call, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2500, ptr %speed, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_speed_and_duplex_copper, %if.then9)) #4
          to label %if.end80 [label %if.then9], !srcloc !93

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug369, ptr noundef %call10, ptr noundef nonnull @.str.26) #4
  br label %if.end80

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1000, ptr %speed, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_speed_and_duplex_copper, %if.then26)) #4
          to label %if.end80 [label %if.then26], !srcloc !93

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug370, ptr noundef %call27, ptr noundef nonnull @.str.27) #4
  br label %if.end80

if.else34:                                        ; preds = %entry
  %and35 = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else58, label %if.then37

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 100, ptr %speed, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_speed_and_duplex_copper, %if.then51)) #4
          to label %if.end80 [label %if.then51], !srcloc !93

if.then51:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  %call52 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug371, ptr noundef %call52, ptr noundef nonnull @.str.28) #4
  br label %if.end80

if.else58:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 10, ptr %speed, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_speed_and_duplex_copper, %if.then72)) #4
          to label %if.end80 [label %if.then72], !srcloc !93

if.then72:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #6
  %call73 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug372, ptr noundef %call73, ptr noundef nonnull @.str.29) #4
  br label %if.end80

if.end80:                                         ; preds = %if.then72, %if.else58, %if.then51, %if.then37, %if.then26, %if.else, %if.then9, %if.then3
  %and81 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else104, label %if.then83

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %duplex, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_speed_and_duplex_copper, %if.then97)) #4
          to label %if.end125 [label %if.then97], !srcloc !93

if.then97:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #6
  %call98 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug373, ptr noundef %call98, ptr noundef nonnull @.str.30) #4
  br label %if.end125

if.else104:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %duplex, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igc_get_speed_and_duplex_copper, %if.then118)) #4
          to label %if.end125 [label %if.then118], !srcloc !93

if.then118:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #6
  %call119 = tail call ptr @igc_get_hw_dev(ptr noundef %hw) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug374, ptr noundef %call119, ptr noundef nonnull @.str.31) #4
  br label %if.end125

if.end125:                                        ; preds = %if.then118, %if.else104, %if.then97, %if.then83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_put_hw_semaphore(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23376) #4
  %and = and i32 %call, -4
  %hw_addr2 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !106
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  %arrayidx = getelementptr i8, ptr %1, i32 23376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %2) #4, !srcloc !92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @igc_enable_mng_pass_thru(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %asf_firmware_present = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 10
  %0 = ptrtoint ptr %asf_firmware_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %asf_firmware_present, align 1, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 22560) #4
  %and = and i32 %call, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end3:                                          ; preds = %if.end
  %arc_subsystem_valid = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 11
  %2 = ptrtoint ptr %arc_subsystem_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arc_subsystem_valid, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23380) #4
  %call8 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 23344) #4
  %and9 = and i32 %call8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and11 = and i32 %call7, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and11)
  %cmp = icmp eq i32 %and11, 4
  %or.cond = select i1 %tobool10.not, i1 %cmp, i1 false
  br label %out

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %4 = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br label %out

out:                                              ; preds = %if.else, %if.then6, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_val.0.off0 = phi i1 [ false, %if.end.out_crit_edge ], [ false, %entry.out_crit_edge ], [ %or.cond, %if.then6 ], [ %5, %if.else ]
  ret i1 %ret_val.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_update_mc_addr_list(ptr noundef %hw, ptr nocapture noundef readonly %mc_addr_list, i32 noundef %mc_addr_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mta_shadow = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 7
  %0 = call ptr @memset(ptr %mta_shadow, i32 0, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mc_addr_count)
  %cmp42.not = icmp eq i32 %mc_addr_count, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mta_reg_count.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 5
  %1 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mta_reg_count.i, align 4
  %conv.i = zext i16 %2 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %sub.i = add nsw i32 %mul.i, -1
  %mc_filter_type.i = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 4
  %3 = ptrtoint ptr %mc_filter_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mc_filter_type.i, align 4
  %sub = add nsw i32 %conv.i, -1
  br label %for.body

for.body:                                         ; preds = %igc_hash_mc_addr.exit.for.body_crit_edge, %for.body.lr.ph
  %mc_addr_list.addr.044 = phi ptr [ %mc_addr_list, %for.body.lr.ph ], [ %add.ptr, %igc_hash_mc_addr.exit.for.body_crit_edge ]
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %igc_hash_mc_addr.exit.for.body_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %bit_shift.0.i = phi i8 [ 0, %for.body ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %conv1.i = zext i8 %bit_shift.0.i to i32
  %shr.i = lshr i32 %sub.i, %conv1.i
  %cmp.not.i = icmp eq i32 %shr.i, 255
  %inc.i = add i8 %bit_shift.0.i, 1
  br i1 %cmp.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %4, label %while.end.i.igc_hash_mc_addr.exit_crit_edge [
    i32 3, label %sw.bb10.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

while.end.i.igc_hash_mc_addr.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_hash_mc_addr.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %igc_hash_mc_addr.exit

sw.bb6.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add8.i = add i8 %bit_shift.0.i, 2
  br label %igc_hash_mc_addr.exit

sw.bb10.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add12.i = add i8 %bit_shift.0.i, 4
  br label %igc_hash_mc_addr.exit

igc_hash_mc_addr.exit:                            ; preds = %sw.bb10.i, %sw.bb6.i, %sw.bb.i, %while.end.i.igc_hash_mc_addr.exit_crit_edge
  %bit_shift.1.i = phi i8 [ %bit_shift.0.i, %while.end.i.igc_hash_mc_addr.exit_crit_edge ], [ %add8.i, %sw.bb6.i ], [ %inc.i, %sw.bb.i ], [ %add12.i, %sw.bb10.i ]
  %arrayidx.i = getelementptr i8, ptr %mc_addr_list.addr.044, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %7 to i32
  %conv15.i = zext i8 %bit_shift.1.i to i32
  %sub16.i = sub nsw i32 8, %conv15.i
  %shr17.i = lshr i32 %conv14.i, %sub16.i
  %arrayidx18.i = getelementptr i8, ptr %mc_addr_list.addr.044, i32 5
  %8 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx18.i, align 1
  %conv20.i = zext i8 %9 to i32
  %shl.i = shl i32 %conv20.i, %conv15.i
  %or.i = or i32 %shl.i, %shr17.i
  %and.i = and i32 %or.i, %sub.i
  %shr = lshr i32 %and.i, 5
  %and = and i32 %shr, %sub
  %and2 = and i32 %or.i, 31
  %shl = shl nuw i32 1, %and2
  %arrayidx = getelementptr %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 7, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl, %11
  store i32 %or, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %mc_addr_list.addr.044, i32 6
  %inc = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %mc_addr_count
  br i1 %exitcond.not, label %igc_hash_mc_addr.exit.for.end_crit_edge, label %igc_hash_mc_addr.exit.for.body_crit_edge

igc_hash_mc_addr.exit.for.body_crit_edge:         ; preds = %igc_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

igc_hash_mc_addr.exit.for.end_crit_edge:          ; preds = %igc_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %igc_hash_mc_addr.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mta_reg_count6 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %mta_reg_count6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mta_reg_count6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp1046.not = icmp eq i16 %13, 0
  br i1 %cmp1046.not, label %for.end.for.end26_crit_edge, label %do.body.lr.ph

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end26

do.body.lr.ph:                                    ; preds = %for.end
  %conv7 = zext i16 %13 to i32
  %hw_addr14 = getelementptr inbounds %struct.igc_hw, ptr %hw, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.147.in = phi i32 [ %conv7, %do.body.lr.ph ], [ %i.147, %do.body.do.body_crit_edge ]
  %i.147 = add nsw i32 %i.147.in, -1
  %14 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  tail call void @arm_heavy_mb() #4
  %arrayidx20 = getelementptr %struct.igc_hw, ptr %hw, i32 0, i32 3, i32 7, i32 %i.147
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shl21 = shl i32 %i.147, 2
  %add = add nsw i32 %shl21, 20992
  %arrayidx22 = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx22, i32 %18) #4, !srcloc !92
  %cmp10 = icmp ugt i32 %i.147.in, 1
  br i1 %cmp10, label %do.body.do.body_crit_edge, label %do.body.for.end26_crit_edge

do.body.for.end26_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end26

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end26:                                        ; preds = %do.body.for.end26_crit_edge, %for.end.for.end26_crit_edge
  %call27 = tail call i32 @igc_rd32(ptr noundef %hw, i32 noundef 8) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 40, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @igc_disable_pcie_master.__UNIQUE_ID_ddebug340, !1, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 64, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @igc_init_rx_addrs.__UNIQUE_ID_ddebug341, !7, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 69, i32 2}
!12 = !{ptr @igc_init_rx_addrs.__UNIQUE_ID_ddebug342, !11, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 141, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @igc_setup_link.__UNIQUE_ID_ddebug345, !14, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 153, i32 2}
!19 = !{ptr @igc_setup_link.__UNIQUE_ID_ddebug346, !18, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 200, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @igc_force_mac_fc.__UNIQUE_ID_ddebug351, !21, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 218, i32 3}
!26 = !{ptr @igc_force_mac_fc.__UNIQUE_ID_ddebug352, !25, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 410, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @igc_check_for_copper_link.__UNIQUE_ID_ddebug356, !28, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 467, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug358, !32, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 491, i32 4}
!37 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug359, !36, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 552, i32 5}
!40 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug360, !39, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 555, i32 5}
!43 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug361, !42, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 571, i32 4}
!46 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug362, !45, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!47 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug363, !48, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 585, i32 4}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 611, i32 4}
!51 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug364, !50, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!52 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug365, !53, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 614, i32 4}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 623, i32 4}
!56 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug366, !55, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!57 = !{ptr @igc_config_fc_after_link_up.__UNIQUE_ID_ddebug367, !58, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 635, i32 4}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 663, i32 3}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @igc_get_auto_rd_done.__UNIQUE_ID_ddebug368, !60, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 695, i32 4}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug369, !64, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 698, i32 4}
!69 = !{ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug370, !68, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 702, i32 3}
!72 = !{ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug371, !71, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 705, i32 3}
!75 = !{ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug372, !74, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 710, i32 3}
!78 = !{ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug373, !77, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/igc/igc_mac.c", i32 713, i32 3}
!81 = !{ptr @igc_get_speed_and_duplex_copper.__UNIQUE_ID_ddebug374, !80, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2156307524}
!92 = !{i64 5003089}
!93 = !{i64 2148508492, i64 2148508497, i64 2148508510, i64 2148508554, i64 2148508588, i64 2148508609}
!94 = !{i64 2156330414}
!95 = !{i64 2156333837}
!96 = !{i64 2156337272}
!97 = !{i64 2156340710}
!98 = !{i8 0, i8 2}
!99 = !{i64 2156318302}
!100 = !{i64 2156321701}
!101 = !{i64 2156349241}
!102 = !{i64 2156355134}
!103 = !{i64 2156358699}
!104 = !{i64 2156364687}
!105 = !{!"auto-init"}
!106 = !{i64 2156413282}
!107 = !{i64 2156417069}
