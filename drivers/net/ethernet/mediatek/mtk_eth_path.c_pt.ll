; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mediatek/mtk_eth_path.c_pt.bc'
source_filename = "../drivers/net/ethernet/mediatek/mtk_eth_path.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_eth_muxc = type { ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_eth = type { ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, [116 x i8], %struct.net_device, [2 x ptr], [2 x ptr], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, i8, %struct.refcount_struct, %struct.mtk_tx_ring, [4 x %struct.mtk_rx_ring], %struct.mtk_rx_ring, %struct.napi_struct, %struct.napi_struct, ptr, i32, ptr, [18 x ptr], ptr, %struct.work_struct, i32, ptr, %struct.spinlock, i32, i32, i32, %struct.dim, i32, i32, i32, %struct.dim, i32, i32, i32, i32, %struct.mtk_ppe, %struct.rhashtable, [100 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mtk_tx_ring = type { ptr, ptr, i32, ptr, ptr, i32, i16, %struct.atomic_t, i32, ptr, i32, i32 }
%struct.mtk_rx_ring = type { ptr, ptr, i32, i16, i16, i16, i8, i16, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mtk_ppe = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mtk_soc_data = type { i32, i32, i32, i8, i8, i64 }

@mtk_eth_mux_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"path %s isn't support on the SoC\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_eth_mux_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/mediatek/mtk_eth_path.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_eth_mux_setup._entry_ptr = internal global ptr @mtk_eth_mux_setup._entry, section ".printk_index", align 4
@mtk_eth_muxc = internal constant { [5 x %struct.mtk_eth_muxc], [36 x i8] } { [5 x %struct.mtk_eth_muxc] [%struct.mtk_eth_muxc { ptr @.str.15, i32 8192, ptr @set_mux_gdm1_to_gmac1_esw }, %struct.mtk_eth_muxc { ptr @.str.16, i32 16384, ptr @set_mux_gmac2_gmac0_to_gephy }, %struct.mtk_eth_muxc { ptr @.str.17, i32 32768, ptr @set_mux_u3_gmac2_to_qphy }, %struct.mtk_eth_muxc { ptr @.str.18, i32 65536, ptr @set_mux_gmac1_gmac2_to_sgmii_rgmii }, %struct.mtk_eth_muxc { ptr @.str.19, i32 131072, ptr @set_mux_gmac12_to_gephy_sgmii }], [36 x i8] zeroinitializer }, align 32
@mtk_eth_mux_setup.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk_eth\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mux %s isn't present on the SoC\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gmac1_rgmii\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gmac1_trgmii\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gmac1_sgmii\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gmac2_rgmii\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gmac2_sgmii\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gmac2_gephy\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gdm1_esw\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown path\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mux_gdm1_to_gmac1_esw\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mux_gmac2_gmac0_to_gephy\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mux_u3_gmac2_to_qphy\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mux_gmac1_gmac2_to_sgmii_rgmii\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mux_gmac12_to_gephy_sgmii\00", [38 x i8] zeroinitializer }, align 32
@set_mux_gdm1_to_gmac1_esw.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set_mux_gdm1_to_gmac1_esw\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"path %s in %s updated = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@set_mux_gmac2_gmac0_to_gephy.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.21, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"set_mux_gmac2_gmac0_to_gephy\00", [35 x i8] zeroinitializer }, align 32
@set_mux_u3_gmac2_to_qphy.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.23, ptr @.str.2, ptr @.str.21, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_mux_u3_gmac2_to_qphy\00", [39 x i8] zeroinitializer }, align 32
@set_mux_gmac1_gmac2_to_sgmii_rgmii.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.24, ptr @.str.2, ptr @.str.21, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set_mux_gmac1_gmac2_to_sgmii_rgmii\00", [61 x i8] zeroinitializer }, align 32
@set_mux_gmac12_to_gephy_sgmii.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.21, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set_mux_gmac12_to_gephy_sgmii\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1048576, i64 16777216]
@__sancov_gen_cov_switch_values.27 = internal global [9 x i64] [i64 7, i64 32, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216]
@__sancov_gen_cov_switch_values.28 = internal global [9 x i64] [i64 7, i64 32, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216]
@__sancov_gen_cov_switch_values.29 = internal global [9 x i64] [i64 7, i64 32, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 262144, i64 1048576, i64 2097152, i64 4194304]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 32, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 1048576, i64 4194304, i64 8388608]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 32, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216]
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 218, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"mtk_eth_muxc\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 189, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 233, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 25, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 27, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 29, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 31, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 33, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 35, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 37, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 39, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 191, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 195, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 199, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 203, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 207, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 68, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 91, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 114, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 152, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [48 x i8] c"../drivers/net/ethernet/mediatek/mtk_eth_path.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 183, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @mtk_eth_mux_setup._entry, ptr @mtk_eth_mux_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mtk_eth_muxc, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eth_mux_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_eth_muxc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_gmac_sgmii_path_setup(ptr noundef %eth, i32 noundef %mac_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mac_id)
  %cmp = icmp eq i32 %mac_id, 0
  %cond = select i1 %cmp, i32 1048576, i32 4194304
  %call = tail call fastcc i32 @mtk_eth_mux_setup(ptr noundef %eth, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_eth_mux_setup(ptr noundef %eth, i32 noundef %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 30
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 64
  %caps = getelementptr inbounds %struct.mtk_soc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, %path
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %path)
  %cmp = icmp eq i32 %and, %path
  br i1 %cmp, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eth, align 128
  %6 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %path, label %sw.default.i [
    i32 262144, label %do.end.mtk_eth_path_name.exit_crit_edge
    i32 524288, label %sw.bb1.i
    i32 1048576, label %sw.bb2.i
    i32 2097152, label %sw.bb3.i
    i32 4194304, label %sw.bb4.i
    i32 8388608, label %sw.bb5.i
    i32 16777216, label %sw.bb6.i
  ]

do.end.mtk_eth_path_name.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb3.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb4.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb5.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb6.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

mtk_eth_path_name.exit:                           ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end.mtk_eth_path_name.exit_crit_edge
  %retval.0.i46 = phi ptr [ @.str.14, %sw.default.i ], [ @.str.13, %sw.bb6.i ], [ @.str.12, %sw.bb5.i ], [ @.str.11, %sw.bb4.i ], [ @.str.10, %sw.bb3.i ], [ @.str.9, %sw.bb2.i ], [ @.str.8, %sw.bb1.i ], [ @.str.7, %do.end.mtk_eth_path_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %retval.0.i46) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4.not = icmp eq i32 %and3, 0
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soc, align 64
  %caps9 = getelementptr inbounds %struct.mtk_soc_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %caps9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps9, align 4
  %arrayidx = getelementptr [5 x %struct.mtk_eth_muxc], ptr @mtk_eth_muxc, i32 0, i32 %i.048
  %cap_bit = getelementptr [5 x %struct.mtk_eth_muxc], ptr @mtk_eth_muxc, i32 0, i32 %i.048, i32 1
  %11 = ptrtoint ptr %cap_bit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cap_bit, align 4
  %and10 = and i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %and10, i32 %12)
  %cmp13 = icmp eq i32 %and10, %12
  br i1 %cmp13, label %if.then14, label %do.body19

