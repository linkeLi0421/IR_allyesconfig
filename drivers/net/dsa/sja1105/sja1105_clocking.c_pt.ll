; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_clocking.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_clocking.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sja1110_cgu_outclk = type { i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.sja1105_cfg_pad_mii_id = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.sja1105_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [4 x [11 x i64]], i64, i64, [11 x i64] }
%struct.sja1105_cfg_pad_mii = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_xmii_params_entry = type { [11 x i64], [11 x i64], [11 x i64] }
%struct.sja1105_cgu_mii_ctrl = type { i64, i64, i64 }
%struct.sja1105_cgu_pll_ctrl = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_mac_config_entry = type { [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sja1105_cgu_idiv = type { i64, i64, i64, i64 }

@sja1105_clocking_setup_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 792, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid interface mode specified: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sja1105_clocking_setup_port\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/dsa/sja1105/sja1105_clocking.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sja1105_clocking_setup_port._entry_ptr = internal global ptr @sja1105_clocking_setup_port._entry, section ".printk_index", align 4
@sja1105_clocking_setup_port._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 797, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Clocking setup for port %d failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sja1105_clocking_setup_port._entry_ptr.7 = internal global ptr @sja1105_clocking_setup_port._entry.5, section ".printk_index", align 4
@__const.sja1110_disable_microcontroller.outclk_6_c = private unnamed_addr constant %struct.sja1110_cgu_outclk { i64 3, i64 0, i64 1 }, align 8
@__const.sja1110_disable_microcontroller.outclk_7_c = private unnamed_addr constant %struct.sja1110_cgu_outclk { i64 5, i64 0, i64 1 }, align 8
@sja1105_mii_clocking_setup.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1105\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sja1105_mii_clocking_setup\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Configuring MII-%s clocking\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PHY\00", [28 x i8] zeroinitializer }, align 32
@sja1105_cgu_idiv_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"idiv factor must be 1 or 10\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sja1105_cgu_idiv_config\00", [40 x i8] zeroinitializer }, align 32
@sja1105_cgu_idiv_config._entry_ptr = internal global ptr @sja1105_cgu_idiv_config._entry, section ".printk_index", align 4
@__const.sja1105_cgu_mii_rx_clk_config.clk_sources = private unnamed_addr constant [5 x i32] [i32 1, i32 3, i32 5, i32 7, i32 9], align 4
@sja1105_rmii_clocking_setup.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sja1105_rmii_clocking_setup\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Configuring RMII-%s clocking\0A\00", [34 x i8] zeroinitializer }, align 32
@sja1105_cgu_rmii_pll_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 713, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to configure PLL1 for 50MHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sja1105_cgu_rmii_pll_config\00", [36 x i8] zeroinitializer }, align 32
@sja1105_cgu_rmii_pll_config._entry_ptr = internal global ptr @sja1105_cgu_rmii_pll_config._entry, section ".printk_index", align 4
@sja1105_cgu_rmii_pll_config._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 724, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable PLL1\0A\00", [41 x i8] zeroinitializer }, align 32
@sja1105_cgu_rmii_pll_config._entry_ptr.21 = internal global ptr @sja1105_cgu_rmii_pll_config._entry.19, section ".printk_index", align 4
@__const.sja1105_cgu_rmii_ref_clk_config.clk_sources = private unnamed_addr constant [5 x i32] [i32 0, i32 2, i32 4, i32 6, i32 8], align 4
@sja1105_rgmii_clocking_setup.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sja1105_rgmii_clocking_setup\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Configuring port %d RGMII at speed %lldMbps\0A\00", [51 x i8] zeroinitializer }, align 32
@sja1105_rgmii_clocking_setup.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Speed not available, skipping CGU config\0A\00", [54 x i8] zeroinitializer }, align 32
@sja1105_rgmii_clocking_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 615, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to configure idiv\0A\00", [38 x i8] zeroinitializer }, align 32
@sja1105_rgmii_clocking_setup._entry_ptr = internal global ptr @sja1105_rgmii_clocking_setup._entry, section ".printk_index", align 4
@sja1105_rgmii_clocking_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to configure RGMII Tx clock\0A\00", [60 x i8] zeroinitializer }, align 32
@sja1105_rgmii_clocking_setup._entry_ptr.28 = internal global ptr @sja1105_rgmii_clocking_setup._entry.26, section ".printk_index", align 4
@sja1105_rgmii_clocking_setup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 625, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to configure Tx pad registers\0A\00", [58 x i8] zeroinitializer }, align 32
@sja1105_rgmii_clocking_setup._entry_ptr.31 = internal global ptr @sja1105_rgmii_clocking_setup._entry.29, section ".printk_index", align 4
@__const.sja1105_cgu_rgmii_tx_clk_config.clk_sources = private unnamed_addr constant [5 x i32] [i32 17, i32 18, i32 19, i32 20, i32 21], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 791, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 796, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 278, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 125, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 736, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 713, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 724, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 592, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 608, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 615, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 620, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [46 x i8] c"../drivers/net/dsa/sja1105/sja1105_clocking.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 625, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @sja1105_cgu_idiv_config._entry, ptr @sja1105_cgu_idiv_config._entry_ptr, ptr @sja1105_cgu_rmii_pll_config._entry, ptr @sja1105_cgu_rmii_pll_config._entry.19, ptr @sja1105_cgu_rmii_pll_config._entry_ptr, ptr @sja1105_cgu_rmii_pll_config._entry_ptr.21, ptr @sja1105_clocking_setup_port._entry, ptr @sja1105_clocking_setup_port._entry.5, ptr @sja1105_clocking_setup_port._entry_ptr, ptr @sja1105_clocking_setup_port._entry_ptr.7, ptr @sja1105_rgmii_clocking_setup._entry, ptr @sja1105_rgmii_clocking_setup._entry.26, ptr @sja1105_rgmii_clocking_setup._entry.29, ptr @sja1105_rgmii_clocking_setup._entry_ptr, ptr @sja1105_rgmii_clocking_setup._entry_ptr.28, ptr @sja1105_rgmii_clocking_setup._entry_ptr.31, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_clocking_setup_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_clocking_setup_port._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_cgu_idiv_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_cgu_rmii_pll_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_cgu_rmii_pll_config._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rgmii_clocking_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rgmii_clocking_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_rgmii_clocking_setup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105pqrs_setup_rgmii_delay(ptr noundef %ctx, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %pad_mii_id = alloca %struct.sja1105_cfg_pad_mii_id, align 8
  %packed_buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sja1105_private, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %regs1 = getelementptr inbounds %struct.sja1105_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pad_mii_id) #4
  %4 = call ptr @memset(ptr %pad_mii_id, i32 0, i32 48)
  %arrayidx = getelementptr %struct.sja1105_private, ptr %ctx, i32 0, i32 1, i32 %port
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.sja1105_private, ptr %ctx, i32 0, i32 2, i32 %port
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf) #4
  %9 = ptrtoint ptr %packed_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %packed_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = mul i32 %6, 360
  %div = sdiv i32 %mul, 800
  %sub = add nsw i32 %div, -738
  %div3 = sdiv i32 %sub, 9
  %conv = sext i32 %div3 to i64
  %rxc_delay = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 1
  %10 = ptrtoint ptr %rxc_delay to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %rxc_delay, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul6 = mul i32 %8, 360
  %div7 = sdiv i32 %mul6, 800
  %sub8 = add nsw i32 %div7, -738
  %div9 = sdiv i32 %sub8, 9
  %conv10 = sext i32 %div9 to i64
  %txc_delay = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 5
  %11 = ptrtoint ptr %txc_delay to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv10, ptr %txc_delay, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %rxc_bypass = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 2
  %12 = ptrtoint ptr %rxc_bypass to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1, ptr %rxc_bypass, align 8
  %rxc_pd = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 3
  %13 = ptrtoint ptr %rxc_pd to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1, ptr %rxc_pd, align 8
  %txc_bypass = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 6
  %14 = ptrtoint ptr %txc_bypass to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1, ptr %txc_bypass, align 8
  %txc_pd = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 7
  %15 = ptrtoint ptr %txc_pd to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %txc_pd, align 8
  call fastcc void @sja1105_cfg_pad_mii_id_packing(ptr noundef nonnull %packed_buf, ptr noundef nonnull %pad_mii_id)
  %arrayidx13 = getelementptr %struct.sja1105_regs, ptr %3, i32 0, i32 19, i32 %port
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx13, align 8
  %call = call i32 @sja1105_xfer_buf(ptr noundef %ctx, i32 noundef 1, i64 noundef %17, ptr noundef nonnull %packed_buf, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  br i1 %tobool.not, label %if.end17.if.end22_crit_edge, label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %18 = call ptr @memset(ptr %rxc_bypass, i32 0, i32 16)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17.if.end22_crit_edge
  br i1 %tobool4.not, label %if.end22.if.end27_crit_edge, label %if.then24

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %19 = call ptr @memset(ptr %txc_bypass, i32 0, i32 16)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  call fastcc void @sja1105_cfg_pad_mii_id_packing(ptr noundef nonnull %packed_buf, ptr noundef nonnull %pad_mii_id)
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx13, align 8
  %call32 = call i32 @sja1105_xfer_buf(ptr noundef %ctx, i32 noundef 1, i64 noundef %21, ptr noundef nonnull %packed_buf, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end27 ], [ %call, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pad_mii_id) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sja1105_cfg_pad_mii_id_packing(ptr noundef %buf, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef 15, i32 noundef 15, i32 noundef 4, i32 noundef 0) #4
  %rxc_delay = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %rxc_delay, i32 noundef 14, i32 noundef 10, i32 noundef 4, i32 noundef 0) #4
  %rxc_bypass = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %rxc_bypass, i32 noundef 9, i32 noundef 9, i32 noundef 4, i32 noundef 0) #4
  %rxc_pd = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %rxc_pd, i32 noundef 8, i32 noundef 8, i32 noundef 4, i32 noundef 0) #4
  %txc_stable_ovr = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %txc_stable_ovr, i32 noundef 7, i32 noundef 7, i32 noundef 4, i32 noundef 0) #4
  %txc_delay = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %txc_delay, i32 noundef 6, i32 noundef 2, i32 noundef 4, i32 noundef 0) #4
  %txc_bypass = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %cmd, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %txc_bypass, i32 noundef 1, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %txc_pd = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %cmd, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %txc_pd, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_buf(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_setup_rgmii_delay(ptr noundef %ctx, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %range.i = alloca i64, align 8
  %pad_mii_id = alloca %struct.sja1105_cfg_pad_mii_id, align 8
  %packed_buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sja1105_private, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %regs1 = getelementptr inbounds %struct.sja1105_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pad_mii_id) #4
  %4 = call ptr @memset(ptr %pad_mii_id, i32 0, i32 56)
  %arrayidx = getelementptr %struct.sja1105_private, ptr %ctx, i32 0, i32 1, i32 %port
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.sja1105_private, ptr %ctx, i32 0, i32 2, i32 %port
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf) #4
  %9 = ptrtoint ptr %packed_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %packed_buf, align 4
  %rxc_pd = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 3
  %10 = ptrtoint ptr %rxc_pd to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1, ptr %rxc_pd, align 8
  %txc_pd = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 7
  %11 = ptrtoint ptr %txc_pd to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1, ptr %txc_pd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = mul i32 %6, 360
  %div = sdiv i32 %mul, 800
  %sub = add nsw i32 %div, -738
  %div3 = sdiv i32 %sub, 9
  %conv = sext i32 %div3 to i64
  %rxc_delay = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 1
  %12 = ptrtoint ptr %rxc_delay to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %rxc_delay, align 8
  %rxc_bypass = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 2
  %13 = ptrtoint ptr %rxc_bypass to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1, ptr %rxc_bypass, align 8
  %14 = ptrtoint ptr %rxc_pd to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %rxc_pd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul7 = mul i32 %8, 360
  %div8 = sdiv i32 %mul7, 800
  %sub9 = add nsw i32 %div8, -738
  %div10 = sdiv i32 %sub9, 9
  %conv11 = sext i32 %div10 to i64
  %txc_delay = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 5
  %15 = ptrtoint ptr %txc_delay to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv11, ptr %txc_delay, align 8
  %txc_bypass = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 6
  %16 = ptrtoint ptr %txc_bypass to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %txc_bypass, align 8
  %17 = ptrtoint ptr %txc_pd to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %txc_pd, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end.if.end13_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range.i) #4
  %18 = ptrtoint ptr %range.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 4, ptr %range.i, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef nonnull %pad_mii_id, i32 noundef 26, i32 noundef 26, i32 noundef 4, i32 noundef 0) #4
  %rxc_delay.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 1
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %rxc_delay.i, i32 noundef 25, i32 noundef 21, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef nonnull %range.i, i32 noundef 20, i32 noundef 18, i32 noundef 4, i32 noundef 0) #4
  %rxc_bypass.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 2
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %rxc_bypass.i, i32 noundef 17, i32 noundef 17, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %rxc_pd, i32 noundef 16, i32 noundef 16, i32 noundef 4, i32 noundef 0) #4
  %txc_stable_ovr.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %txc_stable_ovr.i, i32 noundef 10, i32 noundef 10, i32 noundef 4, i32 noundef 0) #4
  %txc_delay.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 5
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %txc_delay.i, i32 noundef 9, i32 noundef 5, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef nonnull %range.i, i32 noundef 4, i32 noundef 2, i32 noundef 4, i32 noundef 0) #4
  %txc_bypass.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii_id, ptr %pad_mii_id, i32 0, i32 6
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %txc_bypass.i, i32 noundef 1, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %txc_pd, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range.i) #4
  %arrayidx15 = getelementptr %struct.sja1105_regs, ptr %3, i32 0, i32 19, i32 %port
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx15, align 8
  %call = call i32 @sja1105_xfer_buf(ptr noundef %ctx, i32 noundef 1, i64 noundef %20, ptr noundef nonnull %packed_buf, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pad_mii_id) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_clocking_setup_port(ptr noundef %priv, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %pad_mii_rx.i = alloca %struct.sja1105_cfg_pad_mii, align 8
  %packed_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 19, i32 2
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %arrayidx2 = getelementptr %struct.sja1105_xmii_params_entry, ptr %5, i32 0, i32 1, i32 %port
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx2, align 8
  %conv = trunc i64 %7 to i32
  %arrayidx3 = getelementptr [11 x i64], ptr %5, i32 0, i32 %port
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx3, align 8
  %conv4 = trunc i64 %9 to i32
  %10 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @sja1105_mii_clocking_setup(ptr noundef %priv, i32 noundef %port, i32 noundef %conv4)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call fastcc i32 @sja1105_rmii_clocking_setup(ptr noundef %priv, i32 noundef %port, i32 noundef %conv4)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call fastcc i32 @sja1105_rgmii_clocking_setup(ptr noundef %priv, i32 noundef %port)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %conv) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb
  %rc.0 = phi i32 [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool.not = icmp eq i32 %rc.0, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %do.end12

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %port, i32 noundef %rc.0) #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %entry.if.end_crit_edge
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %11 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pad_mii_rx.i) #4
  %15 = call ptr @memset(ptr %pad_mii_rx.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #4
  %16 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %packed_buf.i, align 4
  %arrayidx.i = getelementptr %struct.sja1105_regs, ptr %14, i32 0, i32 18, i32 %port
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp.i = icmp eq i64 %18, -1
  br i1 %cmp.i, label %if.end.sja1105_cfg_pad_rx_config.exit_crit_edge, label %if.end.i

if.end.sja1105_cfg_pad_rx_config.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sja1105_cfg_pad_rx_config.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %d32_ih.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 1
  %19 = ptrtoint ptr %d32_ih.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %d32_ih.i, align 8
  %d32_ipud.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 2
  %20 = ptrtoint ptr %d32_ipud.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 2, ptr %d32_ipud.i, align 8
  %d10_ih.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 3
  %21 = ptrtoint ptr %d10_ih.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %d10_ih.i, align 8
  %d10_ipud.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 5
  %22 = ptrtoint ptr %d10_ipud.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 2, ptr %d10_ipud.i, align 8
  %ctrl_ih.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 7
  %23 = ptrtoint ptr %ctrl_ih.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %ctrl_ih.i, align 8
  %ctrl_ipud.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 8
  %24 = ptrtoint ptr %ctrl_ipud.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 3, ptr %ctrl_ipud.i, align 8
  %clk_os.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 9
  %25 = ptrtoint ptr %clk_os.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 2, ptr %clk_os.i, align 8
  %clk_ih.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 10
  %26 = ptrtoint ptr %clk_ih.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %clk_ih.i, align 8
  %clk_ipud.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_rx.i, i32 0, i32 11
  %27 = ptrtoint ptr %clk_ipud.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 2, ptr %clk_ipud.i, align 8
  call fastcc void @sja1105_cfg_pad_mii_packing(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %pad_mii_rx.i) #4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i, align 8
  %call.i = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %29, ptr noundef nonnull %packed_buf.i, i32 noundef 4) #4
  br label %sja1105_cfg_pad_rx_config.exit

