; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [112 x i8], [8 x %struct.stmmac_rx_queue], i32, [124 x i8], [8 x %struct.stmmac_tx_queue], i32, [124 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [84 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr }
%struct.stmmac_rx_queue = type { i32, i32, [120 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [108 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.122, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.122 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, [64 x i8], ptr, ptr, ptr, %union.anon.123, ptr, ptr, i32, i32, i32, i32, i32, i32, [80 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.123 = type { ptr }
%struct.stmmac_channel = type { %struct.napi_struct, [32 x i8], %struct.napi_struct, [32 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [108 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.118, %struct.anon.119 }
%struct.anon.118 = type { i32, i32, i32 }
%struct.anon.119 = type { i32, i32, i32, i32 }
%struct.stmmac_hwtimestamp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_est = type { %struct.mutex, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [1024 x i32], [1024 x i32], i32 }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_request = type { i32, %union.anon.125 }
%union.anon.125 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.126, %struct.ptp_clock_time, i32, i32, %union.anon.127 }
%union.anon.126 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.127 = type { %struct.ptp_clock_time }

@stmmac_ptp_clock_ops = internal global { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"stmmac ptp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 62500000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @stmmac_adjust_freq, ptr null, ptr @stmmac_adjust_time, ptr @stmmac_get_time, ptr null, ptr @stmmac_getcrosststamp, ptr @stmmac_set_time, ptr @stmmac_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@stmmac_ptp_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->ptp_lock\00", [16 x i8] zeroinitializer }, align 32
@stmmac_ptp_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->aux_ts_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registered PTP clock\0A\00", [42 x i8] zeroinitializer }, align 32
@stmmac_ptp_unregister.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stmmac\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stmmac_ptp_unregister\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Removed PTP HW clock successfully on %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to configure EST\0A\00", [39 x i8] zeroinitializer }, align 32
@stmmac_enable.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stmmac_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Auxiliary Snapshot %d enabled.\0A\00", [32 x i8] zeroinitializer }, align 32
@stmmac_enable.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.7, ptr @.str.12, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Auxiliary Snapshot %d disabled.\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"stmmac_ptp_clock_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 273, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 317, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 318, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 324, i32 25 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 327, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 341, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 118, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 213, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [52 x i8] c"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 222, i32 4 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @stmmac_ptp_clock_ops, ptr @stmmac_ptp_register.__key, ptr @.str, ptr @stmmac_ptp_register.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_ptp_clock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_ptp_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmmac_ptp_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_ptp_register(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pps_out_num = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 25
  %0 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pps_out_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp60 = icmp eq i32 %1, 0
  br i1 %cmp60, label %entry.for.end_crit_edge, label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 98, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %arrayidx, align 8
  %3 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pps_out_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.1:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 98, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx.1, align 8
  %6 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pps_out_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.1 = icmp ult i32 %7, 3
  br i1 %cmp.1, label %if.end.1.for.end_crit_edge, label %if.end.2

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.2:                                         ; preds = %if.end.1
  %arrayidx.2 = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 98, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx.2, align 8
  %9 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pps_out_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp.2 = icmp ult i32 %10, 4
  br i1 %cmp.2, label %if.end.2.for.end_crit_edge, label %if.end.3

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.3 = getelementptr %struct.stmmac_priv, ptr %priv, i32 0, i32 98, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx.3, align 8
  br label %for.end

for.end:                                          ; preds = %if.end.3, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 36
  %12 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plat, align 128
  %ptp_max_adj = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 53
  %14 = ptrtoint ptr %ptp_max_adj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptp_max_adj, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %for.end.if.end5_crit_edge, label %if.then2

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  store i32 %15, ptr getelementptr inbounds (%struct.ptp_clock_info, ptr @stmmac_ptp_clock_ops, i32 0, i32 2), align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %for.end.if.end5_crit_edge
  %cdc_error_adj = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 54
  %16 = ptrtoint ptr %cdc_error_adj to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cdc_error_adj, align 4
  %17 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat, align 128
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 58
  %19 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not = icmp eq i32 %20, 0
  br i1 %tobool8.not, label %if.end5.if.end16_crit_edge, label %land.lhs.true

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end5
  %clk_ptp_rate = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 50
  %21 = ptrtoint ptr %clk_ptp_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk_ptp_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not = icmp eq i32 %22, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end16_crit_edge, label %if.then11

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 2000000000, %22
  %cdc_error_adj15 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 54
  %23 = ptrtoint ptr %cdc_error_adj15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %cdc_error_adj15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %land.lhs.true.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %24 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pps_out_num, align 4
  store i32 %25, ptr getelementptr inbounds (%struct.ptp_clock_info, ptr @stmmac_ptp_clock_ops, i32 0, i32 5), align 4
  %aux_snapshot_n = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 37, i32 46
  %26 = ptrtoint ptr %aux_snapshot_n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aux_snapshot_n, align 4
  store i32 %27, ptr getelementptr inbounds (%struct.ptp_clock_info, ptr @stmmac_ptp_clock_ops, i32 0, i32 4), align 4
  %ptp_lock = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 65
  tail call void @__raw_spin_lock_init(ptr noundef %ptp_lock, ptr noundef nonnull @.str, ptr noundef nonnull @stmmac_ptp_register.__key, i16 noundef signext 3) #5
  %aux_ts_lock = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 66
  tail call void @__mutex_init(ptr noundef %aux_ts_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @stmmac_ptp_register.__key.1) #5
  %ptp_clock_ops = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 58
  %28 = call ptr @memcpy(ptr %ptp_clock_ops, ptr @stmmac_ptp_clock_ops, i32 108)
  %device = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 15
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 8
  %call24 = tail call ptr @ptp_clock_register(ptr noundef %ptp_clock_ops, ptr noundef %30) #5
  %ptp_clock = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 57
  %31 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call24, ptr %ptp_clock, align 16
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.3) #8
  %34 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ptp_clock, align 16
  br label %if.end34

if.else:                                          ; preds = %if.end16
  %tobool30.not = icmp eq ptr %call24, null
  br i1 %tobool30.not, label %if.else.if.end34_crit_edge, label %if.then31

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %35 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.4) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.else.if.end34_crit_edge, %if.then27
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_ptp_unregister(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 57
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptp_clock, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmmac_ptp_unregister.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmmac_ptp_unregister, %if.then7)) #5
          to label %if.end8 [label %if.then7], !srcloc !36

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stmmac_ptp_unregister.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.8, ptr noundef %4) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then, %entry.if.end8_crit_edge
  %aux_ts_lock = getelementptr inbounds %struct.stmmac_priv, ptr %priv, i32 0, i32 66
  tail call void @mutex_destroy(ptr noundef %aux_ts_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_adjust_freq(ptr noundef %ptp, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp = icmp slt i32 %ppb, 0
  %0 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %default_addend = getelementptr i8, ptr %ptp, i32 108
  %1 = ptrtoint ptr %default_addend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %default_addend, align 128
  %conv = zext i32 %2 to i64
  %conv1 = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, %conv1
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #9, !srcloc !37
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !38
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 29
  %conv2 = trunc i64 %div1581.i.i to i32
  %5 = sub i32 0, %conv2
  %cond.p = select i1 %cmp, i32 %5, i32 %conv2
  %cond = add i32 %cond.p, %2
  %ptp_lock = getelementptr i8, ptr %ptp, i32 132
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #5
  %hw = getelementptr i8, ptr %ptp, i32 -15592
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %ptp12 = getelementptr inbounds %struct.mac_device_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ptp12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp12, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %config_addend = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %config_addend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config_addend, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %land.lhs.true.if.end22_crit_edge, label %if.then17

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %ptpaddr = getelementptr i8, ptr %ptp, i32 272
  %12 = ptrtoint ptr %ptpaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptpaddr, align 4
  %call21 = tail call i32 %11(ptr noundef %13, i32 noundef %cond) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_adjust_time(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %current_time = alloca %struct.timespec64, align 8
  %tmp84 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr i8, ptr %ptp, i32 -660
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %has_gmac4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %has_gmac4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_gmac4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %has_xgmac = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %has_xgmac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_xgmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2 = icmp ne i32 %5, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %6 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %delta.lobit = lshr i64 %delta, 63
  %7 = trunc i64 %delta.lobit to i32
  %8 = tail call i64 @llvm.abs.i64(i64 %delta, i1 false)
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %8, i32 0) #9, !srcloc !37
  %asmresult.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %8, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !38
  %asmresult10.i.i = extractvalue { i64, i32 } %10, 0
  %conv14.i = trunc i64 %8 to i32
  %div1581.i = lshr i64 %asmresult10.i.i, 29
  %conv159.i = trunc i64 %div1581.i to i32
  %mul160.neg.i = mul i32 %conv159.i, -1000000000
  %sub161.i = add i32 %mul160.neg.i, %conv14.i
  %est = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %est to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %est, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %lor.end.do.body33_crit_edge, label %land.lhs.true

lor.end.do.body33_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

land.lhs.true:                                    ; preds = %lor.end
  %enable = getelementptr inbounds %struct.stmmac_est, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %land.lhs.true.do.body33_crit_edge, label %if.then8

land.lhs.true.do.body33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

if.then8:                                         ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef nonnull %12, i32 noundef 0) #5
  %15 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %plat, align 128
  %est12 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %est12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %est12, align 4
  %enable13 = getelementptr inbounds %struct.stmmac_est, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %enable13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %enable13, align 4
  %hw = getelementptr i8, ptr %ptp, i32 -15592
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %if.then8.if.end27_crit_edge, label %land.lhs.true15

if.then8.if.end27_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

land.lhs.true15:                                  ; preds = %if.then8
  %est_configure = getelementptr inbounds %struct.stmmac_ops, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %est_configure to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %est_configure, align 4
  %tobool18.not = icmp eq ptr %25, null
  br i1 %tobool18.not, label %land.lhs.true15.if.end27_crit_edge, label %if.then19

land.lhs.true15.if.end27_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr = getelementptr i8, ptr %ptp, i32 -15604
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 32
  %28 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %plat, align 128
  %est24 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %est24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %est24, align 4
  %clk_ptp_rate = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %29, i32 0, i32 50
  %32 = ptrtoint ptr %clk_ptp_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clk_ptp_rate, align 4
  %call26 = tail call i32 %25(ptr noundef %27, ptr noundef %31, i32 noundef %33) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %land.lhs.true15.if.end27_crit_edge, %if.then8.if.end27_crit_edge
  %34 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plat, align 128
  %est30 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %est30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %est30, align 4
  tail call void @mutex_unlock(ptr noundef %37) #5
  br label %do.body33

do.body33:                                        ; preds = %if.end27, %land.lhs.true.do.body33_crit_edge, %lor.end.do.body33_crit_edge
  %est_rst.0.off0 = phi i1 [ true, %if.end27 ], [ false, %land.lhs.true.do.body33_crit_edge ], [ false, %lor.end.do.body33_crit_edge ]
  %ptp_lock = getelementptr i8, ptr %ptp, i32 132
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #5
  %hw42 = getelementptr i8, ptr %ptp, i32 -15592
  %38 = ptrtoint ptr %hw42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw42, align 4
  %ptp43 = getelementptr inbounds %struct.mac_device_info, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ptp43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptp43, align 4
  %tobool44.not = icmp eq ptr %41, null
  br i1 %tobool44.not, label %do.body33.if.end56_crit_edge, label %land.lhs.true45

do.body33.if.end56_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

land.lhs.true45:                                  ; preds = %do.body33
  %adjust_systime = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %adjust_systime to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adjust_systime, align 4
  %tobool48.not = icmp eq ptr %43, null
  br i1 %tobool48.not, label %land.lhs.true45.if.end56_crit_edge, label %if.then49

land.lhs.true45.if.end56_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then49:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  %ptpaddr = getelementptr i8, ptr %ptp, i32 272
  %44 = ptrtoint ptr %ptpaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptpaddr, align 4
  %call55 = tail call i32 %43(ptr noundef %45, i32 noundef %conv159.i, i32 noundef %sub161.i, i32 noundef %7, i32 noundef %6) #5
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %land.lhs.true45.if.end56_crit_edge, %do.body33.if.end56_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call38) #5
  br i1 %est_rst.0.off0, label %if.then60, label %if.end56.if.end125_crit_edge

if.end56.if.end125_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

if.then60:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %current_time) #5
  %46 = call ptr @memset(ptr %current_time, i32 255, i32 16)
  %47 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %plat, align 128
  %est62 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %est62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %est62, align 4
  tail call void @mutex_lock_nested(ptr noundef %50, i32 noundef 0) #5
  %gettime64 = getelementptr inbounds %struct.ptp_clock_info, ptr %ptp, i32 0, i32 13
  %51 = ptrtoint ptr %gettime64 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gettime64, align 4
  %call65 = call i32 %52(ptr noundef %ptp, ptr noundef nonnull %current_time) #5
  %53 = ptrtoint ptr %current_time to i32
  call void @__asan_load8_noabort(i32 %53)
  %.fca.0.load = load i64, ptr %current_time, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %current_time, i32 0, i32 1
  %54 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %54)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load)
  %cmp.i.i = icmp sgt i64 %.fca.0.load, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %mul.i.i = mul i64 %.fca.0.load, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !39
  %55 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %plat, align 128
  %est68 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %est68 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %est68, align 4
  %btr_reserve = getelementptr inbounds %struct.stmmac_est, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %btr_reserve to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %btr_reserve, align 4
  %time.sroa.7.8.insert.ext = zext i32 %60 to i64
  %arrayidx72 = getelementptr %struct.stmmac_est, ptr %58, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx72, align 4
  %conv73 = zext i32 %62 to i64
  %mul.i.i178 = mul nuw nsw i64 %conv73, 1000000000
  %add.i.i179 = add nuw nsw i64 %mul.i.i178, %time.sroa.7.8.insert.ext
  %ctr = getelementptr inbounds %struct.stmmac_est, ptr %58, i32 0, i32 5
  %arrayidx77 = getelementptr %struct.stmmac_est, ptr %58, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx77, align 4
  %conv78 = zext i32 %64 to i64
  %mul = mul nuw nsw i64 %conv78, 1000000000
  %65 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctr, align 4
  %conv83 = zext i32 %66 to i64
  %add = add nuw nsw i64 %mul, %conv83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp84) #5
  call void @stmmac_calc_tas_basetime(ptr nonnull sret(%struct.timespec64) align 8 %tmp84, i64 noundef %add.i.i179, i64 noundef %retval.0.i.i, i64 noundef %add) #5
  %67 = ptrtoint ptr %tmp84 to i32
  call void @__asan_load8_noabort(i32 %67)
  %time.sroa.0.0.copyload126 = load i64, ptr %tmp84, align 8
  %time.sroa.7.0.tmp84.sroa_idx = getelementptr inbounds i8, ptr %tmp84, i32 8
  %68 = ptrtoint ptr %time.sroa.7.0.tmp84.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %68)
  %time.sroa.7.0.copyload127 = load i64, ptr %time.sroa.7.0.tmp84.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp84) #5
  %time.sroa.7.8.extract.shift = lshr i64 %time.sroa.7.0.copyload127, 32
  %time.sroa.7.8.extract.trunc = trunc i64 %time.sroa.7.8.extract.shift to i32
  %69 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %plat, align 128
  %est87 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %est87 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %est87, align 4
  %btr = getelementptr inbounds %struct.stmmac_est, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %btr to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %time.sroa.7.8.extract.trunc, ptr %btr, align 4
  %conv90 = trunc i64 %time.sroa.0.0.copyload126 to i32
  %74 = load ptr, ptr %plat, align 128
  %est92 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %est92 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %est92, align 4
  %arrayidx94 = getelementptr %struct.stmmac_est, ptr %76, i32 0, i32 4, i32 1
  %77 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv90, ptr %arrayidx94, align 4
  %78 = load ptr, ptr %plat, align 128
  %est96 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %est96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %est96, align 4
  %enable97 = getelementptr inbounds %struct.stmmac_est, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %enable97 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %enable97, align 4
  %82 = ptrtoint ptr %hw42 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw42, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %tobool101.not = icmp eq ptr %85, null
  br i1 %tobool101.not, label %if.then60.if.then123.sink.split_crit_edge, label %land.lhs.true102