if.then14:                                        ; preds = %for.body
  %set_path = getelementptr [5 x %struct.mtk_eth_muxc], ptr @mtk_eth_muxc, i32 0, i32 %i.048, i32 2
  %13 = ptrtoint ptr %set_path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_path, align 4
  %call16 = tail call i32 %14(ptr noundef %eth, i32 noundef %path) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.then14.for.inc_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.body19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_eth_mux_setup.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_eth_mux_setup, %if.then24)) #4
          to label %for.inc [label %if.then24], !srcloc !65

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eth, align 128
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_eth_mux_setup.__UNIQUE_ID_ddebug407, ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %18) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %do.body19, %if.then14.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mtk_eth_path_name.exit
  %retval.0 = phi i32 [ -22, %mtk_eth_path_name.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call16, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_gmac_gephy_path_setup(ptr noundef %eth, i32 noundef %mac_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mac_id)
  %cmp = icmp eq i32 %mac_id, 1
  br i1 %cmp, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %entry
  %soc.i = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 30
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 64
  %caps.i = getelementptr inbounds %struct.mtk_soc_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eth, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end2
  %and3.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.not.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc.i, align 64
  %caps9.i = getelementptr inbounds %struct.mtk_soc_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %caps9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps9.i, align 4
  %arrayidx.i = getelementptr [5 x %struct.mtk_eth_muxc], ptr @mtk_eth_muxc, i32 0, i32 %i.048.i
  %cap_bit.i = getelementptr [5 x %struct.mtk_eth_muxc], ptr @mtk_eth_muxc, i32 0, i32 %i.048.i, i32 1
  %10 = ptrtoint ptr %cap_bit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap_bit.i, align 4
  %and10.i = and i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %and10.i, i32 %11)
  %cmp13.i = icmp eq i32 %and10.i, %11
  br i1 %cmp13.i, label %if.then14.i, label %do.body19.i