sja1105_cfg_pad_rx_config.exit:                   ; preds = %if.end.i, %if.end.sja1105_cfg_pad_rx_config.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %if.end.sja1105_cfg_pad_rx_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pad_mii_rx.i) #4
  br label %cleanup

cleanup:                                          ; preds = %sja1105_cfg_pad_rx_config.exit, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.0, %do.end12 ], [ %retval.0.i, %sja1105_cfg_pad_rx_config.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_mii_clocking_setup(ptr noundef %priv, i32 noundef %port, i32 noundef %role) unnamed_addr #0 align 64 {
entry:
  %mii_ext_rx_clk.i = alloca %struct.sja1105_cgu_mii_ctrl, align 8
  %packed_buf.i70 = alloca [4 x i8], align 4
  %mii_ext_tx_clk.i = alloca %struct.sja1105_cgu_mii_ctrl, align 8
  %packed_buf.i60 = alloca [4 x i8], align 4
  %mii_rx_clk.i = alloca %struct.sja1105_cgu_mii_ctrl, align 8
  %packed_buf.i51 = alloca [4 x i8], align 4
  %mii_tx_clk.i = alloca %struct.sja1105_cgu_mii_ctrl, align 8
  %packed_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_mii_clocking_setup.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_mii_clocking_setup, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp = icmp eq i32 %role, 0
  %cond = select i1 %cmp, ptr @.str.11, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_mii_clocking_setup.__UNIQUE_ID_ddebug518, ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %cmp4 = icmp eq i32 %role, 1
  %call5 = tail call fastcc i32 @sja1105_cgu_idiv_config(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext %cmp4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mii_tx_clk.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #4
  %8 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %packed_buf.i, align 4
  %arrayidx.i = getelementptr %struct.sja1105_regs, ptr %7, i32 0, i32 21, i32 %port
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp.i = icmp eq i64 %10, -1
  br i1 %cmp.i, label %sja1105_cgu_mii_tx_clk_config.exit.thread, label %sja1105_cgu_mii_tx_clk_config.exit

sja1105_cgu_mii_tx_clk_config.exit.thread:        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mii_tx_clk.i) #4
  br label %if.end12

sja1105_cgu_mii_tx_clk_config.exit:               ; preds = %if.end8
  %11 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %mii_tx_clk.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %mii_tx_clk.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp3.i = icmp eq i32 %role, 0
  %__const.sja1105_cgu_mii_tx_clk_config.mac_clk_sources.__const.sja1105_cgu_mii_tx_clk_config.phy_clk_sources.i = select i1 %cmp3.i, ptr @__const.sja1105_cgu_rmii_ref_clk_config.clk_sources, ptr @__const.sja1105_cgu_rgmii_tx_clk_config.clk_sources
  %clksrc.0.in.i = getelementptr [5 x i32], ptr %__const.sja1105_cgu_mii_tx_clk_config.mac_clk_sources.__const.sja1105_cgu_mii_tx_clk_config.phy_clk_sources.i, i32 0, i32 %port
  %13 = ptrtoint ptr %clksrc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %clksrc.0.i = load i32, ptr %clksrc.0.in.i, align 4
  %conv.i = sext i32 %clksrc.0.i to i64
  %14 = ptrtoint ptr %mii_tx_clk.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %mii_tx_clk.i, align 8
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %12, align 8
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %11, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %mii_tx_clk.i, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i, ptr noundef %12, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i, ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  %call.i = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %18, ptr noundef nonnull %packed_buf.i, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mii_tx_clk.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %sja1105_cgu_mii_tx_clk_config.exit.cleanup_crit_edge, label %sja1105_cgu_mii_tx_clk_config.exit.if.end12_crit_edge

sja1105_cgu_mii_tx_clk_config.exit.if.end12_crit_edge: ; preds = %sja1105_cgu_mii_tx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

sja1105_cgu_mii_tx_clk_config.exit.cleanup_crit_edge: ; preds = %sja1105_cgu_mii_tx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %sja1105_cgu_mii_tx_clk_config.exit.if.end12_crit_edge, %sja1105_cgu_mii_tx_clk_config.exit.thread
  %19 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info.i, align 4
  %regs1.i53 = getelementptr inbounds %struct.sja1105_info, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %regs1.i53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs1.i53, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mii_rx_clk.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i51) #4
  %23 = ptrtoint ptr %packed_buf.i51 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %packed_buf.i51, align 4
  %arrayidx.i54 = getelementptr %struct.sja1105_regs, ptr %22, i32 0, i32 22, i32 %port
  %24 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i54, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp.i55 = icmp eq i64 %25, -1
  br i1 %cmp.i55, label %sja1105_cgu_mii_rx_clk_config.exit.thread, label %sja1105_cgu_mii_rx_clk_config.exit