if.then60.if.then123.sink.split_crit_edge:        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then123.sink.split

land.lhs.true102:                                 ; preds = %if.then60
  %est_configure105 = getelementptr inbounds %struct.stmmac_ops, ptr %85, i32 0, i32 46
  %86 = ptrtoint ptr %est_configure105 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %est_configure105, align 4
  %tobool106.not = icmp eq ptr %87, null
  br i1 %tobool106.not, label %land.lhs.true102.if.then123.sink.split_crit_edge, label %if.then107

land.lhs.true102.if.then123.sink.split_crit_edge: ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then123.sink.split

if.then107:                                       ; preds = %land.lhs.true102
  %ioaddr111 = getelementptr i8, ptr %ptp, i32 -15604
  %88 = ptrtoint ptr %ioaddr111 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr111, align 32
  %90 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %plat, align 128
  %est113 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %est113 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %est113, align 4
  %clk_ptp_rate115 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %91, i32 0, i32 50
  %94 = ptrtoint ptr %clk_ptp_rate115 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %clk_ptp_rate115, align 4
  %call116 = call i32 %87(ptr noundef %89, ptr noundef %93, i32 noundef %95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %phi.cmp = icmp eq i32 %call116, 0
  %96 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %plat, align 128
  %est120 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %97, i32 0, i32 9
  %98 = ptrtoint ptr %est120 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %est120, align 4
  call void @mutex_unlock(ptr noundef %99) #5
  br i1 %phi.cmp, label %if.then107.if.end124_crit_edge, label %if.then107.if.then123_crit_edge

if.then107.if.then123_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then123

if.then107.if.end124_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then123.sink.split:                            ; preds = %land.lhs.true102.if.then123.sink.split_crit_edge, %if.then60.if.then123.sink.split_crit_edge
  %100 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %plat, align 128
  %est120.c177 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %est120.c177 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %est120.c177, align 4
  call void @mutex_unlock(ptr noundef %103) #5
  br label %if.then123

if.then123:                                       ; preds = %if.then123.sink.split, %if.then107.if.then123_crit_edge
  %dev = getelementptr i8, ptr %ptp, i32 -15600
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %105, ptr noundef nonnull @.str.9) #8
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.then107.if.end124_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %current_time) #5
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end56.if.end125_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_get_time(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %ns = alloca i64, align 8
  %tmp15 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ns) #5
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ns, align 8
  %ptp_lock = getelementptr i8, ptr %ptp, i32 132
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #5
  %hw = getelementptr i8, ptr %ptp, i32 -15592
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %ptp6 = getelementptr inbounds %struct.mac_device_info, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %ptp6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp6, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %get_systime = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %get_systime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_systime, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %ptpaddr = getelementptr i8, ptr %ptp, i32 272
  %7 = ptrtoint ptr %ptpaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptpaddr, align 4
  call void %6(ptr noundef %8, ptr noundef nonnull %ns) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp15) #5
  %9 = ptrtoint ptr %ns to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ns, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp15, i64 noundef %10) #5
  %11 = call ptr @memcpy(ptr %ts, ptr %tmp15, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp15) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ns) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_getcrosststamp(ptr noundef %ptp, ptr noundef %xtstamp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -15764
  %call = tail call i32 @get_device_system_crosststamp(ptr noundef nonnull @stmmac_get_syncdevicetime, ptr noundef %add.ptr, ptr noundef null, ptr noundef %xtstamp) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_set_time(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_lock = getelementptr i8, ptr %ptp, i32 132
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #5
  %hw = getelementptr i8, ptr %ptp, i32 -15592
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %ptp6 = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ptp6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp6, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %init_systime = getelementptr inbounds %struct.stmmac_hwtimestamp, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %init_systime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_systime, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %ptpaddr = getelementptr i8, ptr %ptp, i32 272
  %6 = ptrtoint ptr %ptpaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptpaddr, align 4
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ts, align 8
  %conv13 = trunc i64 %9 to i32
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %10 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tv_nsec, align 8
  %call14 = tail call i32 %5(ptr noundef %7, i32 noundef %conv13, i32 noundef %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %ptp, i32 -15592
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %pcsr = getelementptr inbounds %struct.mac_device_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pcsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcsr, align 4
  %4 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %flags2 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %9 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %pps = getelementptr i8, ptr %ptp, i32 1684
  %index = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 8
  %arrayidx = getelementptr [4 x %struct.stmmac_pps_cfg], ptr %pps, i32 0, i32 %11
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %9, align 8
  %start = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %start, align 8
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nsec, align 8
  %tv_nsec = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %arrayidx, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tv_nsec, align 8
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %period, align 8
  %period5 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %arrayidx, i32 0, i32 2
  %20 = ptrtoint ptr %period5 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %period5, align 8
  %nsec8 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %nsec8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nsec8, align 8
  %tv_nsec10 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %arrayidx, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %tv_nsec10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %tv_nsec10, align 8
  %ptp_lock = getelementptr i8, ptr %ptp, i32 132
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ptp_lock) #5
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool17.not = icmp eq ptr %27, null
  br i1 %tobool17.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %flex_pps_config = getelementptr inbounds %struct.stmmac_ops, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %flex_pps_config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flex_pps_config, align 4
  %tobool20.not = icmp eq ptr %29, null
  br i1 %tobool20.not, label %land.lhs.true.if.end29_crit_edge, label %if.then21

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr25 = getelementptr i8, ptr %ptp, i32 -15604
  %30 = ptrtoint ptr %ioaddr25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr25, align 32
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool27 = icmp ne i32 %on, 0
  %sub_second_inc = getelementptr i8, ptr %ptp, i32 112
  %34 = ptrtoint ptr %sub_second_inc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sub_second_inc, align 4
  %systime_flags = getelementptr i8, ptr %ptp, i32 116
  %36 = ptrtoint ptr %systime_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %systime_flags, align 8
  %call28 = tail call i32 %29(ptr noundef %31, i32 noundef %33, ptr noundef %arrayidx, i1 noundef zeroext %tobool27, i32 noundef %35, i32 noundef %37) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %__result.0 = phi i32 [ %call28, %if.then21 ], [ -22, %land.lhs.true.if.end29_crit_edge ], [ -22, %if.end.if.end29_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ptp_lock, i32 noundef %call13) #5
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %ptpaddr1 = getelementptr i8, ptr %ptp, i32 272
  %38 = ptrtoint ptr %ptpaddr1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ptpaddr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool33 = icmp ne i32 %on, 0
  %plat = getelementptr i8, ptr %ptp, i32 -660
  %40 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %plat, align 128
  %ext_snapshot_en = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %41, i32 0, i32 72
  %frombool = zext i1 %tobool33 to i8
  %42 = ptrtoint ptr %ext_snapshot_en to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool, ptr %ext_snapshot_en, align 4
  %aux_ts_lock = getelementptr i8, ptr %ptp, i32 176
  tail call void @mutex_lock_nested(ptr noundef %aux_ts_lock, i32 noundef 0) #5
  %add.ptr34 = getelementptr i8, ptr %39, i32 64
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %44 = and i32 %43, 268435455
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  br i1 %tobool33, label %if.then39, label %do.body70

if.then39:                                        ; preds = %sw.bb32
  %46 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %plat, align 128
  %ext_snapshot_num = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %47, i32 0, i32 71
  %48 = ptrtoint ptr %ext_snapshot_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ext_snapshot_num, align 4
  %or = or i32 %45, %49
  %or41 = or i32 %or, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmmac_enable.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmmac_enable, %if.then50)) #5
          to label %do.end57 [label %if.then50], !srcloc !36