if.then14.i:                                      ; preds = %for.body.i
  %set_path.i = getelementptr [5 x %struct.mtk_eth_muxc], ptr @mtk_eth_muxc, i32 0, i32 %i.048.i, i32 2
  %12 = ptrtoint ptr %set_path.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_path.i, align 4
  %call16.i = tail call i32 %13(ptr noundef %eth, i32 noundef 8388608) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.then14.i.for.inc.i_crit_edge, label %if.then14.i.cleanup_crit_edge

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14.i.for.inc.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

do.body19.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_eth_mux_setup.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_gmac_gephy_path_setup, %if.then24.i)) #4
          to label %for.inc.i [label %if.then24.i], !srcloc !65

if.then24.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eth, align 128
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_eth_mux_setup.__UNIQUE_ID_ddebug407, ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef %17) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %do.body19.i, %if.then14.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.then14.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call16.i, %if.then14.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_gmac_rgmii_path_setup(ptr noundef %eth, i32 noundef %mac_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mac_id)
  %cmp = icmp eq i32 %mac_id, 0
  %cond = select i1 %cmp, i32 262144, i32 2097152
  %call = tail call fastcc i32 @mtk_eth_mux_setup(ptr noundef %eth, i32 noundef %cond)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mux_gdm1_to_gmac1_esw(ptr noundef %eth, i32 noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %path, label %entry.do.body_crit_edge [
    i32 1048576, label %entry.if.then_crit_edge
    i32 16777216, label %sw.bb1
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %sw.bb1, %entry.if.then_crit_edge
  %set.0.ph = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %sw.bb1 ]
  %call = tail call i32 @mtk_r32(ptr noundef %eth, i32 noundef 65548) #4
  %and = and i32 %call, -2
  %or = or i32 %and, %set.0.ph
  tail call void @mtk_w32(ptr noundef %eth, i32 noundef %or, i32 noundef 65548) #4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %updated.0.off021 = phi i32 [ 1, %if.then ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mux_gdm1_to_gmac1_esw.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mux_gdm1_to_gmac1_esw, %if.then6)) #4
          to label %do.end [label %if.then6], !srcloc !65

if.then6:                                         ; preds = %do.body
  %1 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eth, align 128
  %3 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %path, label %sw.default.i [
    i32 262144, label %if.then6.mtk_eth_path_name.exit_crit_edge
    i32 524288, label %sw.bb1.i
    i32 1048576, label %sw.bb2.i
    i32 2097152, label %sw.bb3.i
    i32 4194304, label %sw.bb4.i
    i32 8388608, label %sw.bb5.i
    i32 16777216, label %sw.bb6.i
  ]

if.then6.mtk_eth_path_name.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb1.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb2.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb3.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb4.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb5.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb6.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.default.i:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

mtk_eth_path_name.exit:                           ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then6.mtk_eth_path_name.exit_crit_edge
  %retval.0.i15 = phi ptr [ @.str.14, %sw.default.i ], [ @.str.13, %sw.bb6.i ], [ @.str.12, %sw.bb5.i ], [ @.str.11, %sw.bb4.i ], [ @.str.10, %sw.bb3.i ], [ @.str.9, %sw.bb2.i ], [ @.str.8, %sw.bb1.i ], [ @.str.7, %if.then6.mtk_eth_path_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_mux_gdm1_to_gmac1_esw.__UNIQUE_ID_ddebug402, ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef nonnull %retval.0.i15, ptr noundef nonnull @.str.20, i32 noundef %updated.0.off021) #4
  br label %do.end

do.end:                                           ; preds = %mtk_eth_path_name.exit, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mux_gmac2_gmac0_to_gephy(ptr nocapture noundef readonly %eth, i32 noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %path)
  %cond = icmp eq i32 %path, 8388608
  br i1 %cond, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %infra = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 13
  %0 = ptrtoint ptr %infra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %infra, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1804, i32 noundef 2, i32 noundef -3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mux_gmac2_gmac0_to_gephy.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mux_gmac2_gmac0_to_gephy, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !65

if.then5:                                         ; preds = %do.body
  %2 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth, align 128
  %4 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %path, label %sw.default.i [
    i32 262144, label %if.then5.mtk_eth_path_name.exit_crit_edge
    i32 524288, label %sw.bb1.i
    i32 1048576, label %sw.bb2.i
    i32 2097152, label %sw.bb3.i
    i32 4194304, label %sw.bb4.i
    i32 8388608, label %sw.bb5.i
    i32 16777216, label %sw.bb6.i
  ]

if.then5.mtk_eth_path_name.exit_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb2.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb3.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb4.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb5.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.default.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

mtk_eth_path_name.exit:                           ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then5.mtk_eth_path_name.exit_crit_edge
  %retval.0.i12 = phi ptr [ @.str.14, %sw.default.i ], [ @.str.13, %sw.bb6.i ], [ @.str.12, %sw.bb5.i ], [ @.str.11, %sw.bb4.i ], [ @.str.10, %sw.bb3.i ], [ @.str.9, %sw.bb2.i ], [ @.str.8, %sw.bb1.i ], [ @.str.7, %if.then5.mtk_eth_path_name.exit_crit_edge ]
  %conv = zext i1 %cond to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_mux_gmac2_gmac0_to_gephy.__UNIQUE_ID_ddebug403, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull %retval.0.i12, ptr noundef nonnull @.str.22, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %mtk_eth_path_name.exit, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mux_u3_gmac2_to_qphy(ptr nocapture noundef readonly %eth, i32 noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %path)
  %cond = icmp eq i32 %path, 4194304
  br i1 %cond, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %infra = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 13
  %0 = ptrtoint ptr %infra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %infra, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1804, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mux_u3_gmac2_to_qphy.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mux_u3_gmac2_to_qphy, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !65

if.then5:                                         ; preds = %do.body
  %2 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eth, align 128
  %4 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %path, label %sw.default.i [
    i32 262144, label %if.then5.mtk_eth_path_name.exit_crit_edge
    i32 524288, label %sw.bb1.i
    i32 1048576, label %sw.bb2.i
    i32 2097152, label %sw.bb3.i
    i32 4194304, label %sw.bb4.i
    i32 8388608, label %sw.bb5.i
    i32 16777216, label %sw.bb6.i
  ]

if.then5.mtk_eth_path_name.exit_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb2.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb3.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb4.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb5.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.default.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

mtk_eth_path_name.exit:                           ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then5.mtk_eth_path_name.exit_crit_edge
  %retval.0.i12 = phi ptr [ @.str.14, %sw.default.i ], [ @.str.13, %sw.bb6.i ], [ @.str.12, %sw.bb5.i ], [ @.str.11, %sw.bb4.i ], [ @.str.10, %sw.bb3.i ], [ @.str.9, %sw.bb2.i ], [ @.str.8, %sw.bb1.i ], [ @.str.7, %if.then5.mtk_eth_path_name.exit_crit_edge ]
  %conv = zext i1 %cond to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_mux_u3_gmac2_to_qphy.__UNIQUE_ID_ddebug404, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull %retval.0.i12, ptr noundef nonnull @.str.23, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %mtk_eth_path_name.exit, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mux_gmac1_gmac2_to_sgmii_rgmii(ptr nocapture noundef readonly %eth, i32 noundef %path) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %1 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %path, label %entry.do.body_crit_edge [
    i32 1048576, label %sw.bb
    i32 4194304, label %sw.bb1
    i32 262144, label %entry.sw.bb2_crit_edge
    i32 2097152, label %entry.sw.bb2_crit_edge30
  ]

entry.sw.bb2_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %val, align 4
  br label %if.then7

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 768, ptr %val, align 4
  br label %if.then7

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge30
  %ethsys = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 12
  %4 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethsys, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 20, ptr noundef nonnull %val) #4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, 768
  store i32 %and, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262145, i32 %path)
  %cmp = icmp eq i32 %path, 262145
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and)
  %cmp3 = icmp eq i32 %and, 512
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %sw.bb2.do.body_crit_edge