sja1105_cgu_mii_rx_clk_config.exit.thread:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i51) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mii_rx_clk.i) #4
  br label %if.end16

sja1105_cgu_mii_rx_clk_config.exit:               ; preds = %if.end12
  %26 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %mii_rx_clk.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %mii_rx_clk.i, i32 0, i32 1
  %arrayidx3.i = getelementptr [5 x i32], ptr @__const.sja1105_cgu_mii_rx_clk_config.clk_sources, i32 0, i32 %port
  %28 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx3.i, align 4
  %conv.i56 = sext i32 %29 to i64
  %30 = ptrtoint ptr %mii_rx_clk.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv.i56, ptr %mii_rx_clk.i, align 8
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 1, ptr %27, align 8
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %26, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i51, ptr noundef nonnull %mii_rx_clk.i, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i51, ptr noundef %27, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i51, ptr noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %33 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i54, align 8
  %call.i57 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %34, ptr noundef nonnull %packed_buf.i51, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i51) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mii_rx_clk.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp14 = icmp slt i32 %call.i57, 0
  br i1 %cmp14, label %sja1105_cgu_mii_rx_clk_config.exit.cleanup_crit_edge, label %sja1105_cgu_mii_rx_clk_config.exit.if.end16_crit_edge

sja1105_cgu_mii_rx_clk_config.exit.if.end16_crit_edge: ; preds = %sja1105_cgu_mii_rx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