if.then50:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr i8, ptr %ptp, i32 -15600
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %52 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %plat, align 128
  %ext_snapshot_num52 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %53, i32 0, i32 71
  %54 = ptrtoint ptr %ext_snapshot_num52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ext_snapshot_num52, align 4
  %shr = ashr i32 %55, 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @stmmac_enable.__UNIQUE_ID_ddebug353, ptr noundef %51, ptr noundef nonnull @.str.11, i32 noundef %shr) #5
  br label %do.end57

do.end57:                                         ; preds = %if.then50, %if.then39
  %add.ptr60 = getelementptr i8, ptr %3, i32 180
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %57 = or i32 %56, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %57) #5, !srcloc !44
  br label %do.body104

do.body70:                                        ; preds = %sw.bb32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stmmac_enable.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stmmac_enable, %if.then82)) #5
          to label %do.end91 [label %if.then82], !srcloc !36

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  %dev83 = getelementptr i8, ptr %ptp, i32 -15600
  %58 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev83, align 4
  %60 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %plat, align 128
  %ext_snapshot_num85 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %61, i32 0, i32 71
  %62 = ptrtoint ptr %ext_snapshot_num85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ext_snapshot_num85, align 4
  %shr86 = ashr i32 %63, 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @stmmac_enable.__UNIQUE_ID_ddebug354, ptr noundef %59, ptr noundef nonnull @.str.12, i32 noundef %shr86) #5
  br label %do.end91