sw.bb2.do.body_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  br label %if.then7

if.then7:                                         ; preds = %if.then, %sw.bb1, %sw.bb
  %ethsys8 = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 12
  %9 = ptrtoint ptr %ethsys8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ethsys8, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 20, i32 noundef 768, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %do.body

do.body:                                          ; preds = %if.then7, %sw.bb2.do.body_crit_edge, %entry.do.body_crit_edge
  %updated.0.off027 = phi i32 [ 1, %if.then7 ], [ 0, %sw.bb2.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mux_gmac1_gmac2_to_sgmii_rgmii.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mux_gmac1_gmac2_to_sgmii_rgmii, %if.then15)) #4
          to label %do.end [label %if.then15], !srcloc !65

if.then15:                                        ; preds = %do.body
  %13 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eth, align 128
  %15 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %path, label %sw.default.i [
    i32 262144, label %if.then15.mtk_eth_path_name.exit_crit_edge
    i32 524288, label %sw.bb1.i
    i32 1048576, label %sw.bb2.i
    i32 2097152, label %sw.bb3.i
    i32 4194304, label %sw.bb4.i
    i32 8388608, label %sw.bb5.i
    i32 16777216, label %sw.bb6.i
  ]

if.then15.mtk_eth_path_name.exit_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb1.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb2.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb3.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb4.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb5.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb6.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.default.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