sja1105_cgu_mii_rx_clk_config.exit.cleanup_crit_edge: ; preds = %sja1105_cgu_mii_rx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %sja1105_cgu_mii_rx_clk_config.exit.if.end16_crit_edge, %sja1105_cgu_mii_rx_clk_config.exit.thread
  br i1 %cmp4, label %if.then18, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then18:                                        ; preds = %if.end16
  %35 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info.i, align 4
  %regs1.i62 = getelementptr inbounds %struct.sja1105_info, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %regs1.i62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs1.i62, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mii_ext_tx_clk.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i60) #4
  %39 = ptrtoint ptr %packed_buf.i60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %packed_buf.i60, align 4
  %arrayidx.i63 = getelementptr %struct.sja1105_regs, ptr %38, i32 0, i32 23, i32 %port
  %40 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i63, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %41)
  %cmp.i64 = icmp eq i64 %41, -1
  br i1 %cmp.i64, label %sja1105_cgu_mii_ext_tx_clk_config.exit.thread, label %sja1105_cgu_mii_ext_tx_clk_config.exit

sja1105_cgu_mii_ext_tx_clk_config.exit.thread:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i60) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mii_ext_tx_clk.i) #4
  br label %if.end22

sja1105_cgu_mii_ext_tx_clk_config.exit:           ; preds = %if.then18
  %42 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %mii_ext_tx_clk.i, i32 0, i32 2
  %43 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %mii_ext_tx_clk.i, i32 0, i32 1
  %arrayidx3.i65 = getelementptr [5 x i32], ptr @__const.sja1105_cgu_rgmii_tx_clk_config.clk_sources, i32 0, i32 %port
  %44 = ptrtoint ptr %arrayidx3.i65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx3.i65, align 4
  %conv.i66 = sext i32 %45 to i64
  %46 = ptrtoint ptr %mii_ext_tx_clk.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv.i66, ptr %mii_ext_tx_clk.i, align 8
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1, ptr %43, align 8
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %42, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i60, ptr noundef nonnull %mii_ext_tx_clk.i, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i60, ptr noundef %43, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i60, ptr noundef %42, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %49 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.i63, align 8
  %call.i67 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %50, ptr noundef nonnull %packed_buf.i60, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i60) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mii_ext_tx_clk.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp20 = icmp slt i32 %call.i67, 0
  br i1 %cmp20, label %sja1105_cgu_mii_ext_tx_clk_config.exit.cleanup_crit_edge, label %sja1105_cgu_mii_ext_tx_clk_config.exit.if.end22_crit_edge

sja1105_cgu_mii_ext_tx_clk_config.exit.if.end22_crit_edge: ; preds = %sja1105_cgu_mii_ext_tx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

sja1105_cgu_mii_ext_tx_clk_config.exit.cleanup_crit_edge: ; preds = %sja1105_cgu_mii_ext_tx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %sja1105_cgu_mii_ext_tx_clk_config.exit.if.end22_crit_edge, %sja1105_cgu_mii_ext_tx_clk_config.exit.thread
  %51 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %info.i, align 4
  %regs1.i72 = getelementptr inbounds %struct.sja1105_info, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %regs1.i72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs1.i72, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mii_ext_rx_clk.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i70) #4
  %55 = ptrtoint ptr %packed_buf.i70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %packed_buf.i70, align 4
  %arrayidx.i73 = getelementptr %struct.sja1105_regs, ptr %54, i32 0, i32 24, i32 %port
  %56 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx.i73, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %57)
  %cmp.i74 = icmp eq i64 %57, -1
  br i1 %cmp.i74, label %sja1105_cgu_mii_ext_rx_clk_config.exit.thread, label %sja1105_cgu_mii_ext_rx_clk_config.exit

sja1105_cgu_mii_ext_rx_clk_config.exit.thread:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i70) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mii_ext_rx_clk.i) #4
  br label %if.end27

sja1105_cgu_mii_ext_rx_clk_config.exit:           ; preds = %if.end22
  %58 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %mii_ext_rx_clk.i, i32 0, i32 2
  %59 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %mii_ext_rx_clk.i, i32 0, i32 1
  %arrayidx3.i75 = getelementptr [5 x i32], ptr @__const.sja1105_cgu_rgmii_tx_clk_config.clk_sources, i32 0, i32 %port
  %60 = ptrtoint ptr %arrayidx3.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx3.i75, align 4
  %conv.i76 = sext i32 %61 to i64
  %62 = ptrtoint ptr %mii_ext_rx_clk.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv.i76, ptr %mii_ext_rx_clk.i, align 8
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 1, ptr %59, align 8
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %58, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i70, ptr noundef nonnull %mii_ext_rx_clk.i, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i70, ptr noundef %59, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i70, ptr noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %65 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx.i73, align 8
  %call.i77 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %66, ptr noundef nonnull %packed_buf.i70, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i70) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mii_ext_rx_clk.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp24 = icmp slt i32 %call.i77, 0
  br i1 %cmp24, label %sja1105_cgu_mii_ext_rx_clk_config.exit.cleanup_crit_edge, label %sja1105_cgu_mii_ext_rx_clk_config.exit.if.end27_crit_edge

sja1105_cgu_mii_ext_rx_clk_config.exit.if.end27_crit_edge: ; preds = %sja1105_cgu_mii_ext_rx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