do.end91:                                         ; preds = %if.then82, %do.body70
  %add.ptr94 = getelementptr i8, ptr %3, i32 180
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %65 = and i32 %64, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %65) #5, !srcloc !44
  br label %do.body104

do.body104:                                       ; preds = %do.end91, %do.end57
  %acr_value.0 = phi i32 [ %or41, %do.end57 ], [ %45, %do.end91 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %66 = tail call i32 @llvm.bswap.i32(i32 %acr_value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %66) #5, !srcloc !44
  tail call void @mutex_unlock(ptr noundef %aux_ts_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body104, %if.end29, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %do.body104 ], [ %__result.0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_calc_tas_basetime(ptr sret(%struct.timespec64) align 8, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_device_system_crosststamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmmac_get_syncdevicetime(ptr noundef %device, ptr noundef %system, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %plat = getelementptr inbounds %struct.stmmac_priv, ptr %ctx, i32 0, i32 36
  %0 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat, align 128
  %crosststamp = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %crosststamp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crosststamp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %device, ptr noundef %system, ptr noundef %ctx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @stmmac_ptp_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 317, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @stmmac_ptp_register.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 318, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 324, i32 25}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 327, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 341, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @stmmac_ptp_unregister.__UNIQUE_ID_ddebug355, !11, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!16 = !{ptr @stmmac_ptp_clock_ops, !17, !"stmmac_ptp_clock_ops", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 273, i32 30}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 118, i32 26}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 213, i32 4}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stmmac_enable.__UNIQUE_ID_ddebug353, !21, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/stmmac_ptp.c", i32 222, i32 4}
!26 = !{ptr @stmmac_enable.__UNIQUE_ID_ddebug354, !25, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148739330, i64 2148739335, i64 2148739348, i64 2148739392, i64 2148739426, i64 2148739447}
!37 = !{i64 1162505, i64 1162532, i64 1162554, i64 1162582}
!38 = !{i64 1162913, i64 1162940, i64 1162973, i64 1162994, i64 1163021, i64 1163047}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 6597775}
!41 = !{i64 2157347785}
!42 = !{i64 2157351625}
!43 = !{i64 2157351943}
!44 = !{i64 6597357}
!45 = !{i64 2157355233}
!46 = !{i64 2157355551}
!47 = !{i64 2157355971}