mtk_eth_path_name.exit:                           ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then15.mtk_eth_path_name.exit_crit_edge
  %retval.0.i25 = phi ptr [ @.str.14, %sw.default.i ], [ @.str.13, %sw.bb6.i ], [ @.str.12, %sw.bb5.i ], [ @.str.11, %sw.bb4.i ], [ @.str.10, %sw.bb3.i ], [ @.str.9, %sw.bb2.i ], [ @.str.8, %sw.bb1.i ], [ @.str.7, %if.then15.mtk_eth_path_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_mux_gmac1_gmac2_to_sgmii_rgmii.__UNIQUE_ID_ddebug405, ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef nonnull %retval.0.i25, ptr noundef nonnull @.str.24, i32 noundef %updated.0.off027) #4
  br label %do.end

do.end:                                           ; preds = %mtk_eth_path_name.exit, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mux_gmac12_to_gephy_sgmii(ptr nocapture noundef readonly %eth, i32 noundef %path) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %ethsys = getelementptr inbounds %struct.mtk_eth, ptr %eth, i32 0, i32 12
  %1 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ethsys, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %val) #4
  %3 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %path, label %entry.do.body_crit_edge [
    i32 1048576, label %sw.bb
    i32 8388608, label %sw.bb1
    i32 4194304, label %sw.bb2
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %or = or i32 %5, 512
  store i32 %or, ptr %val, align 4
  br label %if.then

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, -257
  store i32 %and, ptr %val, align 4
  br label %if.then

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %or3 = or i32 %9, 256
  store i32 %or3, ptr %val, align 4
  br label %if.then

if.then:                                          ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %10 = ptrtoint ptr %ethsys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ethsys, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 20, i32 noundef 768, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %updated.0.off020 = phi i32 [ 1, %if.then ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mux_gmac12_to_gephy_sgmii.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mux_gmac12_to_gephy_sgmii, %if.then10)) #4
          to label %do.end [label %if.then10], !srcloc !65