sja1105_cgu_mii_ext_rx_clk_config.exit.cleanup_crit_edge: ; preds = %sja1105_cgu_mii_ext_rx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %sja1105_cgu_mii_ext_rx_clk_config.exit.if.end27_crit_edge, %sja1105_cgu_mii_ext_rx_clk_config.exit.thread, %if.end16.if.end27_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %sja1105_cgu_mii_ext_rx_clk_config.exit.cleanup_crit_edge, %sja1105_cgu_mii_ext_tx_clk_config.exit.cleanup_crit_edge, %sja1105_cgu_mii_rx_clk_config.exit.cleanup_crit_edge, %sja1105_cgu_mii_tx_clk_config.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ %call5, %do.end.cleanup_crit_edge ], [ %call.i, %sja1105_cgu_mii_tx_clk_config.exit.cleanup_crit_edge ], [ %call.i57, %sja1105_cgu_mii_rx_clk_config.exit.cleanup_crit_edge ], [ %call.i67, %sja1105_cgu_mii_ext_tx_clk_config.exit.cleanup_crit_edge ], [ %call.i77, %sja1105_cgu_mii_ext_rx_clk_config.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_rmii_clocking_setup(ptr noundef %priv, i32 noundef %port, i32 noundef %role) unnamed_addr #0 align 64 {
entry:
  %ext_tx_clk.i = alloca %struct.sja1105_cgu_mii_ctrl, align 8
  %packed_buf.i50 = alloca [4 x i8], align 4
  %ref_clk.i = alloca %struct.sja1105_cgu_mii_ctrl, align 8
  %packed_buf.i43 = alloca [4 x i8], align 4
  %packed_buf.i = alloca [4 x i8], align 4
  %pll.i = alloca %struct.sja1105_cgu_pll_ctrl, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_rmii_clocking_setup.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_rmii_clocking_setup, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp = icmp eq i32 %role, 0
  %cond = select i1 %cmp, ptr @.str.11, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_rmii_clocking_setup.__UNIQUE_ID_ddebug521, ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp4 = icmp eq i32 %role, 0
  br i1 %cmp4, label %if.then5, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %do.end
  %info.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #4
  %8 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %packed_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pll.i) #4
  %9 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %rmii_pll1.i = getelementptr inbounds %struct.sja1105_regs, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %rmii_pll1.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rmii_pll1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %14)
  %cmp.i = icmp eq i64 %14, -1
  br i1 %cmp.i, label %if.then5.sja1105_cgu_rmii_pll_config.exit.thread_crit_edge, label %if.end.i

if.then5.sja1105_cgu_rmii_pll_config.exit.thread_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sja1105_cgu_rmii_pll_config.exit.thread

if.end.i:                                         ; preds = %if.then5
  %15 = ptrtoint ptr %pll.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 10, ptr %pll.i, align 8
  %msel.i = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %pll.i, i32 0, i32 1
  %16 = ptrtoint ptr %msel.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %msel.i, align 8
  %autoblock.i = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %pll.i, i32 0, i32 2
  %17 = ptrtoint ptr %autoblock.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1, ptr %autoblock.i, align 8
  %psel.i = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %pll.i, i32 0, i32 3
  %18 = ptrtoint ptr %psel.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1, ptr %psel.i, align 8
  %direct.i = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %pll.i, i32 0, i32 4
  %19 = ptrtoint ptr %direct.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %direct.i, align 8
  %fbsel.i = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %pll.i, i32 0, i32 5
  %20 = ptrtoint ptr %fbsel.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1, ptr %fbsel.i, align 8
  %bypass.i = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %pll.i, i32 0, i32 6
  %21 = ptrtoint ptr %bypass.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %bypass.i, align 8
  %pd.i = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %pll.i, i32 0, i32 7
  %22 = ptrtoint ptr %pd.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1, ptr %pd.i, align 8
  call fastcc void @sja1105_cgu_pll_control_packing(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %pll.i) #4
  %23 = ptrtoint ptr %rmii_pll1.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rmii_pll1.i, align 8
  %call.i = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %24, ptr noundef nonnull %packed_buf.i, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.end.i.sja1105_cgu_rmii_pll_config.exit_crit_edge, label %if.end7.i

if.end.i.sja1105_cgu_rmii_pll_config.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sja1105_cgu_rmii_pll_config.exit

if.end7.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %pd.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %pd.i, align 8
  call fastcc void @sja1105_cgu_pll_control_packing(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %pll.i) #4
  %26 = ptrtoint ptr %rmii_pll1.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rmii_pll1.i, align 8
  %call12.i = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %27, ptr noundef nonnull %packed_buf.i, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end7.i.sja1105_cgu_rmii_pll_config.exit_crit_edge, label %if.end7.i.sja1105_cgu_rmii_pll_config.exit.thread_crit_edge

if.end7.i.sja1105_cgu_rmii_pll_config.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sja1105_cgu_rmii_pll_config.exit.thread

if.end7.i.sja1105_cgu_rmii_pll_config.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sja1105_cgu_rmii_pll_config.exit

sja1105_cgu_rmii_pll_config.exit.thread:          ; preds = %if.end7.i.sja1105_cgu_rmii_pll_config.exit.thread_crit_edge, %if.then5.sja1105_cgu_rmii_pll_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pll.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #4
  br label %if.end10

sja1105_cgu_rmii_pll_config.exit:                 ; preds = %if.end7.i.sja1105_cgu_rmii_pll_config.exit_crit_edge, %if.end.i.sja1105_cgu_rmii_pll_config.exit_crit_edge
  %.str.20.sink.i = phi ptr [ @.str.17, %if.end.i.sja1105_cgu_rmii_pll_config.exit_crit_edge ], [ @.str.20, %if.end7.i.sja1105_cgu_rmii_pll_config.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.end.i.sja1105_cgu_rmii_pll_config.exit_crit_edge ], [ %call12.i, %if.end7.i.sja1105_cgu_rmii_pll_config.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.20.sink.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pll.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #4
  br label %cleanup

if.end10:                                         ; preds = %sja1105_cgu_rmii_pll_config.exit.thread, %do.end.if.end10_crit_edge
  %call11 = call fastcc i32 @sja1105_cgu_idiv_config(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext false, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %info.i44 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %28 = ptrtoint ptr %info.i44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info.i44, align 4
  %regs1.i45 = getelementptr inbounds %struct.sja1105_info, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %regs1.i45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1.i45, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ref_clk.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i43) #4
  %32 = ptrtoint ptr %packed_buf.i43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %packed_buf.i43, align 4
  %arrayidx.i = getelementptr %struct.sja1105_regs, ptr %31, i32 0, i32 26, i32 %port
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp.i46 = icmp eq i64 %34, -1
  br i1 %cmp.i46, label %sja1105_cgu_rmii_ref_clk_config.exit.thread, label %sja1105_cgu_rmii_ref_clk_config.exit

sja1105_cgu_rmii_ref_clk_config.exit.thread:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i43) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ref_clk.i) #4
  br label %if.end18

sja1105_cgu_rmii_ref_clk_config.exit:             ; preds = %if.end14
  %35 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %ref_clk.i, i32 0, i32 2
  %36 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %ref_clk.i, i32 0, i32 1
  %arrayidx2.i = getelementptr [5 x i32], ptr @__const.sja1105_cgu_rmii_ref_clk_config.clk_sources, i32 0, i32 %port
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.i, align 4
  %conv.i = sext i32 %38 to i64
  %39 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i, ptr %ref_clk.i, align 8
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1, ptr %36, align 8
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %35, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i43, ptr noundef nonnull %ref_clk.i, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i43, ptr noundef %36, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i43, ptr noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.i, align 8
  %call.i47 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %43, ptr noundef nonnull %packed_buf.i43, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i43) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ref_clk.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp16 = icmp slt i32 %call.i47, 0
  br i1 %cmp16, label %sja1105_cgu_rmii_ref_clk_config.exit.cleanup_crit_edge, label %sja1105_cgu_rmii_ref_clk_config.exit.if.end18_crit_edge