if.then10:                                        ; preds = %do.body
  %14 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eth, align 128
  %16 = zext i32 %path to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %path, label %sw.default.i [
    i32 262144, label %if.then10.mtk_eth_path_name.exit_crit_edge
    i32 524288, label %sw.bb1.i
    i32 1048576, label %sw.bb2.i
    i32 2097152, label %sw.bb3.i
    i32 4194304, label %sw.bb4.i
    i32 8388608, label %sw.bb5.i
    i32 16777216, label %sw.bb6.i
  ]

if.then10.mtk_eth_path_name.exit_crit_edge:       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb1.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb2.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb3.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb4.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb5.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.bb6.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

sw.default.i:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_eth_path_name.exit

mtk_eth_path_name.exit:                           ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then10.mtk_eth_path_name.exit_crit_edge
  %retval.0.i18 = phi ptr [ @.str.14, %sw.default.i ], [ @.str.13, %sw.bb6.i ], [ @.str.12, %sw.bb5.i ], [ @.str.11, %sw.bb4.i ], [ @.str.10, %sw.bb3.i ], [ @.str.9, %sw.bb2.i ], [ @.str.8, %sw.bb1.i ], [ @.str.7, %if.then10.mtk_eth_path_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_mux_gmac12_to_gephy_sgmii.__UNIQUE_ID_ddebug406, ptr noundef %15, ptr noundef nonnull @.str.21, ptr noundef nonnull %retval.0.i18, ptr noundef nonnull @.str.25, i32 noundef %updated.0.off020) #4
  br label %do.end

do.end:                                           ; preds = %mtk_eth_path_name.exit, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_r32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_w32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 218, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_eth_mux_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_eth_mux_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 233, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mtk_eth_mux_setup.__UNIQUE_ID_ddebug407, !9, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 25, i32 10}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 27, i32 10}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 29, i32 10}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 31, i32 10}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 33, i32 10}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 35, i32 10}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 37, i32 10}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 39, i32 10}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 191, i32 11}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 195, i32 11}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 199, i32 11}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 203, i32 11}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 207, i32 11}
!38 = !{ptr @mtk_eth_muxc, !39, !"mtk_eth_muxc", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 189, i32 34}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 68, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @set_mux_gdm1_to_gmac1_esw.__UNIQUE_ID_ddebug402, !41, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 91, i32 2}
!46 = !{ptr @set_mux_gmac2_gmac0_to_gephy.__UNIQUE_ID_ddebug403, !45, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 114, i32 2}
!49 = !{ptr @set_mux_u3_gmac2_to_qphy.__UNIQUE_ID_ddebug404, !48, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 152, i32 2}
!52 = !{ptr @set_mux_gmac1_gmac2_to_sgmii_rgmii.__UNIQUE_ID_ddebug405, !51, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mediatek/mtk_eth_path.c", i32 183, i32 2}
!55 = !{ptr @set_mux_gmac12_to_gephy_sgmii.__UNIQUE_ID_ddebug406, !54, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148366144, i64 2148366149, i64 2148366162, i64 2148366206, i64 2148366240, i64 2148366261}