sja1105_cgu_rmii_ref_clk_config.exit.if.end18_crit_edge: ; preds = %sja1105_cgu_rmii_ref_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

sja1105_cgu_rmii_ref_clk_config.exit.cleanup_crit_edge: ; preds = %sja1105_cgu_rmii_ref_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %sja1105_cgu_rmii_ref_clk_config.exit.if.end18_crit_edge, %sja1105_cgu_rmii_ref_clk_config.exit.thread
  br i1 %cmp4, label %if.then20, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  %44 = ptrtoint ptr %info.i44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info.i44, align 4
  %regs1.i52 = getelementptr inbounds %struct.sja1105_info, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %regs1.i52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs1.i52, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ext_tx_clk.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i50) #4
  %48 = ptrtoint ptr %packed_buf.i50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %packed_buf.i50, align 4
  %arrayidx.i53 = getelementptr %struct.sja1105_regs, ptr %47, i32 0, i32 27, i32 %port
  %49 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.i53, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %50)
  %cmp.i54 = icmp eq i64 %50, -1
  br i1 %cmp.i54, label %sja1105_cgu_rmii_ext_tx_clk_config.exit.thread, label %sja1105_cgu_rmii_ext_tx_clk_config.exit

sja1105_cgu_rmii_ext_tx_clk_config.exit.thread:   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i50) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ext_tx_clk.i) #4
  br label %if.end25

sja1105_cgu_rmii_ext_tx_clk_config.exit:          ; preds = %if.then20
  %51 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %ext_tx_clk.i, i32 0, i32 2
  %52 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %ext_tx_clk.i, i32 0, i32 1
  %53 = ptrtoint ptr %ext_tx_clk.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 14, ptr %ext_tx_clk.i, align 8
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 1, ptr %52, align 8
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %51, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i50, ptr noundef nonnull %ext_tx_clk.i, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i50, ptr noundef %52, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i50, ptr noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %56 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx.i53, align 8
  %call.i55 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %57, ptr noundef nonnull %packed_buf.i50, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i50) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ext_tx_clk.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp22 = icmp slt i32 %call.i55, 0
  br i1 %cmp22, label %sja1105_cgu_rmii_ext_tx_clk_config.exit.cleanup_crit_edge, label %sja1105_cgu_rmii_ext_tx_clk_config.exit.if.end25_crit_edge

sja1105_cgu_rmii_ext_tx_clk_config.exit.if.end25_crit_edge: ; preds = %sja1105_cgu_rmii_ext_tx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

sja1105_cgu_rmii_ext_tx_clk_config.exit.cleanup_crit_edge: ; preds = %sja1105_cgu_rmii_ext_tx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %sja1105_cgu_rmii_ext_tx_clk_config.exit.if.end25_crit_edge, %sja1105_cgu_rmii_ext_tx_clk_config.exit.thread, %if.end18.if.end25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %sja1105_cgu_rmii_ext_tx_clk_config.exit.cleanup_crit_edge, %sja1105_cgu_rmii_ref_clk_config.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %sja1105_cgu_rmii_pll_config.exit
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %retval.0.ph.i, %sja1105_cgu_rmii_pll_config.exit ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call.i47, %sja1105_cgu_rmii_ref_clk_config.exit.cleanup_crit_edge ], [ %call.i55, %sja1105_cgu_rmii_ext_tx_clk_config.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_rgmii_clocking_setup(ptr noundef %priv, i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  %pad_mii_tx.i = alloca %struct.sja1105_cfg_pad_mii, align 8
  %packed_buf.i5 = alloca [4 x i8], align 4
  %txc.i = alloca %struct.sja1105_cgu_mii_ctrl, align 8
  %packed_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 9, i32 2
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %speed3 = getelementptr %struct.sja1105_mac_config_entry, ptr %5, i32 %port, i32 4
  %6 = ptrtoint ptr %speed3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %speed3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_rgmii_clocking_setup.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_rgmii_clocking_setup, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_rgmii_clocking_setup.__UNIQUE_ID_ddebug519, ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %port, i64 noundef %7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %port_speed = getelementptr inbounds %struct.sja1105_info, ptr %9, i32 0, i32 31
  %arrayidx6 = getelementptr %struct.sja1105_info, ptr %9, i32 0, i32 31, i32 3
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %11)
  %cmp = icmp eq i64 %7, %11
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call fastcc i32 @sja1105_cgu_idiv_config(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext false, i32 noundef 1)
  br label %if.end48

if.else:                                          ; preds = %do.end
  %arrayidx11 = getelementptr %struct.sja1105_info, ptr %9, i32 0, i32 31, i32 2
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %13)
  %cmp12 = icmp eq i64 %7, %13
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call fastcc i32 @sja1105_cgu_idiv_config(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext true, i32 noundef 1)
  br label %if.end48

if.else15:                                        ; preds = %if.else
  %arrayidx18 = getelementptr %struct.sja1105_info, ptr %9, i32 0, i32 31, i32 1
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %15)
  %cmp19 = icmp eq i64 %7, %15
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call fastcc i32 @sja1105_cgu_idiv_config(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext true, i32 noundef 10)
  br label %if.end48

if.else22:                                        ; preds = %if.else15
  %16 = ptrtoint ptr %port_speed to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %port_speed, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %17)
  %cmp26 = icmp eq i64 %7, %17
  br i1 %cmp26, label %do.body28, label %if.else22.do.end53_crit_edge

if.else22.do.end53_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end53

do.body28:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_rgmii_clocking_setup.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_rgmii_clocking_setup, %if.then40)) #4
          to label %cleanup [label %if.then40], !srcloc !65

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_rgmii_clocking_setup.__UNIQUE_ID_ddebug520, ptr noundef %3, ptr noundef nonnull @.str.24) #4
  br label %cleanup

if.end48:                                         ; preds = %if.then20, %if.then13, %if.then7
  %rc.0 = phi i32 [ %call8, %if.then7 ], [ %call14, %if.then13 ], [ %call21, %if.then20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp49 = icmp slt i32 %rc.0, 0
  br i1 %cmp49, label %if.end48.do.end53_crit_edge, label %if.end54

if.end48.do.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end53

do.end53:                                         ; preds = %if.end48.do.end53_crit_edge, %if.else22.do.end53_crit_edge
  %rc.017 = phi i32 [ %rc.0, %if.end48.do.end53_crit_edge ], [ -22, %if.else22.do.end53_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25) #7
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs1.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %txc.i) #4
  %22 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %txc.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.sja1105_cgu_mii_ctrl, ptr %txc.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #4
  %24 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %packed_buf.i, align 4
  %arrayidx.i = getelementptr %struct.sja1105_regs, ptr %21, i32 0, i32 25, i32 %port
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %26)
  %cmp.i = icmp eq i64 %26, -1
  br i1 %cmp.i, label %sja1105_cgu_rgmii_tx_clk_config.exit.thread, label %if.end.i

sja1105_cgu_rgmii_tx_clk_config.exit.thread:      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %txc.i) #4
  br label %if.end61

if.end.i:                                         ; preds = %if.end54
  %arrayidx3.i = getelementptr %struct.sja1105_info, ptr %19, i32 0, i32 31, i32 3
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %7)
  %cmp4.i = icmp eq i64 %28, %7
  br i1 %cmp4.i, label %if.end.i.sja1105_cgu_rgmii_tx_clk_config.exit_crit_edge, label %if.else.i

if.end.i.sja1105_cgu_rgmii_tx_clk_config.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sja1105_cgu_rgmii_tx_clk_config.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6.i = getelementptr [5 x i32], ptr @__const.sja1105_cgu_rgmii_tx_clk_config.clk_sources, i32 0, i32 %port
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx6.i, align 4
  br label %sja1105_cgu_rgmii_tx_clk_config.exit

sja1105_cgu_rgmii_tx_clk_config.exit:             ; preds = %if.else.i, %if.end.i.sja1105_cgu_rgmii_tx_clk_config.exit_crit_edge
  %clksrc.0.i = phi i32 [ %30, %if.else.i ], [ 11, %if.end.i.sja1105_cgu_rgmii_tx_clk_config.exit_crit_edge ]
  %conv.i = sext i32 %clksrc.0.i to i64
  %31 = ptrtoint ptr %txc.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv.i, ptr %txc.i, align 8
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1, ptr %22, align 8
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %23, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %txc.i, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i, ptr noundef %22, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf.i, ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i, align 8
  %call.i = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %35, ptr noundef nonnull %packed_buf.i, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %txc.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp56 = icmp slt i32 %call.i, 0
  br i1 %cmp56, label %do.end60, label %sja1105_cgu_rgmii_tx_clk_config.exit.if.end61_crit_edge

sja1105_cgu_rgmii_tx_clk_config.exit.if.end61_crit_edge: ; preds = %sja1105_cgu_rgmii_tx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

do.end60:                                         ; preds = %sja1105_cgu_rgmii_tx_clk_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end61:                                         ; preds = %sja1105_cgu_rgmii_tx_clk_config.exit.if.end61_crit_edge, %sja1105_cgu_rgmii_tx_clk_config.exit.thread
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 4
  %regs1.i7 = getelementptr inbounds %struct.sja1105_info, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %regs1.i7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1.i7, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %pad_mii_tx.i) #4
  %40 = getelementptr inbounds i8, ptr %pad_mii_tx.i, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i5) #4
  %42 = ptrtoint ptr %packed_buf.i5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %packed_buf.i5, align 4
  %arrayidx.i8 = getelementptr %struct.sja1105_regs, ptr %39, i32 0, i32 17, i32 %port
  %43 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %44)
  %cmp.i9 = icmp eq i64 %44, -1
  br i1 %cmp.i9, label %sja1105_rgmii_cfg_pad_tx_config.exit.thread, label %sja1105_rgmii_cfg_pad_tx_config.exit

sja1105_rgmii_cfg_pad_tx_config.exit.thread:      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i5) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pad_mii_tx.i) #4
  br label %if.end68

sja1105_rgmii_cfg_pad_tx_config.exit:             ; preds = %if.end61
  %45 = ptrtoint ptr %pad_mii_tx.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 3, ptr %pad_mii_tx.i, align 8
  %d10_os.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_tx.i, i32 0, i32 4
  %46 = ptrtoint ptr %d10_os.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 3, ptr %d10_os.i, align 8
  %d32_ipud.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_tx.i, i32 0, i32 2
  %47 = ptrtoint ptr %d32_ipud.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 2, ptr %d32_ipud.i, align 8
  %d10_ipud.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_tx.i, i32 0, i32 5
  %48 = ptrtoint ptr %d10_ipud.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 2, ptr %d10_ipud.i, align 8
  %ctrl_os.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_tx.i, i32 0, i32 6
  %49 = ptrtoint ptr %ctrl_os.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 3, ptr %ctrl_os.i, align 8
  %ctrl_ipud.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_tx.i, i32 0, i32 8
  %50 = ptrtoint ptr %ctrl_ipud.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 2, ptr %ctrl_ipud.i, align 8
  %clk_os.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_tx.i, i32 0, i32 9
  %51 = ptrtoint ptr %clk_os.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 3, ptr %clk_os.i, align 8
  %clk_ih.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_tx.i, i32 0, i32 10
  %52 = ptrtoint ptr %clk_ih.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %clk_ih.i, align 8
  %clk_ipud.i = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %pad_mii_tx.i, i32 0, i32 11
  %53 = ptrtoint ptr %clk_ipud.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 2, ptr %clk_ipud.i, align 8
  call fastcc void @sja1105_cfg_pad_mii_packing(ptr noundef nonnull %packed_buf.i5, ptr noundef nonnull %pad_mii_tx.i) #4
  %54 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx.i8, align 8
  %call.i10 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %55, ptr noundef nonnull %packed_buf.i5, i32 noundef 4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i5) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %pad_mii_tx.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp63 = icmp slt i32 %call.i10, 0
  br i1 %cmp63, label %do.end67, label %sja1105_rgmii_cfg_pad_tx_config.exit.if.end68_crit_edge

sja1105_rgmii_cfg_pad_tx_config.exit.if.end68_crit_edge: ; preds = %sja1105_rgmii_cfg_pad_tx_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

do.end67:                                         ; preds = %sja1105_rgmii_cfg_pad_tx_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.30) #7
  br label %cleanup

if.end68:                                         ; preds = %sja1105_rgmii_cfg_pad_tx_config.exit.if.end68_crit_edge, %sja1105_rgmii_cfg_pad_tx_config.exit.thread
  %56 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info, align 4
  %setup_rgmii_delay = getelementptr inbounds %struct.sja1105_info, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %setup_rgmii_delay to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %setup_rgmii_delay, align 8
  %tobool70.not = icmp eq ptr %59, null
  br i1 %tobool70.not, label %if.end68.cleanup_crit_edge, label %if.end72

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %call75 = call i32 %59(ptr noundef %priv, i32 noundef %port) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end68.cleanup_crit_edge, %do.end67, %do.end60, %do.end53, %if.then40, %do.body28
  %retval.0 = phi i32 [ %rc.017, %do.end53 ], [ %call.i, %do.end60 ], [ %call.i10, %do.end67 ], [ %call75, %if.end72 ], [ 0, %if.then40 ], [ 0, %if.end68.cleanup_crit_edge ], [ 0, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_clocking_setup(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ds1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %port.010, 1
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %port.010 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @sja1105_clocking_setup_port(ptr noundef %priv, i32 noundef %port.010)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_disable_microcontroller(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %packed_buf = alloca [4 x i8], align 4
  %outclk_6_c = alloca %struct.sja1110_cgu_outclk, align 8
  %outclk_7_c = alloca %struct.sja1110_cgu_outclk, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf) #4
  %0 = ptrtoint ptr %packed_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %packed_buf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %outclk_6_c) #4
  %1 = call ptr @memcpy(ptr %outclk_6_c, ptr @__const.sja1110_disable_microcontroller.outclk_6_c, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %outclk_7_c) #4
  %2 = call ptr @memcpy(ptr %outclk_7_c, ptr @__const.sja1110_disable_microcontroller.outclk_7_c, i32 24)
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef nonnull %outclk_7_c, i32 noundef 27, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  %autoblock.i = getelementptr inbounds %struct.sja1110_cgu_outclk, ptr %outclk_7_c, i32 0, i32 1
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %autoblock.i, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  %pd.i = getelementptr inbounds %struct.sja1110_cgu_outclk, ptr %outclk_7_c, i32 0, i32 2
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %pd.i, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %call = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef 1860637, ptr noundef nonnull %packed_buf, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef nonnull %outclk_6_c, i32 noundef 27, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  %autoblock.i10 = getelementptr inbounds %struct.sja1110_cgu_outclk, ptr %outclk_6_c, i32 0, i32 1
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %autoblock.i10, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  %pd.i11 = getelementptr inbounds %struct.sja1110_cgu_outclk, ptr %outclk_6_c, i32 0, i32 2
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %pd.i11, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %call4 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef 1860636, ptr noundef nonnull %packed_buf, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outclk_7_c) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outclk_6_c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_packing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_cgu_idiv_config(ptr noundef %priv, i32 noundef %port, i1 noundef zeroext %enabled, i32 noundef %factor) unnamed_addr #0 align 64 {
entry:
  %idiv = alloca %struct.sja1105_cgu_idiv, align 8
  %packed_buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %regs1 = getelementptr inbounds %struct.sja1105_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %4 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ds, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %idiv) #4
  %8 = getelementptr inbounds %struct.sja1105_cgu_idiv, ptr %idiv, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sja1105_cgu_idiv, ptr %idiv, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sja1105_cgu_idiv, ptr %idiv, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf) #4
  %11 = ptrtoint ptr %packed_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %packed_buf, align 4
  %arrayidx = getelementptr %struct.sja1105_regs, ptr %3, i32 0, i32 20, i32 %port
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp = icmp eq i64 %13, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled.not = xor i1 %enabled, true
  br i1 %enabled, label %switch.early.test, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

switch.early.test:                                ; preds = %if.end
  %14 = zext i32 %factor to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %factor, label %do.end [
    i32 10, label %switch.early.test.if.end7_crit_edge
    i32 1, label %switch.early.test.if.end7_crit_edge26
  ]

switch.early.test.if.end7_crit_edge26:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

switch.early.test.if.end7_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

do.end:                                           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end7:                                          ; preds = %switch.early.test.if.end7_crit_edge, %switch.early.test.if.end7_crit_edge26, %if.end.if.end7_crit_edge
  %15 = ptrtoint ptr %idiv to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 10, ptr %idiv, align 8
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %8, align 8
  %sub = add i32 %factor, -1
  %17 = zext i32 %sub to i64
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %9, align 8
  %19 = zext i1 %enabled.not to i64
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %10, align 8
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef nonnull %idiv, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %8, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %9, i32 noundef 5, i32 noundef 2, i32 noundef 4, i32 noundef 0) #4
  call void @sja1105_packing(ptr noundef nonnull %packed_buf, ptr noundef %10, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx, align 8
  %call = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %22, ptr noundef nonnull %packed_buf, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %do.end ], [ %call, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %idiv) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sja1105_cgu_pll_control_packing(ptr noundef %buf, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef 28, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  %msel = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %msel, i32 noundef 23, i32 noundef 16, i32 noundef 4, i32 noundef 0) #4
  %autoblock = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %autoblock, i32 noundef 11, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  %psel = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %psel, i32 noundef 9, i32 noundef 8, i32 noundef 4, i32 noundef 0) #4
  %direct = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %direct, i32 noundef 7, i32 noundef 7, i32 noundef 4, i32 noundef 0) #4
  %fbsel = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %fbsel, i32 noundef 6, i32 noundef 6, i32 noundef 4, i32 noundef 0) #4
  %bypass = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %cmd, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %bypass, i32 noundef 1, i32 noundef 1, i32 noundef 4, i32 noundef 0) #4
  %pd = getelementptr inbounds %struct.sja1105_cgu_pll_ctrl, ptr %cmd, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %pd, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sja1105_cfg_pad_mii_packing(ptr noundef %buf, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef 28, i32 noundef 27, i32 noundef 4, i32 noundef 0) #4
  %d32_ih = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %d32_ih, i32 noundef 26, i32 noundef 26, i32 noundef 4, i32 noundef 0) #4
  %d32_ipud = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %d32_ipud, i32 noundef 25, i32 noundef 24, i32 noundef 4, i32 noundef 0) #4
  %d10_os = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %d10_os, i32 noundef 20, i32 noundef 19, i32 noundef 4, i32 noundef 0) #4
  %d10_ih = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %d10_ih, i32 noundef 18, i32 noundef 18, i32 noundef 4, i32 noundef 0) #4
  %d10_ipud = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %d10_ipud, i32 noundef 17, i32 noundef 16, i32 noundef 4, i32 noundef 0) #4
  %ctrl_os = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %ctrl_os, i32 noundef 12, i32 noundef 11, i32 noundef 4, i32 noundef 0) #4
  %ctrl_ih = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %ctrl_ih, i32 noundef 10, i32 noundef 10, i32 noundef 4, i32 noundef 0) #4
  %ctrl_ipud = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 8
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %ctrl_ipud, i32 noundef 9, i32 noundef 8, i32 noundef 4, i32 noundef 0) #4
  %clk_os = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 9
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %clk_os, i32 noundef 4, i32 noundef 3, i32 noundef 4, i32 noundef 0) #4
  %clk_ih = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 10
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %clk_ih, i32 noundef 2, i32 noundef 2, i32 noundef 4, i32 noundef 0) #4
  %clk_ipud = getelementptr inbounds %struct.sja1105_cfg_pad_mii, ptr %cmd, i32 0, i32 11
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %clk_ipud, i32 noundef 1, i32 noundef 0, i32 noundef 4, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 791, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sja1105_clocking_setup_port._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sja1105_clocking_setup_port._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 796, i32 3}
!10 = !{ptr @sja1105_clocking_setup_port._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sja1105_clocking_setup_port._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 278, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sja1105_mii_clocking_setup.__UNIQUE_ID_ddebug518, !13, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!17 = !{ptr @.str.11, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.12, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 125, i32 3}
!21 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sja1105_cgu_idiv_config._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @sja1105_cgu_idiv_config._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 736, i32 2}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @sja1105_rmii_clocking_setup.__UNIQUE_ID_ddebug521, !25, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 713, i32 3}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sja1105_cgu_rmii_pll_config._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sja1105_cgu_rmii_pll_config._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 724, i32 3}
!35 = !{ptr @sja1105_cgu_rmii_pll_config._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sja1105_cgu_rmii_pll_config._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 592, i32 2}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sja1105_rgmii_clocking_setup.__UNIQUE_ID_ddebug519, !38, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 608, i32 3}
!43 = !{ptr @sja1105_rgmii_clocking_setup.__UNIQUE_ID_ddebug520, !42, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 615, i32 3}
!46 = !{ptr @sja1105_rgmii_clocking_setup._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sja1105_rgmii_clocking_setup._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 620, i32 3}
!50 = !{ptr @sja1105_rgmii_clocking_setup._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sja1105_rgmii_clocking_setup._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/sja1105/sja1105_clocking.c", i32 625, i32 3}
!54 = !{ptr @sja1105_rgmii_clocking_setup._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sja1105_rgmii_clocking_setup._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148822692, i64 2148822697, i64 2148822710, i64 2148822754, i64 2148822788, i64 2148822809}
